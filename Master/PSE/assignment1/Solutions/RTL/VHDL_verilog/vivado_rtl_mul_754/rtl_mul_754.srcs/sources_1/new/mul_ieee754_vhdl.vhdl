----------------------------------------------------------------------------------
--
-- Module Name: multiplexer - arch_multiplexer
-- Project Name: IEE 754 MULTIPLEXER
-- Author: Fabio Chiarani
-- 
----------------------------------------------------------------------------------


-----------------------
--      PACKAGE      --
-----------------------

PACKAGE pkg_states IS

    -- input  ans sizes
    CONSTANT SIZE : INTEGER := 32;
    CONSTANT SIZE_OF_MANTISSA   : INTEGER := 23;
    CONSTANT SIZE_OF_EXPONENT   : INTEGER := 8;
    
    -- states definitions
    CONSTANT ST_0       : INTEGER := 0;
    CONSTANT ST_1       : INTEGER := 1;
    CONSTANT ST_2       : INTEGER := 2;
    CONSTANT ST_ZERO    : INTEGER := 3;
    CONSTANT ST_INF     : INTEGER := 4;
    CONSTANT ST_NAN     : INTEGER := 5;
    CONSTANT ST_6       : INTEGER := 6;
    CONSTANT ST_10      : INTEGER := 10;
    CONSTANT ST_11      : INTEGER := 11;
    CONSTANT ST_12      : INTEGER := 12;
    CONSTANT ST_13      : INTEGER := 13;
    CONSTANT ST_14      : INTEGER := 14;
    CONSTANT ST_15      : INTEGER := 15;
    CONSTANT ST_16      : INTEGER := 16;
    CONSTANT ST_17      : INTEGER := 17;
    CONSTANT ST_18      : INTEGER := 18;
    CONSTANT ST_19      : INTEGER := 19;
    CONSTANT ST_NORM    : INTEGER := 20;
    CONSTANT ST_DENORM  : INTEGER := 21;
    CONSTANT ST_OUT     : INTEGER := 22;
    CONSTANT ST_ERR     : INTEGER := 23;
    
    -- state typoe
    SUBTYPE T_STATE IS INTEGER RANGE ST_0 TO ST_ERR;
    
END pkg_states;

---------------
-- LIBRARIES --
---------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE WORK.pkg_states.ALL;

----------------
-- ENTITY MUL --
----------------

ENTITY mul_ieee754_vhdl IS
    GENERIC (
        generic_vector_val : STD_LOGIC_VECTOR(SIZE - 1 DOWNTO 0) := (OTHERS => '0')
    );
    PORT (
        clk     : in    STD_LOGIC;
        op1     : in    STD_LOGIC_VECTOR(SIZE - 1 DOWNTO 0) := generic_vector_val;
        op2     : in    STD_LOGIC_VECTOR(SIZE - 1 DOWNTO 0) := generic_vector_val;
        reset   : in    STD_LOGIC;
        inrdy   : in    STD_LOGIC;
        resrdy  : out   STD_LOGIC;       
        res     : out   STD_LOGIC_VECTOR(SIZE - 1 DOWNTO 0)
    );
END ENTITY mul_ieee754_vhdl;

---------------
-- ARCHI MUL --
---------------
ARCHITECTURE arch_mul_ieee754_vhdl OF mul_ieee754_vhdl IS

    -- aux signals
    SIGNAL m            : STD_LOGIC_VECTOR(SIZE_OF_MANTISSA - 1 DOWNTO 0) := (OTHERS => '0');
    SIGNAL m1           : STD_LOGIC_VECTOR(SIZE_OF_MANTISSA DOWNTO 0) := (OTHERS => '0');
    SIGNAL m2           : STD_LOGIC_VECTOR(SIZE_OF_MANTISSA DOWNTO 0) := (OTHERS => '0');
    SIGNAL tmpm         : STD_LOGIC_VECTOR(((SIZE_OF_MANTISSA + 1) * 2) - 1 DOWNTO 0) := (OTHERS => '0');
    SIGNAL tmpexp       : STD_LOGIC_VECTOR(SIZE_OF_EXPONENT DOWNTO 0) := (OTHERS => '0');
    SIGNAL exp          : STD_LOGIC_VECTOR(SIZE_OF_EXPONENT - 1 DOWNTO 0) := (OTHERS => '0');
    SIGNAL s            : STD_LOGIC;
    
    -- state management
    SIGNAL state        : T_STATE := ST_0;
    SIGNAL next_state   : T_STATE := ST_0;
    
BEGIN
    -- FSM process
    FSM : PROCESS(state, inrdy, op1, m1, op2, m2, tmpm, tmpexp)
    BEGIN
        CASE state IS
            -- init / reset 
            WHEN ST_0 =>
                next_state <= ST_1;
                
            -- wait for inrdy
            WHEN ST_1 =>
                IF inrdy = '1' THEN
                    next_state <= ST_2;
                ELSE
                    next_state <= ST_1;
                END IF;
                            
            -- dispatch input
            WHEN ST_2 => 
                IF (op1(30 DOWNTO 23) = 255 AND m1 /= 0) OR (op2(30 DOWNTO 23) = 255 AND m2 /= 0) THEN
                    -- NaN value
                    next_state <= ST_NAN;
                ELSIF (op1(30 DOWNTO 23) = 255 AND m1 = 0 AND op2(30 DOWNTO 23) = 0 AND m2 = 0) OR
                    (op2(30 DOWNTO 23) = 255 AND m2 = 0 AND op1(30 DOWNTO 23) = 0 AND m1 = 0) THEN
                    -- (inf*0|0*inf) value
                    next_state <= ST_NAN;
                ELSIF (op1(30 DOWNTO 23) = 255 AND m1 = 0) OR (op2(30 DOWNTO 23) = 255 AND m2 = 0) THEN
                    -- INF value
                    next_state <= ST_INF;
                ELSIF (op1(30 DOWNTO 23) = 0 AND m1 = 0) OR (op2(30 DOWNTO 23) = 0 AND m2 = 0) THEN
                    -- ZERO value
                    next_state <= ST_ZERO;
                ELSE
                    -- normalized or denormalized value
                    next_state <= ST_6;
                END IF;
                
            -- dispatch normalized and denormalized input
            WHEN ST_6 => 
                IF (op1(30 DOWNTO 23) = 0 OR op2(30 DOWNTO 23) = 0) THEN
                    -- both are denormalized
                    next_state <= ST_ERR;
                ELSE
                    -- nboth are noprmalized
                    next_state <= ST_10;
                END IF;
            
            -- view if mantissa result is normalized or not
            WHEN ST_10 => 
                IF (tmpm(47 DOWNTO 46) = "10") OR (tmpm(47 DOWNTO 46) = "11") THEN
                    -- easy normalizzation
                    next_state <= ST_11;
                ELSIF (tmpm(47 DOWNTO 46) = "00") THEN
                    -- required shift normalization
                    next_state <= ST_12;
                ELSE -- case "10"
                    -- already normalized
                    next_state <= ST_NORM;
                END IF;
        
            -- number normalized
            WHEN ST_11 =>
                next_state <= ST_NORM;
            
            -- check for exponent overflow
            WHEN ST_12 =>
                IF (tmpexp(8) = '1') THEN
                    -- got overflow during multiplication
                    next_state <= ST_13;
                ELSE
                    -- no overflow but can throw underflow
                    next_state <= ST_14;
                END IF;
            
            -- case: got overflow during multiplication
            WHEN ST_13 =>
                IF (tmpm(47 DOWNTO 46) = "00") THEN
                    next_state <= ST_13;
                ELSE
                    next_state <= ST_NORM;
                END IF;
            -- case: no overflow but can throw underflow
            WHEN ST_14 =>
                IF (tmpexp(8 DOWNTO 0) = 0) THEN
                    -- throw underflow
                    next_state <= ST_DENORM;
                ELSIF (tmpm(47 DOWNTO 46) = "00") THEN
                    -- do another cycle
                    next_state <= ST_14;
                ELSE
                    -- finish normalization
                    next_state <= ST_NORM;
                END IF;
                
            -- normalization state dispatch
            WHEN ST_NORM =>
                IF (tmpexp(8) = '1') THEN
                    next_state <= ST_INF;
                ELSE
                    next_state <= ST_15;
                END IF;
                
            WHEN ST_DENORM =>
                next_state <= ST_16;
                
            WHEN ST_15 =>
                next_state <= ST_16;
                
            WHEN ST_16 => 
                IF (tmpm(23) = '0') THEN
                    next_state <= ST_17;
                ELSE
                    next_state <= ST_18;
                END IF;
                
            WHEN ST_17 =>
                next_state <= ST_OUT;
            
            WHEN ST_18 =>
                IF (tmpm(47 DOWNTO 46) = "01") THEN
                    next_state <= ST_19;
                ELSE
                    next_state <= ST_17;
                END IF;
            
            WHEN ST_19 => 
                next_state <= ST_OUT;
                
            WHEN ST_ZERO => 
                next_state <= ST_OUT;
            WHEN ST_NAN => 
                next_state <= ST_OUT;
            WHEN ST_INF => 
                next_State <= ST_OUT;
            WHEN ST_OUT =>
                next_state <= ST_0;
            WHEN ST_ERR =>
                next_state <= ST_0;
            WHEN OTHERS => 
                next_state <= ST_0;
        END CASE;
    END PROCESS FSM;
    
    -- DATAPATH
    DATAPATH : PROCESS(clk, reset)
    BEGIN
        IF (reset = '1') THEN
            state <= ST_0;
        ELSIF (clk'event AND clk = '1') THEN
            state <= next_state;
            
            CASE next_state IS
                WHEN ST_0 =>
                    -- reset all
                    m <= (OTHERS => '0');
                    m1 <= (OTHERS => '0');
                    m2 <= (OTHERS => '0');
                    tmpm <= (OTHERS => '0');
                    tmpexp <= (OTHERS => '0');
                    exp <= (OTHERS => '0');
                    s <= '0';
                    res <= (OTHERS => '0');
                    resrdy <= '0';
                    
                WHEN ST_1 =>
                    -- nothing
                    
                WHEN ST_2 =>
                    m1(22 DOWNTO 0) <= op1(22 DOWNTO 0);
                    m2(22 DOWNTO 0) <= op2(22 DOWNTO 0);
                    s <= op1(31) XOR op2(31);
                
                WHEN ST_6 =>
                    m1(23) <= '1';
                    m2(23) <= '1';
                    
                WHEN ST_10 => 
                    tmpexp <= ( '0' & op1(30 DOWNTO 23)) + ( '0' & op2(30 DOWNTO 23)) - 127; -- sum - bias
                    tmpm <= m1 * m2; -- mantix mul
                    
                WHEN ST_11 =>
                    tmpm <= '0' & tmpm(((SIZE_OF_MANTISSA + 1) * 2) - 1 DOWNTO 1); -- tmpm >> 1;
                    tmpexp <= tmpexp + 1; -- sum +1 exp
                WHEN ST_12 =>
                    -- nothing
                WHEN ST_13 => 
                    tmpm <= '0' & tmpm(((SIZE_OF_MANTISSA + 1) * 2) - 2 DOWNTO 0); -- tmpm << 1;
                    tmpexp <= tmpexp - 1; -- sum -1 exp
                    
                WHEN ST_14 => 
                    tmpm <= '0' & tmpm(((SIZE_OF_MANTISSA + 1) * 2) - 2 DOWNTO 0); -- tmpm << 1;
                    tmpexp <= tmpexp - 1; -- sum -1 exp
                WHEN ST_NORM =>
                    -- nothing
                WHEN ST_DENORM =>
                    exp <= (OTHERS => '0');
                    
                WHEN ST_15 =>
                    exp <= tmpexp(7 DOWNTO 0);
                    
                WHEN ST_16 =>
                    -- nothing
                
                WHEN ST_17 => 
                    m <= tmpm(45 DOWNTO 23);
                WHEN ST_18 =>
                    tmpm(47 DOWNTO 22) <= tmpm(47 DOWNTO 22) + 1;
                    
                WHEN ST_19 => 
                    tmpexp <= tmpexp + 1;
                WHEN ST_NAN =>
                    exp <= (OTHERS => '1');
                    m <= (22 => '1', 21 DOWNTO 0 => '0');
                    s <= '0';
                WHEN ST_INF => 
                    exp <= (OTHERS => '1');
                    m <= (OTHERS => '0');
                WHEN ST_ZERO => 
                    exp <= (OTHERS => '0');
                    m <= (OTHERS => '0');
                WHEN ST_OUT => 
                    resrdy <= '1';
                    res(31) <= s;
                    res(30 DOWNTO 23) <= exp;
                    res(22 DOWNTO 0) <= m;
                WHEN ST_ERR => 
                    resrdy <= '1';
                    res <= (OTHERS => '0');
                    
                WHEN OTHERS => 
                     resrdy <= '1';
                    -- nothing
                    
            END CASE;
        END IF;
    END PROCESS DATAPATH;
    
END ARCHITECTURE arch_mul_ieee754_vhdl;

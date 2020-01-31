
--------------------------------------------------------------------------------
-- Package definition
package multiplier754_pack is

    -- Size of inputs and output
    constant SIZE               : INTEGER := 32;
    constant SIZE_OF_MANTISSA   : INTEGER := 23;
    constant SIZE_OF_EXPONENT   : INTEGER := 8;

    -- States name
    constant ST_0       : INTEGER := 0;
    constant ST_1       : INTEGER := 1;
    constant ST_NAN1    : INTEGER := 2;
    constant ST_NAN2    : INTEGER := 3;
    constant ST_NAN1_1  : INTEGER := 4;
    constant ST_NAN1_2  : INTEGER := 5;
    constant ST_INF     : INTEGER := 6;
    constant ST_ZERO    : INTEGER := 7;
    constant ST_2       : INTEGER := 8;
    constant ST_3       : INTEGER := 9;
    constant ST_4       : INTEGER := 10;
    constant ST_5       : INTEGER := 11;
    constant ST_6       : INTEGER := 12;
    constant ST_7       : INTEGER := 13;
    constant ST_8       : INTEGER := 14;
    constant ST_9       : INTEGER := 15;
    constant ST_10      : INTEGER := 16;
    constant ST_11      : INTEGER := 17;
    constant ST_12      : INTEGER := 18;
    constant ST_13      : INTEGER := 19;
    constant ST_ROUND   : INTEGER := 20;
    constant ST_END     : INTEGER := 21;
    subtype TYPE_STATE is INTEGER range ST_0 to ST_END;
end multiplier754_pack;

use WORK.multiplier754_pack.ALL;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_BIT.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

--------------------------------------------------------------------------------
-- Model multiplier754_vhdl
-- op1, op2: floating points operands;
-- op[31]       -> sign
-- op[30:23]    -> exp
-- op[22:0]     -> mantissa
-- res: floating point result of multiplication;
-- in_rdy, out_rdy: handshake protocol; 
entity multiplierIEEE754_vhdl is
    Port ( op1          : in  STD_LOGIC_VECTOR(SIZE-1 downto 0);
           op2          : in  STD_LOGIC_VECTOR(SIZE-1 downto 0);
           in_rdy       : in  STD_LOGIC;
           res          : out STD_LOGIC_VECTOR(SIZE-1 downto 0);
           res_rdy      : out STD_LOGIC;
           clk          : in  STD_LOGIC;
           rst          : in  STD_LOGIC );
end multiplierIEEE754_vhdl;

--------------------------------------------------------------------------------
-- Architecture behavioral of model multiplier754_vhdl
architecture behavioral of multiplierIEEE754_vhdl is
    signal exp          : STD_LOGIC_VECTOR(SIZE_OF_EXPONENT-1 downto 0) := (others => '0');
    signal exp1         : STD_LOGIC_VECTOR(SIZE_OF_EXPONENT-1 downto 0) := (others => '0');
    signal exp2         : STD_LOGIC_VECTOR(SIZE_OF_EXPONENT-1 downto 0) := (others => '0');
    signal tmpexp       : STD_LOGIC_VECTOR(SIZE_OF_EXPONENT   downto 0) := (others => '0');
    signal m            : STD_LOGIC_VECTOR(SIZE_OF_MANTISSA-1 downto 0) := (others => '0');
    signal m1           : STD_LOGIC_VECTOR(SIZE_OF_MANTISSA   downto 0) := (others => '0');
    signal m2           : STD_LOGIC_VECTOR(SIZE_OF_MANTISSA   downto 0) := (others => '0');
    signal tmpm         : STD_LOGIC_VECTOR(((SIZE_OF_MANTISSA+1)*2)-1 downto 0) := (others => '0');
    signal s            : STD_LOGIC;
    signal s1           : STD_LOGIC;
    signal s2           : STD_LOGIC;

    signal NEXT_STATE   : TYPE_STATE := ST_0;
begin

    ----------------------------------------------------------------------------
    -- FSM
    process (clk, rst) is
    begin
        if rst = '1' then 
            NEXT_STATE <= ST_0;

        elsif clk'EVENT and clk = '1' then
            case NEXT_STATE is
                when ST_0 => 
                    if in_rdy = '1' then 
                        NEXT_STATE <= ST_1;
                    else 
                        NEXT_STATE <= ST_0;
                    end if;
                when ST_1 => 
                    if     (exp1 = 255 and m1 /= 0)
                        or (exp2 = 255 and m2 /= 0)
                    then -- op1 or op2 are NaN
                        NEXT_STATE <= ST_NAN1;
                    elsif  (exp1 = 255 and m1 = 0
                        and exp2 = 0 and m2 = 0)
                        or (exp1 = 0 and m1 = 0
                        and exp2 = 255 and m2 = 0)
                    then -- op1 is inf and op2 is 0 or vice versa
                        NEXT_STATE <= ST_NAN2;
                    elsif  (exp1 = 255 and m1 = 0)
                        or (exp2 = 255 and m2 = 0)
                    then -- op1 or op2 are inf
                        NEXT_STATE <= ST_INF;
                    elsif  (exp1 = 0 and m1 = 0)
                        or (exp2 = 0 and m2 = 0)
                    then -- op1 or op2 are zero
                        NEXT_STATE <= ST_ZERO;
                    else -- op1 and op2 are normalized or denormalized number
                        NEXT_STATE <= ST_2;
                    end if;
                when ST_2 => 
                    if exp1 /= 0 and exp2 /= 0
                    then -- Both op1 and op2 are denormalized
                        NEXT_STATE <= ST_3;
                    elsif exp1 /= 0
                    then -- Only op1 is denormalized
                        NEXT_STATE <= ST_4;
                    elsif exp2 /= 0
                    then -- Only op2 is denormalized
                        NEXT_STATE <= ST_5;
                    else -- Both normalized
                        NEXT_STATE <= ST_6;
                    end if;
                when ST_3 => 
                    NEXT_STATE <= ST_6;
                when ST_4 => 
                    NEXT_STATE <= ST_6;
                when ST_5 => 
                    NEXT_STATE <= ST_6;
                when ST_6 => 
                    if tmpm(47 downto 46) = "10" or tmpm(47 downto 46) = "11"
                    then -- Only one DX shift
                        NEXT_STATE <= ST_7;
                    elsif tmpm(47 downto 46) = "00"
                    then -- SX shift
                        NEXT_STATE <= ST_8;
                    else -- if tmpm(47 downto 46) = "01"
                        NEXT_STATE <= ST_10;
                    end if;
                when ST_7 => 
                    NEXT_STATE <= ST_10;
                when ST_8 => 
                    if tmpm(47 downto 46) = "01" or  tmpexp = 0
                    then -- Mantissa normalized or denormalized
                        NEXT_STATE <= ST_10;
                    else -- Still SX shift
                        NEXT_STATE <= ST_9; 
                    end if;
                when ST_9 => 
                    NEXT_STATE <= ST_8;
                when ST_10 => 
                    if tmpexp(8) = '1' and exp1 + exp2 < 127
                    then -- Underflow
                        NEXT_STATE <= ST_7;
                    elsif tmpexp(8) = '1' and exp1 + exp2 >= 127
                    then -- Overflow
                        NEXT_STATE <= ST_INF;
                    else -- Prepare exponent
                        NEXT_STATE <= ST_11;
                    end if;
                when ST_11 => 
                    if tmpm(22) = '1'
                    then -- Round
                        NEXT_STATE <= ST_ROUND;
                    else -- Prepare result
                        NEXT_STATE <= ST_13;
                    end if;
                when ST_12 => 
                    NEXT_STATE <= ST_10;
                when ST_ROUND => 
                    if tmpm(47 downto 46) = "10"
                    then -- Prepare result
                        NEXT_STATE <= ST_12;
                    else -- tmpm(47 downto 46) = "01" || "00"
                        NEXT_STATE <= ST_13;
                    end if;
                when ST_13 => 
                    NEXT_STATE <= ST_END;
                when ST_NAN1 => 
                    if exp1 = 255 and m1 /= 0 
                    then
                        NEXT_STATE <= ST_NAN1_1;
                    else 
                        NEXT_STATE <= ST_NAN1_2;
                    end if;
                when ST_NAN2 => 
                    NEXT_STATE <= ST_END;
                when ST_NAN1_1 => 
                    NEXT_STATE <= ST_END;
                when ST_NAN1_2 => 
                    NEXT_STATE <= ST_END;
                when ST_INF => 
                    NEXT_STATE <= ST_END;
                when ST_ZERO => 
                    NEXT_STATE <= ST_END;
                when ST_END => 
                    NEXT_STATE <= ST_0;
                when others => 
                    NEXT_STATE <= ST_0;
            end case;
        end if;
    end process;

    ----------------------------------------------------------------------------
    -- DATAPATH
    process (NEXT_STATE) is
    begin
        case NEXT_STATE is
            when ST_0 => 
                exp     <= (others => '0');
                exp1    <= (others => '0');
                exp2    <= (others => '0');
                tmpexp  <= (others => '0');
                m       <= (others => '0');
                m1      <= (others => '0');
                m2      <= (others => '0');
                tmpm    <= (others => '0');
                s       <= '0';
                s1      <= '0';
                s2      <= '0';

                res     <= (others => '0');
                res_rdy <= '0';
            when ST_1 => 
                m1 <= '0' & op1(22 downto 0);
                m2 <= '0' & op2(22 downto 0);

                exp1 <= op1(30 downto 23);
                exp2 <= op2(30 downto 23);

                s1 <= op1(31);
                s2 <= op2(31);

                s <= op1(31) xor op2(31);
            when ST_2 => 
                -- do nothing
            when ST_3 => 
                m1(23) <= '1';
                m2(23) <= '1';
            when ST_4 => 
                m1(23) <= '1';
            when ST_5 => 
                m2(23) <= '1';
            when ST_6 => 
                tmpexp <= ('0' & exp1) + ('0' & exp2) - 127; -- op1 + op2 - 127
                tmpm   <= m1 * m2;
            when ST_7 => 
                tmpm <= '0' & tmpm(((SIZE_OF_MANTISSA+1)*2)-1 downto 1); -- tmpm >> 1
                tmpexp <= tmpexp + 1; -- tmpexp + 1
            when ST_8 => 
                -- do nothing
            when ST_9 => 
                tmpm <= tmpm(((SIZE_OF_MANTISSA+1)*2)-2 downto 0) & '0'; -- tmpm << 1
                tmpexp <= tmpexp - 1; 
            when ST_10 => 
                -- do nothing
            when ST_11 => 
                exp <= tmpexp(7 downto 0);
            when ST_12 => 
                tmpexp <= tmpexp + 1;
            when ST_ROUND => 
                -- tmpm[47:22] + 1 
                -- tmpm[47:22] in the form
                -- 01 | .... from bit 45 to 23 .... | 1
                tmpm(47 downto 22) <= tmpm(47 downto 22) + 1;
            when ST_13 => 
                m <= tmpm(45 downto 23);
            when ST_NAN1 => 
                -- do nothing
            when ST_NAN1_1 => 
                exp <= (others => '1');
                m   <= '1' & m1(21 downto 0);
                s   <= s1;
            when ST_NAN1_2 => 
                exp <= (others => '1');
                m   <= '1' & m1(21 downto 0);
                s   <= s2;
            when ST_NAN2 => 
                exp <= (others => '1');
                m   <= (22 => '1', 21 downto 0 => '0');
                s   <= '1';
            when ST_INF => 
                exp <= (others => '1');
                m   <= (others => '0');
            when ST_ZERO => 
                exp <= (others => '0');
                m   <= (others => '0');
            when ST_END => 
                res_rdy <= '1';
                res(31) <= s;
                res(30 downto 23) <= exp;
                res(22 downto 0)  <= m;
            when others => 
                -- do nothing
        end case;
    end process;

end behavioral;

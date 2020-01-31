-- testbench

Library IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.NUMERIC_BIT.ALL;

-- dichiaro entity tb
ENTITY tb IS
END tb;

-- definisco architettura
ARCHITECTURE arch_tb OF tb IS
    constant ClockPeriod : time := 20ns;
        SIGNAL    clk     :     STD_LOGIC := '0';
         SIGNAL       op1     :     STD_LOGIC_VECTOR(32 - 1 DOWNTO 0) := (OTHERS => '0');
         SIGNAL       op2     :     STD_LOGIC_VECTOR(32 - 1 DOWNTO 0) := (OTHERS => '0');
         SIGNAL       reset   :     STD_LOGIC := '0';
         SIGNAL       inrdy   :     STD_LOGIC := '0';
         SIGNAL       resrdy  :    STD_LOGIC := '0';       
         SIGNAL       res     :    STD_LOGIC_VECTOR(32 - 1 DOWNTO 0) := (OTHERS => '0');
    
    -- istanzio il componente che voglio simulare (uguale a ciò che ho scirtto nell'entity sommatore)
    COMPONENT mul_ieee754_vhdl IS
        PORT (
                clk     : in    STD_LOGIC;
                op1     : in    STD_LOGIC_VECTOR(32 - 1 DOWNTO 0);
                op2     : in    STD_LOGIC_VECTOR(32 - 1 DOWNTO 0);
                reset   : in    STD_LOGIC;
                inrdy   : in    STD_LOGIC;
                resrdy  : out   STD_LOGIC;       
                res     : out   STD_LOGIC_VECTOR(32 - 1 DOWNTO 0)
    );
    END COMPONENT mul_ieee754_vhdl;
    
BEGIN
     clk <= not clk after ClockPeriod/2;
    PROCESS
        variable i:integer := 1;
    BEGIN
        while i < 128 loop
        
            if i = 1 then
                op1 <= "01000000000000000000000000000000" AFTER 0ns;
                op2 <=  "00111111000000000000000000000000" AFTER 0ns;
                inrdy <= '1' after 40ns;
            end if;
            i := i + 1;
            wait for ClockPeriod;
        end loop;
    END PROCESS;

    dut : mul_ieee754_vhdl port map (
        clk => clk,
        op1 => op1,
        op2 => op2,
        reset => reset,
        inrdy => inrdy,
        resrdy => resrdy,
        res => res
    );

END arch_tb;
----------------------------------------------------------
-- Design   : Simple Fixed value Multiplier
-- Author   : Stefano Centomo, Enrico Fraccaroli
-- Modified : 31 May 2018
----------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY multiplier IS
    PORT (
        clk       : in std_logic;
        din_rdy   : in std_logic;
        op1       : in std_logic_vector     ( 15 downto 0 );
        op2       : in std_logic_vector     ( 15 downto 0 );
        result    : out std_logic_vector    ( 31 downto 0 );
        dout_rdy  : out std_logic
    );
END multiplier;
ARCHITECTURE multiplier OF multiplier IS
BEGIN
    PROCESS (clk)
    BEGIN
        IF ( clk'event and clk = '1' ) THEN
            IF ( din_rdy = '1' ) THEN
                result   <= (op1 * op2);
                dout_rdy <= '1';
            ELSE
                result   <= ( others => '0' );
                dout_rdy <= '0';
            END IF;
        END IF;
    END PROCESS;
END multiplier;

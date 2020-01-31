
-- Package definition
package multiplier754_apb_wrapper_pack is
	-- Size of inputs and output
    constant SIZE       : INTEGER := 32;

    -- States name
    constant ST_0       : INTEGER := 0;
    constant ST_1       : INTEGER := 1;
    constant ST_2       : INTEGER := 2;
    constant ST_3       : INTEGER := 3;
    constant ST_4       : INTEGER := 4;
    subtype TYPE_STATE is INTEGER range ST_0 to ST_4;
end multiplier754_apb_wrapper_pack;

use WORK.multiplier754_apb_wrapper_pack.ALL;

library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--------------------------------------------------------------------------------
-- Model multiplierIEEE745_vhdl_apb_wrapper
entity multiplierIEEE745_vhdl_apb_wrapper is
	Port (
		pclk	: in  std_logic;
		presetn : in  std_logic;
		paddr 	: in  std_logic_vector(31 downto 0);
		psel 	: in  std_logic;
		penable : in  std_logic;
		pwrite 	: in  std_logic;
		pwdata 	: in  std_logic_vector(31 downto 0);
		pready 	: out std_logic;
		prdata 	: out std_logic_vector(31 downto 0)
	);
end multiplierIEEE745_vhdl_apb_wrapper;

--------------------------------------------------------------------------------
-- Architecture multiplierIEEE745_vhdl_apb_wrapper 
-- of model multiplierIEEE745_vhdl_apb_wrapper
architecture multiplierIEEE745_vhdl_apb_wrapper 
	of multiplierIEEE745_vhdl_apb_wrapper is

	-- Components
	component multiplierIEEE754_vhdl
		Port ( op1          : in  STD_LOGIC_VECTOR(SIZE-1 downto 0);
			   op2          : in  STD_LOGIC_VECTOR(SIZE-1 downto 0);
			   in_rdy       : in  STD_LOGIC;
			   res          : out STD_LOGIC_VECTOR(SIZE-1 downto 0);
			   res_rdy      : out STD_LOGIC;
			   clk          : in  STD_LOGIC;
			   rst          : in  STD_LOGIC );
	end component multiplierIEEE754_vhdl;
	
	-- Signalss
	signal op1		: std_logic_vector(SIZE-1 downto 0);
	signal op2		: std_logic_vector(SIZE-1 downto 0);
	signal in_rdy	: std_logic;
	signal res   	: std_logic_vector(SIZE-1 downto 0);
	signal res_rdy  : std_logic;
	signal clk		: std_logic;
	signal rst		: std_logic;

	signal tmp   	: std_logic_vector(SIZE-1 downto 0);

	signal NEXT_STATE   : TYPE_STATE := ST_0;
begin
	-- ------------------------------------------------------------------------
	-- From BUS to MULTIPLIER
	-- ------------------------------------------------------------------------
	-- clk 	<= pclk;
	-- op1 	<= pwdata(15 downto 0);
	-- op2 	<= pwdata(31 downto 16);
	-- din_rdy <= penable;

	-- ------------------------------------------------------------------------
	-- From MULTIPLIER to BUS
	-- ------------------------------------------------------------------------
	-- pready <= dout_rdy;
	-- prdata <= result;

	clk <= pclk;
	rst <= presetn;

	----------------------------------------------------------------------------
    -- FSM
    process (clk, rst) is
		begin
			if rst = '1' then 
				NEXT_STATE <= ST_0;
	
			elsif clk'EVENT and clk = '1' then
				case NEXT_STATE is
					when ST_0 => 
						if penable = '1' then
							NEXT_STATE <= ST_1;
						else -- if penable = '0'
							NEXT_STATE <= ST_0;
						end if;
					when ST_1 => 
						if penable = '0' then
							NEXT_STATE <= ST_2;
						else -- if penable = '1'
							NEXT_STATE <= ST_1;
						end if;
					when ST_2 => 
						if penable = '1' then
							NEXT_STATE <= ST_3;
						else -- if penable = '0'
							NEXT_STATE <= ST_2;
						end if;
					when ST_3 => 
						if res_rdy = '1' then
							NEXT_STATE <= ST_4;
						else -- if penable = '0'
							NEXT_STATE <= ST_3;
						end if;
					when ST_4 => 
						if penable = '0' then
							NEXT_STATE <= ST_0;
						else -- if penable = '1'
							NEXT_STATE <= ST_4;
						end if;
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
					pready <= '0';
					prdata <= (others => '0');
					in_rdy <= '0';
					op1 <= (others => '0');
					op2 <= (others => '0');
					tmp <= (others => '0');
				when ST_1 => 
					tmp <= pwdata;
				when ST_2 => 
					-- do nothing
				when ST_3 => 
					op1 <= tmp;
					op2 <= pwdata;
					in_rdy <= '1';
				when ST_4 => 
					prdata <= res;
					pready <= '1';
				when others => 
					-- do nothing
			end case;
		end process;

	---------------------------------------------------------------------------
	-- Components mapping
	multiplierIEEE754_0 : multiplierIEEE754_vhdl
		Port map(
			op1 	=> op1,
			op2 	=> op2,
			in_rdy 	=> in_rdy,
			res 	=> res,
			res_rdy => res_rdy,
			clk 	=> clk,
			rst 	=> rst
		);

end multiplierIEEE745_vhdl_apb_wrapper;

----------------------------------------------------------
-- Design   : APB Slave Wrapper for a simple Multiplier design
-- Author   : Stefano Centomo, Enrico Fraccaroli
-- Modified : 31 May 2018
----------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY multiplier_apb_wrapper IS
	PORT (
		pclk	: in std_logic;
		presetn : in std_logic;
		paddr 	: in std_logic_vector(31 downto 0);
		psel 	: in std_logic;
		penable : in std_logic;
		pwrite 	: in std_logic;
		pwdata 	: in std_logic_vector(31 downto 0);
		pready 	: out std_logic;
		prdata 	: out std_logic_vector(31 downto 0)
	);
END multiplier_apb_wrapper;

ARCHITECTURE multiplier_apb_wrapper OF multiplier_apb_wrapper IS
	COMPONENT multiplier
		PORT (
			clk		 : in std_logic;
			din_rdy  : in std_logic;
			op1 	 : in std_logic_vector 	(15 downto 0);
			op2 	 : in std_logic_vector 	(15 downto 0);
			result 	 : out std_logic_vector	(31 downto 0);
			dout_rdy : out std_logic
		);
	END COMPONENT multiplier;
	SIGNAL clk		: std_logic;
	SIGNAL din_rdy	: std_logic;
	SIGNAL op1		: std_logic_vector(15 downto 0);
	SIGNAL op2		: std_logic_vector(15 downto 0);
	SIGNAL result	: std_logic_vector(31 downto 0);
	SIGNAL dout_rdy : std_logic;
BEGIN
	-- ------------------------------------------------------------------------
	-- From BUS to MULTIPLIER
	-- ------------------------------------------------------------------------
	clk 	<= pclk;
	op1 	<= pwdata(15 downto 0);
	op2 	<= pwdata(31 downto 16);
	din_rdy <= penable;

	-- ------------------------------------------------------------------------
	-- From MULTIPLIER to BUS
	-- ------------------------------------------------------------------------
	pready <= dout_rdy;
	prdata <= result;

	-- ------------------------------------------------------------------------
	-- MAPPING
	-- ------------------------------------------------------------------------
	multiplier_0 : multiplier
	PORT MAP(
		clk 		=> clk,
		din_rdy 	=> din_rdy,
		op1 		=> op1,
		op2 		=> op2,
		dout_rdy 	=> dout_rdy,
		result 		=> result
	);
END multiplier_apb_wrapper;

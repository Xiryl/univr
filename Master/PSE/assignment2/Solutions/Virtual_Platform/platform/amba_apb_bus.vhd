----------------------------------------------------------
-- Design   : Simplified AMBA Advanced Peripherals Bus (APB)
-- Author   : Stefano Centomo, Enrico Fraccaroli
-- Modified : 13 May 2018
----------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- PCLK     Clock source Clock.             The rising edge of PCLK times all transfers on the APB.
-- PRESETn  System bus equivalent Reset.    The APB reset signal is active LOW. This signal is normally connected directly to the system bus reset signal.
-- PADDR    APB bridge Address.             This is the APB address bus. It can be up to 32 bits wide and is driven by the peripheral bus bridge unit.
-- PSELx    APB bridge Select.              The APB bridge unit generates this signal to each peripheral bus slave. It indicates that the slave device is selected and that a data transfer is required. There is a PSELx signal for each slave.
-- PENABLE  APB bridge Enable.              This signal indicates the second and subsequent cycles of an APB transfer.
-- PWRITE   APB bridge Direction.           This signal indicates an APB write access when HIGH and an APB read access when LOW.
-- PWDATA   APB bridge Write data.          This bus is driven by the peripheral bus bridge unit during write cycles when PWRITE is HIGH. This bus can be up to 32 bits wide.
-- PREADY   Slave interface Ready.          The slave uses this signal to extend an APB transfer.
-- PRDATA   Slave interface Read Data.      The selected slave drives this bus during read cycles when PWRITE is LOW. This bus can be up to 32-bits wide.

ENTITY amba_apb_bus IS
PORT (
    ---------------------------------------------------------------------------
    clk                     : in    std_logic;
    -- MASTER Interface -------------------------------------------------------
    apb_master_pclk         : out   std_logic;
    apb_master_presetn      : in    std_logic;
    apb_master_paddr        : in    std_logic_vector(31 downto 0);
    apb_master_psel1        : in    std_logic;
    apb_master_psel2        : in    std_logic;
    apb_master_psel3        : in    std_logic;
    apb_master_psel4        : in    std_logic;
    apb_master_psel5        : in    std_logic;
    apb_master_psel6        : in    std_logic;
    apb_master_psel7        : in    std_logic;
    apb_master_psel8        : in    std_logic;
    apb_master_penable      : in    std_logic;
    apb_master_pwrite       : in    std_logic;
    apb_master_pwdata       : in    std_logic_vector(31 downto 0);
    apb_master_pready       : out   std_logic;
    apb_master_prdata       : out   std_logic_vector(31 downto 0);
    -- SLAVE Interface 1 ------------------------------------------------------
    apb_1_pclk              : out   std_logic;
    apb_1_presetn           : out   std_logic;
    apb_1_paddr             : out   std_logic_vector(31 downto 0);
    apb_1_psel              : out   std_logic;
    apb_1_penable           : out   std_logic;
    apb_1_pwrite            : out   std_logic;
    apb_1_pwdata            : out   std_logic_vector(31 downto 0);
    apb_1_pready            : in    std_logic;
    apb_1_prdata            : in    std_logic_vector(31 downto 0);
    -- SLAVE Interface 2 ------------------------------------------------------
    apb_2_pclk              : out   std_logic;
    apb_2_presetn           : out   std_logic;
    apb_2_paddr             : out   std_logic_vector(31 downto 0);
    apb_2_psel              : out   std_logic;
    apb_2_penable           : out   std_logic;
    apb_2_pwrite            : out   std_logic;
    apb_2_pwdata            : out   std_logic_vector(31 downto 0);
    apb_2_pready            : in    std_logic;
    apb_2_prdata            : in    std_logic_vector(31 downto 0);
    -- SLAVE Interface 3 ------------------------------------------------------
    apb_3_pclk              : out   std_logic;
    apb_3_presetn           : out   std_logic;
    apb_3_paddr             : out   std_logic_vector(31 downto 0);
    apb_3_psel              : out   std_logic;
    apb_3_penable           : out   std_logic;
    apb_3_pwrite            : out   std_logic;
    apb_3_pwdata            : out   std_logic_vector(31 downto 0);
    apb_3_pready            : in    std_logic;
    apb_3_prdata            : in    std_logic_vector(31 downto 0);
    -- SLAVE Interface 4 ------------------------------------------------------
    apb_4_pclk              : out   std_logic;
    apb_4_presetn           : out   std_logic;
    apb_4_paddr             : out   std_logic_vector(31 downto 0);
    apb_4_psel              : out   std_logic;
    apb_4_penable           : out   std_logic;
    apb_4_pwrite            : out   std_logic;
    apb_4_pwdata            : out   std_logic_vector(31 downto 0);
    apb_4_pready            : in    std_logic;
    apb_4_prdata            : in    std_logic_vector(31 downto 0);
    -- SLAVE Interface 5 ------------------------------------------------------
    apb_5_pclk              : out   std_logic;
    apb_5_presetn           : out   std_logic;
    apb_5_paddr             : out   std_logic_vector(31 downto 0);
    apb_5_psel              : out   std_logic;
    apb_5_penable           : out   std_logic;
    apb_5_pwrite            : out   std_logic;
    apb_5_pwdata            : out   std_logic_vector(31 downto 0);
    apb_5_pready            : in    std_logic;
    apb_5_prdata            : in    std_logic_vector(31 downto 0);
    -- SLAVE Interface 6 ------------------------------------------------------
    apb_6_pclk              : out   std_logic;
    apb_6_presetn           : out   std_logic;
    apb_6_paddr             : out   std_logic_vector(31 downto 0);
    apb_6_psel              : out   std_logic;
    apb_6_penable           : out   std_logic;
    apb_6_pwrite            : out   std_logic;
    apb_6_pwdata            : out   std_logic_vector(31 downto 0);
    apb_6_pready            : in    std_logic;
    apb_6_prdata            : in    std_logic_vector(31 downto 0);
    -- SLAVE Interface 7 ------------------------------------------------------
    apb_7_pclk              : out   std_logic;
    apb_7_presetn           : out   std_logic;
    apb_7_paddr             : out   std_logic_vector(31 downto 0);
    apb_7_psel              : out   std_logic;
    apb_7_penable           : out   std_logic;
    apb_7_pwrite            : out   std_logic;
    apb_7_pwdata            : out   std_logic_vector(31 downto 0);
    apb_7_pready            : in    std_logic;
    apb_7_prdata            : in    std_logic_vector(31 downto 0);
    -- SLAVE Interface 8 ------------------------------------------------------
    apb_8_pclk              : out   std_logic;
    apb_8_presetn           : out   std_logic;
    apb_8_paddr             : out   std_logic_vector(31 downto 0);
    apb_8_psel              : out   std_logic;
    apb_8_penable           : out   std_logic;
    apb_8_pwrite            : out   std_logic;
    apb_8_pwdata            : out   std_logic_vector(31 downto 0);
    apb_8_pready            : in    std_logic;
    apb_8_prdata            : in    std_logic_vector(31 downto 0)
    ---------------------------------------------------------------------------
);
END amba_apb_bus;

ARCHITECTURE amba_apb_bus_arch OF amba_apb_bus IS
BEGIN
    PROCESS ( clk ) BEGIN
        -- Clock propagation.
        apb_master_pclk <= clk;
        apb_1_pclk <= clk;
        apb_2_pclk <= clk;
        apb_3_pclk <= clk;
        apb_4_pclk <= clk;
        apb_5_pclk <= clk;
        apb_6_pclk <= clk;
        apb_7_pclk <= clk;
        apb_8_pclk <= clk;

        IF ( clk'event  and clk='1' ) THEN
            IF (apb_master_psel1 = '1') THEN
                -- From 'Peripheral' to 'Master'
                apb_1_penable <= apb_master_penable;
                apb_1_pwrite  <= apb_master_pwrite;
                apb_1_paddr   <= apb_master_paddr;
                apb_1_pwdata  <= apb_master_pwdata;
                apb_1_presetn <= apb_master_presetn;
                -- From 'Master' to 'Peripheral'
                apb_master_prdata <= apb_1_prdata;
                apb_master_pready <= apb_1_pready;
                -- Reset signals to other peripherals.
                apb_2_paddr   <= (others => '0');
                apb_2_pwdata  <= (others => '0');
                apb_2_penable <= '0';
                apb_2_pwrite  <= '0';
                apb_2_presetn <= '0';
                apb_3_paddr   <= (others => '0');
                apb_3_pwdata  <= (others => '0');
                apb_3_penable <= '0';
                apb_3_pwrite  <= '0';
                apb_3_presetn <= '0';
                apb_4_paddr   <= (others => '0');
                apb_4_pwdata  <= (others => '0');
                apb_4_penable <= '0';
                apb_4_pwrite  <= '0';
                apb_4_presetn <= '0';
                apb_5_paddr   <= (others => '0');
                apb_5_pwdata  <= (others => '0');
                apb_5_penable <= '0';
                apb_5_pwrite  <= '0';
                apb_5_presetn <= '0';
                apb_6_paddr   <= (others => '0');
                apb_6_pwdata  <= (others => '0');
                apb_6_penable <= '0';
                apb_6_pwrite  <= '0';
                apb_6_presetn <= '0';
                apb_7_paddr   <= (others => '0');
                apb_7_pwdata  <= (others => '0');
                apb_7_penable <= '0';
                apb_7_pwrite  <= '0';
                apb_7_presetn <= '0';
                apb_8_paddr   <= (others => '0');
                apb_8_pwdata  <= (others => '0');
                apb_8_penable <= '0';
                apb_8_pwrite  <= '0';
                apb_8_presetn <= '0';
            ELSIF (apb_master_psel2 = '1') THEN
                -- From 'Peripheral' to 'Master'
                apb_2_penable <= apb_master_penable;
                apb_2_pwrite  <= apb_master_pwrite;
                apb_2_paddr   <= apb_master_paddr;
                apb_2_pwdata  <= apb_master_pwdata;
                apb_2_presetn <= apb_master_presetn;
                -- From 'Master' to 'Peripheral'
                apb_master_prdata <= apb_2_prdata;
                apb_master_pready <= apb_2_pready;
                -- Reset signals to other peripherals.
                apb_1_paddr   <= (others => '0');
                apb_1_pwdata  <= (others => '0');
                apb_1_penable <= '0';
                apb_1_pwrite  <= '0';
                apb_1_presetn <= '0';
                apb_3_paddr   <= (others => '0');
                apb_3_pwdata  <= (others => '0');
                apb_3_penable <= '0';
                apb_3_pwrite  <= '0';
                apb_3_presetn <= '0';
                apb_4_paddr   <= (others => '0');
                apb_4_pwdata  <= (others => '0');
                apb_4_penable <= '0';
                apb_4_pwrite  <= '0';
                apb_4_presetn <= '0';
                apb_5_paddr   <= (others => '0');
                apb_5_pwdata  <= (others => '0');
                apb_5_penable <= '0';
                apb_5_pwrite  <= '0';
                apb_5_presetn <= '0';
                apb_6_paddr   <= (others => '0');
                apb_6_pwdata  <= (others => '0');
                apb_6_penable <= '0';
                apb_6_pwrite  <= '0';
                apb_6_presetn <= '0';
                apb_7_paddr   <= (others => '0');
                apb_7_pwdata  <= (others => '0');
                apb_7_penable <= '0';
                apb_7_pwrite  <= '0';
                apb_7_presetn <= '0';
                apb_8_paddr   <= (others => '0');
                apb_8_pwdata  <= (others => '0');
                apb_8_penable <= '0';
                apb_8_pwrite  <= '0';
                apb_8_presetn <= '0';
            ELSIF (apb_master_psel3 = '1') THEN
                -- From 'Peripheral' to 'Master'
                apb_3_penable <= apb_master_penable;
                apb_3_pwrite  <= apb_master_pwrite;
                apb_3_paddr   <= apb_master_paddr;
                apb_3_pwdata  <= apb_master_pwdata;
                apb_3_presetn <= apb_master_presetn;
                -- From 'Master' to 'Peripheral'
                apb_master_prdata <= apb_3_prdata;
                apb_master_pready <= apb_3_pready;
                -- Reset signals to other peripherals.
                apb_1_paddr   <= (others => '0');
                apb_1_pwdata  <= (others => '0');
                apb_1_penable <= '0';
                apb_1_pwrite  <= '0';
                apb_1_presetn <= '0';
                apb_2_paddr   <= (others => '0');
                apb_2_pwdata  <= (others => '0');
                apb_2_penable <= '0';
                apb_2_pwrite  <= '0';
                apb_2_presetn <= '0';
                apb_4_paddr   <= (others => '0');
                apb_4_pwdata  <= (others => '0');
                apb_4_penable <= '0';
                apb_4_pwrite  <= '0';
                apb_4_presetn <= '0';
                apb_5_paddr   <= (others => '0');
                apb_5_pwdata  <= (others => '0');
                apb_5_penable <= '0';
                apb_5_pwrite  <= '0';
                apb_5_presetn <= '0';
                apb_6_paddr   <= (others => '0');
                apb_6_pwdata  <= (others => '0');
                apb_6_penable <= '0';
                apb_6_pwrite  <= '0';
                apb_6_presetn <= '0';
                apb_7_paddr   <= (others => '0');
                apb_7_pwdata  <= (others => '0');
                apb_7_penable <= '0';
                apb_7_pwrite  <= '0';
                apb_7_presetn <= '0';
                apb_8_paddr   <= (others => '0');
                apb_8_pwdata  <= (others => '0');
                apb_8_penable <= '0';
                apb_8_pwrite  <= '0';
                apb_8_presetn <= '0';
            ELSIF (apb_master_psel4 = '1') THEN
                -- From 'Peripheral' to 'Master'
                apb_4_penable <= apb_master_penable;
                apb_4_pwrite  <= apb_master_pwrite;
                apb_4_paddr   <= apb_master_paddr;
                apb_4_pwdata  <= apb_master_pwdata;
                apb_4_presetn <= apb_master_presetn;
                -- From 'Master' to 'Peripheral'
                apb_master_prdata <= apb_4_prdata;
                apb_master_pready <= apb_4_pready;
                -- Reset signals to other peripherals.
                apb_1_paddr   <= (others => '0');
                apb_1_pwdata  <= (others => '0');
                apb_1_penable <= '0';
                apb_1_pwrite  <= '0';
                apb_1_presetn <= '0';
                apb_2_paddr   <= (others => '0');
                apb_2_pwdata  <= (others => '0');
                apb_2_penable <= '0';
                apb_2_pwrite  <= '0';
                apb_2_presetn <= '0';
                apb_3_paddr   <= (others => '0');
                apb_3_pwdata  <= (others => '0');
                apb_3_penable <= '0';
                apb_3_pwrite  <= '0';
                apb_3_presetn <= '0';
                apb_5_paddr   <= (others => '0');
                apb_5_pwdata  <= (others => '0');
                apb_5_penable <= '0';
                apb_5_pwrite  <= '0';
                apb_5_presetn <= '0';
                apb_6_paddr   <= (others => '0');
                apb_6_pwdata  <= (others => '0');
                apb_6_penable <= '0';
                apb_6_pwrite  <= '0';
                apb_6_presetn <= '0';
                apb_7_paddr   <= (others => '0');
                apb_7_pwdata  <= (others => '0');
                apb_7_penable <= '0';
                apb_7_pwrite  <= '0';
                apb_7_presetn <= '0';
                apb_8_paddr   <= (others => '0');
                apb_8_pwdata  <= (others => '0');
                apb_8_penable <= '0';
                apb_8_pwrite  <= '0';
                apb_8_presetn <= '0';
            ELSIF (apb_master_psel5 = '1') THEN
                -- From 'Peripheral' to 'Master'           
                apb_5_penable <= apb_master_penable;
                apb_5_pwrite  <= apb_master_pwrite;
                apb_5_paddr   <= apb_master_paddr;
                apb_5_pwdata  <= apb_master_pwdata;
                apb_5_presetn <= apb_master_presetn;
                -- From 'Master' to 'Peripheral'
                apb_master_prdata <= apb_5_prdata;
                apb_master_pready <= apb_5_pready;
                -- Reset signals to other peripherals.
                apb_1_paddr   <= (others => '0');
                apb_1_pwdata  <= (others => '0');
                apb_1_penable <= '0';
                apb_1_pwrite  <= '0';
                apb_1_presetn <= '0';
                apb_2_paddr   <= (others => '0');
                apb_2_pwdata  <= (others => '0');
                apb_2_penable <= '0';
                apb_2_pwrite  <= '0';
                apb_2_presetn <= '0';
                apb_3_paddr   <= (others => '0');
                apb_3_pwdata  <= (others => '0');
                apb_3_penable <= '0';
                apb_3_pwrite  <= '0';
                apb_3_presetn <= '0';
                apb_4_paddr   <= (others => '0');
                apb_4_pwdata  <= (others => '0');
                apb_4_penable <= '0';
                apb_4_pwrite  <= '0';
                apb_4_presetn <= '0';
                apb_6_paddr   <= (others => '0');
                apb_6_pwdata  <= (others => '0');
                apb_6_penable <= '0';
                apb_6_pwrite  <= '0';
                apb_6_presetn <= '0';
                apb_7_paddr   <= (others => '0');
                apb_7_pwdata  <= (others => '0');
                apb_7_penable <= '0';
                apb_7_pwrite  <= '0';
                apb_7_presetn <= '0';
                apb_8_paddr   <= (others => '0');
                apb_8_pwdata  <= (others => '0');
                apb_8_penable <= '0';
                apb_8_pwrite  <= '0';
                apb_8_presetn <= '0';
            ELSIF (apb_master_psel6 = '1') THEN
                -- From 'Peripheral' to 'Master'           
                apb_6_penable <= apb_master_penable;
                apb_6_pwrite  <= apb_master_pwrite;
                apb_6_paddr   <= apb_master_paddr;
                apb_6_pwdata  <= apb_master_pwdata;
                apb_6_presetn <= apb_master_presetn;
                -- From 'Master' to 'Peripheral'
                apb_master_prdata <= apb_6_prdata;
                apb_master_pready <= apb_6_pready;
                -- Reset signals to other peripherals.            
                apb_1_paddr   <= (others => '0');
                apb_1_pwdata  <= (others => '0');
                apb_1_penable <= '0';
                apb_1_pwrite  <= '0';
                apb_1_presetn <= '0';
                apb_2_paddr   <= (others => '0');
                apb_2_pwdata  <= (others => '0');
                apb_2_penable <= '0';
                apb_2_pwrite  <= '0';
                apb_2_presetn <= '0';
                apb_3_paddr   <= (others => '0');
                apb_3_pwdata  <= (others => '0');
                apb_3_penable <= '0';
                apb_3_pwrite  <= '0';
                apb_3_presetn <= '0';
                apb_4_paddr   <= (others => '0');
                apb_4_pwdata  <= (others => '0');
                apb_4_penable <= '0';
                apb_4_pwrite  <= '0';
                apb_4_presetn <= '0';
                apb_5_paddr   <= (others => '0');
                apb_5_pwdata  <= (others => '0');
                apb_5_penable <= '0';
                apb_5_pwrite  <= '0';
                apb_5_presetn <= '0';
                apb_7_paddr   <= (others => '0');
                apb_7_pwdata  <= (others => '0');
                apb_7_penable <= '0';
                apb_7_pwrite  <= '0';
                apb_7_presetn <= '0';
                apb_8_paddr   <= (others => '0');
                apb_8_pwdata  <= (others => '0');
                apb_8_penable <= '0';
                apb_8_pwrite  <= '0';
                apb_8_presetn <= '0';
            ELSIF (apb_master_psel7 = '1') THEN
                -- From 'Peripheral' to 'Master'           
                apb_7_penable <= apb_master_penable;
                apb_7_pwrite  <= apb_master_pwrite;
                apb_7_paddr   <= apb_master_paddr;
                apb_7_pwdata  <= apb_master_pwdata;
                apb_7_presetn <= apb_master_presetn;
                -- From 'Master' to 'Peripheral'
                apb_master_prdata <= apb_7_prdata;
                apb_master_pready <= apb_7_pready;
                -- Reset signals to other peripherals.
                apb_1_paddr   <= (others => '0');
                apb_1_pwdata  <= (others => '0');
                apb_1_penable <= '0';
                apb_1_pwrite  <= '0';
                apb_1_presetn <= '0';
                apb_2_paddr   <= (others => '0');
                apb_2_pwdata  <= (others => '0');
                apb_2_penable <= '0';
                apb_2_pwrite  <= '0';
                apb_2_presetn <= '0';
                apb_3_paddr   <= (others => '0');
                apb_3_pwdata  <= (others => '0');
                apb_3_penable <= '0';
                apb_3_pwrite  <= '0';
                apb_3_presetn <= '0';
                apb_4_paddr   <= (others => '0');
                apb_4_pwdata  <= (others => '0');
                apb_4_penable <= '0';
                apb_4_pwrite  <= '0';
                apb_4_presetn <= '0';
                apb_5_paddr   <= (others => '0');
                apb_5_pwdata  <= (others => '0');
                apb_5_penable <= '0';
                apb_5_pwrite  <= '0';
                apb_5_presetn <= '0';
                apb_6_paddr   <= (others => '0');
                apb_6_pwdata  <= (others => '0');
                apb_6_penable <= '0';
                apb_6_pwrite  <= '0';
                apb_6_presetn <= '0';
                apb_8_paddr   <= (others => '0');
                apb_8_pwdata  <= (others => '0');
                apb_8_penable <= '0';
                apb_8_pwrite  <= '0';
                apb_8_presetn <= '0';

            ELSIF (apb_master_psel8 = '1') THEN
                -- From 'Peripheral' to 'Master'           
                apb_8_penable <= apb_master_penable;
                apb_8_pwrite  <= apb_master_pwrite;
                apb_8_paddr   <= apb_master_paddr;
                apb_8_pwdata  <= apb_master_pwdata;
                apb_8_presetn <= apb_master_presetn;
                -- From 'Master' to 'Peripheral'
                apb_master_prdata <= apb_8_prdata;
                apb_master_pready <= apb_8_pready;
                -- Reset signals to other peripherals.

                apb_1_paddr   <= (others => '0');
                apb_1_pwdata  <= (others => '0');
                apb_1_penable <= '0';
                apb_1_pwrite  <= '0';
                apb_1_presetn <= '0';
                apb_2_paddr   <= (others => '0');
                apb_2_pwdata  <= (others => '0');
                apb_2_penable <= '0';
                apb_2_pwrite  <= '0';
                apb_2_presetn <= '0';
                apb_3_paddr   <= (others => '0');
                apb_3_pwdata  <= (others => '0');
                apb_3_penable <= '0';
                apb_3_pwrite  <= '0';
                apb_3_presetn <= '0';
                apb_4_paddr   <= (others => '0');
                apb_4_pwdata  <= (others => '0');
                apb_4_penable <= '0';
                apb_4_pwrite  <= '0';
                apb_4_presetn <= '0';
                apb_5_paddr   <= (others => '0');
                apb_5_pwdata  <= (others => '0');
                apb_5_penable <= '0';
                apb_5_pwrite  <= '0';
                apb_5_presetn <= '0';
                apb_6_paddr   <= (others => '0');
                apb_6_pwdata  <= (others => '0');
                apb_6_penable <= '0';
                apb_6_pwrite  <= '0';
                apb_6_presetn <= '0';
                apb_7_paddr   <= (others => '0');
                apb_7_pwdata  <= (others => '0');
                apb_7_penable <= '0';
                apb_7_pwrite  <= '0';
                apb_7_presetn <= '0';
            END IF;
            -- Pheriperal selection propagation.
            apb_1_psel <= apb_master_psel1;
            apb_2_psel <= apb_master_psel2;
            apb_3_psel <= apb_master_psel3;
            apb_4_psel <= apb_master_psel4;
            apb_5_psel <= apb_master_psel5;
            apb_6_psel <= apb_master_psel6;
            apb_7_psel <= apb_master_psel7;
            apb_8_psel <= apb_master_psel8;

        END IF;
    END PROCESS;
END amba_apb_bus_arch;
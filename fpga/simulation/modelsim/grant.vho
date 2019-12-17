-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "12/16/2019 21:58:06"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	rx : IN std_logic;
	tx : BUFFER std_logic;
	LED : BUFFER std_logic_vector(2 DOWNTO 0)
	);
END top;

-- Design Ports Information
-- tx	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[0]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[1]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[2]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_rx : std_logic;
SIGNAL ww_tx : std_logic;
SIGNAL ww_LED : std_logic_vector(2 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \tx~output_o\ : std_logic;
SIGNAL \LED[0]~output_o\ : std_logic;
SIGNAL \LED[1]~output_o\ : std_logic;
SIGNAL \LED[2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \rx~input_o\ : std_logic;
SIGNAL \U2|count_baud[0]~13_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \U2|count_baud[0]~14\ : std_logic;
SIGNAL \U2|count_baud[1]~15_combout\ : std_logic;
SIGNAL \U2|count_baud[1]~16\ : std_logic;
SIGNAL \U2|count_baud[2]~17_combout\ : std_logic;
SIGNAL \U2|count_baud[2]~18\ : std_logic;
SIGNAL \U2|count_baud[3]~19_combout\ : std_logic;
SIGNAL \U2|count_baud[3]~20\ : std_logic;
SIGNAL \U2|count_baud[4]~21_combout\ : std_logic;
SIGNAL \U2|count_baud[4]~22\ : std_logic;
SIGNAL \U2|count_baud[5]~23_combout\ : std_logic;
SIGNAL \U2|count_baud[5]~24\ : std_logic;
SIGNAL \U2|count_baud[6]~25_combout\ : std_logic;
SIGNAL \U2|count_baud[6]~26\ : std_logic;
SIGNAL \U2|count_baud[7]~27_combout\ : std_logic;
SIGNAL \U2|count_baud[7]~28\ : std_logic;
SIGNAL \U2|count_baud[8]~29_combout\ : std_logic;
SIGNAL \U2|count_baud[8]~30\ : std_logic;
SIGNAL \U2|count_baud[9]~31_combout\ : std_logic;
SIGNAL \U2|count_baud[9]~32\ : std_logic;
SIGNAL \U2|count_baud[10]~33_combout\ : std_logic;
SIGNAL \U2|count_baud[10]~34\ : std_logic;
SIGNAL \U2|count_baud[11]~35_combout\ : std_logic;
SIGNAL \U2|count_baud[11]~36\ : std_logic;
SIGNAL \U2|count_baud[12]~37_combout\ : std_logic;
SIGNAL \U2|LessThan0~0_combout\ : std_logic;
SIGNAL \U2|LessThan0~1_combout\ : std_logic;
SIGNAL \U2|LessThan0~2_combout\ : std_logic;
SIGNAL \U2|LessThan0~3_combout\ : std_logic;
SIGNAL \U2|count_os[0]~9_combout\ : std_logic;
SIGNAL \U2|count_os[0]~10\ : std_logic;
SIGNAL \U2|count_os[1]~11_combout\ : std_logic;
SIGNAL \U2|count_os[1]~12\ : std_logic;
SIGNAL \U2|count_os[2]~13_combout\ : std_logic;
SIGNAL \U2|count_os[2]~14\ : std_logic;
SIGNAL \U2|count_os[3]~15_combout\ : std_logic;
SIGNAL \U2|count_os[3]~16\ : std_logic;
SIGNAL \U2|count_os[4]~17_combout\ : std_logic;
SIGNAL \U2|count_os[4]~18\ : std_logic;
SIGNAL \U2|count_os[5]~19_combout\ : std_logic;
SIGNAL \U2|count_os[5]~20\ : std_logic;
SIGNAL \U2|count_os[6]~21_combout\ : std_logic;
SIGNAL \U2|count_os[6]~22\ : std_logic;
SIGNAL \U2|count_os[7]~23_combout\ : std_logic;
SIGNAL \U2|count_os[7]~24\ : std_logic;
SIGNAL \U2|count_os[8]~25_combout\ : std_logic;
SIGNAL \U2|LessThan1~0_combout\ : std_logic;
SIGNAL \U2|LessThan1~1_combout\ : std_logic;
SIGNAL \U2|LessThan1~2_combout\ : std_logic;
SIGNAL \U2|os_pulse~feeder_combout\ : std_logic;
SIGNAL \U2|os_pulse~q\ : std_logic;
SIGNAL \U2|rx_busy~3_combout\ : std_logic;
SIGNAL \U2|rx_state~2_combout\ : std_logic;
SIGNAL \U2|rx_state~q\ : std_logic;
SIGNAL \U2|os_count[3]~1_combout\ : std_logic;
SIGNAL \U2|os_count[3]~3_combout\ : std_logic;
SIGNAL \U2|os_count[0]~6_combout\ : std_logic;
SIGNAL \U2|os_count[1]~7_combout\ : std_logic;
SIGNAL \U2|Add2~0_combout\ : std_logic;
SIGNAL \U2|os_count[2]~5_combout\ : std_logic;
SIGNAL \U2|LessThan3~0_combout\ : std_logic;
SIGNAL \U2|os_count[2]~0_combout\ : std_logic;
SIGNAL \U2|os_count[3]~2_combout\ : std_logic;
SIGNAL \U2|os_count[3]~4_combout\ : std_logic;
SIGNAL \U2|rx_busy~2_combout\ : std_logic;
SIGNAL \U2|rx_count[3]~1_combout\ : std_logic;
SIGNAL \U2|rx_count~0_combout\ : std_logic;
SIGNAL \U2|rx_count~2_combout\ : std_logic;
SIGNAL \U2|rx_count~3_combout\ : std_logic;
SIGNAL \U2|Add3~0_combout\ : std_logic;
SIGNAL \U2|rx_count[3]~4_combout\ : std_logic;
SIGNAL \U2|LessThan4~0_combout\ : std_logic;
SIGNAL \U2|rx_buffer[1]~0_combout\ : std_logic;
SIGNAL \U2|rx_buffer[8]~feeder_combout\ : std_logic;
SIGNAL \U2|rx_buffer[7]~feeder_combout\ : std_logic;
SIGNAL \U2|rx_buffer[6]~feeder_combout\ : std_logic;
SIGNAL \U2|rx_buffer[5]~feeder_combout\ : std_logic;
SIGNAL \U2|rx_buffer[4]~feeder_combout\ : std_logic;
SIGNAL \U2|rx_buffer[3]~feeder_combout\ : std_logic;
SIGNAL \U2|rx_data[2]~feeder_combout\ : std_logic;
SIGNAL \U2|rx_data[0]~0_combout\ : std_logic;
SIGNAL \U1|tmp[2]~feeder_combout\ : std_logic;
SIGNAL \U1|i[0]~5_combout\ : std_logic;
SIGNAL \U2|rx_busy~4_combout\ : std_logic;
SIGNAL \U2|rx_busy~q\ : std_logic;
SIGNAL \U1|state_of_rx_busy~0_combout\ : std_logic;
SIGNAL \U1|state_of_rx_busy~q\ : std_logic;
SIGNAL \U1|secret[0]~0_combout\ : std_logic;
SIGNAL \U1|tx_ena~0_combout\ : std_logic;
SIGNAL \U1|tx_ena~q\ : std_logic;
SIGNAL \U2|tx_count~0_combout\ : std_logic;
SIGNAL \U2|tx_count[0]~1_combout\ : std_logic;
SIGNAL \U2|baud_pulse~0_combout\ : std_logic;
SIGNAL \U2|baud_pulse~q\ : std_logic;
SIGNAL \U2|Add4~0_combout\ : std_logic;
SIGNAL \U2|tx_count~3_combout\ : std_logic;
SIGNAL \U2|Add4~1\ : std_logic;
SIGNAL \U2|Add4~2_combout\ : std_logic;
SIGNAL \U2|tx_count~2_combout\ : std_logic;
SIGNAL \U2|Add4~3\ : std_logic;
SIGNAL \U2|Add4~4_combout\ : std_logic;
SIGNAL \U2|tx_count~4_combout\ : std_logic;
SIGNAL \U2|Add4~5\ : std_logic;
SIGNAL \U2|Add4~6_combout\ : std_logic;
SIGNAL \U2|LessThan5~0_combout\ : std_logic;
SIGNAL \U2|tx_state~q\ : std_logic;
SIGNAL \U2|tx_busy~0_combout\ : std_logic;
SIGNAL \U2|tx_busy~q\ : std_logic;
SIGNAL \U1|i[0]~6\ : std_logic;
SIGNAL \U1|i[1]~8_combout\ : std_logic;
SIGNAL \U1|Equal0~0_combout\ : std_logic;
SIGNAL \U1|tx_data[0]~0_combout\ : std_logic;
SIGNAL \U1|i[4]~7_combout\ : std_logic;
SIGNAL \U1|i[1]~9\ : std_logic;
SIGNAL \U1|i[2]~10_combout\ : std_logic;
SIGNAL \U1|i[2]~11\ : std_logic;
SIGNAL \U1|i[3]~12_combout\ : std_logic;
SIGNAL \U1|i[3]~13\ : std_logic;
SIGNAL \U1|i[4]~14_combout\ : std_logic;
SIGNAL \U1|Selector1~0_combout\ : std_logic;
SIGNAL \U1|Selector1~1_combout\ : std_logic;
SIGNAL \U1|sig_state.S0~q\ : std_logic;
SIGNAL \U1|Selector2~0_combout\ : std_logic;
SIGNAL \U1|Selector2~1_combout\ : std_logic;
SIGNAL \U1|sig_state.S1~q\ : std_logic;
SIGNAL \U1|tmp[1]~0_combout\ : std_logic;
SIGNAL \U1|Selector3~0_combout\ : std_logic;
SIGNAL \U1|sig_state.S2~q\ : std_logic;
SIGNAL \U1|tmp[0]~5_combout\ : std_logic;
SIGNAL \U1|tx_data[2]~feeder_combout\ : std_logic;
SIGNAL \U1|tx_data[0]~1_combout\ : std_logic;
SIGNAL \U2|rx_data[3]~feeder_combout\ : std_logic;
SIGNAL \U1|tmp[3]~feeder_combout\ : std_logic;
SIGNAL \U2|rx_data[7]~feeder_combout\ : std_logic;
SIGNAL \U1|tmp[7]~feeder_combout\ : std_logic;
SIGNAL \U1|tx_data[7]~feeder_combout\ : std_logic;
SIGNAL \U2|rx_buffer[2]~feeder_combout\ : std_logic;
SIGNAL \U2|rx_data[1]~feeder_combout\ : std_logic;
SIGNAL \U1|tmp[1]~feeder_combout\ : std_logic;
SIGNAL \U1|tx_data[1]~feeder_combout\ : std_logic;
SIGNAL \U2|rx_buffer[1]~feeder_combout\ : std_logic;
SIGNAL \U1|tmp[0]~1_combout\ : std_logic;
SIGNAL \U1|secret[0]~1_combout\ : std_logic;
SIGNAL \U1|secret[1]~feeder_combout\ : std_logic;
SIGNAL \U1|Mux0~0_combout\ : std_logic;
SIGNAL \U1|Mux0~1_combout\ : std_logic;
SIGNAL \U2|rx_data[5]~feeder_combout\ : std_logic;
SIGNAL \U1|secret[5]~feeder_combout\ : std_logic;
SIGNAL \U2|rx_data[4]~feeder_combout\ : std_logic;
SIGNAL \U2|rx_data[6]~feeder_combout\ : std_logic;
SIGNAL \U1|secret[6]~feeder_combout\ : std_logic;
SIGNAL \U1|Mux0~2_combout\ : std_logic;
SIGNAL \U1|Mux0~3_combout\ : std_logic;
SIGNAL \U1|tmp[0]~2_combout\ : std_logic;
SIGNAL \U1|tmp[0]~3_combout\ : std_logic;
SIGNAL \U1|tmp[0]~4_combout\ : std_logic;
SIGNAL \U1|tx_data[0]~feeder_combout\ : std_logic;
SIGNAL \U2|tx_parity[8]~1_combout\ : std_logic;
SIGNAL \U1|tmp[4]~feeder_combout\ : std_logic;
SIGNAL \U1|tmp[5]~feeder_combout\ : std_logic;
SIGNAL \U1|tmp[6]~feeder_combout\ : std_logic;
SIGNAL \U1|tx_data[6]~feeder_combout\ : std_logic;
SIGNAL \U2|tx_parity[8]~0_combout\ : std_logic;
SIGNAL \U2|tx_buffer~11_combout\ : std_logic;
SIGNAL \U2|tx_buffer[0]~1_combout\ : std_logic;
SIGNAL \U2|tx_buffer~10_combout\ : std_logic;
SIGNAL \U2|tx_buffer~9_combout\ : std_logic;
SIGNAL \U2|tx_buffer~8_combout\ : std_logic;
SIGNAL \U2|tx_buffer~7_combout\ : std_logic;
SIGNAL \U2|tx_buffer~6_combout\ : std_logic;
SIGNAL \U2|tx_buffer~5_combout\ : std_logic;
SIGNAL \U2|tx_buffer~4_combout\ : std_logic;
SIGNAL \U2|tx_buffer~3_combout\ : std_logic;
SIGNAL \U2|tx_buffer~2_combout\ : std_logic;
SIGNAL \U2|tx_buffer~0_combout\ : std_logic;
SIGNAL \U2|tx~feeder_combout\ : std_logic;
SIGNAL \U2|tx~q\ : std_logic;
SIGNAL \U2|tx_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|i\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U2|count_baud\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U1|tmp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U2|count_os\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U2|tx_buffer\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \U1|tx_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U2|os_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|rx_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|rx_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U1|secret\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U2|rx_buffer\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U2|ALT_INV_tx_state~q\ : std_logic;
SIGNAL \U2|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \U1|ALT_INV_sig_state.S2~q\ : std_logic;
SIGNAL \U1|ALT_INV_sig_state.S1~q\ : std_logic;
SIGNAL \U2|ALT_INV_tx~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_rx <= rx;
tx <= ww_tx;
LED <= ww_LED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\U2|ALT_INV_tx_state~q\ <= NOT \U2|tx_state~q\;
\U2|ALT_INV_LessThan0~3_combout\ <= NOT \U2|LessThan0~3_combout\;
\U1|ALT_INV_sig_state.S2~q\ <= NOT \U1|sig_state.S2~q\;
\U1|ALT_INV_sig_state.S1~q\ <= NOT \U1|sig_state.S1~q\;
\U2|ALT_INV_tx~q\ <= NOT \U2|tx~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X28_Y24_N9
\tx~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|ALT_INV_tx~q\,
	devoe => ww_devoe,
	o => \tx~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\LED[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|sig_state.S0~q\,
	devoe => ww_devoe,
	o => \LED[0]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\LED[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ALT_INV_sig_state.S1~q\,
	devoe => ww_devoe,
	o => \LED[1]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\LED[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ALT_INV_sig_state.S2~q\,
	devoe => ww_devoe,
	o => \LED[2]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X28_Y24_N15
\rx~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx,
	o => \rx~input_o\);

-- Location: LCCOMB_X29_Y14_N0
\U2|count_baud[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count_baud[0]~13_combout\ = \U2|count_baud\(0) $ (VCC)
-- \U2|count_baud[0]~14\ = CARRY(\U2|count_baud\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count_baud\(0),
	datad => VCC,
	combout => \U2|count_baud[0]~13_combout\,
	cout => \U2|count_baud[0]~14\);

-- Location: IOIBUF_X34_Y12_N1
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G9
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X29_Y14_N1
\U2|count_baud[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count_baud[0]~13_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \U2|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count_baud\(0));

-- Location: LCCOMB_X29_Y14_N2
\U2|count_baud[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count_baud[1]~15_combout\ = (\U2|count_baud\(1) & (!\U2|count_baud[0]~14\)) # (!\U2|count_baud\(1) & ((\U2|count_baud[0]~14\) # (GND)))
-- \U2|count_baud[1]~16\ = CARRY((!\U2|count_baud[0]~14\) # (!\U2|count_baud\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count_baud\(1),
	datad => VCC,
	cin => \U2|count_baud[0]~14\,
	combout => \U2|count_baud[1]~15_combout\,
	cout => \U2|count_baud[1]~16\);

-- Location: FF_X29_Y14_N3
\U2|count_baud[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count_baud[1]~15_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \U2|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count_baud\(1));

-- Location: LCCOMB_X29_Y14_N4
\U2|count_baud[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count_baud[2]~17_combout\ = (\U2|count_baud\(2) & (\U2|count_baud[1]~16\ $ (GND))) # (!\U2|count_baud\(2) & (!\U2|count_baud[1]~16\ & VCC))
-- \U2|count_baud[2]~18\ = CARRY((\U2|count_baud\(2) & !\U2|count_baud[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count_baud\(2),
	datad => VCC,
	cin => \U2|count_baud[1]~16\,
	combout => \U2|count_baud[2]~17_combout\,
	cout => \U2|count_baud[2]~18\);

-- Location: FF_X29_Y14_N5
\U2|count_baud[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count_baud[2]~17_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \U2|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count_baud\(2));

-- Location: LCCOMB_X29_Y14_N6
\U2|count_baud[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count_baud[3]~19_combout\ = (\U2|count_baud\(3) & (!\U2|count_baud[2]~18\)) # (!\U2|count_baud\(3) & ((\U2|count_baud[2]~18\) # (GND)))
-- \U2|count_baud[3]~20\ = CARRY((!\U2|count_baud[2]~18\) # (!\U2|count_baud\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count_baud\(3),
	datad => VCC,
	cin => \U2|count_baud[2]~18\,
	combout => \U2|count_baud[3]~19_combout\,
	cout => \U2|count_baud[3]~20\);

-- Location: FF_X29_Y14_N7
\U2|count_baud[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count_baud[3]~19_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \U2|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count_baud\(3));

-- Location: LCCOMB_X29_Y14_N8
\U2|count_baud[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count_baud[4]~21_combout\ = (\U2|count_baud\(4) & (\U2|count_baud[3]~20\ $ (GND))) # (!\U2|count_baud\(4) & (!\U2|count_baud[3]~20\ & VCC))
-- \U2|count_baud[4]~22\ = CARRY((\U2|count_baud\(4) & !\U2|count_baud[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count_baud\(4),
	datad => VCC,
	cin => \U2|count_baud[3]~20\,
	combout => \U2|count_baud[4]~21_combout\,
	cout => \U2|count_baud[4]~22\);

-- Location: FF_X29_Y14_N9
\U2|count_baud[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count_baud[4]~21_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \U2|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count_baud\(4));

-- Location: LCCOMB_X29_Y14_N10
\U2|count_baud[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count_baud[5]~23_combout\ = (\U2|count_baud\(5) & (!\U2|count_baud[4]~22\)) # (!\U2|count_baud\(5) & ((\U2|count_baud[4]~22\) # (GND)))
-- \U2|count_baud[5]~24\ = CARRY((!\U2|count_baud[4]~22\) # (!\U2|count_baud\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count_baud\(5),
	datad => VCC,
	cin => \U2|count_baud[4]~22\,
	combout => \U2|count_baud[5]~23_combout\,
	cout => \U2|count_baud[5]~24\);

-- Location: FF_X29_Y14_N11
\U2|count_baud[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count_baud[5]~23_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \U2|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count_baud\(5));

-- Location: LCCOMB_X29_Y14_N12
\U2|count_baud[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count_baud[6]~25_combout\ = (\U2|count_baud\(6) & (\U2|count_baud[5]~24\ $ (GND))) # (!\U2|count_baud\(6) & (!\U2|count_baud[5]~24\ & VCC))
-- \U2|count_baud[6]~26\ = CARRY((\U2|count_baud\(6) & !\U2|count_baud[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count_baud\(6),
	datad => VCC,
	cin => \U2|count_baud[5]~24\,
	combout => \U2|count_baud[6]~25_combout\,
	cout => \U2|count_baud[6]~26\);

-- Location: FF_X29_Y14_N13
\U2|count_baud[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count_baud[6]~25_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \U2|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count_baud\(6));

-- Location: LCCOMB_X29_Y14_N14
\U2|count_baud[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count_baud[7]~27_combout\ = (\U2|count_baud\(7) & (!\U2|count_baud[6]~26\)) # (!\U2|count_baud\(7) & ((\U2|count_baud[6]~26\) # (GND)))
-- \U2|count_baud[7]~28\ = CARRY((!\U2|count_baud[6]~26\) # (!\U2|count_baud\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count_baud\(7),
	datad => VCC,
	cin => \U2|count_baud[6]~26\,
	combout => \U2|count_baud[7]~27_combout\,
	cout => \U2|count_baud[7]~28\);

-- Location: FF_X29_Y14_N15
\U2|count_baud[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count_baud[7]~27_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \U2|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count_baud\(7));

-- Location: LCCOMB_X29_Y14_N16
\U2|count_baud[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count_baud[8]~29_combout\ = (\U2|count_baud\(8) & (\U2|count_baud[7]~28\ $ (GND))) # (!\U2|count_baud\(8) & (!\U2|count_baud[7]~28\ & VCC))
-- \U2|count_baud[8]~30\ = CARRY((\U2|count_baud\(8) & !\U2|count_baud[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count_baud\(8),
	datad => VCC,
	cin => \U2|count_baud[7]~28\,
	combout => \U2|count_baud[8]~29_combout\,
	cout => \U2|count_baud[8]~30\);

-- Location: FF_X29_Y14_N17
\U2|count_baud[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count_baud[8]~29_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \U2|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count_baud\(8));

-- Location: LCCOMB_X29_Y14_N18
\U2|count_baud[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count_baud[9]~31_combout\ = (\U2|count_baud\(9) & (!\U2|count_baud[8]~30\)) # (!\U2|count_baud\(9) & ((\U2|count_baud[8]~30\) # (GND)))
-- \U2|count_baud[9]~32\ = CARRY((!\U2|count_baud[8]~30\) # (!\U2|count_baud\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count_baud\(9),
	datad => VCC,
	cin => \U2|count_baud[8]~30\,
	combout => \U2|count_baud[9]~31_combout\,
	cout => \U2|count_baud[9]~32\);

-- Location: FF_X29_Y14_N19
\U2|count_baud[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count_baud[9]~31_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \U2|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count_baud\(9));

-- Location: LCCOMB_X29_Y14_N20
\U2|count_baud[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count_baud[10]~33_combout\ = (\U2|count_baud\(10) & (\U2|count_baud[9]~32\ $ (GND))) # (!\U2|count_baud\(10) & (!\U2|count_baud[9]~32\ & VCC))
-- \U2|count_baud[10]~34\ = CARRY((\U2|count_baud\(10) & !\U2|count_baud[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count_baud\(10),
	datad => VCC,
	cin => \U2|count_baud[9]~32\,
	combout => \U2|count_baud[10]~33_combout\,
	cout => \U2|count_baud[10]~34\);

-- Location: FF_X29_Y14_N21
\U2|count_baud[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count_baud[10]~33_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \U2|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count_baud\(10));

-- Location: LCCOMB_X29_Y14_N22
\U2|count_baud[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count_baud[11]~35_combout\ = (\U2|count_baud\(11) & (!\U2|count_baud[10]~34\)) # (!\U2|count_baud\(11) & ((\U2|count_baud[10]~34\) # (GND)))
-- \U2|count_baud[11]~36\ = CARRY((!\U2|count_baud[10]~34\) # (!\U2|count_baud\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count_baud\(11),
	datad => VCC,
	cin => \U2|count_baud[10]~34\,
	combout => \U2|count_baud[11]~35_combout\,
	cout => \U2|count_baud[11]~36\);

-- Location: FF_X29_Y14_N23
\U2|count_baud[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count_baud[11]~35_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \U2|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count_baud\(11));

-- Location: LCCOMB_X29_Y14_N24
\U2|count_baud[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count_baud[12]~37_combout\ = \U2|count_baud[11]~36\ $ (!\U2|count_baud\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U2|count_baud\(12),
	cin => \U2|count_baud[11]~36\,
	combout => \U2|count_baud[12]~37_combout\);

-- Location: FF_X29_Y14_N25
\U2|count_baud[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count_baud[12]~37_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \U2|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count_baud\(12));

-- Location: LCCOMB_X29_Y14_N26
\U2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan0~0_combout\ = (!\U2|count_baud\(3) & (((!\U2|count_baud\(1)) # (!\U2|count_baud\(2))) # (!\U2|count_baud\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count_baud\(3),
	datab => \U2|count_baud\(0),
	datac => \U2|count_baud\(2),
	datad => \U2|count_baud\(1),
	combout => \U2|LessThan0~0_combout\);

-- Location: LCCOMB_X29_Y14_N28
\U2|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan0~1_combout\ = (\U2|count_baud\(6) & ((\U2|count_baud\(5)) # ((!\U2|LessThan0~0_combout\ & \U2|count_baud\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count_baud\(6),
	datab => \U2|count_baud\(5),
	datac => \U2|LessThan0~0_combout\,
	datad => \U2|count_baud\(4),
	combout => \U2|LessThan0~1_combout\);

-- Location: LCCOMB_X29_Y14_N30
\U2|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan0~2_combout\ = (\U2|count_baud\(9)) # ((\U2|count_baud\(8)) # ((\U2|count_baud\(7)) # (\U2|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count_baud\(9),
	datab => \U2|count_baud\(8),
	datac => \U2|count_baud\(7),
	datad => \U2|LessThan0~1_combout\,
	combout => \U2|LessThan0~2_combout\);

-- Location: LCCOMB_X30_Y14_N26
\U2|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan0~3_combout\ = ((!\U2|count_baud\(11) & ((!\U2|LessThan0~2_combout\) # (!\U2|count_baud\(10))))) # (!\U2|count_baud\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count_baud\(10),
	datab => \U2|count_baud\(12),
	datac => \U2|count_baud\(11),
	datad => \U2|LessThan0~2_combout\,
	combout => \U2|LessThan0~3_combout\);

-- Location: LCCOMB_X30_Y14_N2
\U2|count_os[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count_os[0]~9_combout\ = (((\U2|LessThan0~3_combout\ & \U2|count_os\(0))))
-- \U2|count_os[0]~10\ = CARRY((\U2|LessThan0~3_combout\ & \U2|count_os\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|LessThan0~3_combout\,
	datab => \U2|count_os\(0),
	datad => VCC,
	combout => \U2|count_os[0]~9_combout\,
	cout => \U2|count_os[0]~10\);

-- Location: FF_X30_Y14_N3
\U2|count_os[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count_os[0]~9_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \U2|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count_os\(0));

-- Location: LCCOMB_X30_Y14_N4
\U2|count_os[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count_os[1]~11_combout\ = (\U2|count_os[0]~10\ & (((!\U2|count_os\(1))) # (!\U2|LessThan0~3_combout\))) # (!\U2|count_os[0]~10\ & (((\U2|LessThan0~3_combout\ & \U2|count_os\(1))) # (GND)))
-- \U2|count_os[1]~12\ = CARRY(((!\U2|count_os[0]~10\) # (!\U2|count_os\(1))) # (!\U2|LessThan0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|LessThan0~3_combout\,
	datab => \U2|count_os\(1),
	datad => VCC,
	cin => \U2|count_os[0]~10\,
	combout => \U2|count_os[1]~11_combout\,
	cout => \U2|count_os[1]~12\);

-- Location: FF_X30_Y14_N5
\U2|count_os[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count_os[1]~11_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \U2|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count_os\(1));

-- Location: LCCOMB_X30_Y14_N6
\U2|count_os[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count_os[2]~13_combout\ = (\U2|count_os[1]~12\ & (\U2|LessThan0~3_combout\ & (\U2|count_os\(2) & VCC))) # (!\U2|count_os[1]~12\ & ((((\U2|LessThan0~3_combout\ & \U2|count_os\(2))))))
-- \U2|count_os[2]~14\ = CARRY((\U2|LessThan0~3_combout\ & (\U2|count_os\(2) & !\U2|count_os[1]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|LessThan0~3_combout\,
	datab => \U2|count_os\(2),
	datad => VCC,
	cin => \U2|count_os[1]~12\,
	combout => \U2|count_os[2]~13_combout\,
	cout => \U2|count_os[2]~14\);

-- Location: FF_X30_Y14_N7
\U2|count_os[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count_os[2]~13_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \U2|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count_os\(2));

-- Location: LCCOMB_X30_Y14_N8
\U2|count_os[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count_os[3]~15_combout\ = (\U2|count_os[2]~14\ & (((!\U2|count_os\(3))) # (!\U2|LessThan0~3_combout\))) # (!\U2|count_os[2]~14\ & (((\U2|LessThan0~3_combout\ & \U2|count_os\(3))) # (GND)))
-- \U2|count_os[3]~16\ = CARRY(((!\U2|count_os[2]~14\) # (!\U2|count_os\(3))) # (!\U2|LessThan0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|LessThan0~3_combout\,
	datab => \U2|count_os\(3),
	datad => VCC,
	cin => \U2|count_os[2]~14\,
	combout => \U2|count_os[3]~15_combout\,
	cout => \U2|count_os[3]~16\);

-- Location: FF_X30_Y14_N9
\U2|count_os[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count_os[3]~15_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \U2|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count_os\(3));

-- Location: LCCOMB_X30_Y14_N10
\U2|count_os[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count_os[4]~17_combout\ = (\U2|count_os[3]~16\ & (\U2|LessThan0~3_combout\ & (\U2|count_os\(4) & VCC))) # (!\U2|count_os[3]~16\ & ((((\U2|LessThan0~3_combout\ & \U2|count_os\(4))))))
-- \U2|count_os[4]~18\ = CARRY((\U2|LessThan0~3_combout\ & (\U2|count_os\(4) & !\U2|count_os[3]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|LessThan0~3_combout\,
	datab => \U2|count_os\(4),
	datad => VCC,
	cin => \U2|count_os[3]~16\,
	combout => \U2|count_os[4]~17_combout\,
	cout => \U2|count_os[4]~18\);

-- Location: FF_X30_Y14_N11
\U2|count_os[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count_os[4]~17_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \U2|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count_os\(4));

-- Location: LCCOMB_X30_Y14_N12
\U2|count_os[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count_os[5]~19_combout\ = (\U2|count_os[4]~18\ & (((!\U2|count_os\(5))) # (!\U2|LessThan0~3_combout\))) # (!\U2|count_os[4]~18\ & (((\U2|LessThan0~3_combout\ & \U2|count_os\(5))) # (GND)))
-- \U2|count_os[5]~20\ = CARRY(((!\U2|count_os[4]~18\) # (!\U2|count_os\(5))) # (!\U2|LessThan0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|LessThan0~3_combout\,
	datab => \U2|count_os\(5),
	datad => VCC,
	cin => \U2|count_os[4]~18\,
	combout => \U2|count_os[5]~19_combout\,
	cout => \U2|count_os[5]~20\);

-- Location: FF_X30_Y14_N13
\U2|count_os[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count_os[5]~19_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \U2|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count_os\(5));

-- Location: LCCOMB_X30_Y14_N14
\U2|count_os[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count_os[6]~21_combout\ = (\U2|count_os[5]~20\ & (\U2|LessThan0~3_combout\ & (\U2|count_os\(6) & VCC))) # (!\U2|count_os[5]~20\ & ((((\U2|LessThan0~3_combout\ & \U2|count_os\(6))))))
-- \U2|count_os[6]~22\ = CARRY((\U2|LessThan0~3_combout\ & (\U2|count_os\(6) & !\U2|count_os[5]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|LessThan0~3_combout\,
	datab => \U2|count_os\(6),
	datad => VCC,
	cin => \U2|count_os[5]~20\,
	combout => \U2|count_os[6]~21_combout\,
	cout => \U2|count_os[6]~22\);

-- Location: FF_X30_Y14_N15
\U2|count_os[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count_os[6]~21_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \U2|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count_os\(6));

-- Location: LCCOMB_X30_Y14_N16
\U2|count_os[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count_os[7]~23_combout\ = (\U2|count_os[6]~22\ & (((!\U2|count_os\(7))) # (!\U2|LessThan0~3_combout\))) # (!\U2|count_os[6]~22\ & (((\U2|LessThan0~3_combout\ & \U2|count_os\(7))) # (GND)))
-- \U2|count_os[7]~24\ = CARRY(((!\U2|count_os[6]~22\) # (!\U2|count_os\(7))) # (!\U2|LessThan0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|LessThan0~3_combout\,
	datab => \U2|count_os\(7),
	datad => VCC,
	cin => \U2|count_os[6]~22\,
	combout => \U2|count_os[7]~23_combout\,
	cout => \U2|count_os[7]~24\);

-- Location: FF_X30_Y14_N17
\U2|count_os[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count_os[7]~23_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \U2|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count_os\(7));

-- Location: LCCOMB_X30_Y14_N18
\U2|count_os[8]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count_os[8]~25_combout\ = \U2|count_os[7]~24\ $ (((!\U2|LessThan0~3_combout\) # (!\U2|count_os\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count_os\(8),
	datad => \U2|LessThan0~3_combout\,
	cin => \U2|count_os[7]~24\,
	combout => \U2|count_os[8]~25_combout\);

-- Location: FF_X30_Y14_N19
\U2|count_os[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count_os[8]~25_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \U2|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count_os\(8));

-- Location: LCCOMB_X30_Y14_N24
\U2|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan1~0_combout\ = (!\U2|count_os\(4) & (!\U2|count_os\(5) & (!\U2|count_os\(3) & !\U2|count_os\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count_os\(4),
	datab => \U2|count_os\(5),
	datac => \U2|count_os\(3),
	datad => \U2|count_os\(2),
	combout => \U2|LessThan1~0_combout\);

-- Location: LCCOMB_X30_Y14_N22
\U2|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan1~1_combout\ = ((!\U2|count_os\(7) & ((\U2|LessThan1~0_combout\) # (!\U2|count_os\(6))))) # (!\U2|count_os\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count_os\(8),
	datab => \U2|count_os\(6),
	datac => \U2|count_os\(7),
	datad => \U2|LessThan1~0_combout\,
	combout => \U2|LessThan1~1_combout\);

-- Location: LCCOMB_X30_Y14_N28
\U2|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan1~2_combout\ = (!\U2|LessThan1~1_combout\ & \U2|LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|LessThan1~1_combout\,
	datad => \U2|LessThan0~3_combout\,
	combout => \U2|LessThan1~2_combout\);

-- Location: LCCOMB_X30_Y14_N20
\U2|os_pulse~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|os_pulse~feeder_combout\ = \U2|LessThan1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|LessThan1~2_combout\,
	combout => \U2|os_pulse~feeder_combout\);

-- Location: FF_X30_Y14_N21
\U2|os_pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|os_pulse~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|os_pulse~q\);

-- Location: LCCOMB_X31_Y12_N0
\U2|rx_busy~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|rx_busy~3_combout\ = (\U2|os_count\(3) & (!\U2|LessThan4~0_combout\ & \U2|LessThan3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|os_count\(3),
	datac => \U2|LessThan4~0_combout\,
	datad => \U2|LessThan3~0_combout\,
	combout => \U2|rx_busy~3_combout\);

-- Location: LCCOMB_X31_Y12_N16
\U2|rx_state~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|rx_state~2_combout\ = (\U2|rx_state~q\ & (((!\U2|rx_busy~3_combout\)))) # (!\U2|rx_state~q\ & (!\rx~input_o\ & (\U2|os_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx~input_o\,
	datab => \U2|os_count\(3),
	datac => \U2|rx_state~q\,
	datad => \U2|rx_busy~3_combout\,
	combout => \U2|rx_state~2_combout\);

-- Location: FF_X31_Y12_N17
\U2|rx_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|rx_state~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U2|os_pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|rx_state~q\);

-- Location: LCCOMB_X31_Y12_N12
\U2|os_count[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|os_count[3]~1_combout\ = (\U2|rx_state~q\ & (\U2|os_count\(3) & \U2|LessThan3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|rx_state~q\,
	datac => \U2|os_count\(3),
	datad => \U2|LessThan3~0_combout\,
	combout => \U2|os_count[3]~1_combout\);

-- Location: LCCOMB_X31_Y12_N24
\U2|os_count[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|os_count[3]~3_combout\ = (\U2|os_pulse~q\ & ((\U2|LessThan4~0_combout\) # (!\U2|os_count[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|os_pulse~q\,
	datac => \U2|LessThan4~0_combout\,
	datad => \U2|os_count[3]~1_combout\,
	combout => \U2|os_count[3]~3_combout\);

-- Location: LCCOMB_X31_Y12_N26
\U2|os_count[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|os_count[0]~6_combout\ = (\U2|os_count\(0) & ((!\U2|os_count[3]~3_combout\))) # (!\U2|os_count\(0) & (\U2|os_count[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|os_count[3]~2_combout\,
	datac => \U2|os_count\(0),
	datad => \U2|os_count[3]~3_combout\,
	combout => \U2|os_count[0]~6_combout\);

-- Location: FF_X31_Y12_N27
\U2|os_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|os_count[0]~6_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|os_count\(0));

-- Location: LCCOMB_X31_Y12_N20
\U2|os_count[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|os_count[1]~7_combout\ = (\U2|os_count\(1) & (((!\U2|os_count\(0) & \U2|os_count[3]~2_combout\)) # (!\U2|os_count[3]~3_combout\))) # (!\U2|os_count\(1) & (\U2|os_count\(0) & ((\U2|os_count[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|os_count\(0),
	datab => \U2|os_count[3]~3_combout\,
	datac => \U2|os_count\(1),
	datad => \U2|os_count[3]~2_combout\,
	combout => \U2|os_count[1]~7_combout\);

-- Location: FF_X31_Y12_N21
\U2|os_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|os_count[1]~7_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|os_count\(1));

-- Location: LCCOMB_X31_Y12_N18
\U2|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add2~0_combout\ = \U2|os_count\(2) $ (((\U2|os_count\(1) & \U2|os_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|os_count\(1),
	datac => \U2|os_count\(0),
	datad => \U2|os_count\(2),
	combout => \U2|Add2~0_combout\);

-- Location: LCCOMB_X31_Y12_N28
\U2|os_count[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|os_count[2]~5_combout\ = (\U2|os_count[3]~2_combout\ & ((\U2|Add2~0_combout\) # ((!\U2|os_count[3]~3_combout\ & \U2|os_count\(2))))) # (!\U2|os_count[3]~2_combout\ & (!\U2|os_count[3]~3_combout\ & (\U2|os_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|os_count[3]~2_combout\,
	datab => \U2|os_count[3]~3_combout\,
	datac => \U2|os_count\(2),
	datad => \U2|Add2~0_combout\,
	combout => \U2|os_count[2]~5_combout\);

-- Location: FF_X31_Y12_N29
\U2|os_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|os_count[2]~5_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|os_count\(2));

-- Location: LCCOMB_X31_Y12_N6
\U2|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan3~0_combout\ = (\U2|os_count\(2) & (\U2|os_count\(0) & \U2|os_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|os_count\(2),
	datac => \U2|os_count\(0),
	datad => \U2|os_count\(1),
	combout => \U2|LessThan3~0_combout\);

-- Location: LCCOMB_X31_Y12_N30
\U2|os_count[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|os_count[2]~0_combout\ = (\U2|os_count\(3) & (!\U2|LessThan3~0_combout\ & ((\U2|rx_state~q\)))) # (!\U2|os_count\(3) & (((\U2|rx_state~q\) # (!\rx~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|LessThan3~0_combout\,
	datab => \U2|os_count\(3),
	datac => \rx~input_o\,
	datad => \U2|rx_state~q\,
	combout => \U2|os_count[2]~0_combout\);

-- Location: LCCOMB_X31_Y12_N22
\U2|os_count[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|os_count[3]~2_combout\ = (\U2|os_pulse~q\ & (\U2|os_count[2]~0_combout\ & ((\U2|LessThan4~0_combout\) # (!\U2|os_count[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|LessThan4~0_combout\,
	datab => \U2|os_pulse~q\,
	datac => \U2|os_count[2]~0_combout\,
	datad => \U2|os_count[3]~1_combout\,
	combout => \U2|os_count[3]~2_combout\);

-- Location: LCCOMB_X31_Y12_N14
\U2|os_count[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|os_count[3]~4_combout\ = (\U2|os_count\(3) & (((\U2|os_count[3]~2_combout\ & !\U2|LessThan3~0_combout\)) # (!\U2|os_count[3]~3_combout\))) # (!\U2|os_count\(3) & (\U2|os_count[3]~2_combout\ & ((\U2|LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|os_count[3]~2_combout\,
	datab => \U2|os_count[3]~3_combout\,
	datac => \U2|os_count\(3),
	datad => \U2|LessThan3~0_combout\,
	combout => \U2|os_count[3]~4_combout\);

-- Location: FF_X31_Y12_N15
\U2|os_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|os_count[3]~4_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|os_count\(3));

-- Location: LCCOMB_X31_Y12_N2
\U2|rx_busy~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|rx_busy~2_combout\ = (!\rx~input_o\ & (\U2|os_count\(3) & !\U2|rx_state~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx~input_o\,
	datac => \U2|os_count\(3),
	datad => \U2|rx_state~q\,
	combout => \U2|rx_busy~2_combout\);

-- Location: LCCOMB_X29_Y12_N30
\U2|rx_count[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|rx_count[3]~1_combout\ = (\U2|os_pulse~q\ & ((\U2|rx_busy~2_combout\) # ((\U2|LessThan4~0_combout\ & \U2|os_count[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|rx_busy~2_combout\,
	datab => \U2|LessThan4~0_combout\,
	datac => \U2|os_pulse~q\,
	datad => \U2|os_count[3]~1_combout\,
	combout => \U2|rx_count[3]~1_combout\);

-- Location: LCCOMB_X29_Y12_N28
\U2|rx_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|rx_count~0_combout\ = (\U2|rx_state~q\ & !\U2|rx_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|rx_state~q\,
	datac => \U2|rx_count\(0),
	combout => \U2|rx_count~0_combout\);

-- Location: FF_X29_Y12_N29
\U2|rx_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|rx_count~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U2|rx_count[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|rx_count\(0));

-- Location: LCCOMB_X29_Y12_N18
\U2|rx_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|rx_count~2_combout\ = (\U2|rx_state~q\ & (\U2|rx_count\(1) $ (\U2|rx_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|rx_state~q\,
	datac => \U2|rx_count\(1),
	datad => \U2|rx_count\(0),
	combout => \U2|rx_count~2_combout\);

-- Location: FF_X29_Y12_N19
\U2|rx_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|rx_count~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U2|rx_count[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|rx_count\(1));

-- Location: LCCOMB_X29_Y12_N4
\U2|rx_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|rx_count~3_combout\ = (\U2|rx_state~q\ & (\U2|rx_count\(2) $ (((\U2|rx_count\(0) & \U2|rx_count\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|rx_count\(0),
	datab => \U2|rx_state~q\,
	datac => \U2|rx_count\(2),
	datad => \U2|rx_count\(1),
	combout => \U2|rx_count~3_combout\);

-- Location: FF_X29_Y12_N5
\U2|rx_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|rx_count~3_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U2|rx_count[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|rx_count\(2));

-- Location: LCCOMB_X29_Y12_N12
\U2|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add3~0_combout\ = \U2|rx_count\(3) $ (((\U2|rx_count\(0) & (\U2|rx_count\(2) & \U2|rx_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|rx_count\(3),
	datab => \U2|rx_count\(0),
	datac => \U2|rx_count\(2),
	datad => \U2|rx_count\(1),
	combout => \U2|Add3~0_combout\);

-- Location: LCCOMB_X29_Y12_N10
\U2|rx_count[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|rx_count[3]~4_combout\ = (\U2|rx_count[3]~1_combout\ & (\U2|rx_state~q\ & ((\U2|Add3~0_combout\)))) # (!\U2|rx_count[3]~1_combout\ & (((\U2|rx_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|rx_count[3]~1_combout\,
	datab => \U2|rx_state~q\,
	datac => \U2|rx_count\(3),
	datad => \U2|Add3~0_combout\,
	combout => \U2|rx_count[3]~4_combout\);

-- Location: FF_X29_Y12_N11
\U2|rx_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|rx_count[3]~4_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|rx_count\(3));

-- Location: LCCOMB_X29_Y12_N8
\U2|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan4~0_combout\ = ((!\U2|rx_count\(0) & (!\U2|rx_count\(2) & !\U2|rx_count\(1)))) # (!\U2|rx_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|rx_count\(3),
	datab => \U2|rx_count\(0),
	datac => \U2|rx_count\(2),
	datad => \U2|rx_count\(1),
	combout => \U2|LessThan4~0_combout\);

-- Location: LCCOMB_X31_Y14_N18
\U2|rx_buffer[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|rx_buffer[1]~0_combout\ = (\U2|LessThan4~0_combout\ & (\U2|os_pulse~q\ & (\reset~input_o\ & \U2|os_count[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|LessThan4~0_combout\,
	datab => \U2|os_pulse~q\,
	datac => \reset~input_o\,
	datad => \U2|os_count[3]~1_combout\,
	combout => \U2|rx_buffer[1]~0_combout\);

-- Location: FF_X31_Y14_N7
\U2|rx_buffer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rx~input_o\,
	sload => VCC,
	ena => \U2|rx_buffer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|rx_buffer\(9));

-- Location: LCCOMB_X31_Y14_N2
\U2|rx_buffer[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|rx_buffer[8]~feeder_combout\ = \U2|rx_buffer\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|rx_buffer\(9),
	combout => \U2|rx_buffer[8]~feeder_combout\);

-- Location: FF_X31_Y14_N3
\U2|rx_buffer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|rx_buffer[8]~feeder_combout\,
	ena => \U2|rx_buffer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|rx_buffer\(8));

-- Location: LCCOMB_X31_Y14_N20
\U2|rx_buffer[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|rx_buffer[7]~feeder_combout\ = \U2|rx_buffer\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|rx_buffer\(8),
	combout => \U2|rx_buffer[7]~feeder_combout\);

-- Location: FF_X31_Y14_N21
\U2|rx_buffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|rx_buffer[7]~feeder_combout\,
	ena => \U2|rx_buffer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|rx_buffer\(7));

-- Location: LCCOMB_X31_Y14_N0
\U2|rx_buffer[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|rx_buffer[6]~feeder_combout\ = \U2|rx_buffer\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|rx_buffer\(7),
	combout => \U2|rx_buffer[6]~feeder_combout\);

-- Location: FF_X31_Y14_N1
\U2|rx_buffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|rx_buffer[6]~feeder_combout\,
	ena => \U2|rx_buffer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|rx_buffer\(6));

-- Location: LCCOMB_X31_Y14_N10
\U2|rx_buffer[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|rx_buffer[5]~feeder_combout\ = \U2|rx_buffer\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|rx_buffer\(6),
	combout => \U2|rx_buffer[5]~feeder_combout\);

-- Location: FF_X31_Y14_N11
\U2|rx_buffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|rx_buffer[5]~feeder_combout\,
	ena => \U2|rx_buffer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|rx_buffer\(5));

-- Location: LCCOMB_X31_Y14_N24
\U2|rx_buffer[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|rx_buffer[4]~feeder_combout\ = \U2|rx_buffer\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|rx_buffer\(5),
	combout => \U2|rx_buffer[4]~feeder_combout\);

-- Location: FF_X31_Y14_N25
\U2|rx_buffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|rx_buffer[4]~feeder_combout\,
	ena => \U2|rx_buffer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|rx_buffer\(4));

-- Location: LCCOMB_X31_Y14_N28
\U2|rx_buffer[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|rx_buffer[3]~feeder_combout\ = \U2|rx_buffer\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|rx_buffer\(4),
	combout => \U2|rx_buffer[3]~feeder_combout\);

-- Location: FF_X31_Y14_N29
\U2|rx_buffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|rx_buffer[3]~feeder_combout\,
	ena => \U2|rx_buffer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|rx_buffer\(3));

-- Location: LCCOMB_X31_Y14_N26
\U2|rx_data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|rx_data[2]~feeder_combout\ = \U2|rx_buffer\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|rx_buffer\(3),
	combout => \U2|rx_data[2]~feeder_combout\);

-- Location: LCCOMB_X31_Y14_N6
\U2|rx_data[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|rx_data[0]~0_combout\ = (!\U2|LessThan4~0_combout\ & (\U2|os_pulse~q\ & \U2|os_count[3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|LessThan4~0_combout\,
	datab => \U2|os_pulse~q\,
	datad => \U2|os_count[3]~1_combout\,
	combout => \U2|rx_data[0]~0_combout\);

-- Location: FF_X31_Y14_N27
\U2|rx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|rx_data[2]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U2|rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|rx_data\(2));

-- Location: LCCOMB_X31_Y13_N8
\U1|tmp[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|tmp[2]~feeder_combout\ = \U2|rx_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|rx_data\(2),
	combout => \U1|tmp[2]~feeder_combout\);

-- Location: LCCOMB_X32_Y13_N6
\U1|i[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|i[0]~5_combout\ = \U1|i\(0) $ (VCC)
-- \U1|i[0]~6\ = CARRY(\U1|i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|i\(0),
	datad => VCC,
	combout => \U1|i[0]~5_combout\,
	cout => \U1|i[0]~6\);

-- Location: LCCOMB_X33_Y13_N24
\U2|rx_busy~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|rx_busy~4_combout\ = (\U2|rx_busy~2_combout\) # ((\U2|rx_state~q\ & (\U2|rx_busy~q\ & !\U2|rx_busy~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|rx_state~q\,
	datab => \U2|rx_busy~2_combout\,
	datac => \U2|rx_busy~q\,
	datad => \U2|rx_busy~3_combout\,
	combout => \U2|rx_busy~4_combout\);

-- Location: FF_X33_Y13_N25
\U2|rx_busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|rx_busy~4_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U2|os_pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|rx_busy~q\);

-- Location: LCCOMB_X32_Y13_N26
\U1|state_of_rx_busy~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|state_of_rx_busy~0_combout\ = (\U2|rx_busy~q\) # ((\U1|sig_state.S2~q\ & \U1|state_of_rx_busy~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|sig_state.S2~q\,
	datac => \U1|state_of_rx_busy~q\,
	datad => \U2|rx_busy~q\,
	combout => \U1|state_of_rx_busy~0_combout\);

-- Location: FF_X32_Y13_N27
\U1|state_of_rx_busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|state_of_rx_busy~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|state_of_rx_busy~q\);

-- Location: LCCOMB_X31_Y13_N16
\U1|secret[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|secret[0]~0_combout\ = (!\U2|rx_busy~q\ & \U1|state_of_rx_busy~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|rx_busy~q\,
	datad => \U1|state_of_rx_busy~q\,
	combout => \U1|secret[0]~0_combout\);

-- Location: LCCOMB_X32_Y12_N0
\U1|tx_ena~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|tx_ena~0_combout\ = (\U1|tx_ena~q\) # (\U2|tx_busy~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|tx_ena~q\,
	datad => \U2|tx_busy~q\,
	combout => \U1|tx_ena~0_combout\);

-- Location: FF_X32_Y12_N1
\U1|tx_ena\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|tx_ena~0_combout\,
	sclr => \U1|ALT_INV_sig_state.S2~q\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|tx_ena~q\);

-- Location: LCCOMB_X30_Y12_N16
\U2|tx_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|tx_count~0_combout\ = (\U2|Add4~4_combout\ & \U2|tx_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|Add4~4_combout\,
	datad => \U2|tx_state~q\,
	combout => \U2|tx_count~0_combout\);

-- Location: LCCOMB_X30_Y12_N12
\U2|tx_count[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|tx_count[0]~1_combout\ = (\U1|tx_ena~q\) # (\U2|tx_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|tx_ena~q\,
	datad => \U2|tx_state~q\,
	combout => \U2|tx_count[0]~1_combout\);

-- Location: FF_X30_Y12_N17
\U2|tx_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|tx_count~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U2|tx_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|tx_count\(2));

-- Location: LCCOMB_X30_Y14_N0
\U2|baud_pulse~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|baud_pulse~0_combout\ = !\U2|LessThan0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|LessThan0~3_combout\,
	combout => \U2|baud_pulse~0_combout\);

-- Location: FF_X30_Y14_N1
\U2|baud_pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|baud_pulse~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|baud_pulse~q\);

-- Location: LCCOMB_X30_Y12_N18
\U2|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add4~0_combout\ = (\U2|baud_pulse~q\ & (\U2|tx_count\(0) $ (VCC))) # (!\U2|baud_pulse~q\ & (\U2|tx_count\(0) & VCC))
-- \U2|Add4~1\ = CARRY((\U2|baud_pulse~q\ & \U2|tx_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|baud_pulse~q\,
	datab => \U2|tx_count\(0),
	datad => VCC,
	combout => \U2|Add4~0_combout\,
	cout => \U2|Add4~1\);

-- Location: LCCOMB_X30_Y12_N28
\U2|tx_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|tx_count~3_combout\ = (\U2|tx_state~q\ & \U2|Add4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|tx_state~q\,
	datad => \U2|Add4~0_combout\,
	combout => \U2|tx_count~3_combout\);

-- Location: FF_X30_Y12_N29
\U2|tx_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|tx_count~3_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U2|tx_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|tx_count\(0));

-- Location: LCCOMB_X30_Y12_N20
\U2|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add4~2_combout\ = (\U2|tx_count\(1) & (!\U2|Add4~1\)) # (!\U2|tx_count\(1) & ((\U2|Add4~1\) # (GND)))
-- \U2|Add4~3\ = CARRY((!\U2|Add4~1\) # (!\U2|tx_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|tx_count\(1),
	datad => VCC,
	cin => \U2|Add4~1\,
	combout => \U2|Add4~2_combout\,
	cout => \U2|Add4~3\);

-- Location: LCCOMB_X30_Y12_N26
\U2|tx_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|tx_count~2_combout\ = (\U2|tx_state~q\ & \U2|Add4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|tx_state~q\,
	datad => \U2|Add4~2_combout\,
	combout => \U2|tx_count~2_combout\);

-- Location: FF_X30_Y12_N27
\U2|tx_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|tx_count~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U2|tx_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|tx_count\(1));

-- Location: LCCOMB_X30_Y12_N22
\U2|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add4~4_combout\ = (\U2|tx_count\(2) & (\U2|Add4~3\ $ (GND))) # (!\U2|tx_count\(2) & (!\U2|Add4~3\ & VCC))
-- \U2|Add4~5\ = CARRY((\U2|tx_count\(2) & !\U2|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|tx_count\(2),
	datad => VCC,
	cin => \U2|Add4~3\,
	combout => \U2|Add4~4_combout\,
	cout => \U2|Add4~5\);

-- Location: LCCOMB_X30_Y12_N30
\U2|tx_count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|tx_count~4_combout\ = (\U2|tx_state~q\ & \U2|Add4~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|tx_state~q\,
	datad => \U2|Add4~6_combout\,
	combout => \U2|tx_count~4_combout\);

-- Location: FF_X30_Y12_N31
\U2|tx_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|tx_count~4_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U2|tx_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|tx_count\(3));

-- Location: LCCOMB_X30_Y12_N24
\U2|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add4~6_combout\ = \U2|tx_count\(3) $ (\U2|Add4~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|tx_count\(3),
	cin => \U2|Add4~5\,
	combout => \U2|Add4~6_combout\);

-- Location: LCCOMB_X30_Y12_N0
\U2|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan5~0_combout\ = (!\U2|Add4~6_combout\) # (!\U2|Add4~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add4~4_combout\,
	datad => \U2|Add4~6_combout\,
	combout => \U2|LessThan5~0_combout\);

-- Location: FF_X30_Y12_N1
\U2|tx_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|LessThan5~0_combout\,
	asdata => \U1|tx_ena~q\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \U2|ALT_INV_tx_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|tx_state~q\);

-- Location: LCCOMB_X30_Y12_N2
\U2|tx_busy~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|tx_busy~0_combout\ = (\U2|tx_state~q\ & ((\U2|tx_busy~q\))) # (!\U2|tx_state~q\ & (!\U1|tx_ena~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|tx_ena~q\,
	datac => \U2|tx_busy~q\,
	datad => \U2|tx_state~q\,
	combout => \U2|tx_busy~0_combout\);

-- Location: FF_X30_Y12_N3
\U2|tx_busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|tx_busy~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|tx_busy~q\);

-- Location: LCCOMB_X32_Y13_N8
\U1|i[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|i[1]~8_combout\ = (\U1|i\(1) & (!\U1|i[0]~6\)) # (!\U1|i\(1) & ((\U1|i[0]~6\) # (GND)))
-- \U1|i[1]~9\ = CARRY((!\U1|i[0]~6\) # (!\U1|i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|i\(1),
	datad => VCC,
	cin => \U1|i[0]~6\,
	combout => \U1|i[1]~8_combout\,
	cout => \U1|i[1]~9\);

-- Location: LCCOMB_X32_Y13_N16
\U1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~0_combout\ = (\U1|i\(2)) # ((\U1|i\(0)) # ((\U1|i\(1)) # (\U1|i\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|i\(2),
	datab => \U1|i\(0),
	datac => \U1|i\(1),
	datad => \U1|i\(3),
	combout => \U1|Equal0~0_combout\);

-- Location: LCCOMB_X32_Y13_N20
\U1|tx_data[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|tx_data[0]~0_combout\ = (\U1|sig_state.S2~q\ & \U2|tx_busy~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|sig_state.S2~q\,
	datad => \U2|tx_busy~q\,
	combout => \U1|tx_data[0]~0_combout\);

-- Location: LCCOMB_X32_Y13_N22
\U1|i[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|i[4]~7_combout\ = (\U1|tmp[1]~0_combout\) # ((!\U1|Equal0~0_combout\ & (\U1|i\(4) & \U1|tx_data[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|tmp[1]~0_combout\,
	datab => \U1|Equal0~0_combout\,
	datac => \U1|i\(4),
	datad => \U1|tx_data[0]~0_combout\,
	combout => \U1|i[4]~7_combout\);

-- Location: FF_X32_Y13_N9
\U1|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|i[1]~8_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \U1|sig_state.S2~q\,
	ena => \U1|i[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|i\(1));

-- Location: LCCOMB_X32_Y13_N10
\U1|i[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|i[2]~10_combout\ = (\U1|i\(2) & (\U1|i[1]~9\ $ (GND))) # (!\U1|i\(2) & (!\U1|i[1]~9\ & VCC))
-- \U1|i[2]~11\ = CARRY((\U1|i\(2) & !\U1|i[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|i\(2),
	datad => VCC,
	cin => \U1|i[1]~9\,
	combout => \U1|i[2]~10_combout\,
	cout => \U1|i[2]~11\);

-- Location: FF_X32_Y13_N11
\U1|i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|i[2]~10_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \U1|sig_state.S2~q\,
	ena => \U1|i[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|i\(2));

-- Location: LCCOMB_X32_Y13_N12
\U1|i[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|i[3]~12_combout\ = (\U1|i\(3) & (!\U1|i[2]~11\)) # (!\U1|i\(3) & ((\U1|i[2]~11\) # (GND)))
-- \U1|i[3]~13\ = CARRY((!\U1|i[2]~11\) # (!\U1|i\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|i\(3),
	datad => VCC,
	cin => \U1|i[2]~11\,
	combout => \U1|i[3]~12_combout\,
	cout => \U1|i[3]~13\);

-- Location: FF_X32_Y13_N13
\U1|i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|i[3]~12_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \U1|sig_state.S2~q\,
	ena => \U1|i[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|i\(3));

-- Location: LCCOMB_X32_Y13_N14
\U1|i[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|i[4]~14_combout\ = \U1|i\(4) $ (!\U1|i[3]~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|i\(4),
	cin => \U1|i[3]~13\,
	combout => \U1|i[4]~14_combout\);

-- Location: FF_X32_Y13_N15
\U1|i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|i[4]~14_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \U1|sig_state.S2~q\,
	ena => \U1|i[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|i\(4));

-- Location: LCCOMB_X32_Y13_N24
\U1|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Selector1~0_combout\ = (\U1|sig_state.S2~q\ & (((\U1|Equal0~0_combout\) # (!\U1|i\(4))) # (!\U2|tx_busy~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|tx_busy~q\,
	datab => \U1|sig_state.S2~q\,
	datac => \U1|i\(4),
	datad => \U1|Equal0~0_combout\,
	combout => \U1|Selector1~0_combout\);

-- Location: LCCOMB_X32_Y13_N4
\U1|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Selector1~1_combout\ = (\U1|Selector1~0_combout\) # ((!\U1|sig_state.S2~q\ & ((\U1|secret[0]~0_combout\) # (\U1|sig_state.S0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|secret[0]~0_combout\,
	datab => \U1|sig_state.S2~q\,
	datac => \U1|sig_state.S0~q\,
	datad => \U1|Selector1~0_combout\,
	combout => \U1|Selector1~1_combout\);

-- Location: FF_X32_Y13_N5
\U1|sig_state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|Selector1~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|sig_state.S0~q\);

-- Location: LCCOMB_X32_Y13_N18
\U1|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Selector2~0_combout\ = (\U1|sig_state.S0~q\ & (\U1|tx_data[0]~0_combout\ & ((\U1|Equal0~0_combout\) # (!\U1|i\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|i\(4),
	datab => \U1|Equal0~0_combout\,
	datac => \U1|sig_state.S0~q\,
	datad => \U1|tx_data[0]~0_combout\,
	combout => \U1|Selector2~0_combout\);

-- Location: LCCOMB_X32_Y13_N2
\U1|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Selector2~1_combout\ = (\U1|Selector2~0_combout\) # ((\U1|secret[0]~0_combout\ & ((!\U1|sig_state.S0~q\))) # (!\U1|secret[0]~0_combout\ & (!\U1|sig_state.S2~q\ & \U1|sig_state.S0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|secret[0]~0_combout\,
	datab => \U1|sig_state.S2~q\,
	datac => \U1|sig_state.S0~q\,
	datad => \U1|Selector2~0_combout\,
	combout => \U1|Selector2~1_combout\);

-- Location: FF_X32_Y13_N3
\U1|sig_state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|Selector2~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|sig_state.S1~q\);

-- Location: LCCOMB_X32_Y13_N0
\U1|tmp[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|tmp[1]~0_combout\ = (\U1|sig_state.S1~q\ & (\U1|state_of_rx_busy~q\ & !\U2|rx_busy~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|sig_state.S1~q\,
	datac => \U1|state_of_rx_busy~q\,
	datad => \U2|rx_busy~q\,
	combout => \U1|tmp[1]~0_combout\);

-- Location: LCCOMB_X31_Y12_N8
\U1|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Selector3~0_combout\ = (\U1|tmp[1]~0_combout\) # ((\U1|sig_state.S2~q\ & !\U2|tx_busy~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|tmp[1]~0_combout\,
	datac => \U1|sig_state.S2~q\,
	datad => \U2|tx_busy~q\,
	combout => \U1|Selector3~0_combout\);

-- Location: FF_X31_Y12_N9
\U1|sig_state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|Selector3~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|sig_state.S2~q\);

-- Location: FF_X32_Y13_N7
\U1|i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|i[0]~5_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \U1|sig_state.S2~q\,
	ena => \U1|i[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|i\(0));

-- Location: LCCOMB_X32_Y13_N30
\U1|tmp[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|tmp[0]~5_combout\ = (!\U1|i\(0) & (\U1|sig_state.S1~q\ & (\U1|state_of_rx_busy~q\ & !\U2|rx_busy~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|i\(0),
	datab => \U1|sig_state.S1~q\,
	datac => \U1|state_of_rx_busy~q\,
	datad => \U2|rx_busy~q\,
	combout => \U1|tmp[0]~5_combout\);

-- Location: FF_X31_Y13_N9
\U1|tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|tmp[2]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U1|tmp[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|tmp\(2));

-- Location: LCCOMB_X30_Y13_N18
\U1|tx_data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|tx_data[2]~feeder_combout\ = \U1|tmp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|tmp\(2),
	combout => \U1|tx_data[2]~feeder_combout\);

-- Location: LCCOMB_X30_Y13_N4
\U1|tx_data[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|tx_data[0]~1_combout\ = (\reset~input_o\ & (\U2|tx_busy~q\ & \U1|sig_state.S2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \U2|tx_busy~q\,
	datad => \U1|sig_state.S2~q\,
	combout => \U1|tx_data[0]~1_combout\);

-- Location: FF_X30_Y13_N19
\U1|tx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|tx_data[2]~feeder_combout\,
	ena => \U1|tx_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|tx_data\(2));

-- Location: LCCOMB_X32_Y14_N30
\U2|rx_data[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|rx_data[3]~feeder_combout\ = \U2|rx_buffer\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|rx_buffer\(4),
	combout => \U2|rx_data[3]~feeder_combout\);

-- Location: FF_X32_Y14_N31
\U2|rx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|rx_data[3]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U2|rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|rx_data\(3));

-- Location: LCCOMB_X31_Y13_N2
\U1|tmp[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|tmp[3]~feeder_combout\ = \U2|rx_data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|rx_data\(3),
	combout => \U1|tmp[3]~feeder_combout\);

-- Location: FF_X31_Y13_N3
\U1|tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|tmp[3]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U1|tmp[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|tmp\(3));

-- Location: FF_X30_Y13_N23
\U1|tx_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U1|tmp\(3),
	sload => VCC,
	ena => \U1|tx_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|tx_data\(3));

-- Location: LCCOMB_X31_Y14_N12
\U2|rx_data[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|rx_data[7]~feeder_combout\ = \U2|rx_buffer\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|rx_buffer\(8),
	combout => \U2|rx_data[7]~feeder_combout\);

-- Location: FF_X31_Y14_N13
\U2|rx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|rx_data[7]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U2|rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|rx_data\(7));

-- Location: LCCOMB_X31_Y13_N18
\U1|tmp[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|tmp[7]~feeder_combout\ = \U2|rx_data\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|rx_data\(7),
	combout => \U1|tmp[7]~feeder_combout\);

-- Location: FF_X31_Y13_N19
\U1|tmp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|tmp[7]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U1|tmp[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|tmp\(7));

-- Location: LCCOMB_X30_Y13_N20
\U1|tx_data[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|tx_data[7]~feeder_combout\ = \U1|tmp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|tmp\(7),
	combout => \U1|tx_data[7]~feeder_combout\);

-- Location: FF_X30_Y13_N21
\U1|tx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|tx_data[7]~feeder_combout\,
	ena => \U1|tx_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|tx_data\(7));

-- Location: LCCOMB_X31_Y14_N14
\U2|rx_buffer[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|rx_buffer[2]~feeder_combout\ = \U2|rx_buffer\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|rx_buffer\(3),
	combout => \U2|rx_buffer[2]~feeder_combout\);

-- Location: FF_X31_Y14_N15
\U2|rx_buffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|rx_buffer[2]~feeder_combout\,
	ena => \U2|rx_buffer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|rx_buffer\(2));

-- Location: LCCOMB_X32_Y14_N12
\U2|rx_data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|rx_data[1]~feeder_combout\ = \U2|rx_buffer\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|rx_buffer\(2),
	combout => \U2|rx_data[1]~feeder_combout\);

-- Location: FF_X32_Y14_N13
\U2|rx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|rx_data[1]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U2|rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|rx_data\(1));

-- Location: LCCOMB_X31_Y13_N14
\U1|tmp[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|tmp[1]~feeder_combout\ = \U2|rx_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|rx_data\(1),
	combout => \U1|tmp[1]~feeder_combout\);

-- Location: FF_X31_Y13_N15
\U1|tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|tmp[1]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U1|tmp[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|tmp\(1));

-- Location: LCCOMB_X30_Y13_N2
\U1|tx_data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|tx_data[1]~feeder_combout\ = \U1|tmp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|tmp\(1),
	combout => \U1|tx_data[1]~feeder_combout\);

-- Location: FF_X30_Y13_N3
\U1|tx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|tx_data[1]~feeder_combout\,
	ena => \U1|tx_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|tx_data\(1));

-- Location: LCCOMB_X31_Y14_N4
\U2|rx_buffer[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|rx_buffer[1]~feeder_combout\ = \U2|rx_buffer\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|rx_buffer\(2),
	combout => \U2|rx_buffer[1]~feeder_combout\);

-- Location: FF_X31_Y14_N5
\U2|rx_buffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|rx_buffer[1]~feeder_combout\,
	ena => \U2|rx_buffer[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|rx_buffer\(1));

-- Location: FF_X31_Y14_N17
\U2|rx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U2|rx_buffer\(1),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U2|rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|rx_data\(0));

-- Location: LCCOMB_X31_Y14_N16
\U1|tmp[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|tmp[0]~1_combout\ = (!\U1|i\(0) & (\U2|rx_data\(0) & \U1|tmp[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|i\(0),
	datac => \U2|rx_data\(0),
	datad => \U1|tmp[1]~0_combout\,
	combout => \U1|tmp[0]~1_combout\);

-- Location: LCCOMB_X31_Y13_N26
\U1|secret[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|secret[0]~1_combout\ = (!\U2|rx_busy~q\ & (\U1|state_of_rx_busy~q\ & !\U1|sig_state.S0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|rx_busy~q\,
	datab => \U1|state_of_rx_busy~q\,
	datad => \U1|sig_state.S0~q\,
	combout => \U1|secret[0]~1_combout\);

-- Location: FF_X31_Y13_N27
\U1|secret[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U2|rx_data\(2),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U1|secret[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|secret\(2));

-- Location: FF_X31_Y13_N13
\U1|secret[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U2|rx_data\(0),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U1|secret[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|secret\(0));

-- Location: FF_X31_Y13_N7
\U1|secret[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U2|rx_data\(3),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U1|secret[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|secret\(3));

-- Location: LCCOMB_X31_Y13_N28
\U1|secret[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|secret[1]~feeder_combout\ = \U2|rx_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|rx_data\(1),
	combout => \U1|secret[1]~feeder_combout\);

-- Location: FF_X31_Y13_N29
\U1|secret[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|secret[1]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U1|secret[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|secret\(1));

-- Location: LCCOMB_X31_Y13_N6
\U1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux0~0_combout\ = (\U1|i\(1) & (\U1|i\(2))) # (!\U1|i\(1) & ((\U1|i\(2) & ((\U1|secret\(1)))) # (!\U1|i\(2) & (\U1|secret\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|i\(1),
	datab => \U1|i\(2),
	datac => \U1|secret\(3),
	datad => \U1|secret\(1),
	combout => \U1|Mux0~0_combout\);

-- Location: LCCOMB_X31_Y13_N12
\U1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux0~1_combout\ = (\U1|i\(1) & ((\U1|Mux0~0_combout\ & ((\U1|secret\(0)))) # (!\U1|Mux0~0_combout\ & (\U1|secret\(2))))) # (!\U1|i\(1) & (((\U1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|secret\(2),
	datab => \U1|i\(1),
	datac => \U1|secret\(0),
	datad => \U1|Mux0~0_combout\,
	combout => \U1|Mux0~1_combout\);

-- Location: LCCOMB_X31_Y14_N30
\U2|rx_data[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|rx_data[5]~feeder_combout\ = \U2|rx_buffer\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|rx_buffer\(6),
	combout => \U2|rx_data[5]~feeder_combout\);

-- Location: FF_X31_Y14_N31
\U2|rx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|rx_data[5]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U2|rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|rx_data\(5));

-- Location: LCCOMB_X31_Y13_N22
\U1|secret[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|secret[5]~feeder_combout\ = \U2|rx_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|rx_data\(5),
	combout => \U1|secret[5]~feeder_combout\);

-- Location: FF_X31_Y13_N23
\U1|secret[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|secret[5]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U1|secret[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|secret\(5));

-- Location: LCCOMB_X31_Y14_N22
\U2|rx_data[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|rx_data[4]~feeder_combout\ = \U2|rx_buffer\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|rx_buffer\(5),
	combout => \U2|rx_data[4]~feeder_combout\);

-- Location: FF_X31_Y14_N23
\U2|rx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|rx_data[4]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U2|rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|rx_data\(4));

-- Location: FF_X31_Y13_N25
\U1|secret[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U2|rx_data\(4),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U1|secret[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|secret\(4));

-- Location: FF_X31_Y13_N11
\U1|secret[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U2|rx_data\(7),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U1|secret[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|secret\(7));

-- Location: LCCOMB_X31_Y14_N8
\U2|rx_data[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|rx_data[6]~feeder_combout\ = \U2|rx_buffer\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|rx_buffer\(7),
	combout => \U2|rx_data[6]~feeder_combout\);

-- Location: FF_X31_Y14_N9
\U2|rx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|rx_data[6]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U2|rx_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|rx_data\(6));

-- Location: LCCOMB_X31_Y13_N20
\U1|secret[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|secret[6]~feeder_combout\ = \U2|rx_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|rx_data\(6),
	combout => \U1|secret[6]~feeder_combout\);

-- Location: FF_X31_Y13_N21
\U1|secret[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|secret[6]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U1|secret[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|secret\(6));

-- Location: LCCOMB_X31_Y13_N10
\U1|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux0~2_combout\ = (\U1|i\(2) & (\U1|i\(1))) # (!\U1|i\(2) & ((\U1|i\(1) & ((\U1|secret\(6)))) # (!\U1|i\(1) & (\U1|secret\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|i\(2),
	datab => \U1|i\(1),
	datac => \U1|secret\(7),
	datad => \U1|secret\(6),
	combout => \U1|Mux0~2_combout\);

-- Location: LCCOMB_X31_Y13_N24
\U1|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux0~3_combout\ = (\U1|i\(2) & ((\U1|Mux0~2_combout\ & ((\U1|secret\(4)))) # (!\U1|Mux0~2_combout\ & (\U1|secret\(5))))) # (!\U1|i\(2) & (((\U1|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|secret\(5),
	datab => \U1|i\(2),
	datac => \U1|secret\(4),
	datad => \U1|Mux0~2_combout\,
	combout => \U1|Mux0~3_combout\);

-- Location: LCCOMB_X32_Y13_N28
\U1|tmp[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|tmp[0]~2_combout\ = (\U1|i\(0) & (\U1|sig_state.S1~q\ & (\U1|state_of_rx_busy~q\ & !\U2|rx_busy~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|i\(0),
	datab => \U1|sig_state.S1~q\,
	datac => \U1|state_of_rx_busy~q\,
	datad => \U2|rx_busy~q\,
	combout => \U1|tmp[0]~2_combout\);

-- Location: LCCOMB_X31_Y12_N10
\U1|tmp[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|tmp[0]~3_combout\ = (\U1|tmp[0]~2_combout\ & ((\U1|i\(3) & (\U1|Mux0~1_combout\)) # (!\U1|i\(3) & ((\U1|Mux0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux0~1_combout\,
	datab => \U1|i\(3),
	datac => \U1|Mux0~3_combout\,
	datad => \U1|tmp[0]~2_combout\,
	combout => \U1|tmp[0]~3_combout\);

-- Location: LCCOMB_X31_Y12_N4
\U1|tmp[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|tmp[0]~4_combout\ = (\U1|tmp[0]~1_combout\) # ((\U1|tmp[0]~3_combout\) # ((!\U1|tmp[1]~0_combout\ & \U1|tmp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|tmp[1]~0_combout\,
	datab => \U1|tmp[0]~1_combout\,
	datac => \U1|tmp\(0),
	datad => \U1|tmp[0]~3_combout\,
	combout => \U1|tmp[0]~4_combout\);

-- Location: FF_X31_Y12_N5
\U1|tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|tmp[0]~4_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|tmp\(0));

-- Location: LCCOMB_X30_Y13_N6
\U1|tx_data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|tx_data[0]~feeder_combout\ = \U1|tmp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|tmp\(0),
	combout => \U1|tx_data[0]~feeder_combout\);

-- Location: FF_X30_Y13_N7
\U1|tx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|tx_data[0]~feeder_combout\,
	ena => \U1|tx_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|tx_data\(0));

-- Location: LCCOMB_X30_Y13_N22
\U2|tx_parity[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|tx_parity[8]~1_combout\ = \U1|tx_data\(1) $ (\U1|tx_data\(2) $ (\U1|tx_data\(3) $ (\U1|tx_data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|tx_data\(1),
	datab => \U1|tx_data\(2),
	datac => \U1|tx_data\(3),
	datad => \U1|tx_data\(0),
	combout => \U2|tx_parity[8]~1_combout\);

-- Location: LCCOMB_X31_Y13_N0
\U1|tmp[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|tmp[4]~feeder_combout\ = \U2|rx_data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|rx_data\(4),
	combout => \U1|tmp[4]~feeder_combout\);

-- Location: FF_X31_Y13_N1
\U1|tmp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|tmp[4]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U1|tmp[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|tmp\(4));

-- Location: FF_X30_Y13_N5
\U1|tx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U1|tmp\(4),
	sload => VCC,
	ena => \U1|tx_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|tx_data\(4));

-- Location: LCCOMB_X31_Y13_N30
\U1|tmp[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|tmp[5]~feeder_combout\ = \U2|rx_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|rx_data\(5),
	combout => \U1|tmp[5]~feeder_combout\);

-- Location: FF_X31_Y13_N31
\U1|tmp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|tmp[5]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U1|tmp[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|tmp\(5));

-- Location: FF_X30_Y13_N13
\U1|tx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U1|tmp\(5),
	sload => VCC,
	ena => \U1|tx_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|tx_data\(5));

-- Location: LCCOMB_X31_Y13_N4
\U1|tmp[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|tmp[6]~feeder_combout\ = \U2|rx_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|rx_data\(6),
	combout => \U1|tmp[6]~feeder_combout\);

-- Location: FF_X31_Y13_N5
\U1|tmp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|tmp[6]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U1|tmp[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|tmp\(6));

-- Location: LCCOMB_X30_Y13_N16
\U1|tx_data[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|tx_data[6]~feeder_combout\ = \U1|tmp\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|tmp\(6),
	combout => \U1|tx_data[6]~feeder_combout\);

-- Location: FF_X30_Y13_N17
\U1|tx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|tx_data[6]~feeder_combout\,
	ena => \U1|tx_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|tx_data\(6));

-- Location: LCCOMB_X30_Y13_N12
\U2|tx_parity[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|tx_parity[8]~0_combout\ = \U1|tx_data\(7) $ (\U1|tx_data\(4) $ (\U1|tx_data\(5) $ (\U1|tx_data\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|tx_data\(7),
	datab => \U1|tx_data\(4),
	datac => \U1|tx_data\(5),
	datad => \U1|tx_data\(6),
	combout => \U2|tx_parity[8]~0_combout\);

-- Location: LCCOMB_X30_Y13_N26
\U2|tx_buffer~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|tx_buffer~11_combout\ = (!\U2|tx_state~q\ & (\U2|tx_parity[8]~1_combout\ $ (!\U2|tx_parity[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|tx_state~q\,
	datac => \U2|tx_parity[8]~1_combout\,
	datad => \U2|tx_parity[8]~0_combout\,
	combout => \U2|tx_buffer~11_combout\);

-- Location: LCCOMB_X30_Y13_N24
\U2|tx_buffer[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|tx_buffer[0]~1_combout\ = (\reset~input_o\ & ((\U2|tx_state~q\ & (\U2|baud_pulse~q\)) # (!\U2|tx_state~q\ & ((\U1|tx_ena~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \U2|tx_state~q\,
	datac => \U2|baud_pulse~q\,
	datad => \U1|tx_ena~q\,
	combout => \U2|tx_buffer[0]~1_combout\);

-- Location: FF_X30_Y13_N27
\U2|tx_buffer[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|tx_buffer~11_combout\,
	ena => \U2|tx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|tx_buffer\(10));

-- Location: LCCOMB_X30_Y13_N30
\U2|tx_buffer~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|tx_buffer~10_combout\ = (\U2|tx_state~q\ & ((\U2|tx_buffer\(10)))) # (!\U2|tx_state~q\ & (!\U1|tx_data\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|tx_data\(7),
	datab => \U2|tx_state~q\,
	datac => \U2|tx_buffer\(10),
	combout => \U2|tx_buffer~10_combout\);

-- Location: FF_X30_Y13_N31
\U2|tx_buffer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|tx_buffer~10_combout\,
	ena => \U2|tx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|tx_buffer\(9));

-- Location: LCCOMB_X30_Y13_N14
\U2|tx_buffer~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|tx_buffer~9_combout\ = (\U2|tx_state~q\ & (\U2|tx_buffer\(9))) # (!\U2|tx_state~q\ & ((!\U1|tx_data\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|tx_state~q\,
	datac => \U2|tx_buffer\(9),
	datad => \U1|tx_data\(6),
	combout => \U2|tx_buffer~9_combout\);

-- Location: FF_X30_Y13_N15
\U2|tx_buffer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|tx_buffer~9_combout\,
	ena => \U2|tx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|tx_buffer\(8));

-- Location: LCCOMB_X30_Y13_N10
\U2|tx_buffer~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|tx_buffer~8_combout\ = (\U2|tx_state~q\ & (\U2|tx_buffer\(8))) # (!\U2|tx_state~q\ & ((!\U1|tx_data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|tx_state~q\,
	datac => \U2|tx_buffer\(8),
	datad => \U1|tx_data\(5),
	combout => \U2|tx_buffer~8_combout\);

-- Location: FF_X30_Y13_N11
\U2|tx_buffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|tx_buffer~8_combout\,
	ena => \U2|tx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|tx_buffer\(7));

-- Location: LCCOMB_X30_Y13_N28
\U2|tx_buffer~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|tx_buffer~7_combout\ = (\U2|tx_state~q\ & (\U2|tx_buffer\(7))) # (!\U2|tx_state~q\ & ((!\U1|tx_data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|tx_buffer\(7),
	datab => \U2|tx_state~q\,
	datac => \U1|tx_data\(4),
	combout => \U2|tx_buffer~7_combout\);

-- Location: FF_X30_Y13_N29
\U2|tx_buffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|tx_buffer~7_combout\,
	ena => \U2|tx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|tx_buffer\(6));

-- Location: LCCOMB_X30_Y13_N8
\U2|tx_buffer~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|tx_buffer~6_combout\ = (\U2|tx_state~q\ & ((\U2|tx_buffer\(6)))) # (!\U2|tx_state~q\ & (!\U1|tx_data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|tx_state~q\,
	datac => \U1|tx_data\(3),
	datad => \U2|tx_buffer\(6),
	combout => \U2|tx_buffer~6_combout\);

-- Location: FF_X30_Y13_N9
\U2|tx_buffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|tx_buffer~6_combout\,
	ena => \U2|tx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|tx_buffer\(5));

-- Location: LCCOMB_X30_Y13_N0
\U2|tx_buffer~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|tx_buffer~5_combout\ = (\U2|tx_state~q\ & ((\U2|tx_buffer\(5)))) # (!\U2|tx_state~q\ & (!\U1|tx_data\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|tx_data\(2),
	datac => \U2|tx_buffer\(5),
	datad => \U2|tx_state~q\,
	combout => \U2|tx_buffer~5_combout\);

-- Location: FF_X30_Y13_N1
\U2|tx_buffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|tx_buffer~5_combout\,
	ena => \U2|tx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|tx_buffer\(4));

-- Location: LCCOMB_X29_Y13_N28
\U2|tx_buffer~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|tx_buffer~4_combout\ = (\U2|tx_state~q\ & (\U2|tx_buffer\(4))) # (!\U2|tx_state~q\ & ((!\U1|tx_data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|tx_buffer\(4),
	datac => \U2|tx_state~q\,
	datad => \U1|tx_data\(1),
	combout => \U2|tx_buffer~4_combout\);

-- Location: FF_X29_Y13_N29
\U2|tx_buffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|tx_buffer~4_combout\,
	ena => \U2|tx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|tx_buffer\(3));

-- Location: LCCOMB_X29_Y13_N10
\U2|tx_buffer~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|tx_buffer~3_combout\ = (\U2|tx_state~q\ & (\U2|tx_buffer\(3))) # (!\U2|tx_state~q\ & ((!\U1|tx_data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|tx_buffer\(3),
	datac => \U2|tx_state~q\,
	datad => \U1|tx_data\(0),
	combout => \U2|tx_buffer~3_combout\);

-- Location: FF_X29_Y13_N11
\U2|tx_buffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|tx_buffer~3_combout\,
	ena => \U2|tx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|tx_buffer\(2));

-- Location: LCCOMB_X29_Y13_N12
\U2|tx_buffer~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|tx_buffer~2_combout\ = (\U2|tx_buffer\(2)) # (!\U2|tx_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|tx_buffer\(2),
	datac => \U2|tx_state~q\,
	combout => \U2|tx_buffer~2_combout\);

-- Location: FF_X29_Y13_N13
\U2|tx_buffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|tx_buffer~2_combout\,
	ena => \U2|tx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|tx_buffer\(1));

-- Location: LCCOMB_X29_Y13_N18
\U2|tx_buffer~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|tx_buffer~0_combout\ = (\U2|tx_buffer\(1) & \U2|tx_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|tx_buffer\(1),
	datac => \U2|tx_state~q\,
	combout => \U2|tx_buffer~0_combout\);

-- Location: FF_X29_Y13_N19
\U2|tx_buffer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|tx_buffer~0_combout\,
	ena => \U2|tx_buffer[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|tx_buffer\(0));

-- Location: LCCOMB_X29_Y13_N0
\U2|tx~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|tx~feeder_combout\ = \U2|tx_buffer\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|tx_buffer\(0),
	combout => \U2|tx~feeder_combout\);

-- Location: FF_X29_Y13_N1
\U2|tx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|tx~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|tx~q\);

ww_tx <= \tx~output_o\;

ww_LED(0) <= \LED[0]~output_o\;

ww_LED(1) <= \LED[1]~output_o\;

ww_LED(2) <= \LED[2]~output_o\;
END structure;



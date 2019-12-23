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

-- DATE "12/23/2019 15:00:38"

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
	tx : OUT std_logic;
	LED : OUT std_logic_vector(2 DOWNTO 0)
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
SIGNAL \U2|tx_count~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \U2|tx_busy~0_combout\ : std_logic;
SIGNAL \U2|tx_busy~q\ : std_logic;
SIGNAL \U2|count_baud[0]~7_combout\ : std_logic;
SIGNAL \U2|count_baud[0]~8\ : std_logic;
SIGNAL \U2|count_baud[1]~9_combout\ : std_logic;
SIGNAL \U2|count_baud[1]~10\ : std_logic;
SIGNAL \U2|count_baud[2]~11_combout\ : std_logic;
SIGNAL \U2|count_baud[2]~12\ : std_logic;
SIGNAL \U2|count_baud[3]~13_combout\ : std_logic;
SIGNAL \U2|count_baud[3]~14\ : std_logic;
SIGNAL \U2|count_baud[4]~15_combout\ : std_logic;
SIGNAL \U2|count_baud[4]~16\ : std_logic;
SIGNAL \U2|count_baud[5]~17_combout\ : std_logic;
SIGNAL \U2|count_baud[5]~18\ : std_logic;
SIGNAL \U2|count_baud[6]~19_combout\ : std_logic;
SIGNAL \U2|LessThan0~0_combout\ : std_logic;
SIGNAL \U2|LessThan0~1_combout\ : std_logic;
SIGNAL \U2|count_os~1_combout\ : std_logic;
SIGNAL \U2|count_os~2_combout\ : std_logic;
SIGNAL \U2|count_os~0_combout\ : std_logic;
SIGNAL \U2|LessThan1~0_combout\ : std_logic;
SIGNAL \U2|os_pulse~q\ : std_logic;
SIGNAL \rx~input_o\ : std_logic;
SIGNAL \U2|os_count[0]~1_combout\ : std_logic;
SIGNAL \U2|os_count[3]~2_combout\ : std_logic;
SIGNAL \U2|os_count[1]~6_combout\ : std_logic;
SIGNAL \U2|Add2~1_combout\ : std_logic;
SIGNAL \U2|os_count[2]~4_combout\ : std_logic;
SIGNAL \U2|LessThan3~0_combout\ : std_logic;
SIGNAL \U2|rx_busy~2_combout\ : std_logic;
SIGNAL \U2|rx_state~0_combout\ : std_logic;
SIGNAL \U2|rx_state~q\ : std_logic;
SIGNAL \U2|rx_count~0_combout\ : std_logic;
SIGNAL \U2|os_count[3]~7_combout\ : std_logic;
SIGNAL \U2|rx_count[3]~1_combout\ : std_logic;
SIGNAL \U2|rx_count~2_combout\ : std_logic;
SIGNAL \U2|rx_count~3_combout\ : std_logic;
SIGNAL \U2|Add3~0_combout\ : std_logic;
SIGNAL \U2|rx_count[3]~4_combout\ : std_logic;
SIGNAL \U2|LessThan4~0_combout\ : std_logic;
SIGNAL \U2|os_count[3]~0_combout\ : std_logic;
SIGNAL \U2|os_count[0]~5_combout\ : std_logic;
SIGNAL \U2|Add2~0_combout\ : std_logic;
SIGNAL \U2|os_count[3]~3_combout\ : std_logic;
SIGNAL \U2|rx_busy~3_combout\ : std_logic;
SIGNAL \U2|rx_busy~4_combout\ : std_logic;
SIGNAL \U2|rx_busy~q\ : std_logic;
SIGNAL \U1|state_of_rx_busy~0_combout\ : std_logic;
SIGNAL \U1|state_of_rx_busy~q\ : std_logic;
SIGNAL \U1|Selector1~0_combout\ : std_logic;
SIGNAL \U1|i[0]~5_combout\ : std_logic;
SIGNAL \U1|i[2]~7_combout\ : std_logic;
SIGNAL \U1|Equal0~0_combout\ : std_logic;
SIGNAL \U1|i[2]~8_combout\ : std_logic;
SIGNAL \U1|i[0]~6\ : std_logic;
SIGNAL \U1|i[1]~9_combout\ : std_logic;
SIGNAL \U1|i[1]~10\ : std_logic;
SIGNAL \U1|i[2]~11_combout\ : std_logic;
SIGNAL \U1|i[2]~12\ : std_logic;
SIGNAL \U1|i[3]~13_combout\ : std_logic;
SIGNAL \U1|i[3]~14\ : std_logic;
SIGNAL \U1|i[4]~15_combout\ : std_logic;
SIGNAL \U1|Selector1~1_combout\ : std_logic;
SIGNAL \U1|Selector1~2_combout\ : std_logic;
SIGNAL \U1|sig_state.S0~q\ : std_logic;
SIGNAL \U1|Selector2~0_combout\ : std_logic;
SIGNAL \U1|Selector2~1_combout\ : std_logic;
SIGNAL \U1|sig_state.S1~q\ : std_logic;
SIGNAL \U1|Selector3~0_combout\ : std_logic;
SIGNAL \U1|Selector3~1_combout\ : std_logic;
SIGNAL \U1|sig_state.S2~q\ : std_logic;
SIGNAL \U1|tx_ena~0_combout\ : std_logic;
SIGNAL \U1|tx_ena~q\ : std_logic;
SIGNAL \U2|tx_count[0]~1_combout\ : std_logic;
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
SIGNAL \U2|rx_buffer[1]~0_combout\ : std_logic;
SIGNAL \U2|rx_buffer[1]~1_combout\ : std_logic;
SIGNAL \U2|rx_buffer[8]~feeder_combout\ : std_logic;
SIGNAL \U2|rx_buffer[7]~feeder_combout\ : std_logic;
SIGNAL \U2|rx_buffer[6]~feeder_combout\ : std_logic;
SIGNAL \U2|rx_buffer[5]~feeder_combout\ : std_logic;
SIGNAL \U2|rx_buffer[4]~feeder_combout\ : std_logic;
SIGNAL \U2|rx_buffer[3]~feeder_combout\ : std_logic;
SIGNAL \U2|rx_data[2]~feeder_combout\ : std_logic;
SIGNAL \U2|rx_data[0]~0_combout\ : std_logic;
SIGNAL \U1|secret[2]~feeder_combout\ : std_logic;
SIGNAL \U1|secret[0]~0_combout\ : std_logic;
SIGNAL \U2|rx_buffer[1]~feeder_combout\ : std_logic;
SIGNAL \U2|rx_data[1]~feeder_combout\ : std_logic;
SIGNAL \U1|secret[1]~feeder_combout\ : std_logic;
SIGNAL \U2|rx_data[3]~feeder_combout\ : std_logic;
SIGNAL \U1|Mux0~2_combout\ : std_logic;
SIGNAL \U1|Mux0~3_combout\ : std_logic;
SIGNAL \U2|rx_data[5]~feeder_combout\ : std_logic;
SIGNAL \U1|secret[5]~feeder_combout\ : std_logic;
SIGNAL \U2|rx_data[4]~feeder_combout\ : std_logic;
SIGNAL \U2|rx_data[6]~feeder_combout\ : std_logic;
SIGNAL \U1|secret[6]~feeder_combout\ : std_logic;
SIGNAL \U2|rx_data[7]~feeder_combout\ : std_logic;
SIGNAL \U1|Mux0~0_combout\ : std_logic;
SIGNAL \U1|Mux0~1_combout\ : std_logic;
SIGNAL \U1|tx_data~0_combout\ : std_logic;
SIGNAL \U1|tx_data~1_combout\ : std_logic;
SIGNAL \U1|tx_data[2]~feeder_combout\ : std_logic;
SIGNAL \U1|tx_data[6]~feeder_combout\ : std_logic;
SIGNAL \U1|tx_data[7]~feeder_combout\ : std_logic;
SIGNAL \U1|tx_data[4]~feeder_combout\ : std_logic;
SIGNAL \U2|tx_parity[8]~0_combout\ : std_logic;
SIGNAL \U1|tx_data[1]~feeder_combout\ : std_logic;
SIGNAL \U2|tx_parity[8]~1_combout\ : std_logic;
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
SIGNAL \U1|i\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U2|count_baud\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \U2|tx_buffer\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \U2|os_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|rx_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|tx_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|count_os\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U2|rx_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U1|tx_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U1|secret\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U2|rx_buffer\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U1|ALT_INV_sig_state.S2~q\ : std_logic;
SIGNAL \U1|ALT_INV_sig_state.S1~q\ : std_logic;
SIGNAL \U2|ALT_INV_tx~q\ : std_logic;
SIGNAL \U2|ALT_INV_tx_state~q\ : std_logic;

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
\U1|ALT_INV_sig_state.S2~q\ <= NOT \U1|sig_state.S2~q\;
\U1|ALT_INV_sig_state.S1~q\ <= NOT \U1|sig_state.S1~q\;
\U2|ALT_INV_tx~q\ <= NOT \U2|tx~q\;
\U2|ALT_INV_tx_state~q\ <= NOT \U2|tx_state~q\;
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

-- Location: LCCOMB_X31_Y17_N20
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

-- Location: LCCOMB_X30_Y17_N10
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

-- Location: FF_X30_Y17_N11
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

-- Location: LCCOMB_X31_Y17_N0
\U2|count_baud[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count_baud[0]~7_combout\ = \U2|count_baud\(0) $ (VCC)
-- \U2|count_baud[0]~8\ = CARRY(\U2|count_baud\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|count_baud\(0),
	datad => VCC,
	combout => \U2|count_baud[0]~7_combout\,
	cout => \U2|count_baud[0]~8\);

-- Location: FF_X31_Y17_N1
\U2|count_baud[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count_baud[0]~7_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \U2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count_baud\(0));

-- Location: LCCOMB_X31_Y17_N2
\U2|count_baud[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count_baud[1]~9_combout\ = (\U2|count_baud\(1) & (!\U2|count_baud[0]~8\)) # (!\U2|count_baud\(1) & ((\U2|count_baud[0]~8\) # (GND)))
-- \U2|count_baud[1]~10\ = CARRY((!\U2|count_baud[0]~8\) # (!\U2|count_baud\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count_baud\(1),
	datad => VCC,
	cin => \U2|count_baud[0]~8\,
	combout => \U2|count_baud[1]~9_combout\,
	cout => \U2|count_baud[1]~10\);

-- Location: FF_X31_Y17_N3
\U2|count_baud[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count_baud[1]~9_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \U2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count_baud\(1));

-- Location: LCCOMB_X31_Y17_N4
\U2|count_baud[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count_baud[2]~11_combout\ = (\U2|count_baud\(2) & (\U2|count_baud[1]~10\ $ (GND))) # (!\U2|count_baud\(2) & (!\U2|count_baud[1]~10\ & VCC))
-- \U2|count_baud[2]~12\ = CARRY((\U2|count_baud\(2) & !\U2|count_baud[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count_baud\(2),
	datad => VCC,
	cin => \U2|count_baud[1]~10\,
	combout => \U2|count_baud[2]~11_combout\,
	cout => \U2|count_baud[2]~12\);

-- Location: FF_X31_Y17_N5
\U2|count_baud[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count_baud[2]~11_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \U2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count_baud\(2));

-- Location: LCCOMB_X31_Y17_N6
\U2|count_baud[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count_baud[3]~13_combout\ = (\U2|count_baud\(3) & (!\U2|count_baud[2]~12\)) # (!\U2|count_baud\(3) & ((\U2|count_baud[2]~12\) # (GND)))
-- \U2|count_baud[3]~14\ = CARRY((!\U2|count_baud[2]~12\) # (!\U2|count_baud\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count_baud\(3),
	datad => VCC,
	cin => \U2|count_baud[2]~12\,
	combout => \U2|count_baud[3]~13_combout\,
	cout => \U2|count_baud[3]~14\);

-- Location: FF_X31_Y17_N7
\U2|count_baud[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count_baud[3]~13_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \U2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count_baud\(3));

-- Location: LCCOMB_X31_Y17_N8
\U2|count_baud[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count_baud[4]~15_combout\ = (\U2|count_baud\(4) & (\U2|count_baud[3]~14\ $ (GND))) # (!\U2|count_baud\(4) & (!\U2|count_baud[3]~14\ & VCC))
-- \U2|count_baud[4]~16\ = CARRY((\U2|count_baud\(4) & !\U2|count_baud[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count_baud\(4),
	datad => VCC,
	cin => \U2|count_baud[3]~14\,
	combout => \U2|count_baud[4]~15_combout\,
	cout => \U2|count_baud[4]~16\);

-- Location: FF_X31_Y17_N9
\U2|count_baud[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count_baud[4]~15_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \U2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count_baud\(4));

-- Location: LCCOMB_X31_Y17_N10
\U2|count_baud[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count_baud[5]~17_combout\ = (\U2|count_baud\(5) & (!\U2|count_baud[4]~16\)) # (!\U2|count_baud\(5) & ((\U2|count_baud[4]~16\) # (GND)))
-- \U2|count_baud[5]~18\ = CARRY((!\U2|count_baud[4]~16\) # (!\U2|count_baud\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count_baud\(5),
	datad => VCC,
	cin => \U2|count_baud[4]~16\,
	combout => \U2|count_baud[5]~17_combout\,
	cout => \U2|count_baud[5]~18\);

-- Location: FF_X31_Y17_N11
\U2|count_baud[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count_baud[5]~17_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \U2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count_baud\(5));

-- Location: LCCOMB_X31_Y17_N12
\U2|count_baud[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count_baud[6]~19_combout\ = \U2|count_baud[5]~18\ $ (!\U2|count_baud\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U2|count_baud\(6),
	cin => \U2|count_baud[5]~18\,
	combout => \U2|count_baud[6]~19_combout\);

-- Location: FF_X31_Y17_N13
\U2|count_baud[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count_baud[6]~19_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \U2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count_baud\(6));

-- Location: LCCOMB_X31_Y17_N18
\U2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan0~0_combout\ = (\U2|count_baud\(3) & ((\U2|count_baud\(2)) # ((\U2|count_baud\(1) & \U2|count_baud\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count_baud\(3),
	datab => \U2|count_baud\(1),
	datac => \U2|count_baud\(2),
	datad => \U2|count_baud\(0),
	combout => \U2|LessThan0~0_combout\);

-- Location: LCCOMB_X31_Y17_N30
\U2|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan0~1_combout\ = (\U2|count_baud\(6) & (\U2|count_baud\(5) & ((\U2|count_baud\(4)) # (\U2|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count_baud\(6),
	datab => \U2|count_baud\(5),
	datac => \U2|count_baud\(4),
	datad => \U2|LessThan0~0_combout\,
	combout => \U2|LessThan0~1_combout\);

-- Location: LCCOMB_X30_Y17_N4
\U2|count_os~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count_os~1_combout\ = (\U2|LessThan0~1_combout\) # ((!\U2|count_os\(0) & ((!\U2|count_os\(2)) # (!\U2|count_os\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count_os\(1),
	datab => \U2|count_os\(2),
	datac => \U2|count_os\(0),
	datad => \U2|LessThan0~1_combout\,
	combout => \U2|count_os~1_combout\);

-- Location: FF_X30_Y17_N5
\U2|count_os[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count_os~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count_os\(0));

-- Location: LCCOMB_X30_Y17_N14
\U2|count_os~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count_os~2_combout\ = (!\U2|LessThan0~1_combout\ & ((\U2|count_os\(1) & (\U2|count_os\(0) & !\U2|count_os\(2))) # (!\U2|count_os\(1) & (!\U2|count_os\(0) & \U2|count_os\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count_os\(1),
	datab => \U2|count_os\(0),
	datac => \U2|count_os\(2),
	datad => \U2|LessThan0~1_combout\,
	combout => \U2|count_os~2_combout\);

-- Location: FF_X30_Y17_N15
\U2|count_os[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count_os~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count_os\(2));

-- Location: LCCOMB_X30_Y17_N22
\U2|count_os~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count_os~0_combout\ = (!\U2|count_os\(2) & (!\U2|LessThan0~1_combout\ & (\U2|count_os\(0) $ (\U2|count_os\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count_os\(2),
	datab => \U2|count_os\(0),
	datac => \U2|count_os\(1),
	datad => \U2|LessThan0~1_combout\,
	combout => \U2|count_os~0_combout\);

-- Location: FF_X30_Y17_N23
\U2|count_os[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|count_os~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count_os\(1));

-- Location: LCCOMB_X26_Y17_N4
\U2|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan1~0_combout\ = (\U2|count_os\(2) & (!\U2|LessThan0~1_combout\ & ((\U2|count_os\(1)) # (\U2|count_os\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count_os\(1),
	datab => \U2|count_os\(0),
	datac => \U2|count_os\(2),
	datad => \U2|LessThan0~1_combout\,
	combout => \U2|LessThan1~0_combout\);

-- Location: FF_X26_Y17_N5
\U2|os_pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|LessThan1~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|os_pulse~q\);

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

-- Location: LCCOMB_X25_Y17_N20
\U2|os_count[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|os_count[0]~1_combout\ = (!\rx~input_o\ & (!\U2|os_count\(3) & !\U2|rx_state~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx~input_o\,
	datac => \U2|os_count\(3),
	datad => \U2|rx_state~q\,
	combout => \U2|os_count[0]~1_combout\);

-- Location: LCCOMB_X24_Y17_N20
\U2|os_count[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|os_count[3]~2_combout\ = (\U2|os_count[3]~0_combout\ & ((\U2|os_count[0]~1_combout\) # ((\U2|LessThan3~0_combout\ & \U2|rx_state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|os_count[0]~1_combout\,
	datab => \U2|LessThan3~0_combout\,
	datac => \U2|rx_state~q\,
	datad => \U2|os_count[3]~0_combout\,
	combout => \U2|os_count[3]~2_combout\);

-- Location: LCCOMB_X24_Y17_N10
\U2|os_count[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|os_count[1]~6_combout\ = (\U2|os_count\(1) & (((!\U2|os_count\(0) & \U2|os_count[3]~2_combout\)) # (!\U2|os_count[3]~0_combout\))) # (!\U2|os_count\(1) & (\U2|os_count\(0) & ((\U2|os_count[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|os_count\(0),
	datab => \U2|os_count[3]~0_combout\,
	datac => \U2|os_count\(1),
	datad => \U2|os_count[3]~2_combout\,
	combout => \U2|os_count[1]~6_combout\);

-- Location: FF_X24_Y17_N11
\U2|os_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|os_count[1]~6_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|os_count\(1));

-- Location: LCCOMB_X24_Y17_N0
\U2|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add2~1_combout\ = \U2|os_count\(2) $ (((\U2|os_count\(1) & \U2|os_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|os_count\(1),
	datab => \U2|os_count\(0),
	datad => \U2|os_count\(2),
	combout => \U2|Add2~1_combout\);

-- Location: LCCOMB_X24_Y17_N22
\U2|os_count[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|os_count[2]~4_combout\ = (\U2|Add2~1_combout\ & ((\U2|os_count[3]~2_combout\) # ((!\U2|os_count[3]~0_combout\ & \U2|os_count\(2))))) # (!\U2|Add2~1_combout\ & (!\U2|os_count[3]~0_combout\ & (\U2|os_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add2~1_combout\,
	datab => \U2|os_count[3]~0_combout\,
	datac => \U2|os_count\(2),
	datad => \U2|os_count[3]~2_combout\,
	combout => \U2|os_count[2]~4_combout\);

-- Location: FF_X24_Y17_N23
\U2|os_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|os_count[2]~4_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|os_count\(2));

-- Location: LCCOMB_X24_Y17_N28
\U2|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan3~0_combout\ = (((!\U2|os_count\(0)) # (!\U2|os_count\(2))) # (!\U2|os_count\(3))) # (!\U2|os_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|os_count\(1),
	datab => \U2|os_count\(3),
	datac => \U2|os_count\(2),
	datad => \U2|os_count\(0),
	combout => \U2|LessThan3~0_combout\);

-- Location: LCCOMB_X25_Y17_N4
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

-- Location: LCCOMB_X25_Y17_N8
\U2|rx_state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|rx_state~0_combout\ = (\U2|rx_busy~2_combout\) # ((\U2|rx_state~q\ & ((\U2|LessThan3~0_combout\) # (\U2|LessThan4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|LessThan3~0_combout\,
	datab => \U2|rx_busy~2_combout\,
	datac => \U2|rx_state~q\,
	datad => \U2|LessThan4~0_combout\,
	combout => \U2|rx_state~0_combout\);

-- Location: FF_X25_Y17_N9
\U2|rx_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|rx_state~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U2|os_pulse~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|rx_state~q\);

-- Location: LCCOMB_X24_Y17_N6
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

-- Location: LCCOMB_X24_Y17_N26
\U2|os_count[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|os_count[3]~7_combout\ = (\U2|rx_state~q\ & !\U2|LessThan3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|rx_state~q\,
	datad => \U2|LessThan3~0_combout\,
	combout => \U2|os_count[3]~7_combout\);

-- Location: LCCOMB_X24_Y17_N8
\U2|rx_count[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|rx_count[3]~1_combout\ = (\U2|os_pulse~q\ & ((\U2|rx_busy~2_combout\) # ((\U2|LessThan4~0_combout\ & \U2|os_count[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|os_pulse~q\,
	datab => \U2|LessThan4~0_combout\,
	datac => \U2|os_count[3]~7_combout\,
	datad => \U2|rx_busy~2_combout\,
	combout => \U2|rx_count[3]~1_combout\);

-- Location: FF_X24_Y17_N7
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

-- Location: LCCOMB_X25_Y17_N0
\U2|rx_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|rx_count~2_combout\ = (\U2|rx_state~q\ & (\U2|rx_count\(1) $ (\U2|rx_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|rx_count\(1),
	datab => \U2|rx_count\(0),
	datad => \U2|rx_state~q\,
	combout => \U2|rx_count~2_combout\);

-- Location: FF_X24_Y17_N1
\U2|rx_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U2|rx_count~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U2|rx_count[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|rx_count\(1));

-- Location: LCCOMB_X24_Y17_N30
\U2|rx_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|rx_count~3_combout\ = (\U2|rx_state~q\ & (\U2|rx_count\(2) $ (((\U2|rx_count\(1) & \U2|rx_count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|rx_count\(1),
	datab => \U2|rx_state~q\,
	datac => \U2|rx_count\(2),
	datad => \U2|rx_count\(0),
	combout => \U2|rx_count~3_combout\);

-- Location: FF_X24_Y17_N31
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

-- Location: LCCOMB_X24_Y17_N2
\U2|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add3~0_combout\ = \U2|rx_count\(3) $ (((\U2|rx_count\(2) & (\U2|rx_count\(0) & \U2|rx_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|rx_count\(2),
	datab => \U2|rx_count\(0),
	datac => \U2|rx_count\(3),
	datad => \U2|rx_count\(1),
	combout => \U2|Add3~0_combout\);

-- Location: LCCOMB_X24_Y17_N16
\U2|rx_count[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|rx_count[3]~4_combout\ = (\U2|rx_count[3]~1_combout\ & (\U2|rx_state~q\ & ((\U2|Add3~0_combout\)))) # (!\U2|rx_count[3]~1_combout\ & (((\U2|rx_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|rx_state~q\,
	datab => \U2|rx_count[3]~1_combout\,
	datac => \U2|rx_count\(3),
	datad => \U2|Add3~0_combout\,
	combout => \U2|rx_count[3]~4_combout\);

-- Location: FF_X24_Y17_N17
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

-- Location: LCCOMB_X24_Y17_N14
\U2|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan4~0_combout\ = ((!\U2|rx_count\(0) & (!\U2|rx_count\(1) & !\U2|rx_count\(2)))) # (!\U2|rx_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|rx_count\(0),
	datab => \U2|rx_count\(1),
	datac => \U2|rx_count\(2),
	datad => \U2|rx_count\(3),
	combout => \U2|LessThan4~0_combout\);

-- Location: LCCOMB_X24_Y17_N18
\U2|os_count[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|os_count[3]~0_combout\ = (\U2|os_pulse~q\ & ((\U2|LessThan4~0_combout\) # ((\U2|LessThan3~0_combout\) # (!\U2|rx_state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|os_pulse~q\,
	datab => \U2|LessThan4~0_combout\,
	datac => \U2|rx_state~q\,
	datad => \U2|LessThan3~0_combout\,
	combout => \U2|os_count[3]~0_combout\);

-- Location: LCCOMB_X24_Y17_N12
\U2|os_count[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|os_count[0]~5_combout\ = (\U2|os_count\(0) & (!\U2|os_count[3]~0_combout\)) # (!\U2|os_count\(0) & ((\U2|os_count[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|os_count[3]~0_combout\,
	datac => \U2|os_count\(0),
	datad => \U2|os_count[3]~2_combout\,
	combout => \U2|os_count[0]~5_combout\);

-- Location: FF_X24_Y17_N13
\U2|os_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|os_count[0]~5_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|os_count\(0));

-- Location: LCCOMB_X24_Y17_N24
\U2|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add2~0_combout\ = \U2|os_count\(3) $ (((\U2|os_count\(0) & (\U2|os_count\(1) & \U2|os_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|os_count\(3),
	datab => \U2|os_count\(0),
	datac => \U2|os_count\(1),
	datad => \U2|os_count\(2),
	combout => \U2|Add2~0_combout\);

-- Location: LCCOMB_X24_Y17_N4
\U2|os_count[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|os_count[3]~3_combout\ = (\U2|Add2~0_combout\ & ((\U2|os_count[3]~2_combout\) # ((!\U2|os_count[3]~0_combout\ & \U2|os_count\(3))))) # (!\U2|Add2~0_combout\ & (!\U2|os_count[3]~0_combout\ & (\U2|os_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add2~0_combout\,
	datab => \U2|os_count[3]~0_combout\,
	datac => \U2|os_count\(3),
	datad => \U2|os_count[3]~2_combout\,
	combout => \U2|os_count[3]~3_combout\);

-- Location: FF_X24_Y17_N5
\U2|os_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|os_count[3]~3_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|os_count\(3));

-- Location: LCCOMB_X25_Y17_N24
\U2|rx_busy~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|rx_busy~3_combout\ = (\U2|rx_busy~q\ & ((\U2|LessThan3~0_combout\) # (\U2|LessThan4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|LessThan3~0_combout\,
	datac => \U2|rx_busy~q\,
	datad => \U2|LessThan4~0_combout\,
	combout => \U2|rx_busy~3_combout\);

-- Location: LCCOMB_X25_Y17_N16
\U2|rx_busy~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|rx_busy~4_combout\ = (\U2|rx_state~q\ & (((\U2|rx_busy~3_combout\)))) # (!\U2|rx_state~q\ & (\U2|os_count\(3) & (!\rx~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|os_count\(3),
	datab => \U2|rx_state~q\,
	datac => \rx~input_o\,
	datad => \U2|rx_busy~3_combout\,
	combout => \U2|rx_busy~4_combout\);

-- Location: FF_X25_Y17_N17
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

-- Location: LCCOMB_X30_Y17_N12
\U1|state_of_rx_busy~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|state_of_rx_busy~0_combout\ = (\U2|rx_busy~q\) # ((\U1|state_of_rx_busy~q\ & \U1|sig_state.S2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|rx_busy~q\,
	datac => \U1|state_of_rx_busy~q\,
	datad => \U1|sig_state.S2~q\,
	combout => \U1|state_of_rx_busy~0_combout\);

-- Location: FF_X30_Y17_N13
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

-- Location: LCCOMB_X30_Y17_N26
\U1|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Selector1~0_combout\ = (!\U1|sig_state.S2~q\ & ((\U1|sig_state.S0~q\) # ((\U1|state_of_rx_busy~q\ & !\U2|rx_busy~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|state_of_rx_busy~q\,
	datab => \U1|sig_state.S2~q\,
	datac => \U1|sig_state.S0~q\,
	datad => \U2|rx_busy~q\,
	combout => \U1|Selector1~0_combout\);

-- Location: LCCOMB_X29_Y17_N6
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

-- Location: LCCOMB_X30_Y17_N30
\U1|i[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|i[2]~7_combout\ = (!\U1|sig_state.S2~q\) # (!\U2|tx_busy~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|tx_busy~q\,
	datad => \U1|sig_state.S2~q\,
	combout => \U1|i[2]~7_combout\);

-- Location: LCCOMB_X29_Y17_N4
\U1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Equal0~0_combout\ = (\U1|i\(2)) # ((\U1|i\(1)) # ((\U1|i\(3)) # (\U1|i\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|i\(2),
	datab => \U1|i\(1),
	datac => \U1|i\(3),
	datad => \U1|i\(0),
	combout => \U1|Equal0~0_combout\);

-- Location: LCCOMB_X29_Y17_N20
\U1|i[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|i[2]~8_combout\ = (\U1|Selector3~0_combout\) # ((!\U1|i[2]~7_combout\ & (\U1|i\(4) & !\U1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|i[2]~7_combout\,
	datab => \U1|i\(4),
	datac => \U1|Equal0~0_combout\,
	datad => \U1|Selector3~0_combout\,
	combout => \U1|i[2]~8_combout\);

-- Location: FF_X29_Y17_N7
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
	ena => \U1|i[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|i\(0));

-- Location: LCCOMB_X29_Y17_N8
\U1|i[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|i[1]~9_combout\ = (\U1|i\(1) & (!\U1|i[0]~6\)) # (!\U1|i\(1) & ((\U1|i[0]~6\) # (GND)))
-- \U1|i[1]~10\ = CARRY((!\U1|i[0]~6\) # (!\U1|i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|i\(1),
	datad => VCC,
	cin => \U1|i[0]~6\,
	combout => \U1|i[1]~9_combout\,
	cout => \U1|i[1]~10\);

-- Location: FF_X29_Y17_N9
\U1|i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|i[1]~9_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \U1|sig_state.S2~q\,
	ena => \U1|i[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|i\(1));

-- Location: LCCOMB_X29_Y17_N10
\U1|i[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|i[2]~11_combout\ = (\U1|i\(2) & (\U1|i[1]~10\ $ (GND))) # (!\U1|i\(2) & (!\U1|i[1]~10\ & VCC))
-- \U1|i[2]~12\ = CARRY((\U1|i\(2) & !\U1|i[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|i\(2),
	datad => VCC,
	cin => \U1|i[1]~10\,
	combout => \U1|i[2]~11_combout\,
	cout => \U1|i[2]~12\);

-- Location: FF_X29_Y17_N11
\U1|i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|i[2]~11_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \U1|sig_state.S2~q\,
	ena => \U1|i[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|i\(2));

-- Location: LCCOMB_X29_Y17_N12
\U1|i[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|i[3]~13_combout\ = (\U1|i\(3) & (!\U1|i[2]~12\)) # (!\U1|i\(3) & ((\U1|i[2]~12\) # (GND)))
-- \U1|i[3]~14\ = CARRY((!\U1|i[2]~12\) # (!\U1|i\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|i\(3),
	datad => VCC,
	cin => \U1|i[2]~12\,
	combout => \U1|i[3]~13_combout\,
	cout => \U1|i[3]~14\);

-- Location: FF_X29_Y17_N13
\U1|i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|i[3]~13_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \U1|sig_state.S2~q\,
	ena => \U1|i[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|i\(3));

-- Location: LCCOMB_X29_Y17_N14
\U1|i[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|i[4]~15_combout\ = \U1|i\(4) $ (!\U1|i[3]~14\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|i\(4),
	cin => \U1|i[3]~14\,
	combout => \U1|i[4]~15_combout\);

-- Location: FF_X29_Y17_N15
\U1|i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|i[4]~15_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \U1|sig_state.S2~q\,
	ena => \U1|i[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|i\(4));

-- Location: LCCOMB_X29_Y17_N30
\U1|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Selector1~1_combout\ = (\U1|sig_state.S2~q\ & ((\U1|Equal0~0_combout\) # (!\U1|i\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|sig_state.S2~q\,
	datab => \U1|i\(4),
	datac => \U1|Equal0~0_combout\,
	combout => \U1|Selector1~1_combout\);

-- Location: LCCOMB_X30_Y17_N24
\U1|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Selector1~2_combout\ = (\U1|Selector1~0_combout\) # ((\U1|Selector1~1_combout\) # ((!\U2|tx_busy~q\ & \U1|sig_state.S2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|tx_busy~q\,
	datab => \U1|sig_state.S2~q\,
	datac => \U1|Selector1~0_combout\,
	datad => \U1|Selector1~1_combout\,
	combout => \U1|Selector1~2_combout\);

-- Location: FF_X30_Y17_N25
\U1|sig_state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|Selector1~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|sig_state.S0~q\);

-- Location: LCCOMB_X30_Y17_N8
\U1|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Selector2~0_combout\ = (\U1|sig_state.S0~q\ & (!\U1|sig_state.S2~q\ & ((\U2|rx_busy~q\) # (!\U1|state_of_rx_busy~q\)))) # (!\U1|sig_state.S0~q\ & (\U1|state_of_rx_busy~q\ & ((!\U2|rx_busy~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|state_of_rx_busy~q\,
	datab => \U1|sig_state.S2~q\,
	datac => \U1|sig_state.S0~q\,
	datad => \U2|rx_busy~q\,
	combout => \U1|Selector2~0_combout\);

-- Location: LCCOMB_X30_Y17_N16
\U1|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Selector2~1_combout\ = (\U1|Selector2~0_combout\) # ((\U2|tx_busy~q\ & (\U1|sig_state.S0~q\ & \U1|Selector1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|tx_busy~q\,
	datab => \U1|Selector2~0_combout\,
	datac => \U1|sig_state.S0~q\,
	datad => \U1|Selector1~1_combout\,
	combout => \U1|Selector2~1_combout\);

-- Location: FF_X30_Y17_N17
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

-- Location: LCCOMB_X29_Y17_N0
\U1|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Selector3~0_combout\ = (\U1|sig_state.S1~q\ & (\U1|state_of_rx_busy~q\ & !\U2|rx_busy~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|sig_state.S1~q\,
	datac => \U1|state_of_rx_busy~q\,
	datad => \U2|rx_busy~q\,
	combout => \U1|Selector3~0_combout\);

-- Location: LCCOMB_X30_Y17_N20
\U1|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Selector3~1_combout\ = (\U1|Selector3~0_combout\) # ((!\U2|tx_busy~q\ & \U1|sig_state.S2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|tx_busy~q\,
	datac => \U1|sig_state.S2~q\,
	datad => \U1|Selector3~0_combout\,
	combout => \U1|Selector3~1_combout\);

-- Location: FF_X30_Y17_N21
\U1|sig_state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|Selector3~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|sig_state.S2~q\);

-- Location: LCCOMB_X30_Y17_N2
\U1|tx_ena~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|tx_ena~0_combout\ = (\U1|sig_state.S2~q\ & ((\U2|tx_busy~q\) # (\U1|tx_ena~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|tx_busy~q\,
	datac => \U1|tx_ena~q\,
	datad => \U1|sig_state.S2~q\,
	combout => \U1|tx_ena~0_combout\);

-- Location: FF_X30_Y17_N3
\U1|tx_ena\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|tx_ena~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|tx_ena~q\);

-- Location: LCCOMB_X30_Y17_N6
\U2|tx_count[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|tx_count[0]~1_combout\ = (\U1|tx_ena~q\) # (\U2|tx_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|tx_ena~q\,
	datad => \U2|tx_state~q\,
	combout => \U2|tx_count[0]~1_combout\);

-- Location: FF_X31_Y17_N21
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

-- Location: FF_X31_Y17_N31
\U2|baud_pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|LessThan0~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|baud_pulse~q\);

-- Location: LCCOMB_X31_Y17_N22
\U2|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add4~0_combout\ = (\U2|tx_count\(0) & (\U2|baud_pulse~q\ $ (VCC))) # (!\U2|tx_count\(0) & (\U2|baud_pulse~q\ & VCC))
-- \U2|Add4~1\ = CARRY((\U2|tx_count\(0) & \U2|baud_pulse~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|tx_count\(0),
	datab => \U2|baud_pulse~q\,
	datad => VCC,
	combout => \U2|Add4~0_combout\,
	cout => \U2|Add4~1\);

-- Location: LCCOMB_X31_Y17_N16
\U2|tx_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|tx_count~3_combout\ = (\U2|Add4~0_combout\ & \U2|tx_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|Add4~0_combout\,
	datad => \U2|tx_state~q\,
	combout => \U2|tx_count~3_combout\);

-- Location: FF_X31_Y17_N17
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

-- Location: LCCOMB_X31_Y17_N24
\U2|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add4~2_combout\ = (\U2|tx_count\(1) & (!\U2|Add4~1\)) # (!\U2|tx_count\(1) & ((\U2|Add4~1\) # (GND)))
-- \U2|Add4~3\ = CARRY((!\U2|Add4~1\) # (!\U2|tx_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|tx_count\(1),
	datad => VCC,
	cin => \U2|Add4~1\,
	combout => \U2|Add4~2_combout\,
	cout => \U2|Add4~3\);

-- Location: LCCOMB_X31_Y17_N14
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

-- Location: FF_X31_Y17_N15
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

-- Location: LCCOMB_X31_Y17_N26
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

-- Location: LCCOMB_X30_Y17_N18
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

-- Location: FF_X30_Y17_N19
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

-- Location: LCCOMB_X31_Y17_N28
\U2|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add4~6_combout\ = \U2|Add4~5\ $ (\U2|tx_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U2|tx_count\(3),
	cin => \U2|Add4~5\,
	combout => \U2|Add4~6_combout\);

-- Location: LCCOMB_X30_Y17_N28
\U2|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan5~0_combout\ = (!\U2|Add4~6_combout\) # (!\U2|Add4~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|Add4~4_combout\,
	datad => \U2|Add4~6_combout\,
	combout => \U2|LessThan5~0_combout\);

-- Location: FF_X30_Y17_N29
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

-- Location: LCCOMB_X25_Y17_N28
\U2|rx_buffer[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|rx_buffer[1]~0_combout\ = (\reset~input_o\ & \U2|os_pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \U2|os_pulse~q\,
	combout => \U2|rx_buffer[1]~0_combout\);

-- Location: LCCOMB_X25_Y17_N26
\U2|rx_buffer[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|rx_buffer[1]~1_combout\ = (\U2|LessThan4~0_combout\ & (!\U2|LessThan3~0_combout\ & (\U2|rx_state~q\ & \U2|rx_buffer[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|LessThan4~0_combout\,
	datab => \U2|LessThan3~0_combout\,
	datac => \U2|rx_state~q\,
	datad => \U2|rx_buffer[1]~0_combout\,
	combout => \U2|rx_buffer[1]~1_combout\);

-- Location: FF_X25_Y17_N1
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
	ena => \U2|rx_buffer[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|rx_buffer\(9));

-- Location: LCCOMB_X25_Y17_N14
\U2|rx_buffer[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|rx_buffer[8]~feeder_combout\ = \U2|rx_buffer\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|rx_buffer\(9),
	combout => \U2|rx_buffer[8]~feeder_combout\);

-- Location: FF_X25_Y17_N15
\U2|rx_buffer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|rx_buffer[8]~feeder_combout\,
	ena => \U2|rx_buffer[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|rx_buffer\(8));

-- Location: LCCOMB_X25_Y17_N10
\U2|rx_buffer[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|rx_buffer[7]~feeder_combout\ = \U2|rx_buffer\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|rx_buffer\(8),
	combout => \U2|rx_buffer[7]~feeder_combout\);

-- Location: FF_X25_Y17_N11
\U2|rx_buffer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|rx_buffer[7]~feeder_combout\,
	ena => \U2|rx_buffer[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|rx_buffer\(7));

-- Location: LCCOMB_X25_Y17_N30
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

-- Location: FF_X25_Y17_N31
\U2|rx_buffer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|rx_buffer[6]~feeder_combout\,
	ena => \U2|rx_buffer[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|rx_buffer\(6));

-- Location: LCCOMB_X25_Y17_N18
\U2|rx_buffer[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|rx_buffer[5]~feeder_combout\ = \U2|rx_buffer\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|rx_buffer\(6),
	combout => \U2|rx_buffer[5]~feeder_combout\);

-- Location: FF_X25_Y17_N19
\U2|rx_buffer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|rx_buffer[5]~feeder_combout\,
	ena => \U2|rx_buffer[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|rx_buffer\(5));

-- Location: LCCOMB_X25_Y17_N12
\U2|rx_buffer[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|rx_buffer[4]~feeder_combout\ = \U2|rx_buffer\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|rx_buffer\(5),
	combout => \U2|rx_buffer[4]~feeder_combout\);

-- Location: FF_X25_Y17_N13
\U2|rx_buffer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|rx_buffer[4]~feeder_combout\,
	ena => \U2|rx_buffer[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|rx_buffer\(4));

-- Location: LCCOMB_X25_Y17_N22
\U2|rx_buffer[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|rx_buffer[3]~feeder_combout\ = \U2|rx_buffer\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|rx_buffer\(4),
	combout => \U2|rx_buffer[3]~feeder_combout\);

-- Location: FF_X25_Y17_N23
\U2|rx_buffer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|rx_buffer[3]~feeder_combout\,
	ena => \U2|rx_buffer[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|rx_buffer\(3));

-- Location: LCCOMB_X26_Y17_N22
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

-- Location: LCCOMB_X25_Y17_N6
\U2|rx_data[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|rx_data[0]~0_combout\ = (!\U2|LessThan4~0_combout\ & (\U2|rx_state~q\ & (\U2|os_pulse~q\ & !\U2|LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|LessThan4~0_combout\,
	datab => \U2|rx_state~q\,
	datac => \U2|os_pulse~q\,
	datad => \U2|LessThan3~0_combout\,
	combout => \U2|rx_data[0]~0_combout\);

-- Location: FF_X26_Y17_N23
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

-- Location: LCCOMB_X28_Y17_N22
\U1|secret[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|secret[2]~feeder_combout\ = \U2|rx_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|rx_data\(2),
	combout => \U1|secret[2]~feeder_combout\);

-- Location: LCCOMB_X28_Y17_N14
\U1|secret[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|secret[0]~0_combout\ = (!\U2|rx_busy~q\ & (!\U1|sig_state.S0~q\ & \U1|state_of_rx_busy~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|rx_busy~q\,
	datac => \U1|sig_state.S0~q\,
	datad => \U1|state_of_rx_busy~q\,
	combout => \U1|secret[0]~0_combout\);

-- Location: FF_X28_Y17_N23
\U1|secret[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|secret[2]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U1|secret[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|secret\(2));

-- Location: FF_X25_Y17_N29
\U2|rx_buffer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U2|rx_buffer\(3),
	sload => VCC,
	ena => \U2|rx_buffer[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|rx_buffer\(2));

-- Location: LCCOMB_X25_Y17_N2
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

-- Location: FF_X25_Y17_N3
\U2|rx_buffer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U2|rx_buffer[1]~feeder_combout\,
	ena => \U2|rx_buffer[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|rx_buffer\(1));

-- Location: FF_X28_Y17_N9
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

-- Location: FF_X28_Y17_N17
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
	ena => \U1|secret[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|secret\(0));

-- Location: LCCOMB_X26_Y17_N16
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

-- Location: FF_X26_Y17_N17
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

-- Location: LCCOMB_X28_Y17_N12
\U1|secret[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|secret[1]~feeder_combout\ = \U2|rx_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|rx_data\(1),
	combout => \U1|secret[1]~feeder_combout\);

-- Location: FF_X28_Y17_N13
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
	ena => \U1|secret[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|secret\(1));

-- Location: LCCOMB_X26_Y17_N18
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

-- Location: FF_X26_Y17_N19
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

-- Location: FF_X28_Y17_N19
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
	ena => \U1|secret[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|secret\(3));

-- Location: LCCOMB_X28_Y17_N18
\U1|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux0~2_combout\ = (\U1|i\(2) & ((\U1|secret\(1)) # ((\U1|i\(1))))) # (!\U1|i\(2) & (((\U1|secret\(3) & !\U1|i\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|secret\(1),
	datab => \U1|i\(2),
	datac => \U1|secret\(3),
	datad => \U1|i\(1),
	combout => \U1|Mux0~2_combout\);

-- Location: LCCOMB_X28_Y17_N16
\U1|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux0~3_combout\ = (\U1|i\(1) & ((\U1|Mux0~2_combout\ & ((\U1|secret\(0)))) # (!\U1|Mux0~2_combout\ & (\U1|secret\(2))))) # (!\U1|i\(1) & (((\U1|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|secret\(2),
	datab => \U1|i\(1),
	datac => \U1|secret\(0),
	datad => \U1|Mux0~2_combout\,
	combout => \U1|Mux0~3_combout\);

-- Location: LCCOMB_X26_Y17_N26
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

-- Location: FF_X26_Y17_N27
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

-- Location: LCCOMB_X28_Y17_N26
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

-- Location: FF_X28_Y17_N27
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
	ena => \U1|secret[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|secret\(5));

-- Location: LCCOMB_X26_Y17_N12
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

-- Location: FF_X26_Y17_N13
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

-- Location: FF_X28_Y17_N21
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
	ena => \U1|secret[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|secret\(4));

-- Location: LCCOMB_X26_Y17_N20
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

-- Location: FF_X26_Y17_N21
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

-- Location: LCCOMB_X28_Y17_N28
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

-- Location: FF_X28_Y17_N29
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
	ena => \U1|secret[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|secret\(6));

-- Location: LCCOMB_X26_Y17_N10
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

-- Location: FF_X26_Y17_N11
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

-- Location: FF_X28_Y17_N11
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
	ena => \U1|secret[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|secret\(7));

-- Location: LCCOMB_X28_Y17_N10
\U1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux0~0_combout\ = (\U1|i\(2) & (((\U1|i\(1))))) # (!\U1|i\(2) & ((\U1|i\(1) & (\U1|secret\(6))) # (!\U1|i\(1) & ((\U1|secret\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|secret\(6),
	datab => \U1|i\(2),
	datac => \U1|secret\(7),
	datad => \U1|i\(1),
	combout => \U1|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y17_N20
\U1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|Mux0~1_combout\ = (\U1|i\(2) & ((\U1|Mux0~0_combout\ & ((\U1|secret\(4)))) # (!\U1|Mux0~0_combout\ & (\U1|secret\(5))))) # (!\U1|i\(2) & (((\U1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|secret\(5),
	datab => \U1|i\(2),
	datac => \U1|secret\(4),
	datad => \U1|Mux0~0_combout\,
	combout => \U1|Mux0~1_combout\);

-- Location: LCCOMB_X28_Y17_N8
\U1|tx_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|tx_data~0_combout\ = (\U1|i\(0) & (!\U1|i\(3) & ((\U1|Mux0~1_combout\)))) # (!\U1|i\(0) & (((\U2|rx_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|i\(0),
	datab => \U1|i\(3),
	datac => \U2|rx_data\(0),
	datad => \U1|Mux0~1_combout\,
	combout => \U1|tx_data~0_combout\);

-- Location: LCCOMB_X29_Y17_N26
\U1|tx_data~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|tx_data~1_combout\ = (\U1|tx_data~0_combout\) # ((\U1|i\(0) & (\U1|i\(3) & \U1|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|i\(0),
	datab => \U1|i\(3),
	datac => \U1|Mux0~3_combout\,
	datad => \U1|tx_data~0_combout\,
	combout => \U1|tx_data~1_combout\);

-- Location: FF_X29_Y17_N27
\U1|tx_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|tx_data~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U1|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|tx_data\(0));

-- Location: LCCOMB_X29_Y17_N18
\U1|tx_data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|tx_data[2]~feeder_combout\ = \U2|rx_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|rx_data\(2),
	combout => \U1|tx_data[2]~feeder_combout\);

-- Location: FF_X29_Y17_N19
\U1|tx_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|tx_data[2]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U1|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|tx_data\(2));

-- Location: FF_X30_Y18_N9
\U1|tx_data[3]\ : dffeas
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
	ena => \U1|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|tx_data\(3));

-- Location: FF_X30_Y18_N31
\U1|tx_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \U2|rx_data\(5),
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U1|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|tx_data\(5));

-- Location: LCCOMB_X29_Y17_N2
\U1|tx_data[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|tx_data[6]~feeder_combout\ = \U2|rx_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|rx_data\(6),
	combout => \U1|tx_data[6]~feeder_combout\);

-- Location: FF_X29_Y17_N3
\U1|tx_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|tx_data[6]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U1|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|tx_data\(6));

-- Location: LCCOMB_X29_Y17_N16
\U1|tx_data[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|tx_data[7]~feeder_combout\ = \U2|rx_data\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|rx_data\(7),
	combout => \U1|tx_data[7]~feeder_combout\);

-- Location: FF_X29_Y17_N17
\U1|tx_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|tx_data[7]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U1|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|tx_data\(7));

-- Location: LCCOMB_X29_Y17_N24
\U1|tx_data[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|tx_data[4]~feeder_combout\ = \U2|rx_data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|rx_data\(4),
	combout => \U1|tx_data[4]~feeder_combout\);

-- Location: FF_X29_Y17_N25
\U1|tx_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|tx_data[4]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U1|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|tx_data\(4));

-- Location: LCCOMB_X30_Y18_N30
\U2|tx_parity[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|tx_parity[8]~0_combout\ = \U1|tx_data\(6) $ (\U1|tx_data\(7) $ (\U1|tx_data\(5) $ (\U1|tx_data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|tx_data\(6),
	datab => \U1|tx_data\(7),
	datac => \U1|tx_data\(5),
	datad => \U1|tx_data\(4),
	combout => \U2|tx_parity[8]~0_combout\);

-- Location: LCCOMB_X29_Y17_N28
\U1|tx_data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|tx_data[1]~feeder_combout\ = \U2|rx_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U2|rx_data\(1),
	combout => \U1|tx_data[1]~feeder_combout\);

-- Location: FF_X29_Y17_N29
\U1|tx_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|tx_data[1]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \U1|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|tx_data\(1));

-- Location: LCCOMB_X30_Y18_N8
\U2|tx_parity[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|tx_parity[8]~1_combout\ = \U1|tx_data\(0) $ (\U1|tx_data\(1) $ (\U1|tx_data\(3) $ (\U1|tx_data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|tx_data\(0),
	datab => \U1|tx_data\(1),
	datac => \U1|tx_data\(3),
	datad => \U1|tx_data\(2),
	combout => \U2|tx_parity[8]~1_combout\);

-- Location: LCCOMB_X30_Y18_N28
\U2|tx_buffer~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|tx_buffer~11_combout\ = (!\U2|tx_state~q\ & (\U2|tx_parity[8]~0_combout\ $ (!\U2|tx_parity[8]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|tx_state~q\,
	datac => \U2|tx_parity[8]~0_combout\,
	datad => \U2|tx_parity[8]~1_combout\,
	combout => \U2|tx_buffer~11_combout\);

-- Location: LCCOMB_X30_Y17_N0
\U2|tx_buffer[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|tx_buffer[0]~1_combout\ = (\reset~input_o\ & ((\U2|tx_state~q\ & (\U2|baud_pulse~q\)) # (!\U2|tx_state~q\ & ((\U1|tx_ena~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|baud_pulse~q\,
	datab => \U1|tx_ena~q\,
	datac => \reset~input_o\,
	datad => \U2|tx_state~q\,
	combout => \U2|tx_buffer[0]~1_combout\);

-- Location: FF_X30_Y18_N29
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

-- Location: LCCOMB_X30_Y18_N18
\U2|tx_buffer~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|tx_buffer~10_combout\ = (\U2|tx_state~q\ & ((\U2|tx_buffer\(10)))) # (!\U2|tx_state~q\ & (!\U1|tx_data\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|tx_data\(7),
	datac => \U2|tx_state~q\,
	datad => \U2|tx_buffer\(10),
	combout => \U2|tx_buffer~10_combout\);

-- Location: FF_X30_Y18_N19
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

-- Location: LCCOMB_X30_Y18_N16
\U2|tx_buffer~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|tx_buffer~9_combout\ = (\U2|tx_state~q\ & ((\U2|tx_buffer\(9)))) # (!\U2|tx_state~q\ & (!\U1|tx_data\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|tx_state~q\,
	datac => \U1|tx_data\(6),
	datad => \U2|tx_buffer\(9),
	combout => \U2|tx_buffer~9_combout\);

-- Location: FF_X30_Y18_N17
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

-- Location: LCCOMB_X30_Y18_N12
\U2|tx_buffer~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|tx_buffer~8_combout\ = (\U2|tx_state~q\ & ((\U2|tx_buffer\(8)))) # (!\U2|tx_state~q\ & (!\U1|tx_data\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|tx_state~q\,
	datac => \U1|tx_data\(5),
	datad => \U2|tx_buffer\(8),
	combout => \U2|tx_buffer~8_combout\);

-- Location: FF_X30_Y18_N13
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

-- Location: LCCOMB_X30_Y18_N22
\U2|tx_buffer~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|tx_buffer~7_combout\ = (\U2|tx_state~q\ & (\U2|tx_buffer\(7))) # (!\U2|tx_state~q\ & ((!\U1|tx_data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|tx_buffer\(7),
	datac => \U2|tx_state~q\,
	datad => \U1|tx_data\(4),
	combout => \U2|tx_buffer~7_combout\);

-- Location: FF_X30_Y18_N23
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

-- Location: LCCOMB_X30_Y18_N26
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

-- Location: FF_X30_Y18_N27
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

-- Location: LCCOMB_X30_Y18_N20
\U2|tx_buffer~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|tx_buffer~5_combout\ = (\U2|tx_state~q\ & ((\U2|tx_buffer\(5)))) # (!\U2|tx_state~q\ & (!\U1|tx_data\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|tx_data\(2),
	datac => \U2|tx_state~q\,
	datad => \U2|tx_buffer\(5),
	combout => \U2|tx_buffer~5_combout\);

-- Location: FF_X30_Y18_N21
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

-- Location: LCCOMB_X30_Y18_N6
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

-- Location: FF_X30_Y18_N7
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

-- Location: LCCOMB_X30_Y18_N24
\U2|tx_buffer~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|tx_buffer~3_combout\ = (\U2|tx_state~q\ & ((\U2|tx_buffer\(3)))) # (!\U2|tx_state~q\ & (!\U1|tx_data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|tx_data\(0),
	datac => \U2|tx_state~q\,
	datad => \U2|tx_buffer\(3),
	combout => \U2|tx_buffer~3_combout\);

-- Location: FF_X30_Y18_N25
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

-- Location: LCCOMB_X30_Y18_N14
\U2|tx_buffer~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|tx_buffer~2_combout\ = (\U2|tx_buffer\(2)) # (!\U2|tx_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|tx_state~q\,
	datad => \U2|tx_buffer\(2),
	combout => \U2|tx_buffer~2_combout\);

-- Location: FF_X30_Y18_N15
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

-- Location: LCCOMB_X30_Y18_N4
\U2|tx_buffer~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|tx_buffer~0_combout\ = (\U2|tx_state~q\ & \U2|tx_buffer\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|tx_state~q\,
	datad => \U2|tx_buffer\(1),
	combout => \U2|tx_buffer~0_combout\);

-- Location: FF_X30_Y18_N5
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

-- Location: LCCOMB_X29_Y18_N24
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

-- Location: FF_X29_Y18_N25
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



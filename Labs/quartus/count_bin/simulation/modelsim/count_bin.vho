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

-- DATE "07/18/2019 14:16:14"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	count_bin IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	count : BUFFER std_logic_vector(23 DOWNTO 0)
	);
END count_bin;

-- Design Ports Information
-- count[0]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[1]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[2]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[3]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[4]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[5]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[6]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[7]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[8]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[9]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[10]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[11]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[12]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[13]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[14]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[15]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[16]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[17]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[18]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[19]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[20]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[21]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[22]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count[23]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF count_bin IS
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
SIGNAL ww_rst : std_logic;
SIGNAL ww_count : std_logic_vector(23 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \count[0]~output_o\ : std_logic;
SIGNAL \count[1]~output_o\ : std_logic;
SIGNAL \count[2]~output_o\ : std_logic;
SIGNAL \count[3]~output_o\ : std_logic;
SIGNAL \count[4]~output_o\ : std_logic;
SIGNAL \count[5]~output_o\ : std_logic;
SIGNAL \count[6]~output_o\ : std_logic;
SIGNAL \count[7]~output_o\ : std_logic;
SIGNAL \count[8]~output_o\ : std_logic;
SIGNAL \count[9]~output_o\ : std_logic;
SIGNAL \count[10]~output_o\ : std_logic;
SIGNAL \count[11]~output_o\ : std_logic;
SIGNAL \count[12]~output_o\ : std_logic;
SIGNAL \count[13]~output_o\ : std_logic;
SIGNAL \count[14]~output_o\ : std_logic;
SIGNAL \count[15]~output_o\ : std_logic;
SIGNAL \count[16]~output_o\ : std_logic;
SIGNAL \count[17]~output_o\ : std_logic;
SIGNAL \count[18]~output_o\ : std_logic;
SIGNAL \count[19]~output_o\ : std_logic;
SIGNAL \count[20]~output_o\ : std_logic;
SIGNAL \count[21]~output_o\ : std_logic;
SIGNAL \count[22]~output_o\ : std_logic;
SIGNAL \count[23]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \temp[0]~69_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \temp[1]~23_combout\ : std_logic;
SIGNAL \temp[1]~24\ : std_logic;
SIGNAL \temp[2]~25_combout\ : std_logic;
SIGNAL \temp[2]~26\ : std_logic;
SIGNAL \temp[3]~27_combout\ : std_logic;
SIGNAL \temp[3]~28\ : std_logic;
SIGNAL \temp[4]~29_combout\ : std_logic;
SIGNAL \temp[4]~30\ : std_logic;
SIGNAL \temp[5]~31_combout\ : std_logic;
SIGNAL \temp[5]~32\ : std_logic;
SIGNAL \temp[6]~33_combout\ : std_logic;
SIGNAL \temp[6]~34\ : std_logic;
SIGNAL \temp[7]~35_combout\ : std_logic;
SIGNAL \temp[7]~36\ : std_logic;
SIGNAL \temp[8]~37_combout\ : std_logic;
SIGNAL \temp[8]~38\ : std_logic;
SIGNAL \temp[9]~39_combout\ : std_logic;
SIGNAL \temp[9]~40\ : std_logic;
SIGNAL \temp[10]~41_combout\ : std_logic;
SIGNAL \temp[10]~42\ : std_logic;
SIGNAL \temp[11]~43_combout\ : std_logic;
SIGNAL \temp[11]~44\ : std_logic;
SIGNAL \temp[12]~45_combout\ : std_logic;
SIGNAL \temp[12]~46\ : std_logic;
SIGNAL \temp[13]~47_combout\ : std_logic;
SIGNAL \temp[13]~48\ : std_logic;
SIGNAL \temp[14]~49_combout\ : std_logic;
SIGNAL \temp[14]~50\ : std_logic;
SIGNAL \temp[15]~51_combout\ : std_logic;
SIGNAL \temp[15]~52\ : std_logic;
SIGNAL \temp[16]~53_combout\ : std_logic;
SIGNAL \temp[16]~54\ : std_logic;
SIGNAL \temp[17]~55_combout\ : std_logic;
SIGNAL \temp[17]~56\ : std_logic;
SIGNAL \temp[18]~57_combout\ : std_logic;
SIGNAL \temp[18]~58\ : std_logic;
SIGNAL \temp[19]~59_combout\ : std_logic;
SIGNAL \temp[19]~60\ : std_logic;
SIGNAL \temp[20]~61_combout\ : std_logic;
SIGNAL \temp[20]~62\ : std_logic;
SIGNAL \temp[21]~63_combout\ : std_logic;
SIGNAL \temp[21]~64\ : std_logic;
SIGNAL \temp[22]~65_combout\ : std_logic;
SIGNAL \temp[22]~66\ : std_logic;
SIGNAL \temp[23]~67_combout\ : std_logic;
SIGNAL temp : std_logic_vector(23 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
count <= ww_count;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y4_N23
\count[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp(0),
	devoe => ww_devoe,
	o => \count[0]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\count[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp(1),
	devoe => ww_devoe,
	o => \count[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\count[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp(2),
	devoe => ww_devoe,
	o => \count[2]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\count[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp(3),
	devoe => ww_devoe,
	o => \count[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\count[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp(4),
	devoe => ww_devoe,
	o => \count[4]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\count[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp(5),
	devoe => ww_devoe,
	o => \count[5]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\count[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp(6),
	devoe => ww_devoe,
	o => \count[6]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\count[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp(7),
	devoe => ww_devoe,
	o => \count[7]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\count[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp(8),
	devoe => ww_devoe,
	o => \count[8]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\count[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp(9),
	devoe => ww_devoe,
	o => \count[9]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\count[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp(10),
	devoe => ww_devoe,
	o => \count[10]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\count[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp(11),
	devoe => ww_devoe,
	o => \count[11]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\count[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp(12),
	devoe => ww_devoe,
	o => \count[12]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\count[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp(13),
	devoe => ww_devoe,
	o => \count[13]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\count[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp(14),
	devoe => ww_devoe,
	o => \count[14]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\count[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp(15),
	devoe => ww_devoe,
	o => \count[15]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\count[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp(16),
	devoe => ww_devoe,
	o => \count[16]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\count[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp(17),
	devoe => ww_devoe,
	o => \count[17]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\count[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp(18),
	devoe => ww_devoe,
	o => \count[18]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\count[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp(19),
	devoe => ww_devoe,
	o => \count[19]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\count[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp(20),
	devoe => ww_devoe,
	o => \count[20]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\count[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp(21),
	devoe => ww_devoe,
	o => \count[21]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\count[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp(22),
	devoe => ww_devoe,
	o => \count[22]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\count[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => temp(23),
	devoe => ww_devoe,
	o => \count[23]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G18
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

-- Location: LCCOMB_X10_Y4_N4
\temp[0]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[0]~69_combout\ = !temp(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => temp(0),
	combout => \temp[0]~69_combout\);

-- Location: IOIBUF_X0_Y16_N8
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G2
\rst~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X10_Y4_N5
\temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[0]~69_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(0));

-- Location: LCCOMB_X10_Y4_N10
\temp[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[1]~23_combout\ = (temp(1) & (temp(0) $ (VCC))) # (!temp(1) & (temp(0) & VCC))
-- \temp[1]~24\ = CARRY((temp(1) & temp(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(1),
	datab => temp(0),
	datad => VCC,
	combout => \temp[1]~23_combout\,
	cout => \temp[1]~24\);

-- Location: FF_X10_Y4_N11
\temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[1]~23_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(1));

-- Location: LCCOMB_X10_Y4_N12
\temp[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[2]~25_combout\ = (temp(2) & (!\temp[1]~24\)) # (!temp(2) & ((\temp[1]~24\) # (GND)))
-- \temp[2]~26\ = CARRY((!\temp[1]~24\) # (!temp(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp(2),
	datad => VCC,
	cin => \temp[1]~24\,
	combout => \temp[2]~25_combout\,
	cout => \temp[2]~26\);

-- Location: FF_X10_Y4_N13
\temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[2]~25_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(2));

-- Location: LCCOMB_X10_Y4_N14
\temp[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[3]~27_combout\ = (temp(3) & (\temp[2]~26\ $ (GND))) # (!temp(3) & (!\temp[2]~26\ & VCC))
-- \temp[3]~28\ = CARRY((temp(3) & !\temp[2]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(3),
	datad => VCC,
	cin => \temp[2]~26\,
	combout => \temp[3]~27_combout\,
	cout => \temp[3]~28\);

-- Location: FF_X10_Y4_N15
\temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[3]~27_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(3));

-- Location: LCCOMB_X10_Y4_N16
\temp[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[4]~29_combout\ = (temp(4) & (!\temp[3]~28\)) # (!temp(4) & ((\temp[3]~28\) # (GND)))
-- \temp[4]~30\ = CARRY((!\temp[3]~28\) # (!temp(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(4),
	datad => VCC,
	cin => \temp[3]~28\,
	combout => \temp[4]~29_combout\,
	cout => \temp[4]~30\);

-- Location: FF_X10_Y4_N17
\temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[4]~29_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(4));

-- Location: LCCOMB_X10_Y4_N18
\temp[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[5]~31_combout\ = (temp(5) & (\temp[4]~30\ $ (GND))) # (!temp(5) & (!\temp[4]~30\ & VCC))
-- \temp[5]~32\ = CARRY((temp(5) & !\temp[4]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(5),
	datad => VCC,
	cin => \temp[4]~30\,
	combout => \temp[5]~31_combout\,
	cout => \temp[5]~32\);

-- Location: FF_X10_Y4_N19
\temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[5]~31_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(5));

-- Location: LCCOMB_X10_Y4_N20
\temp[6]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[6]~33_combout\ = (temp(6) & (!\temp[5]~32\)) # (!temp(6) & ((\temp[5]~32\) # (GND)))
-- \temp[6]~34\ = CARRY((!\temp[5]~32\) # (!temp(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(6),
	datad => VCC,
	cin => \temp[5]~32\,
	combout => \temp[6]~33_combout\,
	cout => \temp[6]~34\);

-- Location: FF_X10_Y4_N21
\temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[6]~33_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(6));

-- Location: LCCOMB_X10_Y4_N22
\temp[7]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[7]~35_combout\ = (temp(7) & (\temp[6]~34\ $ (GND))) # (!temp(7) & (!\temp[6]~34\ & VCC))
-- \temp[7]~36\ = CARRY((temp(7) & !\temp[6]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp(7),
	datad => VCC,
	cin => \temp[6]~34\,
	combout => \temp[7]~35_combout\,
	cout => \temp[7]~36\);

-- Location: FF_X10_Y4_N23
\temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[7]~35_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(7));

-- Location: LCCOMB_X10_Y4_N24
\temp[8]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[8]~37_combout\ = (temp(8) & (!\temp[7]~36\)) # (!temp(8) & ((\temp[7]~36\) # (GND)))
-- \temp[8]~38\ = CARRY((!\temp[7]~36\) # (!temp(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(8),
	datad => VCC,
	cin => \temp[7]~36\,
	combout => \temp[8]~37_combout\,
	cout => \temp[8]~38\);

-- Location: FF_X10_Y4_N25
\temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[8]~37_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(8));

-- Location: LCCOMB_X10_Y4_N26
\temp[9]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[9]~39_combout\ = (temp(9) & (\temp[8]~38\ $ (GND))) # (!temp(9) & (!\temp[8]~38\ & VCC))
-- \temp[9]~40\ = CARRY((temp(9) & !\temp[8]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp(9),
	datad => VCC,
	cin => \temp[8]~38\,
	combout => \temp[9]~39_combout\,
	cout => \temp[9]~40\);

-- Location: FF_X10_Y4_N27
\temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[9]~39_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(9));

-- Location: LCCOMB_X10_Y4_N28
\temp[10]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[10]~41_combout\ = (temp(10) & (!\temp[9]~40\)) # (!temp(10) & ((\temp[9]~40\) # (GND)))
-- \temp[10]~42\ = CARRY((!\temp[9]~40\) # (!temp(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(10),
	datad => VCC,
	cin => \temp[9]~40\,
	combout => \temp[10]~41_combout\,
	cout => \temp[10]~42\);

-- Location: FF_X10_Y4_N29
\temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[10]~41_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(10));

-- Location: LCCOMB_X10_Y4_N30
\temp[11]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[11]~43_combout\ = (temp(11) & (\temp[10]~42\ $ (GND))) # (!temp(11) & (!\temp[10]~42\ & VCC))
-- \temp[11]~44\ = CARRY((temp(11) & !\temp[10]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp(11),
	datad => VCC,
	cin => \temp[10]~42\,
	combout => \temp[11]~43_combout\,
	cout => \temp[11]~44\);

-- Location: FF_X10_Y4_N31
\temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[11]~43_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(11));

-- Location: LCCOMB_X10_Y3_N0
\temp[12]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[12]~45_combout\ = (temp(12) & (!\temp[11]~44\)) # (!temp(12) & ((\temp[11]~44\) # (GND)))
-- \temp[12]~46\ = CARRY((!\temp[11]~44\) # (!temp(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(12),
	datad => VCC,
	cin => \temp[11]~44\,
	combout => \temp[12]~45_combout\,
	cout => \temp[12]~46\);

-- Location: FF_X10_Y3_N1
\temp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[12]~45_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(12));

-- Location: LCCOMB_X10_Y3_N2
\temp[13]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[13]~47_combout\ = (temp(13) & (\temp[12]~46\ $ (GND))) # (!temp(13) & (!\temp[12]~46\ & VCC))
-- \temp[13]~48\ = CARRY((temp(13) & !\temp[12]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(13),
	datad => VCC,
	cin => \temp[12]~46\,
	combout => \temp[13]~47_combout\,
	cout => \temp[13]~48\);

-- Location: FF_X10_Y3_N3
\temp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[13]~47_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(13));

-- Location: LCCOMB_X10_Y3_N4
\temp[14]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[14]~49_combout\ = (temp(14) & (!\temp[13]~48\)) # (!temp(14) & ((\temp[13]~48\) # (GND)))
-- \temp[14]~50\ = CARRY((!\temp[13]~48\) # (!temp(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(14),
	datad => VCC,
	cin => \temp[13]~48\,
	combout => \temp[14]~49_combout\,
	cout => \temp[14]~50\);

-- Location: FF_X10_Y3_N5
\temp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[14]~49_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(14));

-- Location: LCCOMB_X10_Y3_N6
\temp[15]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[15]~51_combout\ = (temp(15) & (\temp[14]~50\ $ (GND))) # (!temp(15) & (!\temp[14]~50\ & VCC))
-- \temp[15]~52\ = CARRY((temp(15) & !\temp[14]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp(15),
	datad => VCC,
	cin => \temp[14]~50\,
	combout => \temp[15]~51_combout\,
	cout => \temp[15]~52\);

-- Location: FF_X10_Y3_N7
\temp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[15]~51_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(15));

-- Location: LCCOMB_X10_Y3_N8
\temp[16]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[16]~53_combout\ = (temp(16) & (!\temp[15]~52\)) # (!temp(16) & ((\temp[15]~52\) # (GND)))
-- \temp[16]~54\ = CARRY((!\temp[15]~52\) # (!temp(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(16),
	datad => VCC,
	cin => \temp[15]~52\,
	combout => \temp[16]~53_combout\,
	cout => \temp[16]~54\);

-- Location: FF_X10_Y3_N9
\temp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[16]~53_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(16));

-- Location: LCCOMB_X10_Y3_N10
\temp[17]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[17]~55_combout\ = (temp(17) & (\temp[16]~54\ $ (GND))) # (!temp(17) & (!\temp[16]~54\ & VCC))
-- \temp[17]~56\ = CARRY((temp(17) & !\temp[16]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp(17),
	datad => VCC,
	cin => \temp[16]~54\,
	combout => \temp[17]~55_combout\,
	cout => \temp[17]~56\);

-- Location: FF_X10_Y3_N11
\temp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[17]~55_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(17));

-- Location: LCCOMB_X10_Y3_N12
\temp[18]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[18]~57_combout\ = (temp(18) & (!\temp[17]~56\)) # (!temp(18) & ((\temp[17]~56\) # (GND)))
-- \temp[18]~58\ = CARRY((!\temp[17]~56\) # (!temp(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp(18),
	datad => VCC,
	cin => \temp[17]~56\,
	combout => \temp[18]~57_combout\,
	cout => \temp[18]~58\);

-- Location: FF_X10_Y3_N13
\temp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[18]~57_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(18));

-- Location: LCCOMB_X10_Y3_N14
\temp[19]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[19]~59_combout\ = (temp(19) & (\temp[18]~58\ $ (GND))) # (!temp(19) & (!\temp[18]~58\ & VCC))
-- \temp[19]~60\ = CARRY((temp(19) & !\temp[18]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(19),
	datad => VCC,
	cin => \temp[18]~58\,
	combout => \temp[19]~59_combout\,
	cout => \temp[19]~60\);

-- Location: FF_X10_Y3_N15
\temp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[19]~59_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(19));

-- Location: LCCOMB_X10_Y3_N16
\temp[20]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[20]~61_combout\ = (temp(20) & (!\temp[19]~60\)) # (!temp(20) & ((\temp[19]~60\) # (GND)))
-- \temp[20]~62\ = CARRY((!\temp[19]~60\) # (!temp(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(20),
	datad => VCC,
	cin => \temp[19]~60\,
	combout => \temp[20]~61_combout\,
	cout => \temp[20]~62\);

-- Location: FF_X10_Y3_N17
\temp[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[20]~61_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(20));

-- Location: LCCOMB_X10_Y3_N18
\temp[21]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[21]~63_combout\ = (temp(21) & (\temp[20]~62\ $ (GND))) # (!temp(21) & (!\temp[20]~62\ & VCC))
-- \temp[21]~64\ = CARRY((temp(21) & !\temp[20]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(21),
	datad => VCC,
	cin => \temp[20]~62\,
	combout => \temp[21]~63_combout\,
	cout => \temp[21]~64\);

-- Location: FF_X10_Y3_N19
\temp[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[21]~63_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(21));

-- Location: LCCOMB_X10_Y3_N20
\temp[22]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[22]~65_combout\ = (temp(22) & (!\temp[21]~64\)) # (!temp(22) & ((\temp[21]~64\) # (GND)))
-- \temp[22]~66\ = CARRY((!\temp[21]~64\) # (!temp(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(22),
	datad => VCC,
	cin => \temp[21]~64\,
	combout => \temp[22]~65_combout\,
	cout => \temp[22]~66\);

-- Location: FF_X10_Y3_N21
\temp[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[22]~65_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(22));

-- Location: LCCOMB_X10_Y3_N22
\temp[23]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp[23]~67_combout\ = temp(23) $ (!\temp[22]~66\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp(23),
	cin => \temp[22]~66\,
	combout => \temp[23]~67_combout\);

-- Location: FF_X10_Y3_N23
\temp[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \temp[23]~67_combout\,
	clrn => \rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(23));

ww_count(0) <= \count[0]~output_o\;

ww_count(1) <= \count[1]~output_o\;

ww_count(2) <= \count[2]~output_o\;

ww_count(3) <= \count[3]~output_o\;

ww_count(4) <= \count[4]~output_o\;

ww_count(5) <= \count[5]~output_o\;

ww_count(6) <= \count[6]~output_o\;

ww_count(7) <= \count[7]~output_o\;

ww_count(8) <= \count[8]~output_o\;

ww_count(9) <= \count[9]~output_o\;

ww_count(10) <= \count[10]~output_o\;

ww_count(11) <= \count[11]~output_o\;

ww_count(12) <= \count[12]~output_o\;

ww_count(13) <= \count[13]~output_o\;

ww_count(14) <= \count[14]~output_o\;

ww_count(15) <= \count[15]~output_o\;

ww_count(16) <= \count[16]~output_o\;

ww_count(17) <= \count[17]~output_o\;

ww_count(18) <= \count[18]~output_o\;

ww_count(19) <= \count[19]~output_o\;

ww_count(20) <= \count[20]~output_o\;

ww_count(21) <= \count[21]~output_o\;

ww_count(22) <= \count[22]~output_o\;

ww_count(23) <= \count[23]~output_o\;
END structure;



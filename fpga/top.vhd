
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY top IS

  PORT( clk     : IN    STD_LOGIC;  
        reset   : IN    STD_LOGIC;
        rx      : IN    STD_LOGIC;
        tx      : OUT STD_LOGIC;
        LED     : OUT  STD_LOGIC_VECTOR(2 downto 0));
END top;
    
ARCHITECTURE arch OF top IS

  COMPONENT adder IS
  PORT(
    clk     : IN    STD_LOGIC;                    --system clock
    reset_n : IN    STD_LOGIC;
    tx_ena  : OUT    STD_LOGIC;                    --initiate transmission
    tx_data : OUT    STD_LOGIC_VECTOR(7 DOWNTO 0);  --data to transmit
    rx_busy : IN STD_LOGIC;                    --data reception in progress       
    rx_data : IN STD_LOGIC_VECTOR(7 DOWNTO 0); --data received
    tx_busy : IN STD_LOGIC;                    --transmission in progress
    LED     : OUT  STD_LOGIC_VECTOR(2 downto 0));  

END COMPONENT;

COMPONENT uart IS
  GENERIC(
    clk_freq    : INTEGER   := 50_000_000;  --frequency of system clock in Hertz
    baud_rate : INTEGER   := 460800;--19_200;    --data link baud rate in bits/second
    os_rate   : INTEGER   := 16;      --oversampling rate to find center of receive bits (in samples per baud period)
    d_width   : INTEGER   := 8;       --data bus width
    parity    : INTEGER   := 1;       --0 for no parity, 1 for parity
    parity_eo : STD_LOGIC := '0');      --'0' for even, '1' for odd parity
  PORT(
    clk   : IN    STD_LOGIC;                    --system clock
    reset_n : IN    STD_LOGIC;                    --ascynchronous reset
    tx_ena  : IN    STD_LOGIC;                    --initiate transmission
    tx_data : IN    STD_LOGIC_VECTOR(d_width-1 DOWNTO 0);  --data to transmit
    rx      : IN    STD_LOGIC;                    --receive pin
    rx_busy : OUT STD_LOGIC;                    --data reception in progress
    rx_error  : OUT STD_LOGIC;                    --start, parity, or stop bit error detected
    rx_data : OUT STD_LOGIC_VECTOR(d_width-1 DOWNTO 0); --data received
    tx_busy : OUT STD_LOGIC;                    --transmission in progress
    tx      : OUT STD_LOGIC);                   --transmit pin
END COMPONENT;

  SIGNAL  Stx_ena  : STD_LOGIC;
  SIGNAL  Stx_data : STD_LOGIC_VECTOR(7 DOWNTO 0);
  SIGNAL  Srx_busy : STD_LOGIC;                          
  SIGNAL  Srx_data : STD_LOGIC_VECTOR(7 DOWNTO 0); 
  SIGNAL  Stx_busy : STD_LOGIC;                  

BEGIN
  U1: adder port map(clk,reset,Stx_ena,Stx_data,Srx_busy,Srx_data,Stx_busy,LED);
  U2: uart port map(clk,reset,Stx_ena,Stx_data,rx,Srx_busy,open,Srx_data,Stx_busy,tx);
  
END arch;
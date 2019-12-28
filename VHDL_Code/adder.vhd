--FIRST BYTE IS A CODE TO CHANGE 16 BYTES OF DATA
--DATA IS INT16, SO MOST SIGNIFICANT BYTE LEAVES FPGA WITHOUT CHANGES
--LEAST SIGINFICANT BYTE HAVE THE LSB CHANGED AND ITS VALUE DEPENDS OF THE CODE

--BY JAKUB KAJZER

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY adder IS
  PORT(
    clk     : IN    STD_LOGIC;                     --SYSTEM CLOCK
    reset_n : IN    STD_LOGIC;
    tx_ena  : OUT   STD_LOGIC;                     --INITIATE TRANSMISSION
    tx_data : OUT   STD_LOGIC_VECTOR(7 DOWNTO 0);  --DATA TO TRANSMIT
    rx_busy : IN    STD_LOGIC;                     --DATA RECEPTION IN PROGRESS       
    rx_data : IN    STD_LOGIC_VECTOR(7 DOWNTO 0);  --DATA RECEIVED
    tx_busy : IN    STD_LOGIC;                     --TRANSMISSION IN PROGRESS
    LED     : OUT  STD_LOGIC_VECTOR(2 downto 0));  --LEDS TO INFORM IN WHICH STATE THE FPGA IS                

END adder;
    
ARCHITECTURE arch OF adder IS

 
  TYPE state IS (S0, S1, S2);

  SIGNAL  secret   : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS =>'0'); --VECTOR FOR CODE
  
  SIGNAL sig_state : state := S0; --STATE MACHINE
  
  SIGNAL state_of_rx_busy : STD_LOGIC :='0'; -- SIGNAL NEEDED TO KNOW WHEN THE DATA ARRIVES ON UART

BEGIN

  PROCESS(reset_n,clk)
  VARIABLE i : INTEGER RANGE 0 TO 16 := 0;
  
  BEGIN       
    IF reset_n = '0' THEN
      secret <= (OTHERS => '0');
      tx_data <= (OTHERS => '0');
      state_of_rx_busy <= '0';
      sig_state <= S0;
      i := 0;
      tx_ena <= '0';
                    
    ELSIF(rising_edge(clk)) THEN
      
      CASE sig_state IS

        WHEN S0 => --WAITING FOR THE CODE
          tx_ena <= '0';
          IF (state_of_rx_busy = '1' AND rx_busy = '0') THEN --WHEN DATA ARRIVES THIS STATEMENT IS TRUE
            secret <= rx_data;
            state_of_rx_busy <= '0';
            sig_state <= S1;
         END IF;

        WHEN S1 => --WAITING FOR THE DATA, CODING AND PREPARING TO SEND
        tx_ena <= '0';
         IF (state_of_rx_busy = '1' AND rx_busy = '0' ) THEN 
            IF (i MOD 2) = 1 THEN
              tx_data <= rx_data(7 DOWNTO 1) & secret(7-(i/2));
              --tx_data <= rx_data;
            ELSE
              tx_data <= rx_data;
            END IF;
            i := i+1;
            state_of_rx_busy <= '0';
            sig_state <= S2;
         END IF;
     
         WHEN S2 => --SENDING DATA
         IF tx_busy = '0' THEN
              tx_ena <= '1';
              IF i = 16 THEN
               sig_state <= S0;
               i := 0;
              ELSE
                sig_state <= S1;
              END IF;
          END IF;
            

              

         
 
      WHEN OTHERS =>
         sig_state <= S0;
   END CASE; 

    IF(rx_busy = '1') THEN
    state_of_rx_busy <= '1';
    END IF;

    END IF;
  END PROCESS;

  LED(0) <= '0' WHEN sig_state=S0 ELSE '1';
  LED(1) <= '0' WHEN sig_state=S1 ELSE '1';
  LED(2) <= '0' WHEN sig_state=S2 ELSE '1';

END arch;
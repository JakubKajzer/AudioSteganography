--TEN PRZEKLĘTY "SUMATOR"
--ZACZYNAMY WYSYŁAĆ PO UARCIE NAJPIERW STARSZE BITY PRÓBKI, POTEM MŁODSZE
--ZE STARSZYMI NIC NIE TRZEBA ROBIĆ WIĘC MOŻNA JE WYSŁAĆ OD RAZU SPOWROTEM
--W MŁODSZYM ZERUJEMY LSB I TAM ROBIMY OR Z BITEM KODU, KTÓREGO WCZYTUJEMY JAKO PIERWSZY
--I RESZTA SIE POWTARZA





LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY adder IS
  PORT(
    clk     : IN    STD_LOGIC;                     --system clock
    reset_n : IN    STD_LOGIC;
    tx_ena  : OUT   STD_LOGIC;                     --initiate transmission
    tx_data : OUT   STD_LOGIC_VECTOR(7 DOWNTO 0);  --data to transmit
    rx_busy : IN    STD_LOGIC;                     --data reception in progress       
    rx_data : IN    STD_LOGIC_VECTOR(7 DOWNTO 0);  --data received
    tx_busy : IN    STD_LOGIC;                     --transmission in progress
    LED     : OUT  STD_LOGIC_VECTOR(2 downto 0));                   

END adder;
    
ARCHITECTURE arch OF adder IS

 
  TYPE state IS (S0, S1, S2);

  SIGNAL  secret             : STD_LOGIC_VECTOR(7 DOWNTO 0);
  SIGNAL  tmp                : STD_LOGIC_VECTOR(7 DOWNTO 0) ; 
  
  SIGNAL sig_state : state := S0;
  
  SIGNAL state_of_rx_busy : STD_LOGIC :='0';

BEGIN

  PROCESS(reset_n,clk)
  VARIABLE i : INTEGER RANGE 0 TO 16 := 0;
  BEGIN       
    IF reset_n = '0' THEN
      secret <= (OTHERS => '0');
      tmp <= (OTHERS => '0');
      state_of_rx_busy <= '0';
      sig_state <= S0;
      i := 0;
                    
    ELSIF(rising_edge(clk)) THEN
      
      CASE sig_state IS

        WHEN S0 => 
          tx_ena <= '0';
          IF (state_of_rx_busy = '1' AND rx_busy = '0') THEN
            secret <= rx_data;
            state_of_rx_busy <= '0';
            sig_state <= S1;
         END IF;

        WHEN S1 => 
         tx_ena <= '0';
         IF (state_of_rx_busy = '1' AND rx_busy = '0' ) THEN 
            tmp <= rx_data;
            IF i MOD 2 = 1 THEN
              tmp <= tmp(7 DOWNTO 1) & secret(7-(i/2));
            END IF;
            i := i+1;
            state_of_rx_busy <= '0';
            sig_state <= S2;
         END IF;
     
         WHEN S2 =>
         IF tx_busy = '0' THEN
            tx_data <= tmp;
            tx_ena <= '1';
            sig_state <= S1;
              IF i = 16 THEN
              i := 0;
              sig_state <= S0;
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
library ieee;
use ieee.std_logic_1164.all;

entity reg_32bit_tb is
end reg_32bit_tb;

architecture arch of reg_32bit_tb is
	signal clk_tb, arst_tb, RegWr_tb: std_logic;
    signal Rw_tb, Ra_tb, Rb_tb: std_logic_vector(4 downto 0);
    signal busW_tb, busA_tb, busB_tb,out_reg5_tb,out_reg6_tb,out_reg7_tb : std_logic_vector(31 downto 0);
	constant ClockPeriod : TIME := 10 ns;

begin
DUT: entity work.reg_32bit
port map (clk_tb, arst_tb, RegWr_tb, Rw_tb, Ra_tb, Rb_tb, busW_tb, busA_tb, busB_tb,out_reg5_tb,out_reg6_tb,out_reg7_tb);

clock: process  
begin    
  clk_tb<='0';    
  wait for ClockPeriod/2;    
  clk_tb<='1';    
  wait for ClockPeriod/2;    
end process; 

process
begin
arst_tb <= '1';
RegWr_tb <= '0';
Rw_tb <= "00000";
Ra_tb <= "00000";
Rb_tb <= "00000";
busW_tb <= "00000000000000000000000000000000";
wait for 10 ns;

arst_tb <= '0';
RegWr_tb <= '1';
Rw_tb <= "00101";
Ra_tb <= "00000";
Rb_tb <= "00000";
busW_tb <= "00000000000000000000000000000101";
wait for 10 ns;

arst_tb <= '0';
RegWr_tb <= '0';
Rw_tb <= "10011";
Ra_tb <= "00101";
Rb_tb <= "00101";
busW_tb <= "00000000000000000000000000000000";
wait for 10 ns;

arst_tb <= '0';
RegWr_tb <= '1';
Rw_tb <= "00110";
Ra_tb <= "00000";
Rb_tb <= "00000";
busW_tb <= "00000000000000000000000000000110";
wait for 10 ns;

arst_tb <= '0';
RegWr_tb <= '0';
Rw_tb <= "01001";
Ra_tb <= "00110";
Rb_tb <= "00110";
busW_tb <= "11111111000011110000111100001111";
wait for 10 ns;

arst_tb <= '0';
RegWr_tb <= '1';
Rw_tb <= "00111";
Ra_tb <= "00111";
Rb_tb <= "00111";
busW_tb <= "00000000000000000000000000000111";
wait for 10 ns;

arst_tb <= '0';
RegWr_tb <= '0';
Rw_tb <= "01001";
Ra_tb <= "00111";
Rb_tb <= "00111";
busW_tb <= "00001111000011110000111100000011";
wait for 10 ns;

arst_tb <= '0';
RegWr_tb <= '1';
Rw_tb <= "00011";
Ra_tb <= "00000";
Rb_tb <= "00000";
busW_tb <= "00001111000011110000000000000011";
wait for 10 ns;

arst_tb <= '1';
RegWr_tb <= '1';
Rw_tb <= "00100";
Ra_tb <= "00011";
Rb_tb <= "00011";
busW_tb <= "00001111000011110000111100001100";
wait for 10 ns;

arst_tb <= '0';
RegWr_tb <= '0';
Rw_tb <= "01001";
Ra_tb <= "00011";
Rb_tb <= "00011";
busW_tb <= "00001111000011110000111100001100";
wait for 10 ns;

end process;
end arch;
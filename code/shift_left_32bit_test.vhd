library ieee;
use ieee.std_logic_1164.all;

entity shift_left_32bit_test is
  port (
    R_test  : out std_logic_vector(31 downto 0)
  );
    
end shift_left_32bit_test;

architecture structural of shift_left_32bit_test is
component shift_left_32bit is
 port (
    A     : in  std_logic_vector(31 downto 0);--operand
    B     : in  std_logic_vector(31 downto 0);--shift offset 000000~100000
    R     : out std_logic_vector(31 downto 0) -- result
  );
end component shift_left_32bit;

signal A_test : std_logic_vector(31 downto 0);
signal B_test : std_logic_vector(31 downto 0);


begin
  shift_left_32bit_map: shift_left_32bit port map (A => A_test, B=> B_test, R => R_test);
  test_proc : process
  begin
    A_test <= "10000000100000001000000010000001";
    B_test <= "00000000000000000000000000011111";
    wait for 5 ns;
    --0000 v.s. 0000
    A_test <= "11111111101010101100110000000000";
    B_test <= "00000000000000000000000000000001";
  
    wait for 5 ns;
    A_test <= "11111111101010101100110000000000";
    B_test <= "00000000000000000000000000000010";
    wait for 5 ns;
    
    --0001 v.s. 0001
    A_test <= "11111111101010101100110000000000";
    B_test <= "00000000000000000000000000000011";
    wait for 5 ns;
    A_test <= "11111111101010101100110000000000";
    B_test <= "00000000000000000000000000000100";
    wait for 5 ns;
    A_test <= "11111111101010101100110000000000";
    B_test <= "00000000000000000000000000000101";
    wait for 5 ns;
    A_test <= "11111111101010101100110000000000";
    B_test <= "00000000000000000000000000000110";
    wait for 5 ns;
    
    --0010 v.s. 0001
    A_test <= "11111111101010101100110000000000";
    B_test <= "00000000000000000000000000000111";
    wait for 5 ns;
    A_test <= "11111111101010101100110000000000";
    B_test <= "00000000000000000000000000001000";
    wait for 5 ns;
    A_test <= "11111111101010101100110000000000";
    B_test <= "00000000000000000000000000001001";
    wait for 5 ns;
    A_test <= "11111111101010101100110000000000";
    B_test <= "00000000000000000000000000001010";
    wait for 5 ns;
    
    
    --0101 v.s. 0111
    A_test <= "11111111101010101100110000000000";
    B_test <= "00000000000000000000000000001011";
    wait for 5 ns;
    A_test <= "11111111101010101100110000000000";
    B_test <= "00000000000000000000000000001101";
    wait for 5 ns;
    A_test <= "11111111101010101100110000000000";
    B_test <= "00000000000000000000000000001110";
    wait for 5 ns;
    A_test <= "11111111101010101100110000000000";
    B_test <= "00000000000000000000000000001111";
    wait for 5 ns;
    
    --1001 v.s. 1000
    A_test <= "11111111101010101100110000000000";
    B_test <= "00000000000000000000000000010001";
    wait for 5 ns;
    A_test <= "11111111101010101100110000000000";
    B_test <= "00000000000000000000000000010010";
    wait for 5 ns;
    A_test <= "11111111101010101100110000000000";
    B_test <= "00000000000000000000000000011111";
    wait for 5 ns;
    A_test <= "11111111101010101100110000000000";
    B_test <= "00000000000000000000000000100000";
    wait for 5 ns;
    A_test <= "11111111101010101100110000000000";
    B_test <= "00000000000000000111110000000000";
    wait for 5 ns;
    wait;
  end process;
end architecture structural;


library ieee;
use ieee.std_logic_1164.all;

entity Adder_30bit_test is
  port (
   sum_test : out std_logic_vector(29  downto 0);
   cout_test: out std_logic 
  );
end Adder_30bit_test;

architecture structural of Adder_30bit_test is
component Adder_30bit is

  port (
    x   : in  std_logic_vector(29  downto 0);
    y   : in  std_logic_vector(29  downto 0);
    cin : in  std_logic;
    sum : out std_logic_vector(29  downto 0);
    cout: out std_logic 
  );

end component Adder_30bit;

signal  x_test   :   std_logic_vector(29  downto 0);
signal  y_test   :   std_logic_vector(29  downto 0);
signal  cin_test :  std_logic;

begin
   Adder_map: Adder_30bit port map (x_test, y_test, cin_test, sum_test, cout_test);
   test_proc : process
  begin
   
    cin_test <= '0';
    x_test <= "100010001000111100110011110010";
    y_test <= "100010001000111100110011110010";
    wait for 5 ns;
    cin_test <= '0';
    x_test <= "000000000000000000000000001100";--12
    y_test <= "000000000000000000000000000001";
    wait for 5 ns;
    wait;
  end process;
end architecture structural;

library ieee;
use ieee.std_logic_1164.all;

entity mux_4to1_test is
  port (
    selection_test: out std_logic
  );
end mux_4to1_test;

architecture structural of mux_4to1_test is
component mux_4to1 is
  port (
	option00 :in	std_logic;
	option01 :in	std_logic;
	option10 :in	std_logic;
	option11 :in	std_logic;
	selector :in	std_logic_vector(1 downto 0);
	selection:out std_logic
  );
end component mux_4to1;

signal option_test   : std_logic_vector(3 downto 0);
signal selector_test :	std_logic_vector(1 downto 0);
begin
  mux_map : mux_4to1 port map (option_test(0),option_test(1),option_test(2),option_test(3),selector_test,selection_test);


  test_proc : process
  begin
    option_test   <=  "1010";
    selector_test <=  "00";
    wait for 5 ns;
    option_test   <=  "1010";
    selector_test <=  "01";
    wait for 5 ns;
    option_test   <=  "1010";
    selector_test <=  "10";
    wait for 5 ns;
    option_test   <=  "1010";
    selector_test <=  "11";
    wait for 5 ns;
    option_test   <=  "1011";
    selector_test <=  "00";
    wait for 5 ns;
    option_test   <=  "1011";
    selector_test <=  "01";
    wait for 5 ns;
    option_test   <=  "1011";
    selector_test <=  "10";
    wait for 5 ns;
    option_test   <=  "1011";
    selector_test <=  "11";
    wait for 5 ns;
    wait;
  end process;
end architecture structural;




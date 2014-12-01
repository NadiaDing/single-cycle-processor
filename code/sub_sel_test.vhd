library ieee;
use ieee.std_logic_1164.all;

entity sub_sel_test is
  port (
    invert_test: out std_logic
  );
end sub_sel_test;

architecture structural of sub_sel_test is
component sub_sel is
  port (
    M        : in  std_logic_vector(3 downto 0);
    invert   : out std_logic
  );
end component sub_sel;

signal M_test : std_logic_vector(3 downto 0);
begin
  subselection_map : sub_sel port map (M => M_test, invert => invert_test);


  test_proc : process
  begin
    M_test <= "0000";
    wait for 5 ns;
    M_test <= "0001";
    wait for 5 ns;
    M_test <= "0010";
    wait for 5 ns;
    M_test <= "0011";
    wait for 5 ns;
    M_test <= "0100";
    wait for 5 ns;
    M_test <= "0101";
    wait for 5 ns;
    M_test <= "0110";
    wait for 5 ns;
    M_test <= "0111";
    wait for 5 ns;
    M_test <= "1000";
    wait for 5 ns;
    M_test <= "1001";
    wait for 5 ns;
    M_test <= "1010";
    wait for 5 ns;
    M_test <= "1011";
    wait for 5 ns;
    M_test <= "1100";
    wait for 5 ns;
    M_test <= "1101";
    wait for 5 ns;
    M_test <= "1110";
    wait for 5 ns;
    M_test <= "1111";
    wait for 5 ns;
    wait;
  end process;
end architecture structural;



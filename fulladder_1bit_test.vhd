library ieee;
use ieee.std_logic_1164.all;

entity fulladder_1bit_test is
  port (
    z       : out std_logic;
    cout    : out std_logic
  );
end fulladder_1bit_test;

architecture structural of fulladder_1bit_test is
component FullAdder_1bit is
  port (
    x   : in  std_logic;
    y   : in  std_logic;
    cin : in  std_logic;
    sum : out std_logic;
    cout: out std_logic 
  );
end component FullAdder_1bit;
signal xin : std_logic;
signal yin : std_logic;
signal cin : std_logic;
signal inbus : std_logic_vector(2 downto 0);
begin
  fulladder_map : FullAdder_1bit port map (x => xin, y => yin, cin => cin, sum => z, cout => cout);
  cin <= inbus(2);
  yin <= inbus(1);
  xin <= inbus(0);

  test_proc : process
  begin
    inbus <= "000";
    wait for 5 ns;
    inbus <= "001";
    wait for 5 ns;
    inbus <= "010";
    wait for 5 ns;
    inbus <= "011";
    wait for 5 ns;
    inbus <= "100";
    wait for 5 ns;
    inbus <= "101";
    wait for 5 ns;
    inbus <= "110";
    wait for 5 ns;
    inbus <= "111";
    wait for 5 ns;
    wait;
  end process;
end architecture structural;


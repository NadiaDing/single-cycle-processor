library ieee;
use ieee.std_logic_1164.all;

entity ALU_1bit_cin_test is
  port (
    Result_test  : out std_logic;
    cout_test    : out std_logic
  );
end ALU_1bit_cin_test;

architecture structural of ALU_1bit_cin_test is
component ALU_1bit_cin is
 port (
    x      : in  std_logic;
    y      : in  std_logic;
    M      : in  std_logic_vector(1 downto 0);--control  signal
    cin    : in  std_logic;
    Result : out std_logic;
    cout   : out std_logic 
  );
end component ALU_1bit_cin;

signal x_test : std_logic;
signal y_test : std_logic;
signal M_test : std_logic_vector(1 downto 0);
begin
  ALU_1bit_map: ALU_1bit_cin port map (x => x_test, y => y_test, M => M_test, cin => M_test(0), Result => Result_test, cout => cout_test);
  test_proc : process
  begin
    x_test <= '0';
    y_test <= '0';
    M_test <= "00";
    wait for 5 ns;
    x_test <= '0';
    y_test <= '0';
    M_test <= "01";
    wait for 5 ns;
    x_test <= '0';
    y_test <= '0';
    M_test <= "10";
    wait for 5 ns;
    x_test <= '0';
    y_test <= '0';
    M_test <= "11";
    wait for 5 ns;
    
    x_test <= '0';
    y_test <= '1';
    M_test <= "00";
    wait for 5 ns;
    x_test <= '0';
    y_test <= '1';
    M_test <= "01";
    wait for 5 ns;
    x_test <= '0';
    y_test <= '1';
    M_test <= "10";
    wait for 5 ns;
    x_test <= '0';
    y_test <= '1';
    M_test <= "11";
    wait for 5 ns;
    
    x_test <= '1';
    y_test <= '0';
    M_test <= "00";
    wait for 5 ns;
    x_test <= '1';
    y_test <= '0';
    M_test <= "01";
    wait for 5 ns;
    x_test <= '1';
    y_test <= '0';
    M_test <= "10";
    wait for 5 ns;
    x_test <= '1';
    y_test <= '0';
    M_test <= "11";
    wait for 5 ns;
    
    x_test <= '1';
    y_test <= '1';
    M_test <= "00";
    wait for 5 ns;
    x_test <= '1';
    y_test <= '1';
    M_test <= "01";
    wait for 5 ns;
    x_test <= '1';
    y_test <= '1';
    M_test <= "10";
    wait for 5 ns;
    x_test <= '1';
    y_test <= '1';
    M_test <= "11";
    wait for 5 ns;
    wait;
  end process;
end architecture structural;




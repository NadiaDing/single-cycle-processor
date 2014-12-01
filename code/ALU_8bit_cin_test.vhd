library ieee;
use ieee.std_logic_1164.all;

entity ALU_8bit_cin_test is
  port (
    Result_test  : out std_logic_vector(7 downto 0);
    cout_test    : out std_logic
  );
end ALU_8bit_cin_test;

architecture structural of ALU_8bit_cin_test is
component ALU_8bit_cin is
 port (
    x      : in  std_logic_vector(7 downto 0);
    y      : in  std_logic_vector(7 downto 0);
    M      : in  std_logic_vector(1 downto 0);--control  signal
    cin    : in  std_logic;
    Result : out std_logic_vector(7 downto 0);
    cout   : out std_logic 
  );
end component ALU_8bit_cin;

signal x_test : std_logic_vector(7 downto 0);
signal y_test : std_logic_vector(7 downto 0);
signal M_test : std_logic_vector(1 downto 0);

begin
  ALU_8bit_map: ALU_8bit_cin port map (x => x_test, y => y_test, M => M_test, cin => M_test(0), Result => Result_test, cout => cout_test);
  test_proc : process
  begin
    --0000 v.s. 0000
    x_test <= "00000000";
    y_test <= "00000000";
    M_test <= "00";
    wait for 5 ns;
    x_test <= "00000000";
    y_test <= "00000000";
    M_test <= "01";
    wait for 5 ns;
    
    --0001 v.s. 0001
    x_test <= "00000001";
    y_test <= "00000001";
    M_test <= "00";
    wait for 5 ns;
    x_test <= "00000001";
    y_test <= "00000001";
    M_test <= "01";
    wait for 5 ns;
    x_test <= "00000001";
    y_test <= "00000001";
    M_test <= "10";
    wait for 5 ns;
    x_test <= "00000001";
    y_test <= "00000001";
    M_test <= "11";
    wait for 5 ns;
    
    --0010 v.s. 0001
    x_test <= "11110010";
    y_test <= "11110001";
    M_test <= "00";
    wait for 5 ns;
    x_test <= "11110010";
    y_test <= "11110001";
    M_test <= "01";
    wait for 5 ns;
    x_test <= "11110010";
    y_test <= "11110001";
    M_test <= "10";
    wait for 5 ns;
    x_test <= "11110010";
    y_test <= "11110001";
    M_test <= "11";
    wait for 5 ns;
    
    
    --0101 v.s. 0111
    x_test <= "10100101";
    y_test <= "10100111";
    M_test <= "00";
    wait for 5 ns;
    x_test <= "10100101";
    y_test <= "10100111";
    M_test <= "01";
    wait for 5 ns;
    x_test <= "10100101";
    y_test <= "10100111";
    M_test <= "10";
    wait for 5 ns;
    x_test <= "10100101";
    y_test <= "10100111";
    M_test <= "11";
    wait for 5 ns;
    
    --1001 v.s. 1000
    x_test <= "11001001";
    y_test <= "10101000";
    M_test <= "00";
    wait for 5 ns;
    x_test <= "11001001";
    y_test <= "10101000";
    M_test <= "01";
    wait for 5 ns;
    x_test <= "11001001";
    y_test <= "10101000";
    M_test <= "10";
    wait for 5 ns;
    x_test <= "11001001";
    y_test <= "10101000";
    M_test <= "11";
    wait for 5 ns;
    wait;
  end process;
end architecture structural;

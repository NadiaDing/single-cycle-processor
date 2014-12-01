library ieee;
use ieee.std_logic_1164.all;

entity mux_4to1_32bit_test is
  port (
    z_test  : out std_logic_vector(31 downto 0)
  );
    
end mux_4to1_32bit_test;

architecture structural of mux_4to1_32bit_test is
component mux_4to1_32bit is
  port (
	sel    : in  std_logic_vector(1 downto 0);
	src00  : in  std_logic_vector(31 downto 0);
	src01  : in  std_logic_vector(31 downto 0);
	src10  : in  std_logic_vector(31 downto 0);
	src11  : in  std_logic_vector(31 downto 0);
	z	    : out std_logic_vector(31 downto 0)
  );

end component mux_4to1_32bit;
  signal sel_test    :  std_logic_vector(1 downto 0);
	signal src00_test  :  std_logic_vector(31 downto 0);
	signal src01_test  :  std_logic_vector(31 downto 0);
	signal src10_test  :  std_logic_vector(31 downto 0);
	signal src11_test  :  std_logic_vector(31 downto 0);


begin
  mux_4to1_32bit_map : mux_4to1_32bit  port map (sel_test,src00_test, src01_test, src10_test,  src11_test,  z_test);
  test_proc : process
  begin
    --0000 v.s. 0000
    sel_test <= "00";
    src00_test <= "11111111101010101100110000000000";
    src01_test <= "00000000000000000000000000000001";
    src10_test <= "00000000000000000000000000000000";
    src11_test <= "11111111101000000000000000000001";
    wait for 5 ns;
    sel_test <= "01";
    src00_test <= "11111111101010101100110000000000";
    src01_test <= "00000000000000000000000000000001";
    src10_test <= "00000000000000000000000000000000";
    src11_test <= "11111111101000000000000000000001";
    wait for 5 ns;
    sel_test <= "10";
    src00_test <= "11111111101010101100110000000000";
    src01_test <= "00000000000000000000000000000001";
    src10_test <= "00000000000000000000000000000000";
    src11_test <= "11111111101000000000000000000001";
    wait for 5 ns;
    sel_test <= "11";
    src00_test <= "11111111101010101100110000000000";
    src01_test <= "00000000000000000000000000000001";
    src10_test <= "00000000000000000000000000000000";
    src11_test <= "11111111101000000000000000000001";
    wait for 5 ns;
    
    wait;
  end process;
end architecture structural;




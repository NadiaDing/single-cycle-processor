library ieee;
use ieee.std_logic_1164.all;

entity PC_30bit_test is
  port (
   q_test	: out std_logic_vector(29 downto 0)
  );
end PC_30bit_test;

architecture structural of PC_30bit_test is
component PC_30bit is

  port (
	clk	   : in  std_logic;
	--arst   : in  std_logic; --for reset all bits 0
	aload  : in  std_logic; --for initialize with the address of first instruction in program 
  --adata  : in  std_logic; --initialization value with address of first instruction in program,default in side
  d	     : in  std_logic_vector(29 downto 0);
  start  : in  std_logic; --start runing the program
  q	     : out std_logic_vector(29 downto 0)
  );

end component PC_30bit;

signal clk_test  : std_logic;
signal d_test    : std_logic_vector(29 downto 0);
signal arst_test : std_logic; --for reset all bits 0
signal	aload_test: std_logic; --for initialize with the address of first instruction in program 
signal start_test: std_logic; --start runing the program
begin
  PC_map: PC_30bit port map (clk_test,aload_test, d_test,start_test, q_test);
  test_proc : process
  begin
    --reset
    clk_test <= '0';
    --arst_test <='1';
    aload_test <= '0';
    start_test <= '0';
    d_test <= "100010001000111100110011110010";
    wait for 5 ns;
    clk_test <= '1';
    --arst_test <='1';
    aload_test <= '0';
    start_test <= '0';
    d_test <= "100010001000111100110011110010";
    wait for 5 ns;
    --initial
    clk_test <= '0';
    --arst_test <='0';
    aload_test <= '1';
    start_test <= '0';
    d_test <= "100010001000111100110011110010";
    wait for 5 ns;
    clk_test <= '1';
    --arst_test <='0';
    aload_test <= '1';
    start_test <= '0';
    d_test <= "000000000000111111111111111111";
    wait for 5 ns;
    --start
    clk_test <= '0';
    --arst_test <='0';
    aload_test <= '0';
    start_test <= '0';
    d_test <= "000000000000111111111111111111";
    wait for 5 ns;
    clk_test <= '1';
   -- arst_test <='0';
    aload_test <= '0';
    start_test <= '0';
    d_test <= "000000000000111111111111111111";
    wait for 5 ns;
    
    clk_test <= '0';
    --arst_test <='0';
    aload_test <= '0';
    start_test <= '1';
    d_test <= "000000000000111111111111111111";
    wait for 5 ns;
    clk_test <= '1';
    --arst_test <='0';
    aload_test <= '0';
    start_test <= '1';
    d_test <= "000000000000111111111111111111";
    wait for 5 ns;
    
    clk_test <= '0';
   -- arst_test <='0';
    aload_test <= '0';
    start_test <= '1';
    d_test <= "000001100000111011110001111111";
    wait for 5 ns;
    clk_test <= '1';
   -- arst_test <='0';
    aload_test <= '0';
    start_test <= '1';
    d_test <= "000001100000111011110001111111";
    wait for 5 ns;
    
    clk_test <= '0';
    --arst_test <='0';
    aload_test <= '0';
    start_test <= '1';
    d_test <= "010011100000111011110001110011";
    wait for 5 ns;
    clk_test <= '1';
  --  arst_test <='0';
    aload_test <= '0';
    start_test <= '1';
    d_test <= "010011100000111011110001110011";
    wait for 5 ns;
    
    clk_test <= '0';
   -- arst_test <='0';
    aload_test <= '0';
    start_test <= '0';
    d_test <= "010111100000111010110001110010";
    wait for 5 ns;
    clk_test <= '1';
   -- arst_test <='0';
    aload_test <= '0';
    start_test <= '0';
    d_test <= "010111100000111010110001110010";
    wait for 5 ns;
    wait;
  end process;
end architecture structural;


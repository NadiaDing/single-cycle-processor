library ieee;
use ieee.std_logic_1164.all;

entity ALU_32bit_test is
  port (
    cout_test  : out std_logic;  -- ?1? -> carry out
    overf_test : out std_logic;  -- ?1? -> overflow
    ze_test    : out std_logic;  -- ?1? -> is zero
    R_test     : out std_logic_vector(31 downto 0)--;
    --

  );
end ALU_32bit_test;

architecture structural of ALU_32bit_test is
component ALU_32bit is
port (
    ctrl  : in std_logic_vector(3 downto 0);
    A     : in std_logic_vector(31 downto 0);
    B     : in std_logic_vector(31 downto 0);
    cout  : out std_logic;  -- ?1? -> carry out
    ovf : out std_logic;  -- ?1? -> overflow
    ze    : out std_logic;  -- ?1? -> is zero
    R     : out std_logic_vector(31 downto 0)--; -- result
    

--sltu_test  : out std_logic
  );end component ALU_32bit;

signal ctrl_test : std_logic_vector(3 downto 0);
signal A_test : std_logic_vector(31 downto 0);
signal B_test : std_logic_vector(31 downto 0);

begin
  ALU_32bit_map: ALU_32bit port map (ctrl_test,A_test,B_test, cout_test, overf_test, ze_test,R_test);--,sltu_test);
  test_proc : process
  begin
    --0010 v.s. 0011 2,3 
    A_test <= "10000000100000001000000010000001";
    B_test <= "00000000000000000000000000011111";
    ctrl_test <= "0100";--ADD
    wait for 5 ns;
    A_test <= "00000000000000000000000000000010";
    B_test <= "00000000000000000000000000000011";
    ctrl_test <= "0000";--ADD
    wait for 5 ns;
    A_test <= "00000000000000000000000000000010";
    B_test <= "00000000000000000000000000000011";
    ctrl_test <= "0001";--SUB
    wait for 5 ns;
    A_test <= "00000000000000000000000000000010";
    B_test <= "00000000000000000000000000000011";
    ctrl_test <= "0101";--SLT
    wait for 5 ns;
    A_test <= "00000000000000000000000000000010";
    B_test <= "00000000000000000000000000000011";
    ctrl_test <= "0111";--SLT
    wait for 5 ns;
    A_test <= "00000000000000000000000000000010";
    B_test <= "00000000000000000000000000000011";
    ctrl_test <= "0100";--SLL
    wait for 5 ns;
    
--1110 v.s. 0111 14,7 
    A_test <= "00000000000000000000000000001110";
    B_test <= "00000000000000000000000000000111";
    ctrl_test <= "0000";--ADD
    wait for 5 ns;
    A_test <= "00000000000000000000000000001110";
    B_test <= "00000000000000000000000000000111";
    ctrl_test <= "0001";--SUB
    wait for 5 ns;
    A_test <= "00000000000000000000000000001110";
    B_test <= "00000000000000000000000000000111";
    ctrl_test <= "0101";--SLT
    wait for 5 ns;
    A_test <= "00000000000000000000000000001110";
    B_test <= "00000000000000000000000000000111";
    ctrl_test <= "0111";--SLT
    wait for 5 ns;
    A_test <= "00000000000000000000000000001110";
    B_test <= "00000000000000000000000000000111";
    ctrl_test <= "0100";--SLL
    wait for 5 ns;
    
--1110 v.s. 1001 14,-7 
    A_test <= "00000000000000000000000000001110";
    B_test <= "11111111111111111111111111111001";
    ctrl_test <= "0000";--ADD
    wait for 5 ns;
    A_test <= "00000000000000000000000000001110";
    B_test <= "11111111111111111111111111111001";
    ctrl_test <= "0001";--SUB
    wait for 5 ns;
    A_test <= "00000000000000000000000000001110";
    B_test <= "11111111111111111111111111111001";
    ctrl_test <= "0101";--SLT
    wait for 5 ns;
    A_test <= "00000000000000000000000000001110";
    B_test <= "11111111111111111111111111111001";
    ctrl_test <= "0111";--SLT
    wait for 5 ns;
    A_test <= "00000000000000000000000000001110";
    B_test <= "11111111111111111111111111111001";
    ctrl_test <= "0100";--SLL
    wait for 5 ns;
    
    
--1110 v.s. 1001 -14,-14 
    A_test <= "11111111111111111111111111110010";
    B_test <= "11111111111111111111111111110010";
    ctrl_test <= "0000";--ADD
    wait for 5 ns;
    A_test <= "11111111111111111111111111110010";
    B_test <= "11111111111111111111111111110010";
    ctrl_test <= "0001";--SUB
    wait for 5 ns;
    A_test <= "11111111111111111111111111110010";
    B_test <= "11111111111111111111111111110010";
    ctrl_test <= "0101";--SLT
    wait for 5 ns;
    A_test <= "11111111111111111111111111110010";
    B_test <= "11111111111111111111111111110010";
    ctrl_test <= "0111";--SLT
    wait for 5 ns;
    A_test <= "11111111111111111111111111110010";
    B_test <= "11111111111111111111111111110010";
    ctrl_test <= "0100";--SLL
    wait for 5 ns;
    --FOR ADD and OR test 
    
A_test <= "11111111111111111110001111110010";
    B_test <= "11111111110111101110111111110010";
    ctrl_test <= "0010";--AND
    wait for 5 ns;
    A_test <= "11111111111111111110001111110010";
    B_test <= "11111111110111101110111111110010";
    ctrl_test <= "0011";--OR
    wait for 5 ns;

    wait;
  end process;
end architecture structural;



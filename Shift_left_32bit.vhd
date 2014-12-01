library ieee;
use ieee.std_logic_1164.all;
use  work.eecs361_gates.all;
use  work.eecs361.mux_n;
use  work.eecs361.mux;

entity shift_left_32bit is
  port (
    A     : in  std_logic_vector(31 downto 0);--operand
    B     : in  std_logic_vector(31 downto 0);--shift offset 000000~100000
    R     : out std_logic_vector(31 downto 0) -- result
  );
end shift_left_32bit;

architecture structural of shift_left_32bit is 

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



signal level0,level1: std_logic_vector(31 downto 0);  

signal or1          : std_logic_vector(12 downto 0);
signal or2          : std_logic_vector(5  downto 0);
signal or3          : std_logic_vector(2  downto 0);
signal or4,or5,or6          : std_logic;
begin
  
  
                         port map   (x => B  (31 downto 19), y => B(18 downto 6),z => or1);
   or2_map   : or_gate_n generic map(n => 6)
                         port map   (x => or1(12 downto 7) , y => or1(6  downto 1),z => or2);
   or3_map   : or_gate_n generic map(n => 3)
                         port map   (x => or2(5 downto 3)  , y => or2(2  downto 0),z => or3);
   or4_map   : or_gate   port map   (x => or3(2)  , y => or3(1),z => or4);
   or5_map   : or_gate   port map   (x => or1(0)  , y => or3(0),z => or5);
   or6_map   : or_gate   port map   (x => or5     , y => or4   ,z => or6);--or result of all  bit from 31 downto 7
   

  
   --level0
   
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
   
   
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
   
   
   
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



end structural;

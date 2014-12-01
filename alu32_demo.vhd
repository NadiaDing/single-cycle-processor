library ieee;
use ieee.std_logic_1164.all;

entity alu_32_demo is
port (

    cout  : out std_logic;  
    overf    : out std_logic;  
    ze    : out std_logic;
    R     : out std_logic_vector(31 downto 0) -- result
);
end alu_32_demo;

architecture structural of alu_32_demo is
component alu_32 is

port(
    ctrl  : in std_logic_vector(3 downto 0);
    A     : in std_logic_vector(31 downto 0);
    B     : in std_logic_vector(31 downto 0);
    cout  : out std_logic;  
    overf    : out std_logic; 
 
    ze    : out std_logic;
    R     : out std_logic_vector(31 downto 0) -- result
	
);
end component alu_32;

signal ctrl_0in: std_logic;
signal ctrl_1in: std_logic;
signal ctrl_2in: std_logic;
signal ctrl_3in: std_logic;
signal Ain:  std_logic_vector(31 downto 0);
signal Bin:  std_logic_vector(31 downto 0);
signal inbus: std_logic_vector(3 downto 0);

begin
    alu_32_map: alu_32 port map (ctrl(0)=>ctrl_0in,
                               ctrl(1)=>ctrl_1in, 
                               ctrl(2)=>ctrl_2in,
                             ctrl(3)=>ctrl_3in, 
                               
                               A => Ain, 
                               B =>Bin,
                               cout => cout,
                               overf =>overf,
                               ze => ze,
                               R => R

                                );
 
    ctrl_0in<=inbus(0);
    ctrl_1in<=inbus(1);
    ctrl_2in<=inbus(2);
    ctrl_3in<=inbus(3);
    
    
    test_proc: process
    
    begin 
     -- Ain<="00000000000000000000000000000011";
    --  Bin<="11111111111111111111111111111110";
      Ain<="10000000100000001000000010000001";
      Bin<="00000000000000000000000000011111";
      --  Ain<="00000000000000000000000000000011";
     -- Bin<="00000000000000000000000000000010";
    -- Ain<="00000000000000000000000000000011";
     --Bin<="00000000000000000000000000000110";
     
        inbus <="0000"; -- O and O = 0
        wait for 5 ns;
        inbus <="0001"; -- 0 and 1 = 0
        wait for 5 ns;
        inbus <="0010"; -- 1 and 0 =0
        wait for 5 ns;
        inbus <="0011"; -- 1 and 1 =1
        wait for 5 ns;
        
       
        inbus <="0111"; -- 1 or 1=1
        wait for 5 ns;
        

        inbus <="1011"; -- 0 add 1 with cin=0 R=> 1  cout=>0
        wait for 5 ns;

        
        inbus <="1110"; -- 0 add 0 with cin=1 R=> 1  cout=>0
        wait for 5 ns;
        inbus <="1111"; -- 1 add 0 with cin=1 R=> 0  cout=>1
        wait for 5 ns;
        
        
        wait;
    end process;
end architecture structural;

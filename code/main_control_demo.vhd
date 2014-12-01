library ieee;
use ieee.std_logic_1164.all;

entity main_control_demo is
port (
  RegDst: out std_logic;
    ALUSrc: out std_logic;
    MemtoReg: out std_logic;
    RegWrite: out std_logic;
    MemWrite: out std_logic;
    Branch: out std_logic;
    Jump: out std_logic;
    ExtOp: out std_logic;

    ALU_op : out std_logic_vector(3 downto 0) -- result
);
end main_control_demo;

architecture structural of main_control_demo is
component main_control is

port(
	    op : in std_logic_vector(5 downto 0);
    RegDst: out std_logic;
    ALUSrc: out std_logic;
    MemtoReg: out std_logic;
    RegWrite: out std_logic;
    MemWrite: out std_logic;
    Branch: out std_logic;
    Jump: out std_logic;
    ExtOp: out std_logic;

    ALU_op : out std_logic_vector(3 downto 0) -- result
	
);
end component main_control;

signal op_in: std_logic_vector(5 downto 0);


begin
    main_control_map: main_control port map (
				                      op=>op_in,
                               RegDst=>RegDst,
                               ALUSrc=>ALUSrc,
                            MemtoReg=>MemtoReg, 
                            RegWrite=>RegWrite,
                             MemWrite=>MemWrite,
                             Branch=>Branch,
                               Jump=>Jump,
				                     ExtOp=>ExtOp,
                               ALU_op=>ALU_op
				);

   
    
    test_proc: process
    
    begin 
        op_in <="000100"; 
        wait for 5 ns;
        op_in <="000101";
        wait for 5 ns;
        op_in <="100011"; 
        wait for 5 ns;
        op_in <="101011"; 
        wait for 5 ns;


        op_in <="001000";
        wait for 5 ns;
        op_in <="000000";
        wait for 5 ns;


       
        
        wait;
    end process;
end architecture structural;

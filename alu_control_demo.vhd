library ieee;
use ieee.std_logic_1164.all;

entity alu_control_demo is
port (
    aluctr : out std_logic_vector(3 downto 0) -- result
);
end alu_control_demo;

architecture structural of alu_control_demo is
component alu_control is

port(
    func : in std_logic_vector(5 downto 0);
    alu_op :in std_logic_vector(3 downto 0);
    alu_ctr:out std_logic_vector(3 downto 0)-- result
	
);
end component alu_control;

signal func_in: std_logic_vector(5 downto 0);
signal ALUop_in: std_logic_vector(3 downto 0);


begin
    alu_control_map: alu_control port map (
				                   func=>func_in,
                               alu_op=>ALUop_in,
                               alu_ctr=>aluctr
				);

   
    
    test_proc: process
    
    begin 
        ALUop_in <="0011";
        func_in <="100000"; 
        wait for 5 ns;
        
	ALUop_in <="0010";
	     func_in <="100000"; 
        wait for 5 ns;
        
	ALUop_in <="1010";
	     func_in <="010100";
        wait for 5 ns;

	ALUop_in <="1010";
        func_in <="010101";
        wait for 5 ns;

	ALUop_in <="1010";
        func_in <="010110";
        wait for 5 ns;

	ALUop_in <="1010";
        func_in <="010111";
        wait for 5 ns;

	ALUop_in <="1010";
        func_in <="011000";
        wait for 5 ns;

	ALUop_in <="1010";
        func_in <="011001";
        wait for 5 ns;
        
    ALUop_in <="1010";
        func_in <="000000";
        wait for 5 ns;
        
    ALUop_in <="1010";
        func_in <="101010";
        wait for 5 ns;
        
    ALUop_in <="1010";
        func_in <="101011";
        wait for 5 ns;

       
       
        
        wait;
    end process;
end architecture structural;

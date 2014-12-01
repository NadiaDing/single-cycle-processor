library ieee;
use ieee.std_logic_1164.all;

entity syn_demo is 
  port (
    
	dout  :	out std_logic_vector(31 downto 0)
  );
end syn_demo;

architecture struct of syn_demo is
  component syncram 
  generic (
	mem_file : string
  );
  port (
    clk   : in  std_logic;
	cs	  : in	std_logic;
	oe	  :	in	std_logic;
	we	  :	in	std_logic;
	addr  : in	std_logic_vector(31 downto 0);
	din	  :	in	std_logic_vector(31 downto 0);
	dout  :	out std_logic_vector(31 downto 0)
  );
end component;

signal clk   :  std_logic;
signal	we	  :	std_logic;
signal	addr  : std_logic_vector(31 downto 0);
signal	din	  :	std_logic_vector(31 downto 0);
  
  begin
    syn: syncram
    generic map (mem_file=>"F:\Northwestern\2014Fall\EECS361\Project2_integrate\unsigned_sum.dat")
    port map(clk,'1','1',we,addr,din,dout);
      
    test_proc : process
  begin
   
    clk <= '0';
    we <= '0';
    addr <= "00010000000000000000000000000000";
    din  <= "00000000001111111111100000000000";
    wait for 10 ns;
    
    clk <= '1';
    we <= '0';
    addr <= "00010000000000000000000000000000";
    din  <= "00000000001111111111100000000000";
    wait for 10 ns;
    
    clk <= '0';
    we <= '1';
    addr <= "00000000000000000000000000000000";
    din  <= "00000000001111111111100000000000";
    wait for 10 ns;
     
    clk <= '1';
    we <= '1';
    addr <= "00000000000000000000000000000000";
    din  <= "00000000001111111111100000000000";
    wait for 10 ns;
     
    clk <= '0';
    we <= '0';
    addr <= "00000000000000000000000000000000";
    din  <= "00000000001111111111100000000000";
    wait for 10 ns;
    
    
wait;
  
end process;
end struct;
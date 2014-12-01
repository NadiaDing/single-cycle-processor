library ieee;
use ieee.std_logic_1164.all;

entity Inst_Fetch_test is
  port (
   pc_test         :out std_logic_vector(31  downto 0); 
   Instruction_test: out std_logic_vector(31  downto 0) 
  );
end Inst_Fetch_test;

architecture structural of Inst_Fetch_test is
component Inst_Fetch is

   port (
    --signal for start up
    --arst   : in  std_logic; --for reset all bits 0
	  aload  : in  std_logic; --for initialize with the address of first instruction in program 
	  start  : in  std_logic; --start runing the program
	  --signal for logic control
    Branch     : in  std_logic;
    Jump       : in  std_logic;
    zero       : in  std_logic;
    clk        : in  std_logic;
    pc         :out std_logic_vector(31  downto 0);
    Instruction: out std_logic_vector(31  downto 0) 
  );

end component Inst_Fetch;

signal clk_test   : std_logic;
signal Branch_test: std_logic;
signal Jump_test  : std_logic;
signal zero_test  : std_logic;
--signal arst_test : std_logic; --for reset all bits 0
signal	aload_test: std_logic; --for initialize with the address of first instruction in program 
signal start_test: std_logic; --start runing the program
begin
  Inst_Fetch_map: Inst_Fetch port map (aload_test,start_test,Branch_test,Jump_test,zero_test, clk_test,pc_test,Instruction_test);
  test_proc : process
  begin
    --reset1
    clk_test <= '0';
    aload_test <= '1';
    start_test <= '0';
    Branch_test <= '0';
    Jump_test <= '0';
    zero_test <= '0';
    wait for 5 ns;
    clk_test <= '1';
    aload_test <= '1';
    start_test <= '0';
    Branch_test <= '0';
    Jump_test <= '0';
    zero_test <= '0';
    wait for 5 ns;
    
    --initial2
    clk_test <= '0';
    aload_test <= '0';
    start_test <= '1';
    Branch_test <= '0';
    Jump_test <= '0';
    zero_test <= '0';
    wait for 5 ns;
    clk_test <= '1';
    --arst_test <='0';
    aload_test <= '0';
    start_test <= '1';
    Branch_test <= '0';
    Jump_test <= '0';
    zero_test <= '0';
    wait for 5 ns;
    
    --start0
    clk_test <= '0';
    --arst_test <='0';
    aload_test <= '0';
    start_test <= '1';
    Branch_test <= '0';
    Jump_test <= '0';
    zero_test <= '0';
    wait for 5 ns;
    clk_test <= '1';
    --arst_test <='0';
    aload_test <= '0';
    start_test <= '1';
    Branch_test <= '0';
    Jump_test <= '0';
    zero_test <= '0';
    wait for 5 ns;
    --1
    clk_test <= '0';
   -- arst_test <='0';
    aload_test <= '0';
    start_test <= '1';
    Branch_test <= '0';
    Jump_test <= '0';
    zero_test <= '0';
    wait for 5 ns;
    clk_test <= '1';
   -- arst_test <='0';
    aload_test <= '0';
    start_test <= '1';
    Branch_test <= '0';
    Jump_test <= '0';
    zero_test <= '0';
    wait for 5 ns;
    --2
    clk_test <= '0';
   -- arst_test <='0';
    aload_test <= '0';
    start_test <= '1';
    Branch_test <= '0';
    Jump_test <= '0';
    zero_test <= '0';
    wait for 5 ns;
    clk_test <= '1';
    --arst_test <='0';
    aload_test <= '0';
    start_test <= '1';
    Branch_test <= '0';
    Jump_test <= '0';
    zero_test <= '0';
    wait for 5 ns;
    --3
    clk_test <= '0';
    --arst_test <='0';
    aload_test <= '0';
    start_test <= '1';
    Branch_test <= '0';
    Jump_test <= '0';
    zero_test <= '0';
    wait for 5 ns;
    clk_test <= '1';
    --arst_test <='0';
    aload_test <= '0';
    start_test <= '1';
    Branch_test <= '0';
    Jump_test <= '0';
    zero_test <= '0';
    wait for 5 ns;
    --4
    clk_test <= '0';
   -- arst_test <='0';
    aload_test <= '0';
    start_test <= '1';
    Branch_test <= '0';
    Jump_test <= '0';
    zero_test <= '0';
    wait for 5 ns;
    clk_test <= '1';
    --arst_test <='0';
    aload_test <= '0';
    start_test <= '1';
    Branch_test <= '0';
    Jump_test <= '0';
    zero_test <= '0';
    wait for 5 ns;
    --5
       clk_test <= '0';
   -- arst_test <='0';
    aload_test <= '0';
    start_test <= '1';
    Branch_test <= '0';
    Jump_test <= '0';
    zero_test <= '0';
    wait for 5 ns;
    clk_test <= '1';
   -- arst_test <='0';
    aload_test <= '0';
    start_test <= '1';
    Branch_test <= '0';
    Jump_test <= '0';
    zero_test <= '0';
    wait for 5 ns;
    --6
    clk_test <= '0';
   -- arst_test <='0';
    aload_test <= '0';
    start_test <= '1';
    Branch_test <= '0';
    Jump_test <= '0';
    zero_test <= '0';
    wait for 5 ns;
    clk_test <= '1';
    --arst_test <='0';
    aload_test <= '0';
    start_test <= '1';
    Branch_test <= '0';
    Jump_test <= '0';
    zero_test <= '0';
    wait for 5 ns;
    --7
    clk_test <= '0';
    --arst_test <='0';
    aload_test <= '0';
    start_test <= '1';
    Branch_test <= '0';
    Jump_test <= '0';
    zero_test <= '0';
    wait for 5 ns;
    clk_test <= '1';
    --arst_test <='0';
    aload_test <= '0';
    start_test <= '1';
    Branch_test <= '0';
    Jump_test <= '0';
    zero_test <= '0';
    wait for 5 ns;
    --8
    clk_test <= '0';
   -- arst_test <='0';
    aload_test <= '0';
    start_test <= '1';
    Branch_test <= '0';
    Jump_test <= '0';
    zero_test <= '0';
    wait for 5 ns;
    clk_test <= '1';
    --arst_test <='0';
    aload_test <= '0';
    start_test <= '1';
    Branch_test <= '0';
    Jump_test <= '0';
    zero_test <= '0';
    wait for 5 ns;
      --9
       clk_test <= '0';
   -- arst_test <='0';
    aload_test <= '0';
    start_test <= '1';
    Branch_test <= '0';
    Jump_test <= '0';
    zero_test <= '0';
    wait for 5 ns;
    clk_test <= '1';
   -- arst_test <='0';
    aload_test <= '0';
    start_test <= '1';
    Branch_test <= '0';
    Jump_test <= '0';
    zero_test <= '0';
    wait for 5 ns;
    --10
    clk_test <= '0';
   -- arst_test <='0';
    aload_test <= '0';
    start_test <= '1';
    Branch_test <= '0';
    Jump_test <= '0';
    zero_test <= '0';
    wait for 5 ns;
    clk_test <= '1';
    --arst_test <='0';
    aload_test <= '0';
    start_test <= '1';
    Branch_test <= '0';
    Jump_test <= '0';
    zero_test <= '0';
    wait for 5 ns;
    --11
    clk_test <= '0';
    --arst_test <='0';
    aload_test <= '0';
    start_test <= '1';
    Branch_test <= '0';
    Jump_test <= '0';
    zero_test <= '0';
    wait for 5 ns;
    clk_test <= '1';
    --arst_test <='0';
    aload_test <= '0';
    start_test <= '1';
    Branch_test <= '0';
    Jump_test <= '0';
    zero_test <= '0';
    wait for 5 ns;
    --12
    clk_test <= '0';
   -- arst_test <='0';
    aload_test <= '0';
    start_test <= '1';
    Branch_test <= '1';
    Jump_test <= '0';
    zero_test <= '1';
    wait for 5 ns;
    clk_test <= '1';
    --arst_test <='0';
    aload_test <= '0';
    start_test <= '1';
    Branch_test <= '1';
    Jump_test <= '0';
    zero_test <= '1';
    wait for 5 ns;
    
     --13
    clk_test <= '0';
   -- arst_test <='0';
    aload_test <= '0';
    start_test <= '1';
    Branch_test <= '0';
    Jump_test <= '0';
    zero_test <= '0';
    wait for 5 ns;
    clk_test <= '1';
    --arst_test <='0';
    aload_test <= '0';
    start_test <= '1';
    Branch_test <= '0';
    Jump_test <= '0';
    zero_test <= '0';
    wait for 5 ns;
    --14
    clk_test <= '0';
    --arst_test <='0';
    aload_test <= '0';
    start_test <= '1';
    Branch_test <= '0';
    Jump_test <= '0';
    zero_test <= '0';
    wait for 5 ns;
    clk_test <= '1';
    --arst_test <='0';
    aload_test <= '0';
    start_test <= '1';
    Branch_test <= '0';
    Jump_test <= '0';
    zero_test <= '0';
    wait for 5 ns;
    --15
    clk_test <= '0';
   -- arst_test <='0';
    aload_test <= '0';
    start_test <= '1';
    Branch_test <= '0';
    Jump_test <= '0';
    zero_test <= '0';
    wait for 5 ns;
    clk_test <= '1';
    --arst_test <='0';
    aload_test <= '0';
    start_test <= '1';
    Branch_test <= '0';
    Jump_test <= '0';
    zero_test <= '0';
    wait for 5 ns;
    
      --16
    clk_test <= '0';
   -- arst_test <='0';
    aload_test <= '0';
    start_test <= '1';
    Branch_test <= '0';
    Jump_test <= '0';
    zero_test <= '0';
    wait for 5 ns;
    clk_test <= '1';
    --arst_test <='0';
    aload_test <= '0';
    start_test <= '1';
    Branch_test <= '0';
    Jump_test <= '0';
    zero_test <= '0';
    wait for 5 ns;
    wait;
  end process;
end architecture structural;

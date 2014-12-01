
library ieee;
use ieee.std_logic_1164.all;

entity SignExt_30bit_test is
  port (
   Ext_test   : out std_logic_vector(29 downto 0) 
  );
end SignExt_30bit_test;

architecture structural of SignExt_30bit_test is
component SignExt_30bit is

   port (
    imm   : in  std_logic_vector(15 downto 0);
    Ext   : out std_logic_vector(29 downto 0) 
  );

end component SignExt_30bit;


signal imm_test   : std_logic_vector(15 downto 0);

begin
  SignExt_map: SignExt_30bit port map (imm_test, Ext_test);
  test_proc : process
  begin
   
    
    imm_test <= "1100110011110010";
    wait for 5 ns;
    imm_test <= "0100110011110010";
    wait for 5 ns;
    imm_test <= "0000000000000011";
    wait for 5 ns;
    imm_test <= "1000000001010101";
    wait for 5 ns;
    wait;
  end process;
end architecture structural;



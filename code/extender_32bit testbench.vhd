library ieee;
use ieee.std_logic_1164.all;

entity extender_32bit_tb is
end extender_32bit_tb;

architecture arch of extender_32bit_tb is
signal extOp_tb: std_logic;
signal imm16_tb: std_logic_vector(15 downto 0);
signal imm32_tb: std_logic_vector(31 downto 0);

begin
DUT: entity work.extender_32bit
port map (extOp_tb,imm16_tb,imm32_tb);

process
begin
extOp_tb <= '0';
imm16_tb <= "1000000011111111";
wait for 10 ns;

extOp_tb <= '0';
imm16_tb <= "0000000011111111";
wait for 10 ns;

extOp_tb <= '1';
imm16_tb <= "0000000011111111";
wait for 10 ns;

extOp_tb <= '1';
imm16_tb <= "1000000011111111";
wait for 10 ns;

end process;
end arch;
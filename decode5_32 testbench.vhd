library ieee;
use ieee.std_logic_1164.all;

entity decode5_32_tb is
end decode5_32_tb;

architecture arch of decode5_32_tb is
signal src_tb : std_logic_vector(4 downto 0);
signal result_tb: std_logic_vector(31 downto 0);

begin
DUT: entity work.decode5_32
port map (src_tb,result_tb);

process
begin
src_tb <= "00001";
wait for 10 ns;

src_tb <= "00010";
wait for 10 ns;

src_tb <= "00011";
wait for 10 ns;

src_tb <= "00110";
wait for 10 ns;
src_tb <= "00101";

wait for 10 ns;

src_tb <= "01010";
wait for 10 ns;

src_tb <= "00111";
wait for 10 ns;

src_tb <= "10010";
wait for 10 ns;

end process;
end arch;
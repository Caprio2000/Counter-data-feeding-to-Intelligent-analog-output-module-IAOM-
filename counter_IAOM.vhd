--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: counter.vhd
-- File history:
--      <Revision number>: <Date>: <Comments>
--      <Revision number>: <Date>: <Comments>
--      <Revision number>: <Date>: <Comments>
--
-- Description:DATA feeding from counter to IAOM(-Intelligent-analog-output-module)  
--
-- <Description here>
--
-- Targeted device: <Family::ProASIC3> <Die::A3P600> <Package::256 FBGA>
-- Engineer: <Caprio Mistry>
--
--------------------------------------------------------------------------------

library IEEE;

use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

-- counter port starts

entity counter is
port (
	rst : IN  std_logic; -- reset
    clk : IN  std_logic; -- clock
    --o_u : OUT std_logic_vector(3 downto 0);  -- out
    FPGA_IO_D00 :OUT std_logic; 
    FPGA_IO_D01 :OUT std_logic; 
    FPGA_IO_D02 :OUT std_logic; 
    FPGA_IO_D03 :OUT std_logic; 
    FPGA_IO_D04 :OUT std_logic; 
    FPGA_IO_D05 :OUT std_logic; 
    FPGA_IO_D06 :OUT std_logic; 
    FPGA_IO_D07 :OUT std_logic; 
    FPGA_IO_D08 :OUT std_logic; 
    FPGA_IO_D09 :OUT std_logic; 
    FPGA_IO_D10 :OUT std_logic; 
    FPGA_IO_D11 :OUT STD_LOGIC; 
    FPGA_IO_D12 :OUT std_logic; 
    FPGA_IO_D13 :OUT std_logic; 
    FPGA_IO_D14 :OUT std_logic; 
    FPGA_IO_D15 :OUT std_logic 
);
end counter;
---a1: top_fpga port map()





architecture architecture_counter of counter is
   
	signal count_signal : std_logic_vector(3 downto 0) ; 

begin
    process(rst,clk)
    begin
        if (rst='1') THEN count_signal<="0000";
        elsif(clk'event and clk='1') THEN count_signal <= count_signal+1;
        end if;
    end process;
        FPGA_IO_D00 <= count_signal(0);
        FPGA_IO_D01 <= count_signal(1);
        FPGA_IO_D02 <= count_signal(2);
        FPGA_IO_D03 <= count_signal(3);
        FPGA_IO_D04 <= count_signal(4);
        FPGA_IO_D05 <= count_signal(5);
        FPGA_IO_D06 <= count_signal(6);
        FPGA_IO_D07 <= count_signal(7);
        FPGA_IO_D08 <= count_signal(8);
        FPGA_IO_D09 <= count_signal(9);
        FPGA_IO_D10 <= count_signal(10);
        FPGA_IO_D11 <= count_signal(11);
        FPGA_IO_D12 <= count_signal(12);
        FPGA_IO_D13 <= count_signal(13);
        FPGA_IO_D14 <= count_signal(14);
        FPGA_IO_D15 <= count_signal(15);
end architecture_counter;

 
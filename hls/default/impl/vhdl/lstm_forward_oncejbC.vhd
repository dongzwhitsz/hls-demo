-- ==============================================================
-- File generated on Mon Jul 15 22:03:01 +0800 2019
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
-- SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
-- IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity lstm_forward_oncejbC_rom is 
    generic(
             DWIDTH     : integer := 32; 
             AWIDTH     : integer := 7; 
             MEM_SIZE    : integer := 128
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of lstm_forward_oncejbC_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111100110111101001010001010000", 
    1 => "10111101000001100100011110001011", 
    2 => "00111101000000011110101001110001", 
    3 => "00111100010011100000100101010000", 
    4 => "00111100111001111110000101011111", 
    5 => "00111011111000111010011111100011", 
    6 => "00111011100010100101001001001010", 
    7 => "10111100100001100110111001001011", 
    8 => "10111011100001101111000110110001", 
    9 => "10111100010110010111100101000100", 
    10 => "10111100111010110001000010000100", 
    11 => "00111100010011011010101100000110", 
    12 => "00111101000101000001001011101101", 
    13 => "00111011111001000110110111111100", 
    14 => "00111100111011100110111000100011", 
    15 => "00111100111110001101101111111111", 
    16 => "10111100111000011101101111010010", 
    17 => "10111011110100001001000010010110", 
    18 => "00111100100101000000010011111101", 
    19 => "00111100000010011000000011010010", 
    20 => "00111100001100101111010000111001", 
    21 => "10111100100001010010011100100010", 
    22 => "00111100101101001000100100111000", 
    23 => "00111100000111000001001100011001", 
    24 => "10111010000011101110000000100100", 
    25 => "00111100100011111111110110011100", 
    26 => "00111011100101110100101110001100", 
    27 => "10111100001001010111010100111111", 
    28 => "00111100111101010001001001000110", 
    29 => "10111100011101110010000001001100", 
    30 => "00111100111001110101110000101101", 
    31 => "10111100010011100011001001100100", 
    32 => "00111011001000100101000010100111", 
    33 => "00111100000010110000001100110011", 
    34 => "10111100100011000100101110110010", 
    35 => "10111011110011111100101101001010", 
    36 => "00111100100111111011111111001010", 
    37 => "10111101001111010100010100101010", 
    38 => "10111101001000001101101000111100", 
    39 => "00111100110101100111111000001100", 
    40 => "10111100010000010000010111110010", 
    41 => "10111100010111010010101101001000", 
    42 => "10111011010001000000011110011000", 
    43 => "10111100010010100011100101111101", 
    44 => "10111100001010101100011010111111", 
    45 => "00111100011010000110101001100111", 
    46 => "10111100101110111110011000111100", 
    47 => "10111100100001100000110101110001", 
    48 => "00111100011001101100010010110010", 
    49 => "00111011111011111001010111011100", 
    50 => "10111011000010100011000111011100", 
    51 => "00111011101001110001011100010000", 
    52 => "10111010001001011000101101111111", 
    53 => "00111101001100000111000011100100", 
    54 => "10111100110010100000100010110111", 
    55 => "00111100110010000101100000010000", 
    56 => "00111010011110001111001001110001", 
    57 => "10111100001010101101100011011010", 
    58 => "10111100010110011001101100000101", 
    59 => "10111100100101111000001101111110", 
    60 => "10111100100000101000000011110010", 
    61 => "10111011101010011110110000101001", 
    62 => "10111101001111011000000101000010", 
    63 => "10111100110011011110100111011000", 
    64 => "00111100100110101111001001111000", 
    65 => "00111011101101010110011110001111", 
    66 => "10111100000010111101100001001100", 
    67 => "10111100111000001100100000010111", 
    68 => "00111100011000110010110011111001", 
    69 => "10111100000101110000101110101100", 
    70 => "00111011110111011101100101001110", 
    71 => "10111100010011010110100110100101", 
    72 => "10111101000000101000001110111111", 
    73 => "10111100010110110110110010011000", 
    74 => "10111011110000000000111110011001", 
    75 => "10111011110010110001111111001110", 
    76 => "10111011101101011010111110000111", 
    77 => "10111100011111011011110111010011", 
    78 => "10111100001100011001110101011000", 
    79 => "10111101001001100000001111000110", 
    80 => "00111100001010000000101001100100", 
    81 => "10111100101101111100011001100010", 
    82 => "00111100101101110011101010110100", 
    83 => "00111100010000111011000000010110", 
    84 => "00111100000100101001011111010110", 
    85 => "00111100000001000010001011100011", 
    86 => "10111100011110001100001000010110", 
    87 => "10111101000000011111011010000101", 
    88 => "00111100010101000100011111011000", 
    89 => "00111100101100111011101100001000", 
    90 => "00111100111001100011100000011010", 
    91 => "00111011111011001101111101101000", 
    92 => "00111100001100100000010010011010", 
    93 => "00111101000100011111001100011010", 
    94 => "10111011110001111111110111100011", 
    95 => "00111100110100001000100011011110", 
    96 => "00111011111011010111000101100000", 
    97 => "10111100101010100111110100100000", 
    98 => "10111011111011010110010101001000", 
    99 => "00111011101001010100111100001100", 
    100 => "00111101011111111000000100100001", 
    101 => "00111100011011010000100011110000", 
    102 => "10111100111000101000011101010101", 
    103 => "10111100100011101011111010111110", 
    104 => "10111101010001111111001001101011", 
    105 => "10111100100101110010100111110111", 
    106 => "10111011001100101001111010100100", 
    107 => "10111100101001100010110111111000", 
    108 => "00111101000010011101000100010101", 
    109 => "10111100100011111011101000001111", 
    110 => "10111100100100011110100011111101", 
    111 => "00111100110111111101101000110010", 
    112 => "00111100100101001110001001011000", 
    113 => "10111100010101110101000110011011", 
    114 => "00111101001101110010110000101111", 
    115 => "00111100011100101111101001000111", 
    116 => "10111101001010001100110000000011", 
    117 => "00111101011001011010101111010010", 
    118 => "10111101000101111010000100111010", 
    119 => "00111100010101010100010001011101", 
    120 => "00111101000101000100111111111111", 
    121 => "00111100001011110000111101011001", 
    122 => "00111100100001111000110000101111", 
    123 => "00111100100011110110100000000111", 
    124 => "10111010000000011011000011001100", 
    125 => "00111011111001001011111110010010", 
    126 => "10111100010010011111111111101000", 
    127 => "00111101000000110111100111011111" );


begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity lstm_forward_oncejbC is
    generic (
        DataWidth : INTEGER := 32;
        AddressRange : INTEGER := 128;
        AddressWidth : INTEGER := 7);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of lstm_forward_oncejbC is
    component lstm_forward_oncejbC_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    lstm_forward_oncejbC_rom_U :  component lstm_forward_oncejbC_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;



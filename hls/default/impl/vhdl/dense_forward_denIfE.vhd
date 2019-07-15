-- ==============================================================
-- File generated on Mon Jul 15 22:03:05 +0800 2019
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
-- SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
-- IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity dense_forward_denIfE_rom is 
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


architecture rtl of dense_forward_denIfE_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101001001100010001011101011", 
    1 => "00111010100100101000010111001000", 
    2 => "00111101001100000110101011011010", 
    3 => "10111100101011101010011110100101", 
    4 => "10111100101101110001110101111100", 
    5 => "10111100011101010010000011100101", 
    6 => "00111101000011011101100000111100", 
    7 => "10111010101000110011100100100011", 
    8 => "10111101001111001101000101010110", 
    9 => "10111100100111001000100010010110", 
    10 => "00111011111101101110000111111000", 
    11 => "00111010001010110101011010101100", 
    12 => "10111011110010001000010110100001", 
    13 => "10111101010100010010000000101001", 
    14 => "10111100100000000001010101001011", 
    15 => "00111011011010000011100010110101", 
    16 => "00111101000001110011011101111100", 
    17 => "10111011111110011010111110111010", 
    18 => "10111100111100100010000111100000", 
    19 => "00111101100001111101100101001011", 
    20 => "00111011011110111100010111111011", 
    21 => "10111101011011111011011110010111", 
    22 => "00111101100001010111000000011001", 
    23 => "10111100101101011110110010001111", 
    24 => "00111100010101101011011010000111", 
    25 => "10111101011011000101110000101001", 
    26 => "10111101011000101110100000000111", 
    27 => "10111100110001101000000000111001", 
    28 => "10111100100110010000110111011001", 
    29 => "10111101001100101101011111111100", 
    30 => "10111101100001101000110001010111", 
    31 => "00111101000110111010010001000000", 
    32 => "00111101010110100001101100101001", 
    33 => "00111101000011000111111110100010", 
    34 => "00111100001111100110001011011100", 
    35 => "00111101010110100110001100100001", 
    36 => "10111101100001101001000111100001", 
    37 => "10111101010110100010111110001010", 
    38 => "10111101010001000011001011001100", 
    39 => "10111101010000110100000011111101", 
    40 => "10111101100101101100101101101001", 
    41 => "00111100111010110111110001000110", 
    42 => "10111101010100111001011000011000", 
    43 => "00111100111101010110111111111011", 
    44 => "00111100011011010011000111010101", 
    45 => "00111100111101011011100000001111", 
    46 => "10111100101111011111111100001110", 
    47 => "10111011110111001111011011100100", 
    48 => "10111101000001000110101011111011", 
    49 => "00111100000000001100001001100111", 
    50 => "10111101100000101111000111111101", 
    51 => "00111101011000010111011100000011", 
    52 => "10111100101000011100111111100010", 
    53 => "00111101000001100100100111001011", 
    54 => "00111100011001011101100100100110", 
    55 => "10111100101100000011101110111001", 
    56 => "00111101000101000111011011100101", 
    57 => "10111100001111001001111110001010", 
    58 => "00111011110100100000001111100100", 
    59 => "00111101011110101000001010110011", 
    60 => "00111101000010011000010001011000", 
    61 => "00111100110110010001000010101011", 
    62 => "10111011101100101110110100001110", 
    63 => "10111101100001011011011000001000", 
    64 => "00111101011100101010001111101111", 
    65 => "10111100100101000100011101101100", 
    66 => "00111100101101001100000100011000", 
    67 => "00111100111111001111011101010101", 
    68 => "10111101010001110000110101001011", 
    69 => "00111100100000000101001110001001", 
    70 => "00111011101011010110110111001000", 
    71 => "00111010110011000111001000001100", 
    72 => "00111101000010010001000000001011", 
    73 => "00111100100001000011011011010000", 
    74 => "00111101000000100100011110000000", 
    75 => "00111101010010110100101011101010", 
    76 => "10111011101001101111000001111000", 
    77 => "00111100011110001001100110111110", 
    78 => "00111100111000011011101001101110", 
    79 => "00111011011101011001010000110100", 
    80 => "10111101000111011000010000010010", 
    81 => "10111011110001000001011001100010", 
    82 => "10111101001001011110101100100001", 
    83 => "00111101010111011110101101001010", 
    84 => "10111100110110000000110001001111", 
    85 => "00111101010010010010111110000110", 
    86 => "00111100001101011101110111101011", 
    87 => "10111101010101000111110001011101", 
    88 => "00111100101001011011110010010110", 
    89 => "00111011101111111001111101011110", 
    90 => "00111101010101011101001011001110", 
    91 => "10111011010001000000001001011010", 
    92 => "10111100111001100111010001111111", 
    93 => "10111100010000110111111000010111", 
    94 => "00111011101000110011100000110100", 
    95 => "10111100111000011101110010011000", 
    96 => "00111100110000000010101110001100", 
    97 => "00111101000000010111111100001000", 
    98 => "00111100100010010100101011101001", 
    99 => "00111011110101100111111010011110", 
    100 => "00111100100100000100001101101011", 
    101 => "10111001100101011001100111001100", 
    102 => "10111011010110100111000101011010", 
    103 => "00111101010101001110000110001100", 
    104 => "10111100100010101000010110000011", 
    105 => "10111101100010011011100100010010", 
    106 => "00111101101110100001011010111110", 
    107 => "10111101010110000100011100110111", 
    108 => "10111100100000101100000000110011", 
    109 => "10111100001001001111101001000000", 
    110 => "10111010110100101110010110110111", 
    111 => "00111100000001010110100001101111", 
    112 => "10111100110101010110100011101111", 
    113 => "10111101010100010000000001100001", 
    114 => "00111100110101001010111110000011", 
    115 => "00111101100110011010110000001111", 
    116 => "10111101001111000100011100110101", 
    117 => "10111100101010110111000110110101", 
    118 => "10111100100010100111100011110011", 
    119 => "00111101000111000000000111011011", 
    120 => "00111011101000110010010010001011", 
    121 => "00111101001110001001110000001010", 
    122 => "00111101110110101111010010101011", 
    123 => "10111100100011110110101100101010", 
    124 => "10111101000101100010000000001100", 
    125 => "10111100100010000110101010101101", 
    126 => "00111100011111011001001000010110", 
    127 => "10111101101010011000101010010100" );


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

entity dense_forward_denIfE is
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

architecture arch of dense_forward_denIfE is
    component dense_forward_denIfE_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    dense_forward_denIfE_rom_U :  component dense_forward_denIfE_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;



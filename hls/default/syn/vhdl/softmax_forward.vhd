-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity softmax_forward is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    dense_output_address0 : OUT STD_LOGIC_VECTOR (6 downto 0);
    dense_output_ce0 : OUT STD_LOGIC;
    dense_output_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    softmax_output_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    softmax_output_ce0 : OUT STD_LOGIC;
    softmax_output_we0 : OUT STD_LOGIC;
    softmax_output_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    softmax_output_q0 : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of softmax_forward is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (17 downto 0) := "000000000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (17 downto 0) := "000000000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (17 downto 0) := "000000000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (17 downto 0) := "000000000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (17 downto 0) := "000000000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (17 downto 0) := "000000000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (17 downto 0) := "000000000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (17 downto 0) := "000000000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (17 downto 0) := "000000000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (17 downto 0) := "000000001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (17 downto 0) := "000000010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (17 downto 0) := "000000100000000000";
    constant ap_ST_fsm_state13 : STD_LOGIC_VECTOR (17 downto 0) := "000001000000000000";
    constant ap_ST_fsm_state14 : STD_LOGIC_VECTOR (17 downto 0) := "000010000000000000";
    constant ap_ST_fsm_state15 : STD_LOGIC_VECTOR (17 downto 0) := "000100000000000000";
    constant ap_ST_fsm_state16 : STD_LOGIC_VECTOR (17 downto 0) := "001000000000000000";
    constant ap_ST_fsm_state17 : STD_LOGIC_VECTOR (17 downto 0) := "010000000000000000";
    constant ap_ST_fsm_state18 : STD_LOGIC_VECTOR (17 downto 0) := "100000000000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv32_11 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010001";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001101";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv4_A : STD_LOGIC_VECTOR (3 downto 0) := "1010";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv8_80 : STD_LOGIC_VECTOR (7 downto 0) := "10000000";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (17 downto 0) := "000000000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal softmax_kernel_address0 : STD_LOGIC_VECTOR (10 downto 0);
    signal softmax_kernel_ce0 : STD_LOGIC;
    signal softmax_kernel_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal softmax_bias_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal softmax_bias_ce0 : STD_LOGIC;
    signal softmax_bias_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_143_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal reg_152 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state11 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state11 : signal is "none";
    signal ap_CS_fsm_state17 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state17 : signal is "none";
    signal i_3_fu_164_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal i_3_reg_257 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal tmp_cast_fu_175_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_cast_reg_262 : STD_LOGIC_VECTOR (11 downto 0);
    signal exitcond2_fu_158_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal softmax_output_addr_reg_267 : STD_LOGIC_VECTOR (3 downto 0);
    signal j_1_fu_185_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal j_1_reg_275 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal exitcond1_fu_179_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal softmax_kernel_load_reg_290 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal dense_output_load_reg_295 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_148_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_8_reg_300 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal i_2_fu_242_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal i_2_reg_308 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state12 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state12 : signal is "none";
    signal exitcond_fu_236_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal softmax_output_addr_1_reg_318 : STD_LOGIC_VECTOR (3 downto 0);
    signal softmax_bias_load_reg_323 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state13 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state13 : signal is "none";
    signal softmax_output_load_reg_328 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reg_97 : STD_LOGIC_VECTOR (3 downto 0);
    signal storemerge_reg_108 : STD_LOGIC_VECTOR (31 downto 0);
    signal j_reg_121 : STD_LOGIC_VECTOR (7 downto 0);
    signal i1_reg_132 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state18 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state18 : signal is "none";
    signal tmp_fu_170_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_11_cast_fu_231_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_7_fu_191_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_3_fu_248_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal grp_fu_143_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_143_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal ap_CS_fsm_state14 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state14 : signal is "none";
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal tmp_5_fu_196_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_6_fu_208_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal p_shl1_cast_fu_216_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal p_shl_cast_fu_204_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_s_fu_220_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_1_fu_226_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (17 downto 0);

    component top_fadd_32ns_32nAem IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component top_fmul_32ns_32nBew IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component softmax_forward_sJfO IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (10 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component softmax_forward_sKfY IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (3 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    softmax_kernel_U : component softmax_forward_sJfO
    generic map (
        DataWidth => 32,
        AddressRange => 1280,
        AddressWidth => 11)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => softmax_kernel_address0,
        ce0 => softmax_kernel_ce0,
        q0 => softmax_kernel_q0);

    softmax_bias_U : component softmax_forward_sKfY
    generic map (
        DataWidth => 32,
        AddressRange => 10,
        AddressWidth => 4)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => softmax_bias_address0,
        ce0 => softmax_bias_ce0,
        q0 => softmax_bias_q0);

    top_fadd_32ns_32nAem_U40 : component top_fadd_32ns_32nAem
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_143_p0,
        din1 => grp_fu_143_p1,
        ce => ap_const_logic_1,
        dout => grp_fu_143_p2);

    top_fmul_32ns_32nBew_U41 : component top_fmul_32ns_32nBew
    generic map (
        ID => 1,
        NUM_STAGE => 3,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => softmax_kernel_load_reg_290,
        din1 => dense_output_load_reg_295,
        ce => ap_const_logic_1,
        dout => grp_fu_148_p2);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    i1_reg_132_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond2_fu_158_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                i1_reg_132 <= ap_const_lv4_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state18)) then 
                i1_reg_132 <= i_2_reg_308;
            end if; 
        end if;
    end process;

    i_reg_97_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (exitcond1_fu_179_p2 = ap_const_lv1_1))) then 
                i_reg_97 <= i_3_reg_257;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_reg_97 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;

    j_reg_121_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
                j_reg_121 <= j_1_reg_275;
            elsif (((exitcond2_fu_158_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                j_reg_121 <= ap_const_lv8_0;
            end if; 
        end if;
    end process;

    storemerge_reg_108_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
                storemerge_reg_108 <= grp_fu_143_p2;
            elsif (((exitcond2_fu_158_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                storemerge_reg_108 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                dense_output_load_reg_295 <= dense_output_q0;
                softmax_kernel_load_reg_290 <= softmax_kernel_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state12)) then
                i_2_reg_308 <= i_2_fu_242_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_3_reg_257 <= i_3_fu_164_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                j_1_reg_275 <= j_1_fu_185_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state17) or (ap_const_logic_1 = ap_CS_fsm_state11))) then
                reg_152 <= grp_fu_143_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state13)) then
                softmax_bias_load_reg_323 <= softmax_bias_q0;
                softmax_output_load_reg_328 <= softmax_output_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_fu_236_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state12))) then
                softmax_output_addr_1_reg_318 <= tmp_3_fu_248_p1(4 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond2_fu_158_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                softmax_output_addr_reg_267 <= tmp_fu_170_p1(4 - 1 downto 0);
                    tmp_cast_reg_262(3 downto 0) <= tmp_cast_fu_175_p1(3 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then
                tmp_8_reg_300 <= grp_fu_148_p2;
            end if;
        end if;
    end process;
    tmp_cast_reg_262(11 downto 4) <= "00000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond2_fu_158_p2, ap_CS_fsm_state3, exitcond1_fu_179_p2, ap_CS_fsm_state12, exitcond_fu_236_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((exitcond2_fu_158_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state12;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (exitcond1_fu_179_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state11;
            when ap_ST_fsm_state11 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state12 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state12) and (exitcond_fu_236_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state13;
                end if;
            when ap_ST_fsm_state13 => 
                ap_NS_fsm <= ap_ST_fsm_state14;
            when ap_ST_fsm_state14 => 
                ap_NS_fsm <= ap_ST_fsm_state15;
            when ap_ST_fsm_state15 => 
                ap_NS_fsm <= ap_ST_fsm_state16;
            when ap_ST_fsm_state16 => 
                ap_NS_fsm <= ap_ST_fsm_state17;
            when ap_ST_fsm_state17 => 
                ap_NS_fsm <= ap_ST_fsm_state18;
            when ap_ST_fsm_state18 => 
                ap_NS_fsm <= ap_ST_fsm_state12;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state11 <= ap_CS_fsm(10);
    ap_CS_fsm_state12 <= ap_CS_fsm(11);
    ap_CS_fsm_state13 <= ap_CS_fsm(12);
    ap_CS_fsm_state14 <= ap_CS_fsm(13);
    ap_CS_fsm_state17 <= ap_CS_fsm(16);
    ap_CS_fsm_state18 <= ap_CS_fsm(17);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state12, exitcond_fu_236_p2)
    begin
        if ((((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_const_logic_1 = ap_CS_fsm_state12) and (exitcond_fu_236_p2 = ap_const_lv1_1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state12, exitcond_fu_236_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state12) and (exitcond_fu_236_p2 = ap_const_lv1_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    dense_output_address0 <= tmp_7_fu_191_p1(7 - 1 downto 0);

    dense_output_ce0_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            dense_output_ce0 <= ap_const_logic_1;
        else 
            dense_output_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    exitcond1_fu_179_p2 <= "1" when (j_reg_121 = ap_const_lv8_80) else "0";
    exitcond2_fu_158_p2 <= "1" when (i_reg_97 = ap_const_lv4_A) else "0";
    exitcond_fu_236_p2 <= "1" when (i1_reg_132 = ap_const_lv4_A) else "0";

    grp_fu_143_p0_assign_proc : process(softmax_output_load_reg_328, storemerge_reg_108, ap_CS_fsm_state8, ap_CS_fsm_state14)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state14)) then 
            grp_fu_143_p0 <= softmax_output_load_reg_328;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            grp_fu_143_p0 <= storemerge_reg_108;
        else 
            grp_fu_143_p0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    grp_fu_143_p1_assign_proc : process(tmp_8_reg_300, softmax_bias_load_reg_323, ap_CS_fsm_state8, ap_CS_fsm_state14)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state14)) then 
            grp_fu_143_p1 <= softmax_bias_load_reg_323;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            grp_fu_143_p1 <= tmp_8_reg_300;
        else 
            grp_fu_143_p1 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;

    i_2_fu_242_p2 <= std_logic_vector(unsigned(i1_reg_132) + unsigned(ap_const_lv4_1));
    i_3_fu_164_p2 <= std_logic_vector(unsigned(i_reg_97) + unsigned(ap_const_lv4_1));
    j_1_fu_185_p2 <= std_logic_vector(unsigned(j_reg_121) + unsigned(ap_const_lv8_1));
    p_shl1_cast_fu_216_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_6_fu_208_p3),12));
    p_shl_cast_fu_204_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_5_fu_196_p3),12));
    softmax_bias_address0 <= tmp_3_fu_248_p1(4 - 1 downto 0);

    softmax_bias_ce0_assign_proc : process(ap_CS_fsm_state12)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
            softmax_bias_ce0 <= ap_const_logic_1;
        else 
            softmax_bias_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    softmax_kernel_address0 <= tmp_11_cast_fu_231_p1(11 - 1 downto 0);

    softmax_kernel_ce0_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            softmax_kernel_ce0 <= ap_const_logic_1;
        else 
            softmax_kernel_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    softmax_output_address0_assign_proc : process(softmax_output_addr_reg_267, ap_CS_fsm_state3, ap_CS_fsm_state12, softmax_output_addr_1_reg_318, ap_CS_fsm_state18, tmp_3_fu_248_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state18)) then 
            softmax_output_address0 <= softmax_output_addr_1_reg_318;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
            softmax_output_address0 <= tmp_3_fu_248_p1(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            softmax_output_address0 <= softmax_output_addr_reg_267;
        else 
            softmax_output_address0 <= "XXXX";
        end if; 
    end process;


    softmax_output_ce0_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state12, ap_CS_fsm_state18)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state18) or (ap_const_logic_1 = ap_CS_fsm_state12))) then 
            softmax_output_ce0 <= ap_const_logic_1;
        else 
            softmax_output_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    softmax_output_d0_assign_proc : process(reg_152, ap_CS_fsm_state3, storemerge_reg_108, ap_CS_fsm_state18)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state18)) then 
            softmax_output_d0 <= reg_152;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            softmax_output_d0 <= storemerge_reg_108;
        else 
            softmax_output_d0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    softmax_output_we0_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state18)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state18))) then 
            softmax_output_we0 <= ap_const_logic_1;
        else 
            softmax_output_we0 <= ap_const_logic_0;
        end if; 
    end process;

    tmp_11_cast_fu_231_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_1_fu_226_p2),64));
    tmp_1_fu_226_p2 <= std_logic_vector(unsigned(tmp_s_fu_220_p2) + unsigned(tmp_cast_reg_262));
    tmp_3_fu_248_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i1_reg_132),64));
    tmp_5_fu_196_p3 <= (j_reg_121 & ap_const_lv3_0);
    tmp_6_fu_208_p3 <= (j_reg_121 & ap_const_lv1_0);
    tmp_7_fu_191_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_reg_121),64));
    tmp_cast_fu_175_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_reg_97),12));
    tmp_fu_170_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_reg_97),64));
    tmp_s_fu_220_p2 <= std_logic_vector(unsigned(p_shl1_cast_fu_216_p1) + unsigned(p_shl_cast_fu_204_p1));
end behav;

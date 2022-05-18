<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="PS2_Clk" />
        <signal name="PS2_Data" />
        <signal name="Clk" />
        <signal name="XLXN_8" />
        <signal name="XLXN_11" />
        <signal name="SPI_MOSI" />
        <signal name="SPI_MISO" />
        <signal name="SPI_SCK" />
        <signal name="DAC_CS" />
        <signal name="DAC_CLR" />
        <signal name="SPI_SS_B" />
        <signal name="AMP_CS" />
        <signal name="AD_CONV" />
        <signal name="SF_CE0" />
        <signal name="FPGA_INIT_B" />
        <signal name="XLXN_26(3:0)" />
        <signal name="XLXN_27(3:0)" />
        <signal name="Res" />
        <signal name="XLXN_30(7:0)" />
        <signal name="Busy" />
        <signal name="XLXN_37(11:0)" />
        <signal name="VGA_HS" />
        <signal name="VGA_VS" />
        <signal name="XLXN_55" />
        <signal name="VGA_R" />
        <signal name="VGA_G" />
        <signal name="VGA_B" />
        <signal name="XLXN_62" />
        <signal name="XLXN_63(7:0)" />
        <signal name="XLXN_64" />
        <signal name="XLXN_66" />
        <signal name="XLXN_67(3:0)" />
        <signal name="XLXN_68(3:0)" />
        <port polarity="Input" name="PS2_Clk" />
        <port polarity="Input" name="PS2_Data" />
        <port polarity="Input" name="Clk" />
        <port polarity="Output" name="SPI_MOSI" />
        <port polarity="Input" name="SPI_MISO" />
        <port polarity="Output" name="SPI_SCK" />
        <port polarity="Output" name="DAC_CS" />
        <port polarity="Output" name="DAC_CLR" />
        <port polarity="Output" name="SPI_SS_B" />
        <port polarity="Output" name="AMP_CS" />
        <port polarity="Output" name="AD_CONV" />
        <port polarity="Output" name="SF_CE0" />
        <port polarity="Output" name="FPGA_INIT_B" />
        <port polarity="Input" name="Res" />
        <port polarity="Output" name="Busy" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
        <blockdef name="PS2_Kbd">
            <timestamp>2022-4-2T13:37:18</timestamp>
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="KeyboardMapper">
            <timestamp>2022-4-2T15:8:47</timestamp>
            <rect width="336" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="400" y="-300" height="24" />
            <line x2="464" y1="-288" y2="-288" x1="400" />
        </blockdef>
        <blockdef name="SawGenerator">
            <timestamp>2022-3-28T21:1:36</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="DACWrite">
            <timestamp>2022-3-28T20:50:15</timestamp>
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
            <line x2="448" y1="32" y2="32" x1="384" />
            <line x2="448" y1="96" y2="96" x1="384" />
            <line x2="448" y1="-544" y2="-544" x1="384" />
            <line x2="448" y1="-416" y2="-416" x1="384" />
            <line x2="384" y1="-480" y2="-480" x1="448" />
            <line x2="448" y1="-352" y2="-352" x1="384" />
            <line x2="448" y1="-288" y2="-288" x1="384" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="320" x="64" y="-576" height="760" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="160" y2="160" x1="64" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <blockdef name="VGAtxt48x20">
            <timestamp>2022-4-26T18:57:24</timestamp>
            <rect width="304" x="64" y="-640" height="728" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-448" y2="-448" x1="64" />
            <line x2="0" y1="-384" y2="-384" x1="64" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <line x2="0" y1="64" y2="64" x1="64" />
            <line x2="0" y1="0" y2="0" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="432" y1="-352" y2="-352" x1="368" />
            <line x2="432" y1="-608" y2="-608" x1="368" />
            <line x2="432" y1="-544" y2="-544" x1="368" />
            <line x2="432" y1="-480" y2="-480" x1="368" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="VGAMapper">
            <timestamp>2022-4-26T19:49:51</timestamp>
            <rect width="336" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <block symbolname="PS2_Kbd" name="XLXI_1">
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="Clk" name="Clk_50MHz" />
            <blockpin signalname="XLXN_8" name="E0" />
            <blockpin signalname="XLXN_64" name="F0" />
            <blockpin signalname="XLXN_66" name="DO_Rdy" />
            <blockpin signalname="XLXN_30(7:0)" name="DO(7:0)" />
            <blockpin signalname="Clk" name="Clk_Sys" />
        </block>
        <block symbolname="KeyboardMapper" name="XLXI_2">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="XLXN_8" name="E0" />
            <blockpin signalname="XLXN_64" name="F0" />
            <blockpin signalname="XLXN_66" name="Data_In_Ready" />
            <blockpin signalname="XLXN_30(7:0)" name="Data_In(7:0)" />
            <blockpin signalname="XLXN_67(3:0)" name="Code_Out(3:0)" />
        </block>
        <block symbolname="SawGenerator" name="XLXI_3">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="XLXN_67(3:0)" name="Code(3:0)" />
            <blockpin signalname="XLXN_11" name="Sample_Rdy" />
            <blockpin signalname="XLXN_37(11:0)" name="Sample(11:0)" />
        </block>
        <block symbolname="constant" name="XLXI_5">
            <attr value="3" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_26(3:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_6">
            <attr value="F" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_27(3:0)" name="O" />
        </block>
        <block symbolname="DACWrite" name="XLXI_4">
            <blockpin signalname="Res" name="Reset" />
            <blockpin signalname="XLXN_11" name="Start" />
            <blockpin signalname="SPI_MISO" name="SPI_MISO" />
            <blockpin signalname="XLXN_26(3:0)" name="Cmd(3:0)" />
            <blockpin signalname="XLXN_27(3:0)" name="Addr(3:0)" />
            <blockpin signalname="XLXN_37(11:0)" name="DATA(11:0)" />
            <blockpin signalname="DAC_CLR" name="DAC_CLR" />
            <blockpin signalname="DAC_CS" name="DAC_CS" />
            <blockpin signalname="SPI_MOSI" name="SPI_MOSI" />
            <blockpin signalname="SPI_SCK" name="SPI_SCK" />
            <blockpin signalname="SPI_SS_B" name="SPI_SS_B" />
            <blockpin signalname="AMP_CS" name="AMP_CS" />
            <blockpin signalname="AD_CONV" name="AD_CONV" />
            <blockpin signalname="SF_CE0" name="SF_CE0" />
            <blockpin signalname="FPGA_INIT_B" name="FPGA_INIT_B" />
            <blockpin signalname="Busy" name="Busy" />
            <blockpin signalname="Clk" name="Clk_50MHz" />
            <blockpin signalname="Clk" name="Clk_Sys" />
        </block>
        <block symbolname="VGAtxt48x20" name="XLXI_7">
            <blockpin signalname="XLXN_63(7:0)" name="Char_DI(7:0)" />
            <blockpin name="Home" />
            <blockpin name="NewLine" />
            <blockpin name="Goto00" />
            <blockpin signalname="Clk" name="Clk_Sys" />
            <blockpin signalname="Clk" name="Clk_50MHz" />
            <blockpin name="CursorOn" />
            <blockpin name="ScrollEn" />
            <blockpin name="ScrollClear" />
            <blockpin name="Busy" />
            <blockpin signalname="VGA_HS" name="VGA_HS" />
            <blockpin signalname="VGA_VS" name="VGA_VS" />
            <blockpin signalname="XLXN_55" name="VGA_RGB" />
            <blockpin signalname="XLXN_62" name="Char_WE" />
        </block>
        <block symbolname="buf" name="XLXI_11">
            <blockpin signalname="XLXN_55" name="I" />
            <blockpin signalname="VGA_R" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_12">
            <blockpin signalname="XLXN_55" name="I" />
            <blockpin signalname="VGA_G" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_13">
            <blockpin signalname="XLXN_55" name="I" />
            <blockpin signalname="VGA_B" name="O" />
        </block>
        <block symbolname="VGAMapper" name="XLXI_14">
            <blockpin signalname="XLXN_64" name="F0" />
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="XLXN_66" name="Data_In_Ready" />
            <blockpin signalname="XLXN_67(3:0)" name="Code(3:0)" />
            <blockpin signalname="XLXN_62" name="Char_Ready" />
            <blockpin signalname="XLXN_63(7:0)" name="Char_Out(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="592" y="1424" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1216" y="1456" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1904" y="1280" name="XLXI_3" orien="R0">
        </instance>
        <branch name="PS2_Clk">
            <wire x2="592" y1="1200" y2="1200" x1="384" />
        </branch>
        <branch name="PS2_Data">
            <wire x2="592" y1="1264" y2="1264" x1="400" />
        </branch>
        <branch name="Clk">
            <wire x2="448" y1="1328" y2="1328" x1="304" />
            <wire x2="528" y1="1328" y2="1328" x1="448" />
            <wire x2="528" y1="1328" y2="1392" x1="528" />
            <wire x2="592" y1="1392" y2="1392" x1="528" />
            <wire x2="592" y1="1328" y2="1328" x1="528" />
            <wire x2="448" y1="1328" y2="1488" x1="448" />
            <wire x2="1040" y1="1488" y2="1488" x1="448" />
            <wire x2="1744" y1="1488" y2="1488" x1="1040" />
            <wire x2="1744" y1="1488" y2="1744" x1="1744" />
            <wire x2="2576" y1="1744" y2="1744" x1="1744" />
            <wire x2="2656" y1="1744" y2="1744" x1="2576" />
            <wire x2="2576" y1="1744" y2="1808" x1="2576" />
            <wire x2="2656" y1="1808" y2="1808" x1="2576" />
            <wire x2="1040" y1="1168" y2="1488" x1="1040" />
            <wire x2="1168" y1="1168" y2="1168" x1="1040" />
            <wire x2="1216" y1="1168" y2="1168" x1="1168" />
            <wire x2="1744" y1="400" y2="400" x1="1168" />
            <wire x2="1168" y1="400" y2="1168" x1="1168" />
            <wire x2="1744" y1="1184" y2="1488" x1="1744" />
            <wire x2="1808" y1="1184" y2="1184" x1="1744" />
            <wire x2="1904" y1="1184" y2="1184" x1="1808" />
            <wire x2="1808" y1="784" y2="1184" x1="1808" />
            <wire x2="2464" y1="784" y2="784" x1="1808" />
            <wire x2="2560" y1="784" y2="784" x1="2464" />
            <wire x2="2464" y1="784" y2="848" x1="2464" />
            <wire x2="2560" y1="848" y2="848" x1="2464" />
        </branch>
        <iomarker fontsize="28" x="384" y="1200" name="PS2_Clk" orien="R180" />
        <iomarker fontsize="28" x="400" y="1264" name="PS2_Data" orien="R180" />
        <branch name="XLXN_8">
            <wire x2="1072" y1="1264" y2="1264" x1="976" />
            <wire x2="1072" y1="1232" y2="1264" x1="1072" />
            <wire x2="1216" y1="1232" y2="1232" x1="1072" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="2400" y1="1184" y2="1184" x1="2288" />
            <wire x2="2400" y1="1104" y2="1184" x1="2400" />
            <wire x2="2656" y1="1104" y2="1104" x1="2400" />
        </branch>
        <branch name="SPI_MOSI">
            <wire x2="3136" y1="1104" y2="1104" x1="3104" />
        </branch>
        <iomarker fontsize="28" x="3136" y="1104" name="SPI_MOSI" orien="R0" />
        <branch name="SPI_MISO">
            <wire x2="3136" y1="1168" y2="1168" x1="3104" />
        </branch>
        <iomarker fontsize="28" x="3136" y="1168" name="SPI_MISO" orien="R0" />
        <branch name="SPI_SCK">
            <wire x2="3136" y1="1232" y2="1232" x1="3104" />
        </branch>
        <iomarker fontsize="28" x="3136" y="1232" name="SPI_SCK" orien="R0" />
        <branch name="DAC_CS">
            <wire x2="3136" y1="1296" y2="1296" x1="3104" />
        </branch>
        <iomarker fontsize="28" x="3136" y="1296" name="DAC_CS" orien="R0" />
        <branch name="DAC_CLR">
            <wire x2="3136" y1="1360" y2="1360" x1="3104" />
        </branch>
        <iomarker fontsize="28" x="3136" y="1360" name="DAC_CLR" orien="R0" />
        <branch name="SPI_SS_B">
            <wire x2="3136" y1="1424" y2="1424" x1="3104" />
        </branch>
        <iomarker fontsize="28" x="3136" y="1424" name="SPI_SS_B" orien="R0" />
        <branch name="AMP_CS">
            <wire x2="3136" y1="1488" y2="1488" x1="3104" />
        </branch>
        <iomarker fontsize="28" x="3136" y="1488" name="AMP_CS" orien="R0" />
        <branch name="AD_CONV">
            <wire x2="3136" y1="1552" y2="1552" x1="3104" />
        </branch>
        <iomarker fontsize="28" x="3136" y="1552" name="AD_CONV" orien="R0" />
        <branch name="SF_CE0">
            <wire x2="3136" y1="1616" y2="1616" x1="3104" />
        </branch>
        <iomarker fontsize="28" x="3136" y="1616" name="SF_CE0" orien="R0" />
        <branch name="FPGA_INIT_B">
            <wire x2="3136" y1="1680" y2="1680" x1="3104" />
        </branch>
        <iomarker fontsize="28" x="3136" y="1680" name="FPGA_INIT_B" orien="R0" />
        <branch name="XLXN_26(3:0)">
            <wire x2="2640" y1="1152" y2="1152" x1="2576" />
            <wire x2="2640" y1="1152" y2="1168" x1="2640" />
            <wire x2="2656" y1="1168" y2="1168" x1="2640" />
        </branch>
        <instance x="2432" y="1120" name="XLXI_5" orien="R0">
        </instance>
        <instance x="2432" y="1216" name="XLXI_6" orien="R0">
        </instance>
        <branch name="XLXN_27(3:0)">
            <wire x2="2608" y1="1248" y2="1248" x1="2576" />
            <wire x2="2608" y1="1232" y2="1248" x1="2608" />
            <wire x2="2656" y1="1232" y2="1232" x1="2608" />
        </branch>
        <branch name="Res">
            <wire x2="2656" y1="1680" y2="1680" x1="320" />
        </branch>
        <iomarker fontsize="28" x="320" y="1680" name="Res" orien="R180" />
        <branch name="XLXN_30(7:0)">
            <wire x2="1088" y1="1200" y2="1200" x1="976" />
            <wire x2="1088" y1="1200" y2="1424" x1="1088" />
            <wire x2="1216" y1="1424" y2="1424" x1="1088" />
        </branch>
        <instance x="2656" y="1648" name="XLXI_4" orien="R0">
        </instance>
        <branch name="Busy">
            <wire x2="3136" y1="1744" y2="1744" x1="3104" />
        </branch>
        <branch name="XLXN_37(11:0)">
            <wire x2="2416" y1="1248" y2="1248" x1="2288" />
            <wire x2="2416" y1="1248" y2="1296" x1="2416" />
            <wire x2="2656" y1="1296" y2="1296" x1="2416" />
        </branch>
        <iomarker fontsize="28" x="3136" y="1744" name="Busy" orien="R0" />
        <branch name="VGA_HS">
            <wire x2="3056" y1="176" y2="176" x1="2992" />
        </branch>
        <branch name="VGA_VS">
            <wire x2="3056" y1="240" y2="240" x1="2992" />
        </branch>
        <branch name="XLXN_55">
            <wire x2="3088" y1="304" y2="304" x1="2992" />
            <wire x2="3104" y1="304" y2="304" x1="3088" />
            <wire x2="3088" y1="304" y2="368" x1="3088" />
            <wire x2="3104" y1="368" y2="368" x1="3088" />
            <wire x2="3088" y1="368" y2="432" x1="3088" />
            <wire x2="3104" y1="432" y2="432" x1="3088" />
        </branch>
        <branch name="VGA_R">
            <wire x2="3344" y1="304" y2="304" x1="3328" />
        </branch>
        <branch name="VGA_G">
            <wire x2="3344" y1="368" y2="368" x1="3328" />
        </branch>
        <branch name="VGA_B">
            <wire x2="3344" y1="432" y2="432" x1="3328" />
        </branch>
        <instance x="2560" y="784" name="XLXI_7" orien="R0">
        </instance>
        <iomarker fontsize="28" x="3056" y="176" name="VGA_HS" orien="R0" />
        <iomarker fontsize="28" x="3056" y="240" name="VGA_VS" orien="R0" />
        <instance x="3104" y="336" name="XLXI_11" orien="R0" />
        <instance x="3104" y="400" name="XLXI_12" orien="R0" />
        <instance x="3104" y="464" name="XLXI_13" orien="R0" />
        <iomarker fontsize="28" x="3344" y="368" name="VGA_G" orien="R0" />
        <iomarker fontsize="28" x="3344" y="432" name="VGA_B" orien="R0" />
        <iomarker fontsize="28" x="3344" y="304" name="VGA_R" orien="R0" />
        <instance x="1744" y="560" name="XLXI_14" orien="R0">
        </instance>
        <branch name="XLXN_62">
            <wire x2="2384" y1="336" y2="336" x1="2208" />
            <wire x2="2384" y1="240" y2="336" x1="2384" />
            <wire x2="2560" y1="240" y2="240" x1="2384" />
        </branch>
        <branch name="XLXN_63(7:0)">
            <wire x2="2336" y1="528" y2="528" x1="2208" />
            <wire x2="2336" y1="176" y2="528" x1="2336" />
            <wire x2="2560" y1="176" y2="176" x1="2336" />
        </branch>
        <branch name="XLXN_64">
            <wire x2="1072" y1="1328" y2="1328" x1="976" />
            <wire x2="1072" y1="1296" y2="1328" x1="1072" />
            <wire x2="1136" y1="1296" y2="1296" x1="1072" />
            <wire x2="1216" y1="1296" y2="1296" x1="1136" />
            <wire x2="1744" y1="336" y2="336" x1="1136" />
            <wire x2="1136" y1="336" y2="1296" x1="1136" />
        </branch>
        <branch name="XLXN_66">
            <wire x2="1072" y1="1392" y2="1392" x1="976" />
            <wire x2="1072" y1="1360" y2="1392" x1="1072" />
            <wire x2="1200" y1="1360" y2="1360" x1="1072" />
            <wire x2="1216" y1="1360" y2="1360" x1="1200" />
            <wire x2="1744" y1="464" y2="464" x1="1200" />
            <wire x2="1200" y1="464" y2="1360" x1="1200" />
        </branch>
        <iomarker fontsize="28" x="304" y="1328" name="Clk" orien="R180" />
        <branch name="XLXN_67(3:0)">
            <wire x2="1728" y1="1168" y2="1168" x1="1680" />
            <wire x2="1728" y1="1168" y2="1248" x1="1728" />
            <wire x2="1904" y1="1248" y2="1248" x1="1728" />
            <wire x2="1744" y1="528" y2="528" x1="1728" />
            <wire x2="1728" y1="528" y2="1168" x1="1728" />
        </branch>
    </sheet>
</drawing>
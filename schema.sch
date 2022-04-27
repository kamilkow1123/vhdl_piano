<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
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
        <signal name="XLXN_3(3:0)" />
        <signal name="XLXN_4(3:0)" />
        <signal name="XLXN_6(3:0)" />
        <signal name="Clk" />
        <signal name="Res" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9(11:0)" />
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
        <port polarity="Input" name="Clk" />
        <port polarity="Input" name="Res" />
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
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <block symbolname="DACWrite" name="XLXI_4">
            <blockpin signalname="Res" name="Reset" />
            <blockpin signalname="XLXN_8" name="Start" />
            <blockpin signalname="SPI_MISO" name="SPI_MISO" />
            <blockpin signalname="XLXN_3(3:0)" name="Cmd(3:0)" />
            <blockpin signalname="XLXN_4(3:0)" name="Addr(3:0)" />
            <blockpin signalname="XLXN_9(11:0)" name="DATA(11:0)" />
            <blockpin signalname="DAC_CLR" name="DAC_CLR" />
            <blockpin signalname="DAC_CS" name="DAC_CS" />
            <blockpin signalname="SPI_MOSI" name="SPI_MOSI" />
            <blockpin signalname="SPI_SCK" name="SPI_SCK" />
            <blockpin signalname="SPI_SS_B" name="SPI_SS_B" />
            <blockpin signalname="AMP_CS" name="AMP_CS" />
            <blockpin signalname="AD_CONV" name="AD_CONV" />
            <blockpin signalname="SF_CE0" name="SF_CE0" />
            <blockpin signalname="FPGA_INIT_B" name="FPGA_INIT_B" />
            <blockpin name="Busy" />
            <blockpin signalname="Clk" name="Clk_50MHz" />
            <blockpin signalname="Clk" name="Clk_Sys" />
        </block>
        <block symbolname="SawGenerator" name="XLXI_5">
            <blockpin signalname="Clk" name="Clk" />
            <blockpin signalname="XLXN_6(3:0)" name="Code(3:0)" />
            <blockpin signalname="XLXN_8" name="Sample_Rdy" />
            <blockpin signalname="XLXN_9(11:0)" name="Sample(11:0)" />
        </block>
        <block symbolname="constant" name="XLXI_6">
            <attr value="3" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_3(3:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_7">
            <attr value="F" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_4(3:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_8">
            <attr value="2" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_6(3:0)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1888" y="1296" name="XLXI_4" orien="R0">
        </instance>
        <branch name="SPI_MOSI">
            <wire x2="2368" y1="752" y2="752" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2368" y="752" name="SPI_MOSI" orien="R0" />
        <branch name="SPI_MISO">
            <wire x2="2368" y1="816" y2="816" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2368" y="816" name="SPI_MISO" orien="R0" />
        <branch name="SPI_SCK">
            <wire x2="2368" y1="880" y2="880" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2368" y="880" name="SPI_SCK" orien="R0" />
        <branch name="DAC_CS">
            <wire x2="2368" y1="944" y2="944" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2368" y="944" name="DAC_CS" orien="R0" />
        <branch name="DAC_CLR">
            <wire x2="2368" y1="1008" y2="1008" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2368" y="1008" name="DAC_CLR" orien="R0" />
        <branch name="SPI_SS_B">
            <wire x2="2368" y1="1072" y2="1072" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2368" y="1072" name="SPI_SS_B" orien="R0" />
        <branch name="AMP_CS">
            <wire x2="2368" y1="1136" y2="1136" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2368" y="1136" name="AMP_CS" orien="R0" />
        <branch name="AD_CONV">
            <wire x2="2368" y1="1200" y2="1200" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2368" y="1200" name="AD_CONV" orien="R0" />
        <branch name="SF_CE0">
            <wire x2="2368" y1="1264" y2="1264" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2368" y="1264" name="SF_CE0" orien="R0" />
        <branch name="FPGA_INIT_B">
            <wire x2="2368" y1="1328" y2="1328" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2368" y="1328" name="FPGA_INIT_B" orien="R0" />
        <instance x="992" y="1152" name="XLXI_5" orien="R0">
        </instance>
        <instance x="1696" y="784" name="XLXI_6" orien="R0">
        </instance>
        <instance x="1696" y="864" name="XLXI_7" orien="R0">
        </instance>
        <branch name="XLXN_3(3:0)">
            <wire x2="1888" y1="816" y2="816" x1="1840" />
        </branch>
        <branch name="XLXN_4(3:0)">
            <wire x2="1856" y1="896" y2="896" x1="1840" />
            <wire x2="1856" y1="880" y2="896" x1="1856" />
            <wire x2="1888" y1="880" y2="880" x1="1856" />
        </branch>
        <branch name="XLXN_6(3:0)">
            <wire x2="896" y1="1120" y2="1120" x1="880" />
            <wire x2="992" y1="1120" y2="1120" x1="896" />
        </branch>
        <branch name="Clk">
            <wire x2="688" y1="1056" y2="1056" x1="592" />
            <wire x2="992" y1="1056" y2="1056" x1="688" />
            <wire x2="688" y1="1056" y2="1392" x1="688" />
            <wire x2="1696" y1="1392" y2="1392" x1="688" />
            <wire x2="1888" y1="1392" y2="1392" x1="1696" />
            <wire x2="1696" y1="1392" y2="1456" x1="1696" />
            <wire x2="1888" y1="1456" y2="1456" x1="1696" />
        </branch>
        <iomarker fontsize="28" x="592" y="1056" name="Clk" orien="R180" />
        <instance x="736" y="1088" name="XLXI_8" orien="R0">
        </instance>
        <branch name="Res">
            <wire x2="1872" y1="1328" y2="1328" x1="576" />
            <wire x2="1888" y1="1328" y2="1328" x1="1872" />
        </branch>
        <iomarker fontsize="28" x="576" y="1328" name="Res" orien="R180" />
        <branch name="XLXN_8">
            <wire x2="1632" y1="1056" y2="1056" x1="1376" />
            <wire x2="1632" y1="752" y2="1056" x1="1632" />
            <wire x2="1888" y1="752" y2="752" x1="1632" />
        </branch>
        <branch name="XLXN_9(11:0)">
            <wire x2="1648" y1="1120" y2="1120" x1="1376" />
            <wire x2="1648" y1="944" y2="1120" x1="1648" />
            <wire x2="1888" y1="944" y2="944" x1="1648" />
        </branch>
    </sheet>
</drawing>
library verilog;
use verilog.vl_types.all;
entity \register\ is
    port(
        RWE             : in     vl_logic;
        WA              : in     vl_logic_vector(4 downto 0);
        WD              : in     vl_logic_vector(31 downto 0);
        RA1             : in     vl_logic_vector(4 downto 0);
        RA2             : in     vl_logic_vector(4 downto 0);
        clk             : in     vl_logic;
        RD1             : out    vl_logic_vector(31 downto 0);
        RD2             : out    vl_logic_vector(31 downto 0)
    );
end \register\;

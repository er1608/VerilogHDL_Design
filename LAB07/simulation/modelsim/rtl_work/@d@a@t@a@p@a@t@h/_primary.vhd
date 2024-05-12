library verilog;
use verilog.vl_types.all;
entity DATAPATH is
    port(
        clk             : in     vl_logic;
        Inst            : in     vl_logic_vector(31 downto 0);
        is0             : out    vl_logic;
        WD              : out    vl_logic_vector(31 downto 0);
        ReadData        : out    vl_logic_vector(31 downto 0)
    );
end DATAPATH;

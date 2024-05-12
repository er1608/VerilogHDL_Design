library verilog;
use verilog.vl_types.all;
entity edge_dff is
    port(
        d               : in     vl_logic;
        clk             : in     vl_logic;
        pre             : in     vl_logic;
        clr             : in     vl_logic;
        qout            : out    vl_logic;
        qout_not        : out    vl_logic
    );
end edge_dff;

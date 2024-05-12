library verilog;
use verilog.vl_types.all;
entity edge_dff is
    port(
        q               : out    vl_logic;
        d               : in     vl_logic;
        clk             : in     vl_logic;
        clear           : in     vl_logic
    );
end edge_dff;

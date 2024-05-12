library verilog;
use verilog.vl_types.all;
entity edge_dff_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        clr             : in     vl_logic;
        d               : in     vl_logic;
        pre             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end edge_dff_vlg_sample_tst;

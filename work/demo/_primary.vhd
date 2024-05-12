library verilog;
use verilog.vl_types.all;
entity demo is
    port(
        clk             : in     vl_logic;
        D               : in     vl_logic;
        \out\           : out    vl_logic
    );
end demo;

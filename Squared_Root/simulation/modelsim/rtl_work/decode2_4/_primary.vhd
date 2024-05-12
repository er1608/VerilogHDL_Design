library verilog;
use verilog.vl_types.all;
entity decode2_4 is
    port(
        y0              : out    vl_logic;
        y1              : out    vl_logic;
        y2              : out    vl_logic;
        y3              : out    vl_logic;
        s0              : in     vl_logic;
        s1              : in     vl_logic
    );
end decode2_4;

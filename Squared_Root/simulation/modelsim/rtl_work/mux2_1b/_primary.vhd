library verilog;
use verilog.vl_types.all;
entity mux2_1b is
    port(
        Output          : out    vl_logic;
        InA             : in     vl_logic;
        InB             : in     vl_logic;
        Sel             : in     vl_logic
    );
end mux2_1b;

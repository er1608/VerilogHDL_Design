library verilog;
use verilog.vl_types.all;
entity HA is
    port(
        Cin             : in     vl_logic;
        Q               : in     vl_logic;
        D               : out    vl_logic;
        Cout            : out    vl_logic
    );
end HA;

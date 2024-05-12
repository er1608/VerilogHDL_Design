library verilog;
use verilog.vl_types.all;
entity BUF5bit is
    port(
        \out\           : out    vl_logic_vector(4 downto 0);
        \in\            : in     vl_logic_vector(4 downto 0);
        s               : in     vl_logic
    );
end BUF5bit;

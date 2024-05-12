library verilog;
use verilog.vl_types.all;
entity shift_right_3b is
    port(
        \Out\           : out    vl_logic_vector(4 downto 0);
        DataIn          : in     vl_logic_vector(4 downto 0)
    );
end shift_right_3b;

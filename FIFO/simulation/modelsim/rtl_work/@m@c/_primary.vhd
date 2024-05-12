library verilog;
use verilog.vl_types.all;
entity MC is
    port(
        \select\        : in     vl_logic;
        I               : in     vl_logic_vector(3 downto 0);
        W               : in     vl_logic;
        O               : out    vl_logic_vector(3 downto 0);
        clear           : in     vl_logic
    );
end MC;

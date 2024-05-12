library verilog;
use verilog.vl_types.all;
entity MIN is
    port(
        \out\           : out    vl_logic_vector(4 downto 0);
        A               : in     vl_logic_vector(4 downto 0);
        B               : in     vl_logic_vector(4 downto 0);
        \select\        : in     vl_logic
    );
end MIN;

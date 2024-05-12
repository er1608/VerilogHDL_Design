library verilog;
use verilog.vl_types.all;
entity mux2_to_1 is
    port(
        \out\           : out    vl_logic_vector(1 downto 0);
        i0              : in     vl_logic_vector(1 downto 0);
        i1              : in     vl_logic_vector(1 downto 0);
        s               : in     vl_logic
    );
end mux2_to_1;

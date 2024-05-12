library verilog;
use verilog.vl_types.all;
entity mux2_5b is
    port(
        \out\           : out    vl_logic_vector(4 downto 0);
        InA             : in     vl_logic_vector(4 downto 0);
        InB             : in     vl_logic_vector(4 downto 0);
        Sel             : in     vl_logic
    );
end mux2_5b;

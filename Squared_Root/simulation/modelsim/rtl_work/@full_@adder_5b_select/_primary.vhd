library verilog;
use verilog.vl_types.all;
entity Full_Adder_5b_select is
    port(
        \out\           : out    vl_logic_vector(4 downto 0);
        inA             : in     vl_logic_vector(4 downto 0);
        inB             : in     vl_logic_vector(4 downto 0);
        \select\        : in     vl_logic
    );
end Full_Adder_5b_select;

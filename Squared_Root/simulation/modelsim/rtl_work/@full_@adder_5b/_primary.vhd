library verilog;
use verilog.vl_types.all;
entity Full_Adder_5b is
    port(
        sum             : out    vl_logic_vector(4 downto 0);
        carry           : out    vl_logic;
        inA             : in     vl_logic_vector(4 downto 0);
        inB             : in     vl_logic_vector(4 downto 0)
    );
end Full_Adder_5b;

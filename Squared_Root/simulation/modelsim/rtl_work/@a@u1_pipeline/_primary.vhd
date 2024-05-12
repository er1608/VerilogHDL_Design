library verilog;
use verilog.vl_types.all;
entity AU1_pipeline is
    port(
        \out\           : out    vl_logic_vector(4 downto 0);
        InA             : in     vl_logic_vector(4 downto 0);
        InB             : in     vl_logic_vector(4 downto 0);
        op              : in     vl_logic_vector(1 downto 0)
    );
end AU1_pipeline;

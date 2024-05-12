library verilog;
use verilog.vl_types.all;
entity AU2_pipeline_vlg_sample_tst is
    port(
        InA             : in     vl_logic_vector(4 downto 0);
        InB             : in     vl_logic_vector(4 downto 0);
        op              : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end AU2_pipeline_vlg_sample_tst;

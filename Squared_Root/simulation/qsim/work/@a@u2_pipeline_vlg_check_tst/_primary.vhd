library verilog;
use verilog.vl_types.all;
entity AU2_pipeline_vlg_check_tst is
    port(
        \out\           : in     vl_logic_vector(4 downto 0);
        sampler_rx      : in     vl_logic
    );
end AU2_pipeline_vlg_check_tst;

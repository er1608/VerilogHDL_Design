library verilog;
use verilog.vl_types.all;
entity counter_vlg_sample_tst is
    port(
        En              : in     vl_logic;
        clear           : in     vl_logic;
        clock           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end counter_vlg_sample_tst;

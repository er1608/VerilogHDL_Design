library verilog;
use verilog.vl_types.all;
entity RAM_vlg_check_tst is
    port(
        O               : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end RAM_vlg_check_tst;

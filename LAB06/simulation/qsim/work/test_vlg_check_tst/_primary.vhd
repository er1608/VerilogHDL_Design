library verilog;
use verilog.vl_types.all;
entity test_vlg_check_tst is
    port(
        Cout            : in     vl_logic;
        Sum             : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end test_vlg_check_tst;

library verilog;
use verilog.vl_types.all;
entity counter_vlg_check_tst is
    port(
        Q               : in     vl_logic_vector(1 downto 0);
        carry           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end counter_vlg_check_tst;

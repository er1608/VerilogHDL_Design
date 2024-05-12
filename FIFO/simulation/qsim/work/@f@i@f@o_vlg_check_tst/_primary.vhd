library verilog;
use verilog.vl_types.all;
entity FIFO_vlg_check_tst is
    port(
        A               : in     vl_logic_vector(1 downto 0);
        Empty           : in     vl_logic;
        Full            : in     vl_logic;
        O               : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end FIFO_vlg_check_tst;

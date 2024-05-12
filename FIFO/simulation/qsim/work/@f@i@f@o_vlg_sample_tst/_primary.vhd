library verilog;
use verilog.vl_types.all;
entity FIFO_vlg_sample_tst is
    port(
        En              : in     vl_logic;
        I               : in     vl_logic_vector(3 downto 0);
        RW              : in     vl_logic;
        clear           : in     vl_logic;
        clk             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end FIFO_vlg_sample_tst;

library verilog;
use verilog.vl_types.all;
entity Control_vlg_sample_tst is
    port(
        opcode          : in     vl_logic_vector(5 downto 0);
        sampler_tx      : out    vl_logic
    );
end Control_vlg_sample_tst;

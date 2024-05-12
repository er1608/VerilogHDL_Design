library verilog;
use verilog.vl_types.all;
entity RAM_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(1 downto 0);
        CS              : in     vl_logic;
        I               : in     vl_logic_vector(3 downto 0);
        RWS             : in     vl_logic;
        clear           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end RAM_vlg_sample_tst;

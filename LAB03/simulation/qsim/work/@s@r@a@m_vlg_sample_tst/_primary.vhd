library verilog;
use verilog.vl_types.all;
entity SRAM_vlg_sample_tst is
    port(
        Address         : in     vl_logic_vector(31 downto 0);
        RE              : in     vl_logic;
        WD              : in     vl_logic_vector(31 downto 0);
        WE              : in     vl_logic;
        clk             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end SRAM_vlg_sample_tst;

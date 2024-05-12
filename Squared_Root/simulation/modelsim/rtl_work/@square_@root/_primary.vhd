library verilog;
use verilog.vl_types.all;
entity Square_Root is
    port(
        In1             : in     vl_logic_vector(4 downto 0);
        In2             : in     vl_logic_vector(4 downto 0);
        clk             : in     vl_logic;
        start           : in     vl_logic;
        \out\           : out    vl_logic_vector(4 downto 0);
        clear           : in     vl_logic
    );
end Square_Root;

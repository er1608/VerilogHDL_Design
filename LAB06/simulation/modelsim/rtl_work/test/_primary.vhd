library verilog;
use verilog.vl_types.all;
entity test is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        D               : out    vl_logic_vector(2 downto 0)
    );
end test;

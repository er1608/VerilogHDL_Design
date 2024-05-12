library verilog;
use verilog.vl_types.all;
entity SRAM is
    port(
        WE              : in     vl_logic;
        RE              : in     vl_logic;
        clk             : in     vl_logic;
        RD              : out    vl_logic_vector(31 downto 0);
        Address         : in     vl_logic_vector(31 downto 0);
        WD              : in     vl_logic_vector(31 downto 0)
    );
end SRAM;

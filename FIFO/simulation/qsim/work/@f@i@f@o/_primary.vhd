library verilog;
use verilog.vl_types.all;
entity FIFO is
    port(
        clear           : in     vl_logic;
        clk             : in     vl_logic;
        En              : in     vl_logic;
        RW              : in     vl_logic;
        I               : in     vl_logic_vector(3 downto 0);
        O               : out    vl_logic_vector(3 downto 0);
        Empty           : out    vl_logic;
        Full            : out    vl_logic;
        A               : out    vl_logic_vector(1 downto 0)
    );
end FIFO;

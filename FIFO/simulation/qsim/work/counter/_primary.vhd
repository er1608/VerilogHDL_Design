library verilog;
use verilog.vl_types.all;
entity counter is
    port(
        En              : in     vl_logic;
        Q               : out    vl_logic_vector(1 downto 0);
        clock           : in     vl_logic;
        clear           : in     vl_logic;
        carry           : out    vl_logic
    );
end counter;

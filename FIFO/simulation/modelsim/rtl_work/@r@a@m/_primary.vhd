library verilog;
use verilog.vl_types.all;
entity RAM is
    port(
        A               : in     vl_logic_vector(1 downto 0);
        I               : in     vl_logic_vector(3 downto 0);
        RWS             : in     vl_logic;
        CS              : in     vl_logic;
        O               : out    vl_logic_vector(3 downto 0);
        clear           : in     vl_logic
    );
end RAM;

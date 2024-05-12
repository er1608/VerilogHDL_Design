library verilog;
use verilog.vl_types.all;
entity next_state is
    port(
        \out\           : out    vl_logic_vector(3 downto 0);
        start           : in     vl_logic;
        S               : in     vl_logic_vector(3 downto 0)
    );
end next_state;

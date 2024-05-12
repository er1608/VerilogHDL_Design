library verilog;
use verilog.vl_types.all;
entity curr_state is
    port(
        \out\           : out    vl_logic_vector(3 downto 0);
        clk             : in     vl_logic;
        DataIn          : in     vl_logic_vector(3 downto 0);
        clear           : in     vl_logic
    );
end curr_state;

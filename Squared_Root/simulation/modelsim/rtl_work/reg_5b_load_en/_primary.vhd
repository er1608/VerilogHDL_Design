library verilog;
use verilog.vl_types.all;
entity reg_5b_load_en is
    port(
        out_dff         : out    vl_logic_vector(4 downto 0);
        clk             : in     vl_logic;
        DataIn          : in     vl_logic_vector(4 downto 0);
        En              : in     vl_logic;
        clear           : in     vl_logic
    );
end reg_5b_load_en;

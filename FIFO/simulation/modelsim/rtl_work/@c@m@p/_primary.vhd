library verilog;
use verilog.vl_types.all;
entity CMP is
    port(
        I1              : in     vl_logic_vector(1 downto 0);
        I2              : in     vl_logic_vector(1 downto 0);
        \out\           : out    vl_logic
    );
end CMP;

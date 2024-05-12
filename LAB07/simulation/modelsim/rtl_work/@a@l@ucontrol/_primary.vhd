library verilog;
use verilog.vl_types.all;
entity ALUcontrol is
    port(
        ALUOp           : in     vl_logic_vector(1 downto 0);
        control         : out    vl_logic_vector(2 downto 0)
    );
end ALUcontrol;

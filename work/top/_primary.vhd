library verilog;
use verilog.vl_types.all;
entity top is
    generic(
        CLK_CYC         : integer := 50
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CLK_CYC : constant is 1;
end top;

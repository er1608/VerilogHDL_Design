library verilog;
use verilog.vl_types.all;
entity Testbench is
    generic(
        clock           : integer := 10
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of clock : constant is 1;
end Testbench;

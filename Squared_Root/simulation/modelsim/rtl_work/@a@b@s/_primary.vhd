library verilog;
use verilog.vl_types.all;
entity \ABS\ is
    generic(
        z               : vl_logic_vector(0 to 4) := (Hi0, Hi0, Hi0, Hi0, Hi0)
    );
    port(
        \out\           : out    vl_logic_vector(4 downto 0);
        A               : in     vl_logic_vector(4 downto 0);
        \select\        : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of z : constant is 1;
end \ABS\;

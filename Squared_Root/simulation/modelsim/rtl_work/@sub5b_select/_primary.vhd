library verilog;
use verilog.vl_types.all;
entity Sub5b_select is
    generic(
        t               : vl_logic_vector(0 to 4) := (Hi0, Hi0, Hi0, Hi0, Hi1)
    );
    port(
        \out\           : out    vl_logic_vector(4 downto 0);
        InA             : in     vl_logic_vector(4 downto 0);
        InB             : in     vl_logic_vector(4 downto 0);
        \select\        : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of t : constant is 1;
end Sub5b_select;

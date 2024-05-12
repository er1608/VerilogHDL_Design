library verilog;
use verilog.vl_types.all;
entity Control_Output is
    port(
        R1_tri          : out    vl_logic;
        R2_tri          : out    vl_logic;
        R1_e            : out    vl_logic;
        R2_e            : out    vl_logic;
        AU1_op          : out    vl_logic_vector(1 downto 0);
        In1_tri         : out    vl_logic;
        In2_tri         : out    vl_logic;
        AU1_tri         : out    vl_logic;
        AU1_tri1        : out    vl_logic;
        shift3_tri      : out    vl_logic;
        R3_e            : out    vl_logic;
        R4_e            : out    vl_logic;
        R5_e            : out    vl_logic;
        R4_tri          : out    vl_logic;
        R5_tri          : out    vl_logic;
        AU2_op          : out    vl_logic_vector(1 downto 0);
        AU2_tri         : out    vl_logic;
        done            : out    vl_logic;
        S               : in     vl_logic_vector(3 downto 0)
    );
end Control_Output;

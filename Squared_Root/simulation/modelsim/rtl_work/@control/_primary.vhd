library verilog;
use verilog.vl_types.all;
entity Control is
    port(
        clk             : in     vl_logic;
        start           : in     vl_logic;
        clear           : in     vl_logic;
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
        done            : out    vl_logic
    );
end Control;

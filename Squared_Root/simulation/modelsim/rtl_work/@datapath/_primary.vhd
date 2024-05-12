library verilog;
use verilog.vl_types.all;
entity Datapath is
    port(
        \out\           : out    vl_logic_vector(4 downto 0);
        R1_tri          : in     vl_logic;
        R2_tri          : in     vl_logic;
        R1_e            : in     vl_logic;
        R2_e            : in     vl_logic;
        AU1_op          : in     vl_logic_vector(1 downto 0);
        In1_tri         : in     vl_logic;
        In2_tri         : in     vl_logic;
        AU1_tri         : in     vl_logic;
        AU1_tri1        : in     vl_logic;
        shift3_tri      : in     vl_logic;
        R3_e            : in     vl_logic;
        R4_e            : in     vl_logic;
        R5_e            : in     vl_logic;
        R4_tri          : in     vl_logic;
        R5_tri          : in     vl_logic;
        AU2_op          : in     vl_logic_vector(1 downto 0);
        AU2_tri         : in     vl_logic;
        done            : in     vl_logic;
        clear           : in     vl_logic;
        clk             : in     vl_logic;
        In1             : in     vl_logic_vector(4 downto 0);
        In2             : in     vl_logic_vector(4 downto 0)
    );
end Datapath;

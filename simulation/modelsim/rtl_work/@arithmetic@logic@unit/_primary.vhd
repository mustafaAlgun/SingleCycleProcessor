library verilog;
use verilog.vl_types.all;
entity ArithmeticLogicUnit is
    generic(
        W               : integer := 32
    );
    port(
        Input1          : in     vl_logic_vector;
        Input2          : in     vl_logic_vector;
        ALU_CNTRL       : in     vl_logic_vector(2 downto 0);
        DataOut         : out    vl_logic_vector;
        CO              : out    vl_logic;
        OVF             : out    vl_logic;
        Z               : out    vl_logic;
        N               : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of W : constant is 1;
end ArithmeticLogicUnit;

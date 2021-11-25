library verilog;
use verilog.vl_types.all;
entity Register_WriteEnable is
    generic(
        W               : integer := 32
    );
    port(
        CLK             : in     vl_logic;
        RESET           : in     vl_logic;
        InputData       : in     vl_logic_vector;
        OutputData      : out    vl_logic_vector;
        ENABLE          : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of W : constant is 1;
end Register_WriteEnable;

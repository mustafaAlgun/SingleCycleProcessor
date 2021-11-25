library verilog;
use verilog.vl_types.all;
entity DataMemory is
    generic(
        W               : integer := 32
    );
    port(
        CLK             : in     vl_logic;
        WE              : in     vl_logic;
        A               : in     vl_logic_vector;
        WD              : in     vl_logic_vector;
        RD              : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of W : constant is 1;
end DataMemory;

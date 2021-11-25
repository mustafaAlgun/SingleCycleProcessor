library verilog;
use verilog.vl_types.all;
entity InstructionMemory is
    generic(
        W               : integer := 8
    );
    port(
        A               : in     vl_logic_vector;
        RD              : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of W : constant is 1;
end InstructionMemory;

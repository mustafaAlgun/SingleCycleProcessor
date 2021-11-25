library verilog;
use verilog.vl_types.all;
entity Adder is
    generic(
        W               : integer := 32
    );
    port(
        Input1          : in     vl_logic_vector;
        Input2          : in     vl_logic_vector;
        DataOut         : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of W : constant is 1;
end Adder;

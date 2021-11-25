library verilog;
use verilog.vl_types.all;
entity ConstantValueGenerator is
    generic(
        W               : integer := 32;
        value           : integer := 4
    );
    port(
        DataOut         : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of W : constant is 1;
    attribute mti_svvh_generic_type of value : constant is 1;
end ConstantValueGenerator;

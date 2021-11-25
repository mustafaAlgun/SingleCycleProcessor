library verilog;
use verilog.vl_types.all;
entity MUX_4x1 is
    generic(
        W               : integer := 32
    );
    port(
        Input0          : in     vl_logic_vector;
        Input1          : in     vl_logic_vector;
        Input2          : in     vl_logic_vector;
        Input3          : in     vl_logic_vector;
        \SELECT\        : in     vl_logic_vector(1 downto 0);
        DataOut         : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of W : constant is 1;
end MUX_4x1;

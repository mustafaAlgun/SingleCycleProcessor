library verilog;
use verilog.vl_types.all;
entity MUX_16x1 is
    generic(
        W               : integer := 32
    );
    port(
        Input0          : in     vl_logic_vector;
        Input1          : in     vl_logic_vector;
        Input2          : in     vl_logic_vector;
        Input3          : in     vl_logic_vector;
        Input4          : in     vl_logic_vector;
        Input5          : in     vl_logic_vector;
        Input6          : in     vl_logic_vector;
        Input7          : in     vl_logic_vector;
        Input8          : in     vl_logic_vector;
        Input9          : in     vl_logic_vector;
        Input10         : in     vl_logic_vector;
        Input11         : in     vl_logic_vector;
        Input12         : in     vl_logic_vector;
        Input13         : in     vl_logic_vector;
        Input14         : in     vl_logic_vector;
        Input15         : in     vl_logic_vector;
        \SELECT\        : in     vl_logic_vector(3 downto 0);
        DataOut         : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of W : constant is 1;
end MUX_16x1;

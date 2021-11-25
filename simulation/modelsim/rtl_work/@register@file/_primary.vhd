library verilog;
use verilog.vl_types.all;
entity RegisterFile is
    generic(
        W               : integer := 32
    );
    port(
        CLK             : in     vl_logic;
        A1              : in     vl_logic_vector(3 downto 0);
        A2              : in     vl_logic_vector(3 downto 0);
        A3              : in     vl_logic_vector(3 downto 0);
        WD3             : in     vl_logic_vector;
        WE3             : in     vl_logic;
        R15             : in     vl_logic_vector;
        RD1             : out    vl_logic_vector;
        RD2             : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of W : constant is 1;
end RegisterFile;

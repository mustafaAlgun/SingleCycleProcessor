library verilog;
use verilog.vl_types.all;
entity ImmExtender is
    port(
        DataInput       : in     vl_logic_vector(11 downto 0);
        DataOut         : out    vl_logic_vector(31 downto 0);
        ExtendSrc       : in     vl_logic
    );
end ImmExtender;

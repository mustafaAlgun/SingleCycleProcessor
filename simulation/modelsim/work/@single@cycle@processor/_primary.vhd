library verilog;
use verilog.vl_types.all;
entity SingleCycleProcessor is
    port(
        CLK             : in     vl_logic;
        NZCV            : out    vl_logic_vector(3 downto 0);
        Register1       : out    vl_logic_vector(31 downto 0);
        Register2       : out    vl_logic_vector(31 downto 0)
    );
end SingleCycleProcessor;

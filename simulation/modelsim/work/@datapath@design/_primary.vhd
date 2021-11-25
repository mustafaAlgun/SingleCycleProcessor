library verilog;
use verilog.vl_types.all;
entity DatapathDesign is
    port(
        PCSrc           : in     vl_logic;
        MemWrite        : in     vl_logic;
        ALUSrc          : in     vl_logic;
        RegWrite        : in     vl_logic;
        RegSrc          : in     vl_logic;
        CLK             : in     vl_logic;
        ImmSrc          : in     vl_logic;
        MemtoReg        : in     vl_logic;
        ALUControl      : in     vl_logic_vector(2 downto 0);
        ALUFlags        : out    vl_logic_vector(3 downto 0);
        Inst_OUTPUT     : out    vl_logic_vector(31 downto 0);
        Reg1            : out    vl_logic_vector(31 downto 0);
        Reg2            : out    vl_logic_vector(31 downto 0)
    );
end DatapathDesign;

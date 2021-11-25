library verilog;
use verilog.vl_types.all;
entity Decoder_4x16 is
    port(
        Input0          : in     vl_logic;
        Input1          : in     vl_logic;
        Input2          : in     vl_logic;
        Input3          : in     vl_logic;
        Output0         : out    vl_logic;
        Output1         : out    vl_logic;
        Output2         : out    vl_logic;
        Output3         : out    vl_logic;
        Output4         : out    vl_logic;
        Output5         : out    vl_logic;
        Output6         : out    vl_logic;
        Output7         : out    vl_logic;
        Output8         : out    vl_logic;
        Output9         : out    vl_logic;
        Output10        : out    vl_logic;
        Output11        : out    vl_logic;
        Output12        : out    vl_logic;
        Output13        : out    vl_logic;
        Output14        : out    vl_logic;
        Output15        : out    vl_logic
    );
end Decoder_4x16;

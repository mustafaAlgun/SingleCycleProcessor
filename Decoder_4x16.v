module Decoder_4x16 (Input0,
							Input1,
							Input2,
							Input3,
							Output0,
							Output1,
							Output2,
							Output3,
							Output4,
							Output5,
							Output6,
							Output7,
							Output8,
							Output9,
							Output10,
							Output11,
							Output12,
							Output13,
							Output14,
							Output15);
						
input Input0,Input1,Input2,Input3;

output Output0,Output1,Output2,Output3,Output4,Output5,Output6,Output7,Output8,Output9,Output10,Output11,Output12,Output13,Output14,Output15;


assign Output0=~Input0&~Input1&~Input2&~Input3;
assign Output1=Input0&~Input1&~Input2&~Input3;
assign Output2=~Input0&Input1&~Input2&~Input3;
assign Output3=Input0&Input1&~Input2&~Input3;
assign Output4=~Input0&~Input1&Input2&~Input3;
assign Output5=Input0&~Input1&Input2&~Input3;
assign Output6=~Input0&Input1&Input2&~Input3;
assign Output7=Input0&Input1&Input2&~Input3;
assign Output8=~Input0&~Input1&~Input2&Input3;
assign Output9=Input0&~Input1&~Input2&Input3;
assign Output10=~Input0&Input1&~Input2&Input3;
assign Output11=Input0&Input1&~Input2&Input3;
assign Output12=~Input0&~Input1&Input2&Input3;
assign Output13=Input0&~Input1&Input2&Input3;
assign Output14=~Input0&Input1&Input2&Input3;
assign Output15=Input0&Input1&Input2&Input3;

endmodule

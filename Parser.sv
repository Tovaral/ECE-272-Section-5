module Parser(
		input logic [15:0] in,
		output logic [3:0] ones,
		output logic [3:0] tens,
		output logic [3:0] hunds,
		output logic [3:0] thous);
		
		logic [20:0] volt;
		assign volt = ((in*5000)/65535);
		//always_comb
			//begin
			assign	ones = volt % 10;
			assign	tens = (volt/10) % 10;
			assign	hunds = (volt/100) % 10;
			assign	thous = volt / 1000;
				
			//end
				
	endmodule
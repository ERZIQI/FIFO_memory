// Memory Array module

module memory_array (
	input 	clk, rst_n, fifo_we,
	input 	[4:0] wptr,rptr,
	input 	[7:0] data_in,
	output 	[7:0] data_out
);

	reg [7:0] data_array [15:0];		// costruire la table de la memoire
	
	always @ (posedge(clk)) begin 
		if (fifo_we)
			data_array[wptr[3:0]-4'b1] <= data_in; // ecriture dans la case memoire d'addresse wptr
	end
	
	assign data_out = data_array[rptr[3:0]-4'b1];

endmodule
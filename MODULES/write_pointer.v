//module pour gerer le pointeur d'ecriture sur la mem fifo

module write_pointer (
	input 	clk, rst_n, wr, fifo_full_wire,	// wr : signal demmande d'ecriture / fifo_full : etat de la FIFO 
	output 	reg [4:0] wptr,				// registre qui contient de pointeur d'criture
	output	fifo_we 					// signal de validation d'ecriture
);
	
	assign fifo_we = (~fifo_full_wire)&wr;
	
	always @ (posedge(clk) or negedge(rst_n))begin
		
		if (~rst_n)
			wptr <= 5'd0;
		else if ((~fifo_full_wire) & wr)
			wptr <= wptr + 5'd1;
			else
				wptr <= wptr;		
					
	end
	
endmodule
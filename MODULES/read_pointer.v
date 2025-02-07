//module pour gerer le pointeur de lecture sur la mem fifo

module read_pointer (
	input 	clk, rst_n, rd, fifo_empty_wire,	// rd : signal demmande d'ecriture / fifo_full : etat de la FIFO 
	output 	reg [4:0] rptr,				// registre qui contient de pointeur de lecture
	output	wire fifo_rd 					// signal de validation de lecture
);
	
	assign fifo_rd = (~fifo_empty_wire)&rd;
	
	always @ (posedge(clk) or negedge(rst_n))begin
		
		if (~rst_n)
			rptr <= 5'd0;
		else if (fifo_rd)
			rptr <= rptr + 5'd1;
			else
				rptr <= rptr;		
					
	end
	
endmodule
// module pour conaitre les etats de la memoire

module memory_status(
	input 	clk, rst_n, wr, rd, fifo_we, fifo_rd,
	input	[4:0] wptr, rptr,
	output  reg fifo_full_wire, fifo_empty_wire, fifo_threshold_wire, fifo_overflow_wire, fifo_underflow_wire
);
	
	wire msb_ptr;
	wire ptr_eq;
	wire [4:0] ptr_diff;
	
	assign msb_ptr = wptr[4]^rptr[4];
	assign ptr_eq = wptr[3:0] == rptr[3:0];
	assign ptr_diff = wptr[4:0] - rptr[4:0];
	

	// savoir si la FIFO est vide ou pleine 
	always @(*) begin
		fifo_empty_wire = (~msb_ptr) & ptr_eq;
		fifo_full_wire 	= msb_ptr & ptr_eq;
		fifo_threshold_wire = ptr_diff[4] || ptr_diff[3];	
	end
	
	// overflow et underflow
	always @(posedge clk or negedge rst_n)
	begin
		if (~rst_n) 
		  fifo_overflow_wire <= 0;
		else if ((fifo_full_wire & wr)&&(fifo_rd == 0))
		  fifo_overflow_wire <= 1;
		  else if (fifo_rd)
		       fifo_overflow_wire <= 0;
		       else 
		          fifo_overflow_wire <= fifo_overflow_wire;
	end
	
	always @(posedge clk or negedge rst_n)
	begin
		if (~rst_n) 
		  fifo_underflow_wire <= 0;
		else if ((fifo_empty_wire & rd)&&(fifo_we == 0))
			fifo_underflow_wire <= 1;
		else if (fifo_we)
				fifo_underflow_wire <= 0;
			else 
				fifo_underflow_wire <= fifo_underflow_wire;
	end
	
endmodule
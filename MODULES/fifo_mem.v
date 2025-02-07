// top_module

module fifo_mem( 
  input wr, rd, clk, rst_n,  
  input[7:0] data_in,  
  output[7:0] data_out,  
  output reg fifo_full, fifo_empty, fifo_threshold, fifo_overflow, fifo_underflow);  
  
  wire[4:0] wptr,rptr;  
  wire fifo_we,fifo_rd;
  wire fifo_full_wire, fifo_empty_wire, fifo_threshold_wire, fifo_overflow_wire, fifo_underflow_wire;   
  
  //reg fifo_full_reg, fifo_empty_reg, fifo_threshold_reg, fifo_overflow_reg, fifo_underflow_reg; 
  
  write_pointer w_inst (.clk(clk), .rst_n(rst_n), .wr(wr), .fifo_full_wire(fifo_full_wire), .wptr(wptr), .fifo_we(fifo_we));  
  read_pointer  r_inst (.clk(clk), .rst_n(rst_n), .rd(rd), .fifo_empty_wire(fifo_empty_wire), .rptr(rptr), .fifo_rd(fifo_rd)); 
  memory_array  m_inst (.clk(clk), .rst_n(rst_n), .fifo_we(fifo_we), .wptr(wptr), .rptr(rptr), .data_in(data_in), .data_out(data_out));
  memory_status s_inst (.clk(clk), .rst_n(rst_n), .wr(wr), .rd(rd), .fifo_we(fifo_we), .fifo_rd(fifo_rd), .wptr(wptr), .rptr(rptr), .fifo_full_wire(fifo_full_wire), .fifo_empty_wire(fifo_empty_wire), .fifo_threshold_wire(fifo_threshold_wire), .fifo_overflow_wire(fifo_overflow_wire), .fifo_underflow_wire(fifo_underflow_wire));
  
  always @(*)
  begin
  fifo_full <= fifo_full_wire;
  fifo_empty <= fifo_empty_wire;
  fifo_threshold <= fifo_threshold_wire;
  fifo_overflow <= fifo_overflow_wire;
  fifo_underflow <= fifo_underflow_wire;
  end
  
endmodule
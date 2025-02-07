 `timescale     10 ps/ 10 ps



module fifo_mem_tb;

  integer i;

  reg clk, rst_n, wr, rd;
  reg [7:0] data_in;
  wire [7:0] data_out;
  wire fifo_full, fifo_empty, fifo_threshold, fifo_overflow, fifo_underflow;

  fifo_mem tb (
    .clk(clk), .rst_n(rst_n), .wr(wr), .rd(rd),
    .data_in(data_in), .data_out(data_out),
    .fifo_full(fifo_full), .fifo_empty(fifo_empty),
    .fifo_threshold(fifo_threshold), .fifo_overflow(fifo_overflow),
    .fifo_underflow(fifo_underflow)
  );

  initial begin
    clk = 0;
    rst_n = 0;
    wr = 0;
    rd = 0;
    data_in = 0;
    #100;
    main;
  end

  task main;
    fork
      clock_generator;
      reset_generator;
      operation_process;
      debug_fifo;
      endsimulation;
    join
  endtask

  task clock_generator;
    forever #10 clk = !clk;
  endtask

  task reset_generator;
    begin
      #20 rst_n = 1'b1;
      #10 rst_n = 1'b0;
      #10 rst_n = 1'b1;
    end
  endtask

  task operation_process;
    begin
      i=0;
      for (i = 0; i < 17; i = i + 1) begin
        #50 wr = 1'b1;
        data_in = data_in + 8'd1;
        #20 wr = 1'b0;
      end
      #10;
      i=0;
      for (i = 0; i < 17; i = i + 1) begin
        #20 rd = 1'b1;
        #20 rd = 1'b0;
      end
    end
  endtask

  task debug_fifo;
    begin
      $display("----------------------------------------------");
      $display("----------- SIMULATION RESULT ----------------");
      $display("----------------------------------------------");
      $monitor("TIME = %d, wr = %b, rd = %b, data_in = %h, data_out = %h", $time, wr, rd, data_in, data_out);
    end
  endtask

  task endsimulation;
    begin
      #1000;
      $display("Simulation finished");
      $finish;
    end
  endtask

endmodule
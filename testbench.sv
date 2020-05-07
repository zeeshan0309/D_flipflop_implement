// Code your testbench here
// or browse Examples

module test;
  wire Q;
  reg D;
  reg clk;
  reg rst;
  d_ff M_UUT(Q, D, clk, rst);
  initial
    begin
      
      $dumpfile("waveD.vcd");
      $dumpvars(0, Q, D, clk, rst);
      $monitor($time," rst=%b clk=%b D=%b  Q=%b ", rst, clk, D, Q);
      rst=1'b1;D=1'b0;clk=1'b0;
      #99 rst=1'b0;D=1'b1;
      #100 D=1'b0;
      #103 D=1'b1;
      #97 D=1'b0;
      #98 D=1'b1;
      #100 $finish;
    end
  always #100 clk=~clk;
endmodule 
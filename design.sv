// Code your design here

module d_ff(output Q, input D, clk, rst);
  reg Q;
  always@(posedge clk or posedge rst)
    begin
      if(rst) begin
        Q <= 1'b0;
      end else begin
        Q <= D;
      end
    end
endmodule
 
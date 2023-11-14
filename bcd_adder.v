module bcd_adder(
  input  wire [3:0] a,
  input  wire [3:0] b,
  output reg  [7:0] x
);
  always @(*) begin
    assign x = a + b;

    if (x > 9) begin
      x = x + 6;
    end
  end
endmodule

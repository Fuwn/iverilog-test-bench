`define test(EXPECTED) if (sseg_out !== EXPECTED) begin \
  $error(bin_in, sseg_out); $finish; end

module bcd_to_seven_test;
  reg  [3:0]   bin_in;
  wire [7:0] sseg_out;
  integer           i;
  
  bcd_to_seven to (.bin_in(bin_in), .sseg_out(sseg_out));
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, bcd_to_seven_test);

    for (i = 0; i < 16; i = i + 1) begin
      bin_in = i;

      #10;

      $display("bin_in = %b, sseg_out = %b", bin_in, sseg_out);
      
      case(bin_in)
        4'b0000: begin `test(8'b11000000); end
        4'b0001: begin `test(8'b11111001); end
        4'b0010: begin `test(8'b10100100); end
        4'b0011: begin `test(8'b10110000); end
        4'b0100: begin `test(8'b10011001); end
        4'b0101: begin `test(8'b10010010); end
        4'b0110: begin `test(8'b10000010); end
        4'b0111: begin `test(8'b11111000); end
        4'b1000: begin `test(8'b10000000); end
        4'b1001: begin `test(8'b10010000); end
        4'b1010: begin `test(8'b10001000); end
        4'b1011: begin `test(8'b10000011); end
        4'b1100: begin `test(8'b11000110); end
        4'b1101: begin `test(8'b10100001); end
        4'b1110: begin `test(8'b10000110); end
        4'b1111: begin `test(8'b10001110); end
        default: begin `test(8'b11111111); end
      endcase
    end

    $finish;
  end
endmodule

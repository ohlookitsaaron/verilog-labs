//time measurement unit 1 nsec with 100 ps precision
`timescale 1ns/100ps

// input/output of module
module DFlipFlop2(
  input wire clk, s, r,
  output reg q, reg qi
);

  always @(posedge clk) // executes at every clock rising edge
    begin
      q <= s;
      qi <= r;
    end
  
endmodule


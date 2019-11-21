//time measurement unit 1 nsec with 100 ps precision
`timescale 1ns/100ps

// Design of Positive Edge D-Flip-Flop

// input/output of module
module DFlipFlop(
  input wire clk, d, // input
  output reg q	// output
);

  always @(posedge clk) // executes at every clock rising edge
    begin
      q <= d;
    end
  
endmodule
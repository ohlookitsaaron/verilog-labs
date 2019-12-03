//time measurement unit 1 nsec with 100 ps precision
`timescale 1ns/100ps

// input/output of module
module WalkSignal(
  input wire clk, x, y,
  output reg sx, reg sy
);

  always @(posedge clk) // executes at every clock rising edge
    begin
      sx <= x;
      sy <= y;
    end
  
endmodule

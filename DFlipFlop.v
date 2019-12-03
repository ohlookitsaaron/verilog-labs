//time measurement unit 1 nsec with 100 ps precision
`timescale 1ns/100ps

// input/output of module
module DFlipFlop(
  input wire clk, d,
  output reg q
);

  always @(posedge clk) // executes at every clock rising edge
    begin
      q <= d;
  
    end
  
  
endmodule

module DFlipFlop_top( // testing flip flop
  input wire clk,
  output reg q
);

  DFlipFlop uut (clk, 0, q);

endmodule
  
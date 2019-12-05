//time measurement unit 1 nsec with 100 ps precision
`timescale 1ns/100ps

// input/output of module
module srDFlipFlop(
  input wire clk, s, r,
  output reg q, reg qi
);

  always @(posedge clk) // executes at every clock rising edge
    begin
      q <= s & r;
      qi <= s;
    end
  
endmodule

module srDFlipFlop_top( // testing flip flop
  input wire clk,
  output reg q, reg qi
);

  srDFlipFlop testing (clk, 0, 0, q, qi);

endmodule
  
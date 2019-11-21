//time measurement unit 1 nsec with 100 ps precision
`timescale 1ns/100ps

// input/output of module
module a_AND_NOT_b_OR_a_AND_NOT_c(
  input wire a, b, c,
  output reg y
);

  assign y = a & ~b | a & ~c;
  
endmodule
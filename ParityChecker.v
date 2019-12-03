module parity_checker(
  input [7:0] bitvalue,
  output parity
);
  
  assign
     parity = ~^bitvalue;

endmodule


module parity_checker_top(
  output parity
);
  
  parity_checker testing (8'b10000111, parity);
  
endmodule
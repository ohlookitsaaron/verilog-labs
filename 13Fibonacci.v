module fibonacci(
  input wire clk,
  output reg [3:0] y
);
  initial begin
    previous = 1; 
    counter = 0;
    current = 0;
  end

  reg[3:0] previous, current;
  reg[3:0] counter = 0'b0;
  
  always @(posedge clk)
    begin
      if (y >= 13)
        begin
           previous <= 1; 
           counter <= 0;
           current <= 0;
           y <= 0;
        end
      else
        begin
           counter <= counter + 1;
           current <= current + previous;
           previous <= current;
           y <= current;
        end
    end

endmodule
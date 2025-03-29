//CSMC
//Sepehr Razmyar 2020
module CSMC (
          x,
          y,
          b,
          bo,
          d
  );
  // u = 0

  input wire x, y, b;
  output wire bo, d;

  wire xNot, yNot, bNot;

  assign xNot = ~x;
  assign yNot = ~y;
  assign bNot = ~b;

  assign bo = (xNot & (y | b)) | (y & b);
  assign d = x ^ (y ^ b);

endmodule

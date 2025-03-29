//CSMB
//Sepehr Razmyar 2020
module CSMB (
          x,
          b,
          bo,
          d
  );
  // yu = 00

  input wire x, b;
  output wire bo, d;

  wire xNot, bNot;

  assign xNot = ~x;
  assign bNot = ~b;

  wire temp;
  assign temp = (xNot & b);
  assign bo = temp;
  assign d = temp | (x & bNot);

endmodule
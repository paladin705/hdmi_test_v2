//CSMA
//Sepehr Razmyar 2020
module CSMA (
          x,
          bo,
          d
  );
  // ybu = 100
  input wire x;
  output wire bo, d;

  wire xNot;

  assign xNot = ~x;

  assign bo = xNot;
  assign d = xNot;

endmodule

//CSMD
//Sepehr Razmyar 2020
module CSMD (
          x,
          u,
          bo,
          d
  );

  //y = 1 b = 0

  input wire x, u;
  output wire bo, d;

  assign bo = ~x;
  assign d = ~(x ^ u);

endmodule

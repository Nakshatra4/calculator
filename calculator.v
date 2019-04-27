module calci(clk,X, Y, S,T,Z);
 input clk;
 input [3:0] X, Y;// Two 4-bit inputs
 input  Z;
 output [3:0] S;
 output  T;
 wire w1, w2, w3, w4, w5,w6,w7,w8,w9,b7,b2,b3,b0,b5,b6,b8;
 reg D1,D2,D3,D0,D4,D6,D8,C1,C2,c1,c2,c3,c4,c5,c6,c7,c8,c9,A0,A1,A2,A3;
 
 always@ (posedge clk)
 begin
 if(Z==1'b0 )
   begin
 
 S[0]= X[0]^Y[0];
 b5 = X[0]&Y[0];

 w1 =  X[1]^Y[1];
 S[1] = w1^b5;
 w2 = w1&b5;
 w3 = X[1]&Y[1];
 b6 = w2|w3;

 w4= X[2]^Y[2];
 S[2] = w4^b6;
 w5 = w4&b6;
 w6 =  X[2]&Y[2];
 b2= w5|w6;

 w7= X[3]^Y[3];
 S[3]= w7^b2;
 w8= w7& b2;
 w9 = X[3]&Y[3];
 T=  w8|w9;

   end

 else if(Z==1'b1 )
  begin

 b0=X[0]^~Y[0];
 A0=1'b1^b0;
 b5= X[0]&~Y[0]; 
 b7=b5|b6;
 
 w1= X[1]^~Y[1];
 A1= w1^b7;
 w2= w1&b7;
 w3= X[1]&~Y[1];
 b2= w2|w3;

 w4= X[2]^~Y[2];
 A2= w4^b2;
 w5= w4&b2;
 w6= X[2]&~Y[2];
 b3= w5|w6;

 w7= X[3]^~Y[3];
 A3= w7^b3;
 w8= w7&b3;
 w9= X[3]&~Y[3];
 b8= w8|w9;

  if(b8==1'b0)
   begin
   
   D0 = ~A0;
   D1 = ~A1;
   D2 = ~A2;
   D3 = ~A3;
   S[0] = 1'b1^D0;
   c1 = 1'b1&D0;
   S[1] = c1^D1;
   c2 = c1&D1;
   S[2] = c2^D2;
   c3 = c2&D2;
   S[3]= c3^D3;
   C1 = c3^D3;
   c4 = !C1;
   T = c4;

   
  end
   
  
  else if(b8==1'b1) 
   begin
   S[0] = A0;
   S[1] = A1;
   S[2] = A2;
   S[3] = A3;
   c5 = !b8;
   T = c5;
   
   end

  end

 end
 
endmodule


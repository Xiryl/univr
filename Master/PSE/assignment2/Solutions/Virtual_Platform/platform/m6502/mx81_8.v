// an 8-bit 8:1 multiplexer
//
`timescale 1 ns / 1 ns // timescale for following modules

module mx81_8 (a,
   b,
   c,
   d,
   e,
   f,
   g,
   h,
   s,
   y);
input   [7:0] a; //  a inputs

input   [7:0] b; //  b inputs

input   [7:0] c; //  c inputs

input   [7:0] d; //  d inputs

input   [7:0] e; //  e inputs

input   [7:0] f; //  f inputs

input   [7:0] g; //  g inputs

input   [7:0] h; //  h inputs

input   [2:0] s; //  Select

output  [7:0] y; //  y outputs

// ---------------------------------------------------------------------------
// 
//   Architecture body
// 
// ---------------------------------------------------------------------------
reg     [7:0] y; 
always @(a or b or c or d or e
 or f or g or h or s)
   begin
   case (s)
   3'b 000:
      begin
      y <= a;
      end
   3'b 001:
      begin
      y <= b;
      end
   3'b 010:
      begin
      y <= c;
      end
   3'b 011:
      begin
      y <= d;
      end
   3'b 100:
      begin
      y <= e;
      end
   3'b 101:
      begin
      y <= f;
      end
   3'b 110:
      begin
      y <= g;
      end
   3'b 111:
      begin
      y <= h;
      end
   default:
      begin
      y <= {{{{{{{1'b x , 1'b x} , 1'b x} , 1'b x} , 1'b x} , 1'b x} , 1'b x} , 1'b x};
      end
   endcase
   end

endmodule // module mx81_8


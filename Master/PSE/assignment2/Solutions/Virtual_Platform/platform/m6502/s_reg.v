// 8 bit up/down counter
//
//  Description:
//  	This is the Stack pointer register. 
// 	It is really just an 8 bit up/down counter.
// 
//  Signals ending in _n are active low.
// 
//
// -------------------------------------------------------------------------------- 
`timescale 1 ns / 1 ns // timescale for following modules

module s_reg (clk,
   reset,
   datai,
   datao,
   load,
   up,
   cnt_enb);
input   clk; //  we use the IEEE standard 1164 logic types. + and - operators

input   reset; 
input   [7:0] datai; //  data bus in

output  [7:0] datao; //  data bus out

input   load; //  load enable

input   up; //  1=count up, 0=down

input   cnt_enb; 
wire    [7:0] datao; 
//  count enable
reg     [7:0] dataol; //  local version
// ------------------Architecture synth-----------
//  be sure to include the following synopsys command in your synthesis script
//  compile_preserve_sync_resets="true"
assign datao = dataol; 
//  drive the port
always @(posedge clk)
   begin
   if (reset == 1'b 1)
      begin
      dataol <= 8'b 00000000;
      end
   else if (load == 1'b 1 )
      begin
      dataol <= datai;
      end
   else if (cnt_enb == 1'b 1 & up == 1'b 1 )
      begin
      dataol <= dataol + 1;
      end
   else if (cnt_enb == 1'b 1 & up == 1'b 0 )
      begin
      dataol <= dataol - 1;
      end
   else
      begin
      dataol <= dataol;
      end
   end

endmodule // module s_reg


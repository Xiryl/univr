`timescale 1ns / 1ps

module tb();

    integer data_file    ; // file handler
    integer scan_file    ; // file handler
    `define NULL 0    
    reg [31:0] captured_data;
    reg [31:0] captured_data_exp;
    
    parameter SIZE = 32;
    parameter CLOCK_PERIOD = 2;
    
    // in 
    reg [SIZE-1:0] op1, op2;
    reg [1:0] in_rdy;
    reg clk, rst; 

    // out
    wire [SIZE-1:0] res;
    wire [1:0] res_rdy;
    
    // Top level connection
    tl dut(
        .op1(op1),
        .op2(op2),
        .inrdy(in_rdy),
        .res(res),
        .resrdy(res_rdy),
        .clk(clk),
        .reset(rst)
        );

    // Clock update
    always #(CLOCK_PERIOD/2) clk <= !clk;
    
    ////////////////////////////////////////////////////////////////////////////
    // Test
    initial
    begin
    
    data_file = $fopen("input.txt", "r");
      if (data_file == `NULL) begin
        $display("data_file handle was NULL");
        $finish;
      end
  while (!$feof(data_file)) begin
            scan_file = $fscanf(data_file, "%b\n", captured_data); 
            $fscanf(data_file, "%h\n", captured_data_exp); 
    
           $display("data %b", captured_data);
           $display("expected %h", captured_data_exp);
           
        clk = 1'b0;
        rst = #(CLOCK_PERIOD)   1'b1;
        rst = #(CLOCK_PERIOD*2) 1'b0;
        in_rdy = 2'b00;

        op1 <= captured_data; // 2
        op2 <= captured_data; // 2
        // expected res = 1
        
        in_rdy = #(CLOCK_PERIOD) 2'b11;

        while (res_rdy == 2'b00)
            #(CLOCK_PERIOD)
           

        if (in_rdy == 2'b10 || in_rdy == 2'b01)
        begin
            if (res_rdy == 2'b01)
            begin
                $display("vhdl multiplier result: %x", res);
                 in_rdy = 2'b00;
                 
            end
            else if (res_rdy == 2'b10)
            begin
                $display("verilog multiplier result: %x", res);
                 in_rdy = 2'b00;
            end
        end
        
         if (in_rdy == 2'b11)
         begin
              if (res_rdy == 2'b01)
            begin
                $display("vhdl multiplier result: %x", res);
    
                 while (res_rdy == 2'b01)
                    #(CLOCK_PERIOD)
                
                $display("verilog multiplier result: %x", res);
                 in_rdy = 2'b00;            
               
            end
            else if (res_rdy == 2'b10)
            begin
                $display("verilog multiplier result: %x", res);
    
                while (res_rdy == 2'b10)
                    #(CLOCK_PERIOD)
    
                $display("VHDL multiplier result: %x", res);
                 in_rdy = 2'b00;
            end
         end
      end
    
    ////////////
    
    
      
       
              
      // in_rdy = 2'b00;
        
//      // -------------------
//      op1 <= 32'b01000000100000000000000000000000; // 2
//        op2 <= 32'b01000000100000000000000000000000; // 2
//        // expected res = 1
        
//        in_rdy = #(CLOCK_PERIOD) 2'b11;

//        while (res_rdy == 2'b00)
//            #(CLOCK_PERIOD)
           

//        if (in_rdy == 2'b10 || in_rdy == 2'b01)
//        begin
//            if (res_rdy == 2'b01)
//            begin
//                $display("vhdl multiplier result: %x", res);
//                 in_rdy = 2'b00;
                 
//            end
//            else if (res_rdy == 2'b10)
//            begin
//                $display("verilog multiplier result: %x", res);
//                 in_rdy = 2'b00;
//            end
//        end
        
//         if (in_rdy == 2'b11)
//         begin
//              if (res_rdy == 2'b01)
//            begin
//                $display("vhdl multiplier result: %x", res);
    
//                 while (res_rdy == 2'b01)
//                    #(CLOCK_PERIOD)
                
//                $display("verilog multiplier result: %x", res);
//                 in_rdy = 2'b00;            
               
//            end
//            else if (res_rdy == 2'b10)
//            begin
//                $display("verilog multiplier result: %x", res);
    
//                while (res_rdy == 2'b10)
//                    #(CLOCK_PERIOD)
    
//                $display("VHDL multiplier result: %x", res);
//                 in_rdy = 2'b00;
//            end
//         end
       
//        while (res_rdy != 2'b00)
//              #(CLOCK_PERIOD)
              
//      in_rdy = 2'b00;
        
    end
              
    
endmodule

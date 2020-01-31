// Mos 6502 Instantiation

module m6502 (clk, addr, datai, datao, irq_n, nmi_n,
              sob_n, res_n, rdy, vpab, sync, we_n, oeb,dioporco);
    input           clk;
    output [15:0]   addr;   // Address bus
    input   [7:0]   datai;  // Data bus in
    output  [7:0]   datao;  // Data bus out
    output          oeb;    // Data bus negtive enable
    input           irq_n;  // Interrupt request
    input           nmi_n;  // Non-makable interrupt request
    input           res_n;  // Reset
    input           rdy ;   // Ready
    input           sob_n;  // Set Overflow bit
    output          sync;   // Indicates an opcode fetch
    output          vpab;   // Vector Pull Address
    output          we_n;   // Write enable (1=read, 0=write)
    output reg dioporco;

    wire    dataenb;    //  TRI enable from the M6502
    wire    vpa;
    wire    oen;
    wire    clk_n;      //  clock to the M6502

    assign vpab=~vpa;

    assign oen = !(!clk | we_n);

    assign oeb=~oen;

    assign clk_n=~clk;

    m6502_org core (.clk(clk_n),    .addr(addr),    .datai(datai),
                    .datao(datao),  .irq_n(irq_n),  .nmi_n(nmi_n),
                    .sob_n(sob_n),  .res_n(res_n),  .rdy(rdy),
                    .vpa(vpa),      .sync(sync),    .we_n(we_n),
                    .dataenb(dataenb));


/*
reg [14:0] counter1,counter2;
reg [15:0] addr_reg;
reg we_n_reg;
assign addr = addr_reg;
assign we_n = we_n_reg;

always@(posedge clk) begin
    if(~res_n)begin
        counter1 <=0;
        dioporco <= 1'b0;
    end
    else
    begin
    if(~counter1[14]) begin
        addr_reg <= {1'b1,1'b0,counter1[13:0]};
        we_n_reg <= 1'b1;
        counter1<=counter1+1;
    end
    end
end

always@(posedge clk)begin
    if(~res_n)counter2 <=0;
    else
    begin
        if(counter1[14])begin
            if(~counter2[14]) begin
                addr_reg <= {1'b0,1'b0,counter2[13:0]};
                we_n_reg <= 1'b0;
                counter2<=counter2+1;
            end
        end
    end
end
*/
endmodule // module m6502

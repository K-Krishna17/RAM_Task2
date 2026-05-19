`timescale 1ns / 1ps

module sync_ram_tb;

    reg clk;
    reg we;
    reg [3:0] addr;
    reg [7:0] din;
    wire [7:0] dout;

    // Instantiate RAM Module
    sync_ram uut (
        .clk(clk),
        .we(we),
        .addr(addr),
        .din(din),
        .dout(dout)
    );

    // Clock Generation
    always #5 clk = ~clk;

    initial
    begin
        // Initialize signals
        clk = 0;
        we = 0;
        addr = 0;
        din = 0;

        // Write Data 25 at Address 2
        #10;
        we = 1;
        addr = 4'b0010;
        din = 8'd25;

        // Write Data 45 at Address 4
        #10;
        addr = 4'b0100;
        din = 8'd45;

        // Read Data from Address 2
        #10;
        we = 0;
        addr = 4'b0010;

        // Read Data from Address 4
        #10;
        addr = 4'b0100;

        // Finish simulation
        #20;
        $finish;
    end

    // Monitor Outputs
    initial
    begin
        $monitor("Time = %0t | we = %b | addr = %d | din = %d | dout = %d",
                  $time, we, addr, din, dout);
    end
endmodule





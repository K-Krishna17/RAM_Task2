module sync_ram (
    input clk,
    input we,                  // Write Enable
    input [3:0] addr,          // 4-bit Address
    input [7:0] din,           // 8-bit Data Input
    output reg [7:0] dout      // 8-bit Data Output
);

    // Memory declaration: 16 locations of 8-bit each
    reg [7:0] mem [15:0];

    always @(posedge clk)
    begin
        if (we)
        begin
            // Write operation
            mem[addr] <= din;
        end
        else
        begin
            // Read operation
            dout <= mem[addr];
        end
    end
endmodule

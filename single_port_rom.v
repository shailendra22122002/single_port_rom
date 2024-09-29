module single_port_rom (
    input wire [3:0] addr,  // 4-bit address input
    output reg [7:0] data   // 8-bit data output
);
    
    // ROM storage (16x8 ROM: 16 addresses, each holding 8-bit data)
    reg [7:0] rom [0:15];
    
    // Initialize ROM contents using for loop
    integer i;
    initial begin
        for (i = 0; i < 16; i = i + 1) begin
            rom[i] = i * 8'h11;  // Initialize ROM with multiples of 0x11
        end
    end
    
    // Read data from ROM based on the address
    always @(*) begin
        data = rom[addr];  // Output the data corresponding to the input address
    end

endmodule

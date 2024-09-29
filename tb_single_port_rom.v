module tb_single_port_rom;
    
    // Testbench signals
    reg [3:0] addr;       // 4-bit address input
    wire [7:0] data;      // 8-bit data output
    
    // Declare the loop variable outside the initial block
    integer i;
    
    // Instantiate the single-port ROM
    single_port_rom uut (
        .addr(addr),
        .data(data)
    );
    
    // Test procedure
    initial begin
        // Display a header for easier reading
        $display("Address | Data");
        $display("----------------");

        // Use a for loop to apply all address values (0 to 15)
        for (i = 0; i < 16; i = i + 1) begin
            addr = i;   // Set address
            #10;        // Wait for a short delay
            $display("%b     | %h", addr, data);  // Display address and data
        end
        
        // Finish simulation
        $finish;
    end

endmodule


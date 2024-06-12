`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2024 01:06:05 PM
// Design Name: 
// Module Name: m1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module m1(
input clk_100MHz,

    input orA1,
    input orB1,
    input direction1_ext,
    inout data_io,
    
    output reg leds1
    );
    
    wire data_o;
    reg data_i;
    
    reg data_t;
    
      wire orGate;
      assign orGate = (orA1|orB1);
    // Instantiate the IOBUF
    IOBUF iobuf_instance_0 (
    .O(data_o),   // Output data to the FPGA fabric
    .IO(data_io), // Bidirectional pin
    .I(data_i),    // Input data from the FPGA fabric
    .T(data_t)           // Tri-state control
);

always@(posedge clk_100MHz)begin
    leds1 <= data_o;
    data_i <= (orA1|orB1);
    data_t <= direction1_ext;
end

//// Define the width of the data bus
//localparam DATA_WIDTH = 16;

//// Instantiate an array of OBUFTs for an 16-bit wide data bus
//generate
//    for (genvar i = 0; i < DATA_WIDTH; i = i + 1) begin : gen_obuft
//        OBUFT #(
//            .DRIVE(12),              // Specify the drive strength
//            .IOSTANDARD("DEFAULT"), // Specify the I/O standard    // or use DEFAULT or LVCMOS33 etc
//            .SLEW("SLOW")            // Specify the slew rate
//        ) obuft_inst (
//            .I(data_in[i]),   // Input to the buffer
//            .O(data_out[i]),   // Output of the buffer connected to the top-level port
//            .IO(data_io[i]),  // Bidirectional I/O pin
//            .T(direction2)    // Tri-state control
//        );
//    end
//endgenerate

endmodule


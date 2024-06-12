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
    inout [7:0] data_io,
    
    output reg [7:0] leds
    );
    
// Define the width of the data bus
localparam DATA_WIDTH = 8;

    wire [DATA_WIDTH-1:0]data_o;
    reg [DATA_WIDTH-1:0]data_i;
    
    reg data_t;
    
//      wire orGate;
//      assign orGate = (orA1|orB1);
//    // Instantiate the IOBUF
//    IOBUF iobuf_instance_0 (
//    .O(data_o),   // Write on External Pin
//    .IO(data_io), // Bidirectional pin
//    .I(data_i),    // Read External Pin
//    .T(data_t)           // Tri-state control   1:Input, 0:output
//);

always@(posedge clk_100MHz)begin
    leds[0] <= data_o[0];
    leds[1] <= data_o[1];
    leds[2] <= data_o[2];
    leds[3] <= data_o[3];
    leds[4] <= data_o[4];
    leds[5] <= data_o[5];
    leds[6] <= data_o[6];
    leds[7] <= data_o[7];
    data_i[0] <= orA1;
    data_i[1] <= orA1;
    data_i[2] <= orA1;
    data_i[3] <= orA1;
    data_i[4] <= orA1;
    data_i[5] <= orA1;
    data_i[6] <= orA1;
    data_i[7] <= orA1;
    data_i[8] <= orA1;
    data_t <= direction1_ext;
end

// Instantiate an array of OBUFTs for an 8-bit wide data bus
generate
    for (genvar i = 0; i < DATA_WIDTH; i = i + 1) begin : gen_obuft
        IOBUF data_iobuft_inst (
            .O(data_o[i]),   // Read External Pin
            .IO(data_io[i]), // Bidirectional pin
            .I(data_i[i]),    // Write on External Pin
            .T(data_t)           // Tri-state control   1:Input, 0:output
        );
    end
endgenerate

endmodule


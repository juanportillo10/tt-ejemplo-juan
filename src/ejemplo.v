
module ejemplo (
    input wire clock,
    input wire reset,
    input wire [3:0] ui_in, // Entrada de 4 bits desde los interruptores
    output reg [6:0] seg    // Salida para los 7 segmentos (a, b, c, d, e, f, g)
);
    always @(*) begin
        case (ui_in[3:0])
            4'h0:    seg = 7'b0111111; 
            4'h1:    seg = 7'b0000110; // Muestra '1'
            4'h2:    seg = 7'b1011011; // Muestra '2'
            4'h3:    seg = 7'b1001111; // Muestra '3'
            4'h4:    seg = 7'b1100110; // Muestra '4'
            4'h5:    seg = 7'b1101101; // Muestra '5'
            4'h6:    seg = 7'b1111101; // Muestra '6'
            4'h7:    seg = 7'b0000111; // Muestra '7'
            4'h8:    seg = 7'b1111111; // Muestra '8'
            4'h9:    seg = 7'b1101111; // Muestra '9'
            default: seg = 7'b0000000;
        endcase
    end

endmodule
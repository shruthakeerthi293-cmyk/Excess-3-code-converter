`timescale 1ns/1ps

module excess3_converter_tb;

    reg [3:0] BCD;
    wire [3:0] Excess3;

    // Instantiate BCD to Excess-3 Converter
    excess3_converter uut (
        .BCD(BCD),
        .Excess3(Excess3)
    );

    initial begin

        $display("----------------------------------------");
        $display("       BCD TO EXCESS-3 CONVERTER");
        $display("----------------------------------------");
        $display(" Decimal |   BCD   |  Excess-3");
        $display("----------------------------------------");

        // Decimal 0
        BCD = 4'b0000;
        #10;
        $display("    0    |  %b  |   %b", BCD, Excess3);

        // Decimal 1
        BCD = 4'b0001;
        #10;
        $display("    1    |  %b  |   %b", BCD, Excess3);

        // Decimal 2
        BCD = 4'b0010;
        #10;
        $display("    2    |  %b  |   %b", BCD, Excess3);

        // Decimal 3
        BCD = 4'b0011;
        #10;
        $display("    3    |  %b  |   %b", BCD, Excess3);

        // Decimal 4
        BCD = 4'b0100;
        #10;
        $display("    4    |  %b  |   %b", BCD, Excess3);

        // Decimal 5
        BCD = 4'b0101;
        #10;
        $display("    5    |  %b  |   %b", BCD, Excess3);

        // Decimal 6
        BCD = 4'b0110;
        #10;
        $display("    6    |  %b  |   %b", BCD, Excess3);

        // Decimal 7
        BCD = 4'b0111;
        #10;
        $display("    7    |  %b  |   %b", BCD, Excess3);

        // Decimal 8
        BCD = 4'b1000;
        #10;
        $display("    8    |  %b  |   %b", BCD, Excess3);

        // Decimal 9
        BCD = 4'b1001;
        #10;
        $display("    9    |  %b  |   %b", BCD, Excess3);

        // Invalid BCD input
        BCD = 4'b1010;
        #10;
        $display(" Invalid  |  %b  |   %b", BCD, Excess3);

        $display("----------------------------------------");

        $finish;

    end

endmodule
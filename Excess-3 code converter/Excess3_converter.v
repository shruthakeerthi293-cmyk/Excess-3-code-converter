
---

# 2. `excess3_converter.v`

```verilog
module excess3_converter (
    input  [3:0] BCD,
    output reg [3:0] Excess3
);

    always @(*) begin

        case (BCD)

            4'b0000: Excess3 = 4'b0011; // 0 -> 3
            4'b0001: Excess3 = 4'b0100; // 1 -> 4
            4'b0010: Excess3 = 4'b0101; // 2 -> 5
            4'b0011: Excess3 = 4'b0110; // 3 -> 6
            4'b0100: Excess3 = 4'b0111; // 4 -> 7
            4'b0101: Excess3 = 4'b1000; // 5 -> 8
            4'b0110: Excess3 = 4'b1001; // 6 -> 9
            4'b0111: Excess3 = 4'b1010; // 7 -> 10
            4'b1000: Excess3 = 4'b1011; // 8 -> 11
            4'b1001: Excess3 = 4'b1100; // 9 -> 12

            // Invalid BCD inputs
            default: Excess3 = 4'bxxxx;

        endcase

    end

endmodule
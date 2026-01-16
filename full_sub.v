
module full_sub(
    input A, B, Bin,
    output D, Bout
);

assign D    = A ^ B ^ Bin;
assign Bout = (~A & B) | (~A & Bin) | (B & Bin);

endmodule

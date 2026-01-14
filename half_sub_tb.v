module half_sub_tb;
  reg a, b;
  wire diff,borr;
  half_sub uut (
    .a(a),
    .b(b),
    .diff(diff),
    .borr(borr)
  );

  initial begin
    $dumpfile("half_sub_tb.vcd");     
    $dumpvars(0, half_sub_tb);        
    $display("a b | diff borr");        
    $monitor("a=%b b=%b  diff=%b borr=%b", a, b, diff, borr); 
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;

    $finish;
  end
endmodule
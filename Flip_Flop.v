/ Design Name : dff_async_reset
 // Function    : D flip-flop async reset
 // Description : q gets data on clk edge and gets reset when reset toggles
 module dff_async_reset (
 data, 
 clk,
 reset,  
 q 
 );
 input data, clk, reset ; 
 output q;
 reg q;
 
 //-------------Always Block 1---------
 always @ ( posedge clk or negedge reset)
 if (~reset) begin
   q <= 1'b0;
 end  else begin
   q <= data;
 end
 
 endmodule 
//End Of Module dff_async_reset

//Test bench forces inputs to a verilog file for waves/simulation purposes
module dff_async_reset_tb;

reg data;

reg clk;

reg reset;

wire q;

//uut is unit under test. can remove depending on your testing flow
dff_async_reset_tb uut (.q(q),.data(data), .clk(clk) );

//starting points
initial begin
data = 0;
clk = 0;
reset = 1;
end

//mini always blocks create toggles
always #3 clk =~ clk;

always #5 data =~ data;

always #20 reset = ~reset;

//loads an initial/run statement for sim
initial                     #100 $stop;
endmodule

//can check if flip flop is acting correct through
//1) Visual inspection since it is a small flip flop
//2) Adding arrays with that compares needed outputs to actual outputs
//3) Performing a tcl or python script on wave files to chack for correct toggling

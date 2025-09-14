//34. Count down from 10 to 0 using a while loop and show each value with $display.

module count_down;
integer count;
initial begin
count=10;
while(0<=count)
begin
 $display("count=%d ", count);
 count--;
 #10;
end
end
endmodule

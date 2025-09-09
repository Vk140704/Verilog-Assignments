/*3. Write a module using delay in assign statement: assign #5 sum = a + b; and simulate the output using $monitor.*/
module sum_var(a,b,sum);
    input a,b;
    output [1:0] sum;
    assign #5 sum = a + b;
endmodule

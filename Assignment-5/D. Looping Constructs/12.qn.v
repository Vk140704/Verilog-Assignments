//36. Explain why forever loops are not synthesizable and how to work around them.
forever is also like a loop it once it start it cant be  terminate untill the command passing to stop it 
  //google
  Forever loops are non-synthesizable because they create an infinite sequence of instructions that a hardware synthesis tool 
    cannot map to a finite set of logic gates, registers, or other hardware components. Instead of synthesizing forever loops,
      use them only in testbenches for simulation-only code, such as generating clock signals or performing periodic simulation tasks.
        For testbench use, include a break statement or other condition to eventually terminate the loop to prevent ever-ending simulations. 
        

    



























  

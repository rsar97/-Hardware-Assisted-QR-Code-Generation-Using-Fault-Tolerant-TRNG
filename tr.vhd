Library ieee;
Use ieee.std_logic_1164.all; 
Entity tr is
 Port(A,B,C : in std_logic; 
      D,E,F: out std_logic); 
 end tr; 
architecture ckt of tr is  
begin
 D<= A;
 E<= A xor B;
 F<= (A and not(B)) xor C;
 End ckt;

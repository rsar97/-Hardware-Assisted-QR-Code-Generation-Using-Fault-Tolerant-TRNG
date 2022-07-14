Library ieee;
Use ieee.std_logic_1164.all; 
Entity fred is
 Port(Z,X,C : in std_logic; 
      V,B,N: out std_logic); 
 end fred; 
architecture ckt of fred is  
begin
V<= Z;
B<= (not(Z) and X) xor (Z and C);
N<= (not(Z) and C) xor (Z and X);
End ckt;

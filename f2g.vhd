Library ieee;
Use ieee.std_logic_1164.all; 
Entity f2g is
 Port(A,B,C : in std_logic; 
      P,Q,R: out std_logic); 
 end f2g; 
architecture ckt of f2g is  
begin
P<= A;
Q<= A xor B;
R<= A xor C;
End ckt;

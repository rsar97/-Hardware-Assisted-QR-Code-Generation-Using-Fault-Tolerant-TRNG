Library ieee;
Use ieee.std_logic_1164.all; 
Entity fg is
 Port(X, Y: in std_logic; 
      P, Q: out std_logic); 
 end fg; 
architecture ckt of fg is  
begin
 P<= X;
 Q<= X xor Y; 
 End ckt;

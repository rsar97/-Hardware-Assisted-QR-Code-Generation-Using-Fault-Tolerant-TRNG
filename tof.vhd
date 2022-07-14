Library ieee;
Use ieee.std_logic_1164.all; 
Entity tof is
 Port(Q,W,E : in std_logic; 
      R,T,U: out std_logic); 
 end tof; 
architecture ckt of tof is  
begin
R<= Q;
T<= W;
U<= (Q and W) xor E;
End ckt;

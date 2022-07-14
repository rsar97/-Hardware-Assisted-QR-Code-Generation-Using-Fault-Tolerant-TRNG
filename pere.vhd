Library ieee;
Use ieee.std_logic_1164.all; 
Entity pere is
 Port(J,K,L : in std_logic; 
      O,P,I: out std_logic); 
 end pere; 
architecture ckt of pere is  
begin
O<= J;
P<= J xor K;
I<= (J xor K) xor L;
End ckt;

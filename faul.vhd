library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity faul is
  port(I :in std_logic_vector(17 downto 0);
      O :out std_logic_vector(17 downto 0) );
end faul;

architecture bhev of faul is 



component fred
 Port(Z,X,C : in std_logic; 
      V,B,N: out std_logic);  
end component;

component f2g
Port(A,B,C : in std_logic; 
      P,Q,R: out std_logic); 
end component;

signal S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11,S12,S13,S14,S15,S16,S17,S18,T1:std_logic;

begin

fred1 :fred port map(Z=>I(17),X=>I(16),C=>I(15),V=>S1,B=>S2,N=>S3);



f2g1 :f2g port map(A=>S1,B=>S2,C=>S3,P=>O(17),Q=>S4,R=>S5);


f2g2:f2g port map(A=>I(14),B=>I(13),C=>I(12),P=>O(16),Q=>O(15),R=>S6);

fred2: fred port map (Z=>S4,X=>S5,C=>S6,V=>O(14),B=>O(13),N=>O(12));


fred3:  fred port map (Z=>I(11),X=>I(10),C=>I(9),V=>O(11),B=>S7,N=>S8);

fred4: fred port map (Z=>I(8),X=>I(7),C=>I(6),V=>S9,B=>S10,N=>S11);

f2g3:f2g port map (A=>S7,B=>S8,C=>S9,P=>O(10),Q=>O(9),R=>O(8));


f2g4: f2g port map (A=>I(5),B=>I(4),C=>I(3),P=>S12,Q=>O(6),R=>S13);


fred5 : fred port map (Z=>S10,X=>S11,C=>S12,V=>O(7),B=>S14,N=>S15);

f2g5: f2g port map (A=>S14,B=>S15,C=>S13,P=>O(5),Q=>S16,R=>S17);


f2g6: f2g port map (A=>I(2),B=>I(1),C=>I(0),P=>O(4),Q=>O(3),R=>S18);


fred6 :fred port map (Z=>S16,X=>S17,C=>S18,V=>O(2),B=>O(1),N=>O(0));



end bhev;

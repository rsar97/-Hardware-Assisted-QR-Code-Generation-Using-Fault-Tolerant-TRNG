library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity random is
  port(I :in std_logic_vector(7 downto 0);
      O :out std_logic_vector(15 downto 0) );
end random;

architecture bhevar of random is 


component fg
  Port(X, Y: in std_logic; 
      P, Q: out std_logic);
end component;

component pere
 Port(J,K,L : in std_logic; 
      O,P,I: out std_logic); 
end component;

component tof
 Port(Q,W,E : in std_logic; 
      R,T,U: out std_logic); 
end component;

component fred
 Port(Z,X,C : in std_logic; 
      V,B,N: out std_logic);  
end component;

component tr
Port(A,B,C : in std_logic; 
      D,E,F: out std_logic); 
end component;
signal S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11,S12,S13,S14,S15,S16,T1:std_logic;

begin

tof1: tof port map(Q=>I(7),W=>I(6),E=>I(5),R=>S1,T=>O(13),U=>S2);

fred1:fred port map(Z=>I(4),X=>I(3),C=>I(2),V=>S3,B=>T1,N=>S4);

O(12)<=T1;

fg1: fg port map(X=>S1,Y=>S3,P=>O(15),Q=>O(14));

fg2: fg port map(X=>I(1),Y=>I(0),P=>S5,Q=>S6);

pere1:pere port map(J=>S4,K=>S5,L=>S6,O=>O(11),P=>O(10),I=>O(9));

S10<= not I(0);


fg3: fg port map(X=>S10,Y=>I(2),P=>S8,Q=>S9);


S7<= not(S6);

fred2:fred  port map(Z=>S7,X=>S8,C=>S9,V=>O(8),B=>O(7),N=>S15);

O(6)<=S15;

S16<= not(S15);


S11<=not I(3);

tr1: tr port map(A=>T1,B=>S11,C=>I(6),D=>S12,E=>S13,F=>S14);


O(2)<=S14;
O(3)<=S13;


fg4: fg port map(X=>S16,Y=>S12,P=>O(5),Q=>O(4));


fg5:fg port map (X=>S13,Y=>S2,P=>O(1),Q=>O(0));












end bhevar;

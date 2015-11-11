-module(area).
-export([area/1]).

area({rect,X,Y}) ->
	X*Y;
area({cir,X}) -> 3.14*X*X;
area({tri,A,H}) -> 0.5*A*H;
area({tra,A,B,H}) -> 0.5*(A+B)*H;
area({sphere,R}) -> 4*3.14*R*R;
area({cube,A}) -> 6*A*A;
area({cone,R,L}) -> 3.14*R*R + 3.14*R*L.


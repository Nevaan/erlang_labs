-module(lmin_max).
-export([lmin_max/1]).

lmin_max([A|B]) ->
	lmin_max({[A,A],B});
lmin_max({[A,B],[]}) ->
	[A,B];
lmin_max({[Min,Max],[A|B]})
  	when A < Min ->
  		lmin_max({[A,Max],B});
lmin_max({[Min,Max],[A|B]})
  	when A > Max ->
		lmin_max({[Min,A],B});
lmin_max({[Min,Max],[A|B]}) ->
		lmin_max({[Min,Max],B});
lmin_max([]) -> io:fwrite("Pusta lista").
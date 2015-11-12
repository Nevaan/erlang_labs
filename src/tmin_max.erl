-module(tmin_max).
-export([tmin_max/1]).

tmin_max([A|B]) ->
	tmin_max({{A,A},B});
tmin_max({{A,B},[]}) ->
	{A,B};
tmin_max({{Min,Max},[A|B]})
  	when A < Min ->
  		tmin_max({{A,Max},B});
tmin_max({{Min,Max},[A|B]})
  	when A > Max ->
		tmin_max({{Min,A},B});
tmin_max({{Min,Max},[_|B]}) ->
		tmin_max({{Min,Max},B});
tmin_max([]) -> io:fwrite("Pusta lista").
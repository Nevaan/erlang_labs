-module(amin).
-export([amin/1]).

amin([A|B])->
	amin({A,B});
amin({Min,[]}) -> 
	Min;
amin({Min,[A|B]}) 
	when Min < A ->
		amin({Min,B});
amin({_,[A|B]}) ->
	amin({A,B});
amin([]) -> io:fwrite("Pusta lista").

		
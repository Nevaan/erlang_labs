-module(amax).
-export([amax/1]).

amax([A|B]) ->
	amax({A,B});
amax({Max,[]}) ->
	Max;
amax({Max,[A|B]}) 
	when Max < A ->
		amax({A,B});
amax({Max,[_|B]}) ->
	amax({Max,B});
amax([]) -> io:fwrite("Pusta lista").

	
	


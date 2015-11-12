-module(ones).
-export([ones/1]).

ones(N) 
	when N == 1 ->
		[1];
ones(N)
  	when N > 1 ->
		[1] ++ ones(N-1);
ones(N)
  	when N < 1 ->
		[].

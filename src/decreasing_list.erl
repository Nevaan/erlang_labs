-module(decreasing_list).
-export([dec/1]).

dec(N) 
	when N == 1 ->
		[1];
dec(N)
	when N > 1 ->
		[N] ++ dec(N-1);
dec(N) 
	when N < 1 ->
		[].
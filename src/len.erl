-module(len).
-export([len/1]).

len([A|B]) ->
	1 + len(B);
len([A]) -> 1;
len([]) -> 0.
-module(len).
-export([len/1]).

len([_|B]) ->
	1 + len(B);
len([]) -> 0.
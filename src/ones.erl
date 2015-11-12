-module(ones).
-export([ones/1, my_elem/1]).

ones(N) 
	when N == 1 ->
		[1];
ones(N)
  	when N > 1 ->
		[1] ++ ones(N-1);
ones(N)
  	when N < 1 ->
		[].


my_elem({Elem, N})
  	when N == 1 ->
		[Elem];
my_elem({Elem, N})
  	when N > 1 ->
		[Elem] ++ my_elem({Elem, N-1});
my_elem({Elem, N})
  	when N < 1 ->
		[].
-module(p03).
-author('Sergiy Kostyushkin <s.kostyushkin@gmail.com>').

-export([element_at/2]).

element_at([_|T=[_|_]], N) when is_integer(N), N > 1 ->
    element_at(T, N-1);
element_at([H|_], N) when is_integer(N), N =:= 1 ->
    H;
element_at([_|_], N) when is_integer(N) ->
    undefined;
element_at([], N) when is_integer(N) ->
    undefined.

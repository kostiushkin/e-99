-module(p03).
-author('Sergiy Kostyushkin <s.kostyushkin@gmail.com>').

-export([element_at/2]).

element_at([H|_], 1) ->
    H;
element_at([_|T=[_|_]], N) ->
    element_at(T, N-1);
element_at(_List, _N) ->
    undefined.

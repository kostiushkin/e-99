-module(p08).
-author('Sergiy Kostyushkin <s.kostyushkin@gmail.com>').

-export([compress/1]).

compress(List) ->
    compress(List, []).

compress([H|T], Acc=[H|_]) ->
    compress(T, Acc);
compress([H|T], Acc) ->
    compress(T, [H|Acc]);
compress([], Acc) ->
    p05:reverse(Acc).

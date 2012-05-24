-module(p09).
-author('Sergiy Kostyushkin <s.kostyushkin@gmail.com>').

-export([pack/1]).

pack(L) when is_list(L) ->
    pack(L, []).

pack([H|T], [H2=[H|_]|T2]) ->
    pack(T, [[H|H2]|T2]);
pack([H|T], L=[_|_]) ->
    pack(T, [[H]|L]);
pack([H|T], []) ->
    pack(T, [[H]]);
pack([], L) ->
    lists:reverse(L).

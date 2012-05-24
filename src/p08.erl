-module(p08).
-author('Sergiy Kostyushkin <s.kostyushkin@gmail.com>').

-export([compress/1]).

compress([H,H|T]) ->
    compress([H|T]);
compress([H|T]) ->
    [H|compress(T)];
compress([]) ->
    [].

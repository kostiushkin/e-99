-module(p04).
-author('Sergiy Kostyushkin <s.kostyushkin@gmail.com>').

-export([len/1]).

len([H|T]) ->
    1 + len(T);
len([]) ->
    0.


-module(p04).
-author('Sergiy Kostyushkin <s.kostyushkin@gmail.com>').

-export([len/1]).

len([_|T]) ->
    1 + len(T);
len([]) ->
    0.


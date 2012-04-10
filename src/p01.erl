-module(p01).
-author('Sergiy Kostyushkin <s.kostyushkin@gmail.com>').

-export([last/1]).

last([_|T=[_|_]]) ->
    last(T);
last(B = [_|[]]) ->
    B.

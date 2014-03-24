-module(p04).
-author('Sergiy Kostyushkin <s.kostyushkin@gmail.com>').

-export([len/1]).

len(List) ->
    len(List, 0);

len([_|T], Len) ->
    len(T, Len+1);
len([], Len) ->
    Len.

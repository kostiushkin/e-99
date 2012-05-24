-module(p07).
-author('Sergiy Kostyushkin <s.kostyushkin@gmail.com>').

-export([flatten/1]).

flatten([[H|T1]|T2]) ->
    flatten([H,T1|T2]);
flatten([[]|T]) ->
    flatten(T);
flatten([H|T]) ->
    [H|flatten(T)];
flatten([]) ->
    [].

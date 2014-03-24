-module(p07).
-author('Sergiy Kostyushkin <s.kostyushkin@gmail.com>').

-export([flatten/1]).

flatten(List) ->
    p05:reverse(flatten(List, [])).

flatten([H=[_|_]|T], FlatList) ->
    flatten(T, flatten(H, FlatList));
flatten([[]|T], FlatList) ->
    flatten(T, FlatList);
flatten([H|T], FlatList) ->
    flatten(T, [H|FlatList]);
flatten([], FlatList) ->
    FlatList.

-module(p06).
-author('Sergiy Kostyushkin <s.kostyushkin@gmail.com>').

-export([is_palindrome/1]).

is_palindrome(L) when is_list(L) ->
    L =:= lists:reverse(L).

%% Day2 exercises
%% Use the concatenate rule from the book.
concatenate([], List, List).
concatenate([Head|Tail1], List, [Head|Tail2]) :-
  concatenate(Tail1, List, Tail2).

%% Let's start by just defining the rule to put the head to the back
front_to_back([],[]).
front_to_back([OneElement],[OneElement]).
front_to_back([Head|Tail], Revlist):-
  concatenate(Tail, [Head], Revlist).

%% OK that worked, recurse it now.
%% 0 elements
reverse([],[]).
%% 1 element
reverse([X],[X]).
%% 2 elements
reverse([X,Y],[Y,X]).
%% >2 elements
reverse([X|[YH|[YTH|YTT]]], Revlist):-
  reverse([YH|[YTH,YTT]], RevTail), concatenate(RevTail, [H], RevList).

%% THis works, but I get this compliation error for whatever the 1st reverse
%% rule is:
%% "native code procedure reverse/2 cannot be redefined (ignored)"

%% Moving on...
%%
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
%% from now on I'll use H for Head and T for Tail.
%% 0 elements
reverse([],[]).
%% 1 element
reverse([X],[X]).
%% 2 elements
reverse([X,Y],[Y,X]).
%% >2 elements
reverse([X|[YH|[YTH|YTT]]], Revlist):-
  reverse([YH|[YTH,YTT]], RevTail), concatenate(RevTail, [X], Revlist).

%% THis works, but I get this compliation error for whatever the 1st reverse
%% rule is:
%% "native code procedure reverse/2 cannot be redefined (ignored)"

%% Moving on...
%% 2nd exercise: smallest element of list
%% smallest([],[]).
smallest([E],[E]).
%% smallest([X,X],X).
%% smallest([X,Y],Y):-
%%   Y < X.
%% smallest([X,Y],X):-
%%   X < Y.
smallest([H|T], Smallest):-
  smallest(T, Smallest), Smallest < H.
%% Here I've said for Smallest to actually be the smallest in the list it
%% must be smaller than the head and the smallest element in the tail.


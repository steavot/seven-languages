%% from the book
different(red, green). different(red, blue).
different(green, red). different(green, blue).
different(blue, red). different(blue, green).

coloring(Alabama, Mississippi, Georgia, Tennessee, Florida) :-
  different(Mississippi, Tennessee),
  different(Mississippi, Alabama),
  different(Alabama, Tennessee),
  different(Alabama, Mississippi),
  different(Alabama, Georgia),
  different(Alabama, Florida),
  different(Georgia, Florida),
  different(Georgia, Tennessee).

%% By loading this into the interpreter I found that if Alabama is set, there
%% are only two options:
%% | ?- Alabama = blue, coloring(Alabama, Mississippi, Georgia, Tennessee, Florida).

%% Alabama = blue
%% Florida = green
%% Georgia = red
%% Mississippi = red
%% Tennessee = green ? ;

%% Alabama = blue
%% Florida = red
%% Georgia = green
%% Mississippi = green
%% Tennessee = red ? ;

%% no

%% If Florida and Tennessee are set to the same color there are two options:
%% | ?- Florida = blue, Tennessee = blue, coloring(Alabama, Mississippi, Georgia, Tennessee, Florida).

%% Alabama = green
%% Florida = blue
%% Georgia = red
%% Mississippi = red
%% Tennessee = blue ? ;

%% Alabama = red
%% Florida = blue
%% Georgia = green
%% Mississippi = green
%% Tennessee = blue ? ;

%% no


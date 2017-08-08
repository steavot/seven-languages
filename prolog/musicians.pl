%% day 1 exercise, seems the same as the book exercise... bit boring...
musician(flea).
musician(tomMorrello).
musician(keithMoon).
musician(ringo).
musician(paul).

instrument(flea, bass).
instrument(flea, trumpet).
instrument(tomMorrello, guitar).
instrument(tomMorrello, mouthOrgan).
instrument(keithMoon, drums).
instrument(ringo, drums).
instrument(paul, base).
instrument(paul, piano).
instrument(paul, guitar).

genre(flea, funk).
genre(flea, rock).
genre(tomMorrello, metal).
genre(tomMorrello, folk).
genre(tomMorrello, rock).
genre(keithMoon, rock).
genre(keithMoon, pop).
genre(ringo, pop).
genre(paul, pop).

%% interactive:
%% | ?- instrument(X, guitar).
%% X = tomMorrello ? a
%% X = paul
%% yes
%% | ?- instrument(X, guitar), genre(X, folk).
%% X = tomMorrello ? ;
%% no

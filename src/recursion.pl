% -*- mode: Prolog;-*-
% vim: set ft=prolog:
%
% #########
% # Lists #
% #########
%
% In the genealogy exercise, we saw some examples of how Prolog relations are
% written and queried. The data we were working with was very basic, however -
% we were looking only at relationships between single atoms like `bob` or
% `mildred` - these things have no further internal structure.
%
% Useful programs usually have to deal with more complex data structures, like
% lists. Happily, Prolog (and in particular Prolog's advanced pattern
% matching) let us write some fairly fancy list processing with very little
% code.
%
% List literals are constructed much as you'd expect:
%
%     ?- List = [1, 2, 3, 4, 5].
%     List = [1, 2, 3, 4, 5].
%
% Getting at individual elements of a list is rather different, though.
%
% A very common way to do so uses pattern matching to split the list into its
% first N elements (usually referred to as the "head"), plus the rest (usually
% referred to as the "tail").
%
% Here we match our list to get its first element and the tail
%
%     ?- List = [1, 2, 3], [First | Rest] = List.
%     List = [1, 2, 3],
%     First = 1,
%     Rest = [2, 3].
%
% The | operator is what separates the head of the list from the tail. If we
% want to get more elements from the head of the list, we can add them to the
% pattern:
%
%     ?- List = [1, 2, 3], [First, Second | Rest ] = List.
%     List = [1, 2, 3],
%     First = 1,
%     Second = 2,
%     Rest = [3].
%
% ~~~ Task 1: ~~~
%
% At the console, try writing a query that matches the first three elements of
% a list into separate variables.
%
% What happens if you try to extract more elements than there are in the list?
%
% ~~~ Task 2: ~~~
%

% TODO something to use the matching with an instantiated head?
% ?- record([rock | Tail]) -- but this is a bit rubbish

%
% #############
% # Recursion #
% #############
%
% Accessing only the first N elements of a list seems highly restrictive, but
% can be very powerful, particularly when combined with recursion.
%
% For example, 

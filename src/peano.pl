% Peano numbers
%
% The Peano numbers are a way of representing the natural numbers 0,1,2...  n.
%
% They represent these integers as follows:
%
% 0: 0
% 1: s(0)
% 2: s(s(0))
% 3: s(s(s(0)))
% ...
%
% Prolog lets us manipulate data structures like this easily using pattern
% matching. For example, if I wanted to define a relation plus_one/2, which is
% true if the second argument is one more than the first argument, I could do
% it like this:
%
% plus_one(X, s(X)).
%
% ?- plus_one(0, X).
% X = s(0).
%
% Task 1:
%
% Define a relation minus_one/2, which is true if the second argument is one
% *less* than the first argument:

%%% Task 1 Solution %%%

%%% Task 1 Solution %%%

% At the console, find out what's one less than s(s(0)).
%
% What happens if you run the query:
%
% ?- minus_one(0, X).
%
% Why do you think that happened, and is it correct?
%
% Task 2:
%
% Write a new predicate add/3 that succeeds if all the arguments are peano
% numbers, and the third argument is the sum of the first two arguments.
%
% This predicate will require more than one rule, and will require the use of
% recursion.

%%% Task 2 Solution %%%

%%% Task 2 Solution %%%

% At the console, find the sum of s(0) and s(0). Now write a query that asks
% what two numbers add up to s(s(s(s(s(0))))).

% Task 3:
%
% Write a new predicate, even/1, that succeeds if the argument is a peano
% number representing an integer divisible by 2, e.g. 0, s(s(0)),
% s(s(s(s(0))))...
%
% This is tricky, and there are two ways to do it. You can use a recursive
% solution, with a base case and a reducing case, like we saw in [INSERT
% EXAMPLE].
%
% There's another way - you can define even/1 in a single line, using just the
% add/3 predicate from Task 1.
%
% This alternative solution is my favourite computer program ever. :-)

%%% Task 3 Solution %%%

%%% Task 3 Solution %%%

% vim: set ft=prolog:

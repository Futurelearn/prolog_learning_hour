% -*- mode: prolog;-*-
% vim: set ft=prolog:
%
% #####################
% ### Peano numbers ###
% #####################
%
% So far all of the rules and facts we've written have described "atoms" -
% simple names like "brie" or "london" or "simon", that have no internal
% structure.
%
% We can write rules about more complicated data structures, however, and
% Prolog's powerful pattern matching makes it possible to manipulate them
% without much effort.
%
% In this exercise we'll look at a data structure that we can use to represent
% integers, and write some rules to do basic arithmetic with it.
%
% The Peano numbers are a way of representing the natural numbers (i.e. all
% the non-negative integers, 0,1,2...n).
%
% They represent these integers as follows:
%
% 0: 0
% 1: s(0)
% 2: s(s(0))
% 3: s(s(s(0)))
% ...
%
% So zero represents itself - every other number is represented by zero,
% wrapped in the appropriate number of s().
%
% This is called a "recursive data type" - all non-zero values contain
% another value of the same type, for example s(s(0)) contains s(0).
%
% Prolog lets us manipulate data structures like this easily using pattern
% matching. For example, if I wanted to define a relation plus_one/2, which is
% true if the second argument is one more than the first argument, I could do
% it like this:

plus_one(X, s(X)).

% There's no conditional here - by using the same variable name twice, we've
% said "To get one more than X, wrap X in another s()".
%
% We can query this as we'd hope. Here's a query that asks "what is 0 + 1?":
%
%     ?- plus_one(0, Y).
%     Y = s(0).
%
% ~~~ Task 1: ~~~
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
% ~~~ Task 2: ~~~
%
% We've written two predicates, but they're very similar. Can you write a
% query at the console using the plus_one/2 predicate that gives you the
% answer to 3 - 1?


% Our plus_one/2 predicate will take any X and wrap it in s(). This means if
% we give it nonsensical queries like "what's fish plus one", it'll happily
% give us the answer:
%
%     ?- plus_one(fish, Y).
%     Y = s(fish).
%
% This isn't ideal! We need some way to check that X is a valid Peano number.
%
% We can do this using recursion - a technique that's much more common in
% Prolog than in languages like Ruby or Javascript. We can write the following
% rules that define what is a valid Peano number:

peano_number(0).
peano_number(s(X)) :- peano_number(X).

% We've written two cases:
%
% * Base case: "zero is a number"
% * Recursive case: "if X is a number, then X + 1 is also a number"
%
% The base case has no conditional - it's a simple fact, zero is always a
% number.
%
% For any queries about values that aren't zero, the recursive case takes a
% small step towards zero.
%
% The two rules combine to let us check the valid numbers:
%
%     ?- peano_number(0).
%     true.
%
%     ?- peano_number(s(s(fish))).
%     false.
%
%     ?- peano_number(s(s(s(0)))).
%     true.
%
% The final example executes like this:
%
% 1. Is s(s(s(0))) a number?
%   * yes, if s(s(0)) is a number. (recursive)
% 2. Is s(s(0)) a number?
%   * yes, if s(0) is a number. (recursive)
% 3. Is s(0) a number?
%   * yes, if 0 is a number. (recursive)
% 4. Is 0 a number?
%   * yes. (base)
%
% Each step of the recursive rule takes us one step closer to the base case.
% If we reach the base case, success! And if we don't, then it can't have been
% a peano number.
%
% ~~~ Task 3: ~~~
%
% Modify the plus_one/2 and minus_one/2 rules so that they only perform
% addition on valid peano numbers.
%
% At the console, reload your code and verify that adding one to fish no
% longer works:
%
% ?- reload.
% ?- plus_one(fish, X).



% ~~~ Task 4: ~~~
%
% We've got rules that add 1 to things - that's not very useful, though. Let's
% write a predicate that takes two Peano numbers and adds them together.
%
% This will be our first predicate relating three things - the two numbers
% being added, and the number they produce. So our rules will look like this:
%
% add(Num1, Num2, Sum) :-
%
% Write a new predicate add/3 that succeeds if all the arguments are peano
% numbers, and the third argument is the sum of the first two arguments.
%
% Hint: as with the peano_number/2 predicate, you'll need a base case (which
% will be a fact) and a recursive case (which will be a rule). Before writing
% code, it can help to try and think of the simplest example of addition to use
% as your base case. You can then try to write the recursive rule to

%%% Task 4 Solution %%%

%%% Task 4 Solution %%%


% ~~~ Task 5: ~~~
%
% At the console, write queries for:
%
% 1. "what's one plus one?"
% 2. "what are all the pairs of numbers that add up to 5?"


% ~~~ Task 6: ~~~
%
% Now we've done some arithmetic, let's look at a property of integers -
% whether they're even.
%
% Write a new predicate, even/1, that succeeds if the argument is a peano
% number representing an integer divisible by 2, e.g. 0, s(s(0)),
% s(s(s(s(0))))...
%
% This is tricky, and there are two ways to do it. You can use a recursive
% solution, with a base case and a reducing case, like we saw in
% peano_number/1 and add/3. I recommend starting with this approach!
%
% There's another way, though - you can define even/1 in a single line, using
% just the add/3 predicate from Task 1.
%
% This alternative solution is my favourite computer program ever. :-)

%%% Task 6 Solution %%%

%%% Task 6 Solution %%%

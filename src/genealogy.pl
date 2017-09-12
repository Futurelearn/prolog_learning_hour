% Family tree
%
% Prolog is unlike most programming languages - it's a logic programming
% language. Instead of describing a series of steps a computer must follow
% to compute a result, a Prolog program consists of a series of *facts* and
% *rules* that we can then query to discover the relationships between things.
%
% One example of a relationship we might describe is a family tree.
%
% The parent/2 relation is a set of facts describing a partial family tree, as
% shown below:
%
% +---------+               +--------+
% | mildred |               | horace |
% +---+-----+               +---+----+
%     |                         |
%     +------------+------------+
%     |            |
% +---v---+    +---v---+                  +------+
% |  jo   |    |  bob  |                  | dave |
% +--+----+    +--+----+                  +--+---+
%                 |                          |
%                 +--------------------------+
%                 |                          |
%              +--v----+                  +--v--+
%              |  ann  |                  | ted |
%              +-------+                  +-----+
%
% The notation parent/2 gives the name of the relation, and the number of
% things it relates, in this case 2 (the parent and child).
%
% Here are the facts that define the above family tree:

parent(mildred, bob).
parent(horace, bob).

parent(mildred, jo).
parent(horace, jo).

parent(bob, ann).
parent(dave, ann).

parent(bob, ted).
parent(dave, ted).

% Prolog lets us query these facts in a number of ways. We can ask it whether
% mildred is bob's parent:
%
% ?- parent(mildred, bob).
% true .
%
% And we can ask it whether mildred is their own parent:
%
% ?- parent(mildred, mildred).
% false.
%
% We don't have to provide exact names like mildred or bob, though. By passing
% a variable (any UppercasedWord, in this case X) as the second argument, we
% can ask for all of bob's children.
%
% (Note: Prolog gives one answer at a time. Press ; after each answer to get the
% next one.)
%
% ?- parent(bob, X).
% X = ann ;
% X = ted.
%
% Task 1:
%
% At the console, write a query to find out who ann's parents are. There are
% multiple answers, so remember to press ; to get them all.
%
% Task 2:
%
% At the console, write a query that returns all the parents in the family
% tree (hint: you might want to use the special variable name _, which
% represents a variable whose value you don't care about.
%
% You might find some names are repeated - why do you think this is?
%
% Task 3:
%
% Write new facts to represent dave's parents - their names are bart and
% shelly.
%
% Once you've written your facts, you can check them by running `make test` at
% the command line.

%%% Task 3 solution %%%

%%% Task 3 solution %%%

% Task 4:
%
% Write a new relation grandparent/2 that succeeds if the first argument is
% the grandparent of the second argument.
%
% At the console, use your new predicate to answer the following questions:
%
% 1. who is mildred a grandparent of?
% 2. who are bob's grandparents?
% 3. who are all of the grandparents in the family tree?

%%% Task 4 solution %%%

%%% Task 4 solution %%%

% Task 5:
%
% Write a new relation sibling/2 that succeeds if the two arguments have a
% shared parent.
%
% Hint: you may need to use the `\==` operator, which is true if two things
% are not identical. For example, `simon \== geoff` is true, while
% `simon \== simon` is false.
%
% At the console, use your new predicate to answer the following questions:
%
% 1. who is the sibling of ted?
% 2. what are all the pairs of siblings in the family tree?

%%% Task 5 solution %%%

%%% Task 5 solution %%%

% vim: set ft=prolog:

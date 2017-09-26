% -*- mode: Prolog;-*-
% vim: set ft=prolog:
%
% ###################
% ### Family Tree ###
% ###################
%
% We've seen some simple examples of facts and rules that we used to describe
% properties of things (mostly whether they were cheeses) and a simple
% relationship between things (whether thing A likes thing B).
%
% Let's look at a more complex set of relationships: a family tree.
%
% Here's a partial family tree that we can represent in Prolog:
%
%     +---------+               +--------+  +------+   +--------+
%     | mildred |               | horace |  | bart |   | shelly |
%     +---+-----+               +---+----+  +--+---+   +---+----+
%         |                         |          |           |
%         +------------+------------+          +-----------+
%         |            |                       |
%     +---v---+    +---v---+                +--v---+
%     |  jo   |    |  bob  |                | dave |
%     +--+----+    +--+----+                +--+---+
%                     |                        |
%                     +------------------------+
%                     |                        |              
%                 +---v---+                 +--v--+
%                 |  ann  |                 | ted |
%                 +-------+                 +-----+
%
% We can define a set of facts that tell us who is the parent of whom. For
% example, to say that mildred is the parent of bob, we write:

parent(mildred, bob).

% Here, we're defining the "parent" relation (in Prolog jargon we call it
% parent/2 because it takes two arguments, the parent and child).
%
% ~~~ Task 1: ~~~
%
% Add the facts that represent the rest of the family tree:

%%% Task 1 solution %%%

%%% Task 1 solution %%%

% As with our likes cheese program, we can query this relation in a number of
% ways.
%
% ~~~ Task 2: ~~~
%
% Load the console with `make console`, and run queries to answer the
% questions:
%
% 1. Is dave ted's parent?
% 2. Who are all of ann's parents?
% 3. Who are mildred's children?
%
% Remember, if there are multiple answers, press ; to get them all.


% ~~~ Task 2: ~~~
%
% At the console, write a query that returns all the parents in the family
% tree (hint: you might want to use the special variable name _, which
% represents a variable whose value you don't care about).
%
% You might find some names are repeated - why do you think this is?


% ~~~ Task 3: ~~~
%
% Now we know who is the parent of whom, we can write a new relation
% grandparent/2, which is true when the first argument is the grandparent of
% the second argument. For example, the following query should succeed:
%
%     ?- grandparent(mildred, ann).
%     true.
%
% Write a single rule that defines the grandparent/2 relation. Again, you can
% test your rule at the console (use `reload.` to load your changes), or run
% `make test` at a bash terminal to check your answer.
%
% Hint: you might need to have multiple conditions in your rule body, which
% you can do using commas:
%
%     something_is_true :-
%       one_thing_is_true,
%       and_another_thing_is_true.

%%% Task 3 solution %%%

%%% Task 3 solution %%%


% ~~~ Task 4: ~~~
%
% At the console, use your new predicate to answer the following questions:
%
% 1. who is mildred a grandparent of?
% 2. who are bob's grandparents?
% 3. who are all of the grandparents in the family tree?


% ~~~ Task 5: ~~~
%
% Write a new rule sibling/2 that succeeds if the two arguments have a shared
% parent. As before, you'll need multiple conditions in the body of your rule.
%
% Hint: you may need to use the `\==` operator, which is true if two things
% are not identical. For example, `simon \== geoff` is true, while
% `simon \== simon` is false.

%%% Task 5 solution %%%

%%% Task 5 solution %%%


% ~~~ Task 6: ~~~
%
% At the console, use your new predicate to answer the following questions:
%
% 1. who is the sibling of ted?
% 2. what are all the pairs of siblings in the family tree?

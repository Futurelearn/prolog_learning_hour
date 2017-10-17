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
%     +---------+           +--------+      +------+   +--------+
%     | mildred |           | horace |      | bart |   | shelly |
%     +---+-----+           +---+----+      +--+---+   +---+----+
%         |                     |              |           |
%         +------------+--------+              +-----------+
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

parent(mildred, jo).
parent(horace, bob).
parent(horace, jo).
parent(bart, dave).
parent(shelly, dave).
parent(bob, ann).
parent(bob, ted).
parent(dave, ann).
parent(dave, ted).

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
%
% Answers:
%
% 1. ?- parent(dave, ted).
% 2. ?- parent(X, ann).
% 3. ?- parent(mildred, X).


% ~~~ Task 2: ~~~
%
% At the console, write a query that returns all the parents in the family
% tree (hint: you might want to use the special variable name _, which
% represents a variable whose value you don't care about).
%
% You might find some names are repeated - why do you think this is?
%
% Answer:
%
% ?- parent(Y, _).
%
% This repeats answers - the repeated names are all ones where the parent has
% multiple children. Prolog isn't super clever - it's just looking for all the
% facts that match the above pattern, and returning the Y in each case. So
% because there are multiple facts that match parent(mildred, _), mildred
% appears multiple times in the set of answers.


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
% `make genealogy` at a bash terminal to check your answer.
%
% Hint: you might need to have multiple conditions in your rule body, which
% you can do using commas for a logical AND:
%
%     likes(reginald, X) :-
%       cheese(X),
%       particularly_smelly(X).

%%% Task 3 solution %%%

grandparent(Grandparent, Grandchild) :-
  parent(Grandparent, Someone),
  parent(Someone, Grandchild).

%%% Task 3 solution %%%


% ~~~ Task 4: ~~~
%
% At the console, use your new predicate to answer the following questions:
%
% 1. who is mildred a grandparent of?
% 2. who are bob's grandparents?
% 3. who are all of the grandparents in the family tree?
%
% Answers:
%
% 1. grandparent(mildred, X).
% 2. grandparent(X, bob).
% 3. grandparent(X, _).


% ~~~ Task 5: ~~~
%
% Write a new rule sibling/2 that succeeds if the two arguments have a shared
% parent. As before, you'll need multiple conditions in the body of your rule.
%
% Hint: you may need to use the `\==` operator, which is true if two things
% are not identical. For example, `simon \== geoff` is true, while
% `simon \== simon` is false.

%%% Task 5 solution %%%

sibling(X, Y) :-
  parent(Z, X),
  parent(Z, Y),
  X \== Y.

%%% Task 5 solution %%%


% ~~~ Task 6: ~~~
%
% At the console, use your new predicate to answer the following questions:
%
% 1. who is the sibling of ted?
% 2. what are all the pairs of siblings in the family tree?
%
% Do you see duplicates in the answer to 2? What do you think the reason for
% this is?
%
% Answers:
%
% 1. sibling(ted, X).
% 2. sibling(X, Y).
%
% We see even more duplicates in the sibling(X, Y) query. For example, we get
% the pair (jo, bob) twice, and (bob, jo) twice, too.
%
% The rule we wrote can be satisfied in lots of ways:
%
% sibling(X, Y) :-
%   parent(Z, X), % parent(mildred, bob)
%   parent(Z, Y), % parent(mildred, jo)
%
% sibling(X, Y) :-
%   parent(Z, X), % parent(mildred, jo)
%   parent(Z, Y), % parent(mildred, bob)
%   X \== Y.   X \== Y.
%
% sibling(X, Y) :-
%   parent(Z, X), % parent(horace, bob)
%   parent(Z, Y), % parent(horace, jo)
%
% sibling(X, Y) :-
%   parent(Z, X), % parent(horace, jo)
%   parent(Z, Y), % parent(horace, bob)
%   X \== Y.   X \== Y.
%
% Each time we press ; to get another answer, Prolog backtracks and eventually
% finds all of these solutions, which is why we get duplicates. They're not
% wrong - they're all just different, valid ways of proving that jo is bob's
% sibling.

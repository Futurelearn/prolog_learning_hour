% -*- mode: Prolog;-*-
% vim: set ft=prolog:
%
% ##########################
% ### People Like Things ###
% ##########################
%
% Prolog programs are built from just three constructs:
%
% * Facts - statements about things that are true
% * Rules - conditional statements about things that are true
% * Queries - questions we ask, that Prolog uses our facts and rules to answer
%
% ###########
% ## Facts ##
% ###########
%
% Facts are unconditional statements of truth - things like:
%
% * "Brie is a cheese"
% * "Reblochon is a cheese"
% * "Simon likes Prolog"
%
% In Prolog we can represent these facts like this:

cheese(brie).
cheese(reblochon).
likes(simon, prolog).

% We call the first two facts "properties" - they tell us information about a
% single thing (e.g. that brie is a cheese).
%
% The final fact is a "relation" - it specifies a relationship between two
% things.
%
% ~~~ Task 1: ~~~
%
% Add facts for the following true statements:
%
% * "Camembert is a cheese"
% * "London is a city"
% * "Geneva is a city"
% * "Serena likes London"
% * "Serena likes Prolog"

%%% Task 1 solution %%%

%%% Task 1 solution %%%

% #############
% ## Queries ##
% #############
%
% That's all very well - now how do we get information out of this program?
% This is where queries come in.
%
% At your terminal, load a console with `make console` - this will give you a
% prompt that you can run queries at:
%
%     $ make console
%     ?- 
%
% We can ask some straightforward questions:
%
%     ?- cheese(reblochon).
%     true.
%
%     ?- likes(simon, prolog).
%     true.
%
%     ?- likes(simon, brie).
%     false.
%
% We can also use Prolog variables in our queries. A Prolog variable must
% always begin with an UppercasedLetter or an underscore (this is why we used
% lower-cased names for simon and brie etc. before).
%
% For example, to ask "what are all the cheeses?" we can write:
%
%     ?- cheese(X).
%
% Prolog gives us one answer at a time - by pressing ; after each one we can
% find the next answer, until there are no more left.
%
%     ?- cheese(X).
%     X = brie ;
%     X = reblochon ;
%     X = camembert.
%
% Underscore variables mean we don't care about the value - so for example, to
% write "does anyone at all like Prolog?", we could write:
%
%     ?- likes(_, prolog).
%     true.
%
% ~~~ Task 2: ~~~
%
% At the console, write queries to answer the following questions:
%
% 1. Is brie a city?
% 2. What are all the cities? (that our program knows about)
% 3. What are all the things Serena likes?
% 4. Who are all the people that like Prolog?


% Variables can be used in facts, too. For example, if we had a very
% easy-going friend named Ed who likes everything, we could write:
%
% likes(ed, _).
%
% (Here the use of the underscore variable means we don't care what it is that
% Ed likes - we can use a named variable like X and it'll work just fine, but
% Prolog will moan at us.)
%
% ~~~ Task 3: ~~~
%
% Uncomment the rule about what Ed likes, and at at the console, reload the
% program:
%
%     ?- reload.
%
% Now run your query for "Who likes Prolog?" again - does Ed show up in the
% answers? (press ; repeatedly to get them all.)
%
% ###########
% ## Rules ##
% ###########
%
% Rules are where it starts to get a bit more interesting. At the moment, if
% we wanted to say "Simon likes all cheeses", we'd have to list them
% explicitly:
%
% likes(simon, brie).
% likes(simon, reblochon).
% ...
%
% This is laborious, and if a new cheese comes along, I won't automatically
% like it. This is completely unacceptable.
%
% Instead, we can write a rule:

likes(simon, X) :- cheese(X).

% This can be read as "Simon likes X if X is a cheese". We can query it just
% like the other facts:
%
%     ?- likes(simon, brie).
%     true.
%
% Now, as soon as a new cheese is added, Prolog can automatically infer that I
% like it.
%
% ~~~ Task 4: ~~~
%
% Add a rule that says "audrey likes cities."
%
%%% Task 4 solution %%%

%%% Task 4 solution %%%
%
% At the console, reload the program and write queries to answer the following
% questions:
%
% 1. Who likes London?
% 2. What does Audrey like?

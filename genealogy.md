# Family Tree

A Prolog program consists of a series of facts and rules that we can
then query to discover the relationships between things.

A natural example of a relationship you can model in this way is a family
tree. Take this example:

    +---------+               +--------+
    | mildred |               | horace |
    +---+-----+               +---+----+
        |                         |
        +------------+------------+
        |            |
    +---v---+    +---v---+        +------+
    |  jo   |    |  bob  |        | dave |
    +--+----+    +--+----+        +--+---+
                    |                |
                    +----------------+
                    |                |              
                +---v---+         +--v--+
                |  ann  |         | ted |
                +-------+         +-----+

We can define a set of facts that tell us who is the parent of whom. For example, to say that mildred is the parent of bob, we write:

Prolog lets us query this relation in a number of ways. Loading up a console with `make console`, we can ask it whether mildred is bob's parent:

    ?- parent(mildred, bob).
    true .

And we can ask it whether mildred is their own parent:

    ?- parent(mildred, mildred).
    false.

We don't have to provide exact names like mildred or bob, though. By passing a variable (any UppercasedWord, in this case X) as the second argument, we can ask for all of bob's children.

    ?- parent(bob, X).
    X = ann ;
    X = ted.

(Note: Prolog gives one answer at a time. Press ; after each answer to get the next one.)

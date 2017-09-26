% -*- mode: prolog;-*-
% vim: set ft=prolog:

:- [src/genealogy].

:- begin_tests(parent).

test(bart_is_the_parent_of_dave, [nondet]) :-
  parent(bart, dave).

test(shelly_is_the_parent_of_dave, [nondet]) :-
  parent(shelly, dave).

:- end_tests(parent).

:- begin_tests(grandparent).

test(horace_is_the_grandparent_of_ann, [nondet]) :-
  grandparent(horace, ann).

test(all_grandparents, [nondet]) :-
  setof(X, Y^grandparent(X, Y), Xs),
  assertion(Xs == [bart, horace, mildred, shelly]).

test(all_grandchildren) :-
  setof(Y, X^grandparent(X, Y), Ys),
  assertion(Ys == [ann, ted]).

:- end_tests(grandparent).

:- begin_tests(sibling).

test(sibling_ann_ted, [nondet]) :-
  assertion(sibling(ann, ted)).

test(sibling_ted_ann, [nondet]) :-
  assertion(sibling(ted, ann)).

test(sibling_not_self) :-
  assertion(\+ sibling(ted, ted)).

:- end_tests(sibling).

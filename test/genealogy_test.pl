% -*- mode: prolog;-*-
% vim: set ft=prolog:

:- [src/genealogy].

:- begin_tests(parent).

test(parent_bart_dave) :-
  assertion(parent(bart, dave)).

test(parent_shelly_dave) :-
  assertion(parent(shelly, dave)).

:- end_tests(parent).

:- begin_tests(grandparent).

test(grandparent_horace_ann, [nondet]) :-
  assertion(grandparent(horace, ann)).

test(all_grandparents, [nondet]) :-
  setof(X, Y^grandparent(X, Y), Xs),
  assertion(Xs == [bart, horace, mildred, shelly]).

test(all_grand_parents_and_grandchildren) :-
  setof([X, Y], grandparent(X, Y), XYs),
  assertion(XYs == [
    [bart, ann],
    [bart, ted],
    [horace, ann],
    [horace, ted],
    [mildred, ann],
    [mildred, ted],
    [shelly, ann],
    [shelly, ted]
  ]).

:- end_tests(grandparent).

:- begin_tests(sibling).

test(sibling_ann_ted, [nondet]) :-
  assertion(sibling(ann, ted)).

test(sibling_ted_ann, [nondet]) :-
  assertion(sibling(ted, ann)).

test(sibling_not_self) :-
  assertion(\+ sibling(ted, ted)).

:- end_tests(sibling).

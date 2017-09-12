:- [src/peano].

:- begin_tests(add).

test(add_zero, [nondet]) :-
  add(s(0), 0, s(0)).

test(add_one_and_one, [nondet]) :-
  assertion(add(s(0), s(0), s(s(0)))).

test(add_find_pairs) :-
  findall([X, Y], add(X, Y, s(s(s(0)))), XYs),
  assertion(
    XYs = [
      [s(s(s(0))), 0],
      [s(s(0)), s(0)],
      [s(0), s(s(0))],
      [0, s(s(s(0)))]
    ]
  ).

:- end_tests(add).

:- begin_tests(even).

test(even_zero, [nondet]) :-
  even(0).

test(not_even_one, [nondet]) :-
  \+ even(s(0)).

test(even_two, [nondet]) :-
  even(s(s(0))).

% vim: set ft=prolog:

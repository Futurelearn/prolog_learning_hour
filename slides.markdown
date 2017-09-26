theme: Next, 5
<!-- vim: set textwidth=0 backupcopy=yes foldlevel=99: -->

# Prolog

---

# A logic programming language

---

# Most Programming

* Series of steps for computer to follow

---

# Most Programming

* Series of steps for computer to follow
  * "store the number 4 in this variable"
  * "multiply it by 17"
  * "print the result to the screen"

---

# Most Programming

* Series of steps for computer to follow
  * "store the number 4 in this variable"
  * "multiply it by 17"
  * "print the result to the screen"

# a.k.a. "imperative programming"

---

# Prolog Programming

* ~~Series of steps for computer to follow~~

---

# Prolog Programming

* ~~Series of steps for computer to follow~~
* **facts** ("Simon likes Prolog", "Brie is a cheese")

---

# Prolog Programming

* ~~Series of steps for computer to follow~~
* **facts** ("Simon likes Prolog", "Brie is a cheese")
* **rules** ("Simon likes X if X is a cheese")

---

# Prolog Programming

* ~~Series of steps for computer to follow~~
* **facts** ("Simon likes Prolog", "Brie is a cheese")
* **rules** ("Simon likes X if X is a cheese")
* **queries** ("Does Simon like brie?")

---

# Prolog Programming

* ~~Series of steps for computer to follow~~
* **facts** ("Simon likes Prolog", "Brie is a cheese")
* **rules** ("Simon likes X if X is a cheese")
* **queries** ("Does Simon like brie?")

# a.k.a. "declarative programming"

---

# Prolog Programming

* **facts**

```prolog
likes(simon, prolog).
is_a_cheese(brie).
```

* **rules**

```prolog
likes(simon, X) :- is_a_cheese(X).
```

---

# Querying Prolog

```prolog
likes(simon, prolog).
is_a_cheese(brie).
likes(simon, X) :- is_a_cheese(X).

?- 
```

---

# Querying Prolog

```prolog
likes(simon, prolog).
is_a_cheese(brie).
likes(simon, X) :- is_a_cheese(X).

?- likes(simon, brie).
```

---

# Querying Prolog

```prolog
likes(simon, prolog).
is_a_cheese(brie).
likes(simon, X) :- is_a_cheese(X).

?- likes(simon, brie).
true.
```

---

# Querying Prolog

```prolog
likes(simon, prolog).
is_a_cheese(brie).
likes(simon, X) :- is_a_cheese(X).

?- likes(simon, cucumbers).
```

---

# Querying Prolog

```prolog
likes(simon, prolog).
is_a_cheese(brie).
likes(simon, X) :- is_a_cheese(X).

?- likes(simon, cucumbers).
false.
```

---

# Querying Prolog

```prolog
likes(simon, prolog).
is_a_cheese(brie).
likes(simon, X) :- is_a_cheese(X).

?- likes(simon, Y).
```

---

# Querying Prolog

```prolog
likes(simon, prolog).
is_a_cheese(brie).
likes(simon, X) :- is_a_cheese(X).

?- likes(simon, Y).
Y = prolog
```

---

# Querying Prolog

```prolog
likes(simon, prolog).
is_a_cheese(brie).
likes(simon, X) :- is_a_cheese(X).

?- likes(simon, Y).
Y = prolog ;
Y = brie.
```

---

# "Closed-world assumption"

```prolog
likes(simon, prolog).
is_a_cheese(brie).
likes(simon, X) :- is_a_cheese(X).

?- likes(simon, manchego).
```

---

# "Closed-world assumption"

```prolog
likes(simon, prolog).
is_a_cheese(brie).
likes(simon, X) :- is_a_cheese(X).

?- likes(simon, manchego).
false.
```

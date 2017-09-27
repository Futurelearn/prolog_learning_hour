theme: Next, 5
<!-- vim: set textwidth=0 backupcopy=yes foldlevel=99: -->

![original](images/pink.png)

# [fit] Prolog

^ Thanks for coming along to a learning hour I've wanted to do since, well, since I learned we do learning hours

---

# [fit] A logic
# [fit] programming
# [fit] language

---

[.build-lists: true]

# Most Programming

Series of steps for computer to follow

* "store the number 4 in this variable"
* "multiply it by 17"
* "create an instance of class `User`"
* "print the result to the screen"

---

[.build-lists: true]

# Prolog Programming

* **facts** ("Brie is a cheese", "Gorgonzola is a cheese", "Simon likes Prolog")
* **rules** ("Simon likes all cheeses")
* **queries** ("Does Simon like brie?", "What does Simon like?")

---

![original](images/pink.png)

# [fit] Facts

---

# Facts

* "Brie is a cheese", "Gorgonzola is a cheese", "Simon likes Prolog"

---

# Facts

* "Brie is a cheese", "Gorgonzola is a cheese", "Simon likes Prolog"

```prolog
cheese(brie).
cheese(gorgonzola).
```

---

# Facts

* "Brie is a cheese", "Gorgonzola is a cheese", "Simon likes Prolog"

```prolog
cheese(brie).
cheese(gorgonzola).
likes(simon, prolog).
```

---

![original](images/pink.png)

# [fit] Rules

---

# Rules

* "Simon likes all cheeses"

---

# Rules

* "Simon likes all cheeses"

```prolog
likes(simon, brie).
likes(simon, gorgonzola).
% ...
```

---

# Rules

* "Simon likes all cheeses"

```prolog
likes(simon, X) :- cheese(X).
```

---

![original](images/pink.png)

# [fit] Queries

---

# Queries

```prolog
cheese(brie).
cheese(gorgonzola).
likes(simon, prolog).
likes(simon, X) :- cheese(X).

?- 
```

---

# Queries

```prolog
cheese(brie).
cheese(gorgonzola).
likes(simon, prolog).
likes(simon, X) :- cheese(X).

?- cheese(gorgonzola).
```

---

# Queries

```prolog
cheese(brie).
cheese(gorgonzola).
likes(simon, prolog).
likes(simon, X) :- cheese(X).

?- cheese(gorgonzola).
true.
```

---

# Queries

* **Current goal:** `cheese(gorgonzola)`

```prolog
cheese(brie).
cheese(gorgonzola).
likes(simon, prolog).
likes(simon, X) :- cheese(X).

?- cheese(gorgonzola).
```

---

# Queries

* **Current goal:** `cheese(gorgonzola)`

```prolog, [.highlight: 1-2, 6-7]
cheese(brie).
cheese(gorgonzola).
likes(simon, prolog).
likes(simon, X) :- cheese(X).

?- cheese(gorgonzola).
```

---

# Queries

* **Current goal:** `cheese(gorgonzola)`

```prolog, [.highlight: 1, 6-7]
cheese(brie). ✘ brie != gorgonzola
cheese(gorgonzola).
likes(simon, prolog).
likes(simon, X) :- cheese(X).

?- cheese(gorgonzola).
```

---

# Queries

* **Current goal:** `cheese(gorgonzola)`

```prolog, [.highlight: 2, 6-7]
cheese(brie).
cheese(gorgonzola). ✔ perfect match!
likes(simon, prolog).
likes(simon, X) :- cheese(X).

?- cheese(gorgonzola).
```

---

# Queries

* **Current goal:** `cheese(gorgonzola)`

```prolog, [.highlight: 2, 6-7]
cheese(brie).
cheese(gorgonzola). ✔ perfect match!
likes(simon, prolog).
likes(simon, X) :- cheese(X).

?- cheese(gorgonzola).
true.
```

---

# Queries

```prolog
cheese(brie).
cheese(gorgonzola).
likes(simon, prolog).
likes(simon, X) :- cheese(X).

?-
```

---

# Queries

```prolog
cheese(brie).
cheese(gorgonzola).
likes(simon, prolog).
likes(simon, X) :- cheese(X).

?- likes(simon, brie).
```

---

# Queries

```prolog
cheese(brie).
cheese(gorgonzola).
likes(simon, prolog).
likes(simon, X) :- cheese(X).

?- likes(simon, brie).
true.
```

---

# Queries

* **Current goal:** `likes(simon, brie)`

```prolog
cheese(brie).
cheese(gorgonzola).
likes(simon, prolog).
likes(simon, X) :- cheese(X).

?- likes(simon, brie).
```

---

# Queries

* **Current goal:** `likes(simon, brie)`

```prolog, [.highlight: 3-4, 6-7]
cheese(brie).
cheese(gorgonzola).
likes(simon, prolog).
likes(simon, X) :- cheese(X).

?- likes(simon, brie).
```

---

# Queries

* **Current goal:** `likes(simon, brie)`

```prolog, [.highlight: 3, 6-7]
cheese(brie).
cheese(gorgonzola).
likes(simon, prolog). ✘ prolog != brie
likes(simon, X) :- cheese(X).

?- likes(simon, brie).
```

---

# Queries

* **Current goal:** `likes(simon, brie)`

```prolog, [.highlight: 4, 6-7]
cheese(brie).
cheese(gorgonzola).
likes(simon, prolog).
likes(simon, X) :- cheese(X). ✔ X = brie

?- likes(simon, brie).
```

---

# Queries

* **Current goal:** `cheese(brie)`

```prolog
cheese(brie).
cheese(gorgonzola).
likes(simon, prolog).
likes(simon, X) :- cheese(X).

?- likes(simon, brie).
```

---

# Queries

* **Current goal:** `cheese(brie)`

```prolog, [.highlight: 1-2, 6-7]
cheese(brie).
cheese(gorgonzola).
likes(simon, prolog).
likes(simon, X) :- cheese(X).

?- likes(simon, brie).
```

---

# Queries

* **Current goal:** `cheese(brie)`

```prolog, [.highlight: 1, 6-7]
cheese(brie). ✔ perfect match!
cheese(gorgonzola).
likes(simon, prolog).
likes(simon, X) :- cheese(X).

?- likes(simon, brie).
```

---

# Queries

* **Current goal:** `cheese(brie)`

```prolog, [.highlight: 1, 6-7]
cheese(brie). ✔ perfect match!
cheese(gorgonzola).
likes(simon, prolog).
likes(simon, X) :- cheese(X).

?- likes(simon, brie).
true.
```

---

# Queries

```prolog
cheese(brie).
cheese(gorgonzola).
likes(simon, prolog).
likes(simon, X) :- cheese(X).

?- likes(simon, Y).
```

---

# Queries

```prolog
cheese(brie).
cheese(gorgonzola).
likes(simon, prolog).
likes(simon, X) :- cheese(X).

?- likes(simon, Y).
Y = prolog
```

---

# Queries

```prolog
cheese(brie).
cheese(gorgonzola).
likes(simon, prolog).
likes(simon, X) :- cheese(X).

?- likes(simon, Y).
Y = prolog ;
Y = brie
```

---

# Queries

```prolog
cheese(brie).
cheese(gorgonzola).
likes(simon, prolog).
likes(simon, X) :- cheese(X).

?- likes(simon, Y).
Y = prolog ;
Y = brie ;
Y = gorgonzola.
```

---

# Queries

**Current goal:** `likes(simon, Y)`

```prolog
cheese(brie).
cheese(gorgonzola).
likes(simon, prolog).
likes(simon, X) :- cheese(X).

?- likes(simon, Y).
```

---

# Queries

**Current goal:** `likes(simon, Y)`

```prolog, [.highlight: 3-4, 6-10]
cheese(brie).
cheese(gorgonzola).
likes(simon, prolog).
likes(simon, X) :- cheese(X).

?- likes(simon, Y).
```

---

# Queries

**Current goal:** `likes(simon, Y)`

```prolog, [.highlight: 3, 6-10]
cheese(brie).
cheese(gorgonzola).
likes(simon, prolog). ✔ Y = prolog
likes(simon, X) :- cheese(X).

?- likes(simon, Y).
```

---

# Queries

**Current goal:** `likes(simon, Y)`

```prolog, [.highlight: 3, 6-10]
cheese(brie).
cheese(gorgonzola).
likes(simon, prolog). ✔ Y = prolog
likes(simon, X) :- cheese(X).

?- likes(simon, Y).
Y = prolog
```

---

# Queries

**Current goal:** `likes(simon, Y)`

```prolog, [.highlight: 3, 6-10]
cheese(brie).
cheese(gorgonzola).
likes(simon, prolog). ✔ Y = prolog
likes(simon, X) :- cheese(X).

?- likes(simon, Y).
Y = prolog ;
```

---

# Queries

**Current goal:** `likes(simon, Y)`

```prolog, [.highlight: 4, 6-10]
cheese(brie).
cheese(gorgonzola).
likes(simon, prolog).
likes(simon, X) :- cheese(X). ✔ X = Y.

?- likes(simon, Y).
Y = prolog ;
```

---

# Queries

**Current goal:** `cheese(Y)`

```prolog, [.highlight: 1-2, 6-10]
cheese(brie).
cheese(gorgonzola).
likes(simon, prolog).
likes(simon, X) :- cheese(X)

?- likes(simon, Y).
Y = prolog ;
```

---

# Queries

**Current goal:** `cheese(Y)`

```prolog, [.highlight: 1, 6-10]
cheese(brie). ✔ Y = brie
cheese(gorgonzola).
likes(simon, prolog).
likes(simon, X) :- cheese(X)

?- likes(simon, Y).
Y = prolog ;
Y = brie
```

---

# Queries

**Current goal:** `cheese(Y)`

```prolog, [.highlight: 1, 6-10]
cheese(brie). ✔ Y = brie
cheese(gorgonzola).
likes(simon, prolog).
likes(simon, X) :- cheese(X)

?- likes(simon, Y).
Y = prolog ;
Y = brie ;
```

---

# Queries

**Current goal:** `cheese(Y)`

```prolog, [.highlight: 2, 6-10]
cheese(brie).
cheese(gorgonzola). ✔ Y = gorgonzola
likes(simon, prolog).
likes(simon, X) :- cheese(X)

?- likes(simon, Y).
Y = prolog ;
Y = brie ;
Y = gorgonzola.
```

---

![original](images/pink.png)

# [fit] To the laptops!

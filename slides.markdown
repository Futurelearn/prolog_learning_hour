theme: Next, 5
<!-- vim: set textwidth=0 backupcopy=yes foldlevel=99: -->

![original](images/pink.png)

# [fit] Prolog

---

# [fit] A logic
# [fit] programming
# [fit] language

---

![original](images/pink.png)

# Most
# programming

---

# Most Programming

* Series of steps for computer to follow
  * "store the number 4 in this variable"
  * "multiply it by 17"
  * "create an instance of class `User`"
  * "print the result to the screen"

---

# Prolog Programming

* ???

---

# Prolog Programming

* **facts** ("Brie is a cheese", "Reblochon is a cheese", "Simon likes Prolog")

---

# Prolog Programming

* **facts** ("Brie is a cheese", "Reblochon is a cheese", "Simon likes Prolog")
* **rules** ("Simon likes all cheeses")

---

# Prolog Programming

* **facts** ("Brie is a cheese", "Reblochon is a cheese", "Simon likes Prolog")
* **rules** ("Simon likes all cheeses")
* **queries** ("Does Simon like brie?", "What does Simon like?")

---

![original](images/pink.png)

# [fit] Facts

---

# Facts

* **facts** ("Brie is a cheese", "Reblochon is a cheese", "Simon likes Prolog")

---

# Facts

* **facts** ("Brie is a cheese", "Reblochon is a cheese", "Simon likes Prolog")

```prolog
cheese(brie).
cheese(reblochon).
```

---

# Facts

* **facts** ("Brie is a cheese", "Reblochon is a cheese", "Simon likes Prolog")

```prolog
cheese(brie).
cheese(reblochon).
likes(simon, prolog).
```

---

![original](images/pink.png)

# [fit] Rules

---

# Prolog Programming

* **facts** ("Brie is a cheese", "Reblochon is a cheese", "Simon likes Prolog")

```prolog
likes(simon, prolog).
cheese(brie).
cheese(reblochon).
```

* **rules** ("Simon likes all cheeses")

```prolog
likes(simon, brie).
likes(simon, reblochon).
```

---

# Prolog Programming

* **facts** ("Brie is a cheese", "Reblochon is a cheese", "Simon likes Prolog")

```prolog
likes(simon, prolog).
cheese(brie).
cheese(reblochon).
```

* **rules** ("Simon likes all cheeses")

```prolog
likes(simon, X) :- cheese(X).
```

---

![original](images/pink.png)

# [fit] Queries

---

# Querying Prolog

```prolog
likes(simon, prolog).
cheese(brie).
cheese(reblochon).
likes(simon, X) :- cheese(X).

?- 
```

---

# Querying Prolog

```prolog
likes(simon, prolog).
cheese(brie).
cheese(reblochon).
likes(simon, X) :- cheese(X).

?- likes(simon, brie).
```

---

# Querying Prolog

```prolog
likes(simon, prolog).
cheese(brie).
cheese(reblochon).
likes(simon, X) :- cheese(X).

?- likes(simon, brie).
true.
```

---

# Querying Prolog

```prolog
likes(simon, prolog).
cheese(brie).
cheese(reblochon).
likes(simon, X) :- cheese(X).

?- likes(simon, cucumbers).
```

---

# Querying Prolog

```prolog
likes(simon, prolog).
cheese(brie).
cheese(reblochon).
likes(simon, X) :- cheese(X).

?- likes(simon, cucumbers).
false.
```

---

# Querying Prolog

```prolog
likes(simon, prolog).
cheese(brie).
cheese(reblochon).
likes(simon, X) :- cheese(X).

?- likes(simon, Y).
```

---

# Querying Prolog

```prolog
likes(simon, prolog).
cheese(brie).
cheese(reblochon).
likes(simon, X) :- cheese(X).

?- likes(simon, Y).
Y = prolog
```

---

# Querying Prolog

```prolog
likes(simon, prolog).
cheese(brie).
cheese(reblochon).
likes(simon, X) :- cheese(X).

?- likes(simon, Y).
Y = prolog ;
Y = brie.
```

---

# "Closed-world assumption"

```prolog
likes(simon, prolog).
cheese(brie).
cheese(reblochon).
likes(simon, X) :- cheese(X).

?- likes(simon, manchego).
```

---

# "Closed-world assumption"

```prolog
likes(simon, prolog).
cheese(brie).
cheese(reblochon).
likes(simon, X) :- cheese(X).

?- likes(simon, manchego).
false.
```

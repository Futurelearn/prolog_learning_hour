% -*- mode: Prolog;-*-
% vim: set ft=prolog:
%
% ###################
% ### Family Tree ###
% ###################
%
%
% In our introduction we saw a simple programming defining some facts about
% things that were cheese, and some facts and rules about the relationship
% "likes":

cheese(brie).
cheese(gorgonzola).

likes(simon, prolog).
likes(simon, X) :- cheese(X).

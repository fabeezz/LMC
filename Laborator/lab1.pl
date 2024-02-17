female(mary).
female(sandra).
female(juliet).
female(lisa).
male(peter).
male(paul).
male(dony).
male(bob).
male(harry).
parent(bob, lisa).
parent(bob, paul).
parent(bob, mary).
parent(juliet, lisa).
parent(juliet, paul).
parent(juliet, mary).
parent(peter, harry).
parent(lisa, harry).
parent(mary, dony).
parent(mary, sandra).

father_of(F, C) :- male(F), parent(F,C).
mother_of(M, C) :- female(M), parent(M,C).
grandfather_of(G, C) :- father_of(G, P), parent(P, C).
grandmother_of(G, C) :- mother_of(G, P), parent(P, C).
sister_of(S, Person) :- parent(P, S), parent(P, Person), female(S), S \= Person.
brother_of(B, Person) :- parent(P, B), parent(P, Person), male(B), B \= Person.
aunt_of(A, Person) :- sister_of(A, Parent), parent(Parent, Person).
uncle_of(U, Person) :- brother_of(U, Parent), parent(Parent, Person).

%EX3

not_parent(X,Y) :- not(parent(X,Y)).

ancestor_of(X,Y) :- parent(X,Y).
ancestor_of(X,Y) :- parent(X,Z), ancestor_of(Z,Y).

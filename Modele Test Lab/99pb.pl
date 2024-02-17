/*
%ultimul el din lista
last_el([X],X).
last_el([_|T], R) :- last_el(T,R).

%penultimul el in lista
pen_el([X|[_]], X).
pen_el([_|T], R) :- pen_el(T,R).
*/
%al k-lea element din lista
k_el(X,[X|_],1).
k_el(X,[_|T], K) :- K>1, K1 is K-1, k_el(X,T,K1).

%nr de elem intr-o lista
nr_el([],0).
nr_el([_|T],NR) :- nr_el(T,NR1), NR is NR1+1.

%reverse a list
rev([],[]).
rev([H|T],L) :- rev(T,LN), append(LN,[H],L).

%palindrome list
palindrome(List) :- rev(List, List).



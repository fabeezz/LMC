%este_o_lista_palindrom?
palindrome([]).
palindrome(List) :- rev(List, List).

rev([],[]).
rev([H|T],ListaNoua) :- rev(T, Lista), append(Lista,[H],ListaNoua).

%remove_duplicates
remove_duplicates([],[]).
remove_duplicates([H|T],M) :- remove_duplicates(T,M), member(H,M). %daca H este deja in M, NU
remove_duplicates([H|T],[H|M]) :- remove_duplicates(T,M), not(member(H,M)). %daca H nu este in M, DA


%atimes
/*
atimes(_,[],0).
atimes(X,[H|T],NR) :- atimes(X,T,NRv), X == H, NR is NRv + 1.
atimes(X,[H|T],NR) :- atimes(X,T,NR), X =\= H.
*/

atimes(_,[],0).
atimes(X,[H|T],NR) :- X == H -> atimes(X,T,NRv), NR is NRv + 1; atimes(X,T,NR).
consec([_]).
consec([H,I|T]) :- I is H+1, consec([I|T]).

desc([_]).
desc([H,I|T]) :- H is I+1, desc([I|T]).

angajat(_,_).
lista_angajati([],_,[]).
lista_angajati([angajat(Nume,Salariu)|T],Prag,[Nume|ListaRezultat]) :-
                            Salariu >= Prag, lista_angajati(T,Prag,ListaRezultat).
lista_angajati([angajat(_,Salariu)|T],Prag,ListaRezultat) :-
                            Salariu < Prag, lista_angajati(T,Prag,ListaRezultat).
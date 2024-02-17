punct(_,_).
lista_puncte([],_,[]).
lista_puncte([punct(X,Y)|T], Val, [punct(X,Y)|R]) :-
                Y>Val, lista_puncte(T,Val,R).
lista_puncte([punct(_,Y)|T],Val, R) :-
                Y =< Val, lista_puncte(T,Val,R).

dropN(_,[],0).
dropN()

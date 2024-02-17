%fibbonaci----------------------------------
fib(0,1).
fib(1,1).
fib(Index, Nr) :- 2 =< Index, Index1 is Index-1, fib(Index1, X), Index2 is Index-2, fib(Index2, Y), Nr is X+Y.

fibo(0,0,1).
fibo(1,1,1).
fibo(N,Z,X) :- 2 =< N, M is N-1, fibo(M,Y,Z), X is Y + Z.

fibg(N,X) :- fibo(N,_,X).

%PatratDeCaractere-------------------------------------------------------

line(0,_).
line(X, C) :- X > 0, Y is X-1, write(C), line(Y, C).
rectangle(0,_,_) :- nl.
rectangle(NL,NC,C) :- NL > 0, NL1 is NL-1, line(NC, C), nl, rectangle(NL1, NC, C).
square(NL,C) :- rectangle(NL,NL,C).

%elemnt_of----------------------------------------------------------------------------

element_of(X,[X|_]).
element_of(X,[_|T]) :- element_of(X,T).

%concat_lists--------------------------------------------------------------

concat_lists([], List, List).
concat_lists([Elem | List1], List2, [Elem | List3]) :-
concat_lists(List1, List2, List3).

%all_a (lista formata doar din 'a') -----------------------------------------

all_a([]).
all_a([a|X]):-all_a(X).

%trans_a_b (lista de a devine lista de b) -------------------------------------

trans_a_b([],[]).
trans_a_b([a|X],[b|Y]):-trans_a_b(X,Y).

%este_palindrom-----------------------------------------
is_palindrome([]).
is_palindrome([_]).
is_palindrome(List) :- append([Head|Tail], [Head], List), is_palindrome(Tail).

%scalarMult ----------------------------------------------------------------------------------

scalarMult(_, [], []).
scalarMult(X, [H|T], [Y|ListaNoua]) :- Y is X*H, scalarMult(X, T, ListaNoua).

%produs_scalar

dot([],[],0).
dot([H1|T1],[H2|T2], Result) :- dot(T1,T2,Rpartial), Y is H1*H2, Result is Y+Rpartial.

%maxim_din_vector

max([],0).
max([H|T],X) :- max(T,Y), maxim(H,Y,X).

maxim(A,B,B) :- B>A.
maxim(A,B,A) :- A>=B.

mx([],0).
mx([H|T],X):-
    mx(T,Tm),
    H>=Tm,
    X is H.
mx([H|T],X):-
    mx(T,Tm),
    H<Tm,
    X is Tm.

/*
max_in_array([H|T],Max) :- max_in_array(T, H, Max).
max_in_array([], Max, Max).
max_in_array([H|T], CurrentMax, Max) :- H > CurrentMax -> max_in_array(T, H, Max); 
                                    max_in_array(T, CurrentMax, Max).
*/


bnon(1,0).
bnon(0,1).

bsi(1,1,1).
bsi(1,0,0).
bsi(0,1,0).
bsi(0,0,0).

bsau(1,1,1).
bsau(1,0,1).
bsau(0,1,1).
bsau(0,0,0).

bimp(X,Y,Rez) :- bnon(X,X1), bsau(X1,Y,Rez).

/* predicates for states */

ontable(b).
ontable(d).
on(a,b).
on(c,d).
clear(a).
clear(c).
clear(b).
clear(d).
emptyarm.

/*operations*/

holdingblock(X):- pickup(X).
pickup(X):- emptyarm, clear(X).
stack(X,Y):- clear(Y), holdingblock(X).
on(X,Y):- stack(X,Y).
putdown(X):- holdingblock(X).
unstack(X,Y):- emptyarm, clear(X).
ontable(c):- pickup(c), putdown(c).





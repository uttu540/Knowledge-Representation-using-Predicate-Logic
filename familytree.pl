/*facts*/
male(utkarsh).
male(rohit).
male(amit).
male(ujjawal).
male(ram).
female(ranu).
female(deepali).
female(riddhi).
female(premlata).
father(rohit,utkarsh).
father(amit,ujjawal).
father(amit,riddhi).
father(ram,rohit).
father(ram,amit).
mother(ranu,utkarsh).
mother(deepali,ujjawal).
mother(deepali,riddhi).
mother(premlata,rohit).
mother(premlata,amit).
husband(rohit,ranu).
husband(amit,deepali).
husband(ram,premlata).
wife(premlata,ram).
wife(deepali,amit).
wife(ranu,rohit).
brother(rohit,amit).
brother(amit,rohit).
brother(ujjawal,riddhi).
sister(riddhi,ujjawal).
grandfather(ram,utkarsh).
grandfather(ram,riddhi).
grandfather(ram,ujjawal).
grandmother(premlata,utkarsh).
grandmother(premlata,riddhi).
grandmother(premlata,ujjawal).
uncle(amit,utkarsh).
aunt(deepali,utkarsh).
uncle(rohit,ujjawal).
aunt(ranu,ujjawal).
uncle(rohit,riddhi).
aunt(ranu,riddhi).

/*rules and clauses*/

isgrandfather(X,Y):- father(X,Z), father(Z,Y).
isgrandmother(X,Y):- mother(X,Z), mother(Z,Y).
iscousin(X,Y):- father(Z,X),uncle(Z,Y).
isgrandson(X,Y):- male(X), father(Z,X),father(Y,Z).
isgranddaughter(X,Y):- female(X), father(Z,X), father(Y,Z).
isaunt(X,Y):- aunt(X,Y).
isaunt(X,Y):- wife(X,Z),uncle(Z,Y).
isaunt(X,Y):- wife(X,Z), brother(Z,A), father(A,Y).
isuncle(X,Y):- uncle(X,Y).
isuncle(X,Y):- brother(X,Z), father(Z,Y).
ismotherinlaw(X,Y):- mother(X,Z), husband(Z,Y).
isfatherinlaw(X,Y):- father(X,Z), husband(Z,Y).











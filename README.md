# Knowledge-Representation-using-Predicate-Logic
Creating family tree and solving block-world problem using SWI-Prolog

Preparing a knowledge base required for a family tree representation using predicate logic. Defining clauses to find out explicit and non explicit relationships between individuals. 

Goal Stack Planning to solve Block world problem.

Family tree queries:

Queries that can be used for using the family tree.pl file are:

isgrandfather(ram, utkarsh).

isgrandfather(ram, ujjawal).

iscousin(utkarsh,ujjawal).

isuncle(rohit,riddhi).

isuncle(amit,utkarsh).

isaunt(deepali,utkarsh).

isaunt(ranu,riddhi).

ismotherinlaw(premlata, ranu).

isfatherinlaw(ram, deepali).

Queries that can be used for using the family tree(recursive).pl file are:

isfather(amit, riddhi).

isuncle(rohit, ujjawal).

Query to use for using the blockworld.pl file:

(ontable(c), ontable(d), on(a,c), on(b,d), emptyarm, clear(a), clear(b)).


Given a set of blocks,table and a robotic arm which can be used to reposition blocks, preparing a goal stack planning to provide a transformation from Initial scenario to Goal Scenario. Defining Predicates,Clauses and perfom goal stack planning to provide the given transformation.

Predicates for states:

Block on table, block on top of another block,emply robotic arm, arm holding a block.

 

Predicates for operations:

Stack a block to place it on top of another block.
Unstack a block to lift it from top of another block.
Pickup block from the table
Put down the block on the table.

 Goal Stack Planning sequence to reach to Goal Scenario from Initial state.

![image](https://user-images.githubusercontent.com/57611111/121997252-b263c100-cdc7-11eb-93be-67210a745594.png)


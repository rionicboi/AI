parent(ajay,shruti).
parent(ajay, varun).
parent(kusum, shruti).
parent(kusum, varun).
parent(dada,ajay).
parent(dadi,ajay).
parent(nanaji, kusum).
parent(naniji, kusum).
female(kusum).
female(shruti).
female(naniji).
female(dadi).
male(dada).
male(ajay).
male(varun).
male(nanaji).
cat(hari).
father(X,Y):- male(X),parent(X,Y).
mother(X,Y):- female(X),parent(X,Y).
grandparent(X,Z):- parent(X,Y), parent(Y,Z).
sibling(X,Y):- parent(Z,X),parent(Z,Y).
brother(X,Y):- male(X),sibling(X,Y).
sister(X,Y):- female(X),sibling(X,Y).
grandmother(X,Y):- female(X),grandparent(X,Y).
grandfather(X,Y):- male(X), grandparent(X,Y).
married(X,Y):-parent(X,Z),parent(Y,Z).
husband(X,Y):- male(X), married(X,Y).
wife(X,Y):- female(X),married(X,Y).
ancestor(X,Y):- parent(X,Y).
ancestor(X,Y):- grandparent(X,Y).
child(X,Y):- parent(Y,X).
grandchild(X,Y):- grandparent(Y,X).
descendant(X,Y):- child(X,Y).
descendant(X,Y):- grandchild(X,Y).

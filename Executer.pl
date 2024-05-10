
Artificial Intelligence
Practical File
 
  
 
Name: Ryan Jose
Roll No: 2110872
Course: BSc(Hons) Computer Science
Section: B
Index
●	Practical 1…………………………………3
●	Practical 2…………………………………3
●	Practical 3…………………………………3
●	Practical 4…………………………………3
●	Practical 5…………………………………4
●	Practical 6…………………………………4
●	Practical 7…………………………………4
●	Practical 8…………………………………5
●	Practical 9…………………………………5 
●	Practical 10………………………………..5
●	Practical 11………………………………..5
●	Practical 12………………………………..6
●	Practical 13..………………………………6
●	Practical 14………………………………..7
●	Practical 15………………………………..7
●	Practical 16………………………………..7
●	Practical 17………………………………..7
●	Practical 18………………………………..8
●	Extra Practical 1…………………………..8
●	Extra Practical 2…………………………..8
 
1. Write a prolog program to calculate the sum of two numbers.

sum(X,Y,S):-
    S is X+Y.

 


2. Write a Prolog program to implement max(X, Y, M) so that M is the maximum of two numbers X and Y.

max(X,Y,Z):-
    X>Y,
    Z is X.
max(X,Y,Z):-
    Z is Y.

 

3. Write a program in PROLOG to implement factorial (N, F) where F represents the factorial of a number N.

factorial(0,1).
factorial(X,Z):-
    X>0,
    X1 is X-1,
    factorial(X1,Z1),
    Z is Z1*X.

 
4. Write a program in PROLOG to implement generate_fib(N,T) where T represents the Nth term of the fibonacci series. 

fib(1,0).
fib(2,1).
fib(X,R):-
    N1 is X-1,
    fib(N1,F1),
    N2 is X-2,
    fib(N2,F2),
    R is F1+F2.

 



5. Write a Prolog program to implement GCD of two numbers.

gcd(X, Y) :- X == 0 -> write(Y);
             Y == 0 -> write(X);
             X == Y -> write(X);
             X > Y -> (Z is X - Y, gcd(Z, Y));
             Y > X -> (C is Y - X, gcd(X, C)).


 

6. Write a Prolog program to implement power (Num,Pow, Ans) : where Num is raised to the power Pow to get Ans. 

power(0, Power, 0) :- Power > 0.
power(Num, 0, 1) :- Num > 0.
power(Num, Power, Ans) :- Num > 0, Power > 0,
                          P1 is Power - 1,
                          power(Num, P1, A1),
                          Ans is A1 * Num.

 

7. Prolog program to implement multi (N1, N2, R) : where N1 and N2 denotes the numbers to be multiplied and R represents the result. 
multi(N, 1, N).
multi(N1, N2, R) :- T is N2 - 1,
                    multi(N1, T, Y),
                    R is Y + N1.
 

8. Write a Prolog program to implement memb(X, L): to check whether X is a member of L or not. 

memb(X, [X|_]) :- !.                
memb(X, [_|L]) :- memb(X, L).

 

9. Write a Prolog program to implement conc (L1, L2, L3) where L2 is the list to be appended with L1 to get the resultant list L3. 

conc([], L, L) :- !.                    
conc([H|T], L2, [H|R]) :- conc(T, L2, R).

 

10. Write a Prolog program to implement reverse (L, R) where List L is original and List R is reversed list. 

conc([], L, L) :- !.                      
conc([H|T], L2, [H|R]) :- conc(T, L2, R).  
reverse([], []) :- !.                      
reverse([H|T], R) :- reverse(T, RT),      
                     conc(RT, [H], R).


 

11. Write a program in PROLOG to implement palindrome (L) which checks whether a list L is a palindrome or not. 

palindrome(L):-
    reverse(L,L).

 

12. Write a Prolog program to implement sumlist(L, S) so that S is the sum of a given list L. 

sumlist([],0).
sumlist([X|L1],S):-
    sumlist(L1,S1),
    S is S1+X.

 

13. Write a Prolog program to implement two predicates evenlength(List) and oddlength(List) so that they are true if their argument is a list of even or odd length respectively. 
evenlength([]).
evenlength([_|T]):-
    oddlength(T).
oddlength([_|T]):-
    evenlength(T).
evenoddlength:-
    write("Enter the list to be checked: "),
    read(L),
    (evenlength(L)
    ->write("The entered list is even length");
    write("The entered list is odd length")),!.

 



14. Write a Prolog program to implement nth_element (N, L, X) where N is the desired position, L is a list and X represents the Nth element of L. 

nth_element(1, [X|_], X).
nth_element(K,[_|L],X):-
    nth_element(K1,L,X),
    K is K1+1.

 

15. Write a Prolog program to implement maxlist(L, M) so that M is the maximum number in the list. 

maxlist([X],X).
maxlist([H|T],M):-
    maxlist(T,M1),
    H<M1 -> M is M1;
    M is H.

 

16. Write a prolog program to implement insert_nth (I, N, L, R) that inserts an item I into Nth position of list L to generate a list R. 

insert_nth(I, 1, L, [I|L]).
insert_nth(I, N, [H|T], [H|R]):-
    N1 is N-1,
    insert_nth(I, N1, T, R).

 

17. Write a Prolog program to implement delete_nth (N, L, R) that removes the element on Nth position from a list L to generate a list R. 

delete_nth(1, [_|T], T).
delete_nth(N, [H|T], [H|R]):-
    N1 is N-1,
    delete_nth(N1, T, R).

 

18. Write a program in PROLOG to implement merge (L1, L2, L3) where L1 is first ordered list and L2 is second ordered list and L3 represents the merged list.

merge([],L2,L2).
merge(L1,[],L1).
merge([H1|T1],[H2|T2],[H1|T3]):-
    H1=<H2,
    merge(T1, [H2|T2], T3).
merge([H1|T1],[H2|T2],[H2|T3]):-
    merge([H1|T1], T2, T3).

 

EXTRA PRACTICALS 

1. Removes all occurrences of a given element X from a list L, resulting in a new list R.

delete(_,[],[]):-!.
delete(X,[X|T],T1):- delete(X,T,T1).
delete(X,[H|T], [H|T1]):-delete(X,T,T1).

 

2. Remove duplicates from a given list.

mem(X, [X|_]).
mem(X, [_|T]):- mem(X,T).

duplicates([],[]):-!.
duplicates([H|T], R):- mem(H,T), duplicates(T,R).
duplicates([H|T], [H|R]):- duplicates(T,R).

 

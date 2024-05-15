palindrome :-
    write('Enter a list: '),
    read(L),
    palindrome(L),
    write('The list is a palindrome.').
    
palindrome(L) :- reverse(L, L).

reverse([], []).
reverse([H|T], R) :- reverse(T, TR), append(TR, [H], R).

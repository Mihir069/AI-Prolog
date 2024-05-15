% Read a list from the user
read_list(L) :-
    write('Enter a list: '),
    read(L).

% Find the maximum number in a list
maxlist(L, M) :-
    max_list(L, M).

% Main predicate to read the list and find the maximum number
main :-
    read_list(L),
    maxlist(L, M),
    write('The maximum number in '), write(L), write(' is '), write(M).

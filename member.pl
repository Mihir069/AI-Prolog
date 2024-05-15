memb :-
    write('Enter a list: '),
    read(L),
    write('Enter an element: '),
    read(X),
    memb(X, L),
    write(X), write(' is a member of '), write(L), nl.

memb(X, [X|_]).
memb(X, [_|T]) :- memb(X, T).

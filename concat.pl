conc :-
    write('Enter the first list: '),
    read(L1),
    write('Enter the second list: '),
    read(L2),
    conc(L1, L2, L3),
    write('The concatenated list is: '), write(L3), nl.

conc([], L, L).
conc([H|T], L2, [H|L3]) :- conc(T, L2, L3).

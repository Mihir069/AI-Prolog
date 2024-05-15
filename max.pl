max(X, Y, M) :-
    write('Enter the first number: '),
    read(X),
    write('Enter the second number: '),
    read(Y),
    (X >= Y -> M = X; M = Y),
    write('The maximum number is: '),
    write(M).

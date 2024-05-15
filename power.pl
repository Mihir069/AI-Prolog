power :-
    write('Enter the number: '),
    read(Num),
    write('Enter the power: '),
    read(Pow),
    power(Num, Pow, Ans),
    write(Num), write(' raised to the power of '), write(Pow),
    write(' is '), write(Ans), nl.

power(_, 0, 1).
power(Num, Pow, Ans) :-
    Pow > 0,
    NewPow is Pow - 1,
    power(Num, NewPow, NewAns),
    Ans is Num * NewAns.

:- initialization(main). % Call main predicate on program start

main :-
    write('Enter the first number: '), % Prompt for input
    read(X), % Read the X from user input
    write('Enter the second number: '), % Prompt for input
    read(Y), % Read the Y from user input
    gcd(X, Y, Result), % Call gcd predicate to find GCD of two numbers
    write('GCD: '), write(Result), nl,  % Display the result
    halt. % Terminate the program

gcd(X,Y,Result):- (
    X=0 -> (
        Result is Y
    );
    Y=0 -> (
        Result is X
    );
    X=Y -> (
        Result is X
    );
    X>Y -> (
        Y1 is X-Y,
        gcd(Y1,Y,Result)
    );
    X<Y->(
        Y1 is Y-X,
        gcd(X,Y1,Result)
    )
).

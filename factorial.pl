:- initialization(main). % Call main predicate on program start

main :-
    write('Enter the number: '), % Prompt for input
    read(N), % Read the N from user input
    
    factorial(N,F), % Call factorial predicate to find the factorial of N
    write('Factorial: '), write(F), nl,  % Display the result
    halt. % Terminate the program
    
factorial(0,1).
factorial(N,F):-
    N>0,
    N1 is N-1,
    factorial(N1,F1),
    F is N*F1.

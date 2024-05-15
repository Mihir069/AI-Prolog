:- initialization(main). % Call main predicate on program start

main :-
    write('Enter the first number: '), % Prompt for input
    read(N1), % Read the N1 from user input
    write('Enter the second number: '), % Prompt for input
    read(N2), % Read the N2 from user input
    multi(N1, N2, R), % Call multi predicate to multiply N1 and N2
    write('Product: '), write(R), nl, % Display the result
    halt. % Terminate the program
    
multi(0, _, 0).
multi(_, 0, 0).
multi(N1, N2, R) :-
    
    R is N1 * N2.
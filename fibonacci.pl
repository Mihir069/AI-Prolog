:- initialization(main). % Call main predicate on program start

main :-
    write('Enter the number of term to be found: '), % Prompt for input
    read(N), % Read the N from user input
    generate_fib(N,T),
    write(N), write('-term of Fibonacci: '), write(T), nl. % Display the result

generate_fib(0,1).
generate_fib(1,1).
generate_fib(N,T) :- 
    N1 is N-1,
    N2 is N-2,
    generate_fib(N1, T1),
    generate_fib(N2, T2),
    T is T1 + T2.

:- initialization(main).   % Call main predicate on program start

main :- 
    write('Enter a list of elements: '), % Prompt for input
    read(L),  % Read the list from user input
    write('Enter the desired position (N): '), % Prompt for N
    read(N),  % Read N from user input
    nth_element(N, L, X),  % Call nth_element predicate to retrieve the nth element
    write('The element at position '), write(N), write(' is: '), write(X), nl,  % Display the result
    halt.  % Terminate the program

nth_element(1, [X | _], X).  % Base case: N=1, the desired position, retrieve the head of the list
nth_element(N, [_ | L], X) :-
    N > 1,  % Ensure N is a positive integer
    N1 is N - 1,  % Decrement N by 1
    nth_element(N1, L, X).  % Recursive rule: retrieve the nth element from the tail of the list
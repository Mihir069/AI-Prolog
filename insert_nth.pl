:- initialization(main). % Call main predicate on program start

main :- 
    write('Enter a list of elements: '), % Prompt for input
    read(L), % Read the list from user input
    write('Enter the item to be inserted: '), % Prompt for I
    read(I), % Read I from user input
    write('Enter the desired position (N): '), % Prompt for N
    read(N), % Read N from user input
    insert_nth(I, N, L, R), % Call insert_nth predicate to insert I into the nth position of L
    write('The list after inserting '), write(I), write(' at position '), write(N), write(' is: '), write(R), nl, % Display the result
    halt. % Terminate the program

insert_nth(I, 1, L, [I | L]). % Base case: insert I as the head of the list when N=1
insert_nth(I, N, [X | L], [X | R]) :-
    N > 1, % Ensure N is a positive integer
    N1 is N - 1, % Decrement N by 1
    insert_nth(I, N1, L, R). % Recursive rule: insert I into the (N-1)th position of the tail of the list
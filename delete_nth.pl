
main :- 
    write('Enter a list of elements: '), % Prompt for input
    read(L), % Read the list from user input
    write('Enter the position of the element to be deleted: '), % Prompt for N
    read(N), % Read N from user input
    delete_nth(N, L, R), % Call delete_nth predicate to remove Nth element from L
    write('The list after deleting element at position '), write(N), write(' is: '), write(R), nl, % Display the result
    halt. % Terminate the program

delete_nth(1, [_ | L], L). % Base case: remove head element when N=1
delete_nth(N, [X | L], [X | R]) :-
    N > 1, % Ensure N is a positive integer
    N1 is N - 1, % Decrement N by 1
    delete_nth(N1, L, R). % Recursive rule: remove Nth element from tail of the list





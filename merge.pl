:- initialization(main). % Call main predicate on program start

main :- 
    write('Enter the first ordered list: '), % Prompt for input
    read(L1), % Read the first ordered list from user input
    write('Enter the second ordered list: '), % Prompt for input
    read(L2), % Read the second ordered list from user input
    merge(L1, L2, L3), % Call merge predicate to merge L1 and L2
    write('The merged list is: '), write(L3), nl, % Display the result
    halt. % Terminate the program

merge([], L, L). % Base case: if L1 is empty, merged list is L2
merge(L, [], L). % Base case: if L2 is empty, merged list is L1
merge([X | L1], [Y | L2], [X | L3]) :-
    X =< Y, % Compare the heads of L1 and L2
    merge(L1, [Y | L2], L3). % Recursive rule: if X <= Y, merge the tails of L1 and L2
merge([X | L1], [Y | L2], [Y | L3]) :-
    X > Y, % Compare the heads of L1 and L2
    merge([X | L1], L2, L3). % Recursive rule: if X > Y, merge the tails of L1 and L2
:- initialization(main). % Call main predicate on program start

main :-
    write('Enter a list: '), % Prompt for input
    read(L), % Read list from user input
    reverse(L, R), % Call reverse predicate to reverse the list L
    write('Reversed list: '), write(R), nl, % Display the result
    halt. % Terminate the program
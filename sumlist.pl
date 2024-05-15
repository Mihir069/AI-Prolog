:- initialization(main).   % Call main predicate on program start

main :- 
   write('Enter a list of numbers: '),  % Prompt for input
   read(L),                             % Read the list from user input
   sumlist(L, S),                       % Calculate the sum using sumlist predicate
   write('Sum: '), write(S).            % Display the sum

sumlist([], 0).              % Base case: empty list has sum 0
sumlist([H | T], S) :-
   sumlist(T, S1),          % Recursively calculate sum of the tail of the list
   S is H + S1.             % Add the head of the list to the sum of the tail to get the final sum
















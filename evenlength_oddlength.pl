evenlength([]).
evenlength([_,Xs|T]) :- evenlength(T).

oddlength([_]).
oddlength([_,Xs|T]) :- oddlength(T).

main :-
  write('Enter a list: '),
  read(L),
  (evenlength(L) -> write('List has even length.') ; write('List does not have even length.')),
  nl,
  (oddlength(L) -> write('List has odd length.') ; write('List does not have odd length.')),
  nl.

:- initialization outcome, halt.

outcome :-
    consult('_imaginedpath/prolog/nuetral_outcome.pl'), 
    X = charlotte(player, not_couple), write('>> Let me show you why: '), write(X), nl.

straight_chain_alkane(0,[]).
straight_chain_alkane(1,[carb(h, h, h, h)]).




    
straight_chain_alkane(N,[carb(h,h,h,c)|T]) :-

    N >= 2,
    N1 is N - 1,
    0 is N mod 2,
    straight_chain_alkane_even(N1,T).

straight_chain_alkane(N,[carb(h,h,h,c)|T]) :-

    N >= 2,
    N1 is N - 1,
    1 is N mod 2,
    straight_chain_alkane_odd(N1,T).


straight_chain_alkane_even(1,[carb(c,h,h,h)]).

straight_chain_alkane_even(N,[carb(c,h,h,c),carb(c,h,h,c)|T]) :-
    
    N > 1,
    N1 is N-2,
    straight_chain_alkane_even(N1,T).

straight_chain_alkane_odd(2,[carb(c,h,h,c),carb(c,h,h,h)]).

straight_chain_alkane_odd(N,[carb(c,h,h,c),carb(c,h,h,c)|T]) :-
    
    N > 2,
    N1 is N-2,
    straight_chain_alkane_odd(N1,T).


branched_alkane(N,[carb(h,h,h,c)|T]) :-

    N > 3,
    N1 is N - 1,
    branched_alkane1(N1,T).

branched_alkane1(1,[carb(c,h,h,h)]).
branched_alkane1(2,[carb(c,h,h,c),carb(c,h,h,h)]).
branched_alkane1(3,[carb(h, h, h, c), carb(c, c1h3, h, c), carb(c, h, h, h)]).

branched_alkane1(N,[carb(c,h,h,c),carb(c,c1h3,h,c)|T]) :-

    N > 3,
    N1 is N - 3,
    branched_alkane1(N1,T).

branched_alkane1(N,[carb(c,c1h3,h,c),carb(c,h,h,c)|T]) :-

    N > 3,
    N1 is N - 3,
    branched_alkane1(N1,T).

branched_alkane1(N,[carb(c,c1h3,c1h3,c),carb(c,h,h,c)|T]) :-

    N > 4,
    N1 is N - 4,
    branched_alkane1(N1,T).

branched_alkane1(N,[carb(c,h,h,c),carb(c,c1h3,c1h3h,c)|T]) :-

    N > 4,
    N1 is N - 4,
    branched_alkane1(N1,T).

branched_alkane1(N,[carb(c,c1h3,h,c),carb(c,c1h3,h,c)|T]) :-

    N > 4,
    N1 is N - 4,
    branched_alkane1(N1,T).

branched_alkane1(N,[carb(c,h,c1h3,c),carb(c,c1h3,h,c)|T]) :-

    N > 4,
    N1 is N - 4,
    branched_alkane1(N1,T).

branched_alkane1(N,[carb(c,h,c1h3,c),carb(c,h,c1h3,c)|T]) :-

    N > 4,
    N1 is N - 4,
    branched_alkane1(N1,T).

branched_alkane1(N,[carb(c,c1h3,h,c),carb(c,h,c1h3,c)|T]) :-

    N > 4,
    N1 is N - 4,
    branched_alkane1(N1,T).

branched_alkane1(N,[carb(c,c1h3,h,c),carb(c,c1h3,c1h3h,c)|T]) :-

    N > 5,
    N1 is N - 5,
    branched_alkane1(N1,T).

branched_alkane1(N,[carb(c,h,c1h3,c),carb(c,c1h3,c1h3h,c)|T]) :-

    N > 5,
    N1 is N - 5,
    branched_alkane1(N1,T).

branched_alkane1(N,[carb(c,c1h3,c1h3h,c),carb(c,c1h3,h,c)|T]) :-

    N > 5,
    N1 is N - 5,
    branched_alkane1(N1,T).

branched_alkane1(N,[carb(c,c1h3,c1h3h,c),carb(c,h,c1h3,c)|T]) :-

    N > 5,
    N1 is N - 5,
    branched_alkane1(N1,T).

branched_alkane1(N,[carb(c,c1h3,c1h3,c),carb(c,c1h3,c1h3,c)|T]) :-

    N > 6,
    N1 is N - 6,
    branched_alkane1(N1,T).

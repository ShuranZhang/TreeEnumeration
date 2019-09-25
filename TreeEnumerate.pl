range(A, B, L):- A < B, A1 is A +1, range(A1, B, L1), L = [A| L1].
range(A, B, L):- A = B, L = [A].
treeEnumerate(0, L):- L = "".
treeEnumerate(1, L):- L = "(.)".
treeEnumerate(N, L):- N > 1, N1 is N - 1, range(0, N1, NL), member(LN, NL), RN is N - LN - 1, treeEnumerate(LN, LL), treeEnumerate(RN, RR), string_concat("(", LL, OUT1), string_concat(OUT1, ".", OUT2), string_concat(OUT2, RR, OUT3), string_concat(OUT3, ")", L).

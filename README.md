# TreeEnumeration
Shuran Zhang
Sep 20 2019

Binary tree enumeration with Ocaml and Prolog. The user can enter a number of node and the program will generate all possible
unlabled binary trees in parenthesized form, ie: all trees with 2 nodes will express as  (.(.)) and ((.).)

Run Instruction(n refers to number of nodes the user want to generate all possible unlabeled trees): 
1. Ocaml: 
   
   ocaml TreeEnumeration.ml n
   
2. Prolog: 
   
   wipl TreeEnumeration.pl
   
   treeEnumerate(n,L), write(L), nl, fail.

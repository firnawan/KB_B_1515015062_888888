predicates
nondeterm anak(STRING,STRING)
nondeterm istri(STRING,STRING)
nondeterm pria(STRING)
nondeterm wanita(STRING)
nondeterm ayah(STRING,STRING)
nondeterm ibu(STRING,STRING)
nondeterm cucu(STRING,STRING)
nondeterm kakek(STRING,STRING)
nondeterm adik(STRING,SYMBOL)
nondeterm usia(STRING,SYMBOL)

clauses
anak("Jhon","James").
anak("James","Peter").
anak("Sue","Ann").

istri("Mary","Peter").
istri("Ann","James").

pria("Jhon").
pria("James").
pria("Peter").

wanita("Mary").
wanita("Sue").
wanita("Ann").

usia("Jhon","10").
usia("Sue","13").

ayah(K,L):-anak(L,K).
kakek(K,L):-ayah(K,M),ayah(M,L).
ibu(K,L):-istri(L,M),anak(K,N).
cucu(K,L):-anak(K,M),istri(M,N),anak(N,L).
adik(K,L):-usia(K,M),usia(L,N),M<N.


Goal
kakek(Pertama,Kedua).
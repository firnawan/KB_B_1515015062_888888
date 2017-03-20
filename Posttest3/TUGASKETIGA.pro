domains
%pkl = penjual, s = stand, t = total
pkl,s=symbol
t = integer

predicates
nondeterm stand(s,pkl,pkl,pkl,pkl,pkl,pkl)
nondeterm nm_stand1(pkl,pkl,pkl,pkl)
nondeterm nm_stand2(pkl,pkl,pkl,pkl)
nondeterm nm_stand3(pkl,pkl,pkl,pkl)
nondeterm total(s,t)


clauses
stand(gerbang,cireng,siomay,bakso,pentol,batagor,saladbuah).
stand(dalam,sate,esteh,eskelapa,escampur,sopbuah,mieayam).
nm_stand1(cireng,siomay,bakso,pentol).
nm_stand2(batagor,saladbuah,sate,esteh).
nm_stand3(eskelapa,escampur,sopbuah,mieayam).
total(gerbang,6).
total(dalam,6).

goal
write("penjual yang berada di stand di dekat gerbang festival :"),nl,stand(gerbang,PKL1,PKL2,PKL3,PKL4,PKL5,PKL6);
write("penjual yang berada di stand dalam festival:"),nl,stand(dalam,PKL1,PKL2,PKL3,PKL4,PKL5,PKL6);
nl,write("penjual yang berada di stand pertama :"),nl,nm_stand1(PKL1,PKL2,PKL3,PKL4);
nl,write("penjual yang berada di stand kedua :"),nl,nm_stand2(PKL1,PKL2,PKL3,PKL4);
nl,write("penjual yang berada di stand ketiga :"),nl,nm_stand3(PKL1,PKL2,PKL3,PKL4);
nl,write("jumlah keseluruhan penjual:"),nl,total(PKL,X).

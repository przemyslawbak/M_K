procedure miastoo;

label koniec;
begin

setfillstyle(1,0);
bar(356,0,499,69);
bar(506,146,651,351);
bar(506,0,651,69);

setcolor(kolory[wmiasto]);        {zm}
settextstyle(2,horizdir,4);
outtextxy(405,5,'MIASTO');
setcolor(yellow);
outtextxy(360,20,'Zywnosc:  +');
outtextxy(360,35,'Drewno:   +');
outtextxy(360,50,'Populacja: ');
outtextxy(450,20,zy[wmiasto]);        {zm}
outtextxy(450,35,dr[wmiasto]);        {zm}
outtextxy(450,50,po[wmiasto]);        {zm}
setcolor(56);
if fort[wmiasto]=1 then setcolor(yellow);
outtextxy(510,5,'FORT - obrona x2');
setcolor(56);
if targ[wmiasto]=1 then setcolor(yellow);
outtextxy(510,17,'TARG - zloto+1000');
setcolor(56);
if mlyn[wmiasto]=1 then setcolor(yellow);
outtextxy(510,29,'MLYN - zywnosc+100');
setcolor(56);
if tartak[wmiasto]=1 then setcolor(yellow);
outtextxy(510,41,'TARTAK - drewno+100');
setcolor(56);
if ratusz[wmiasto]=1 then setcolor(yellow);
outtextxy(510,53,'RATUSZ - popul.+150');
bar(506,146,641,351);

setfillstyle(9,brown);
settextstyle(4,horizdir,1);
setcolor(yellow);
setfillstyle(9,brown);
rectangle(510,345,635,320);                     {p anuluj}
floodfill(515,340,yellow);
outtextxy(545,320,'Anuluj');

if naleznosc[wmiasto]<>gracz then begin
                                  settextstyle(2,horizdir,5);
                                  setcolor(yellow);
                                  outtextxy(515,150,'Miasto nie ');
                                  outtextxy(515,165,'jest twoje...');

                                  goto koniec;
                                  end;        {nr miasta}


setcolor(yellow);
rectangle(510,150,635,175);                 {p rekrutuj}
setfillstyle(9,brown);
floodfill(515,155,yellow);
settextstyle(4,horizdir,1);
outtextxy(540,150,'Rekrutuj');

setcolor(yellow);
rectangle(510,180,635,205);                 {p tworz armie}
setfillstyle(9,brown);
floodfill(515,185,yellow);
settextstyle(4,horizdir,1);
outtextxy(520,180,'Tworz armie');
settextstyle(2,horizdir,6);
setcolor(yellow);
outtextxy(515,210,'Na stworzenie');
outtextxy(515,223,'potrzba :');
settextstyle(2,horizdir,4);

outtextxy(515,250,'Zloto: 1000');
outtextxy(515,265,'Zywnosc: 100');
outtextxy(515,280,'Drewno: 100' );



koniec:
end;

procedure bfort;
label koniec,poczatek;
begin
poczatek:
if fort[wmiasto]=1 then goto koniec;
if naleznosc[wmiasto]<>gracz then goto koniec;
schowajmyche;
setfillstyle(1,0);
bar(356,0,499,69);
bar(506,146,651,351);
bar(506,0,651,69);
settextstyle(2,horizdir,6);
outtextxy(515,150,'Koszt fortu:');
settextstyle(2,horizdir,4);
outtextxy(515,170,'Zloto:500');
outtextxy(515,185,'Zywnosc:150');
outtextxy(515,200,'Drewno:1500');
outtextxy(515,215,'Ludzi:200');

setcolor(kolory[wmiasto]);
settextstyle(2,horizdir,5);
outtextxy(400,5,'MIASTO');

setcolor(yellow);
settextstyle(4,horizdir,1);
setfillstyle(9,brown);
rectangle(510,345,635,320);                     {p anuluj}
floodfill(515,340,yellow);
outtextxy(545,320,'Anuluj');
rectangle(510,315,635,290);
floodfill(515,300,yellow);
outtextxy(545,290,'Buduj');                      {p buduj}


ustawmyche(510,145,640,350);
pokazmyche;
repeat
pobierzmyche(x,y,przyciski);

if przyciski=1 then begin
                    delay(100);
                    if (x>510)and(x<635)and(y>320)and(y<345) then begin
                                                                  schowajmyche;
                                                                  setfillstyle(1,0);
                                                                  bar(356,0,499,69);
                                                                  bar(510,146,651,351);
                                                                  bar(506,0,651,69);
                                                                  pokazmyche;
                                                                  goto koniec;
                                                                  end;
                     if (x>510)and(x<635)and(y>290)and(y<315) then begin
                                                                   znazw:=0;
                                                                   if gracz=1 then begin
                                                                                   if zywnosc1<150 then goto poczatek
                                                                                   else  if zloto1<500 then goto poczatek
                                                                                 else  if drewno1<1500 then goto poczatek
                                                                                 else  if ludzie1<200 then goto poczatek

                                                                                 else  begin fort[wmiasto]:=1;
                                                                                       zloto1:=zloto1-500;
                                                                                       drewno1:=drewno1-1500;
                                                                                       ludzie1:=ludzie1-200;
                                                                                       zywnosc1:=zywnosc1-150;

                                                                                       goto koniec;
                                                                                       end;
                                                                                   end;

                                                                   if gracz=2 then begin
                                                                                   if zywnosc2<150 then goto poczatek
                                                                                 else  if zloto2<500 then goto poczatek
                                                                                 else  if drewno2<1500 then goto poczatek
                                                                                 else  if ludzie2<200 then goto poczatek
                                                                                 else  begin fort[wmiasto]:=1;
                                                                                       zloto2:=zloto2-500;
                                                                                       drewno2:=drewno2-1500;
                                                                                       ludzie2:=ludzie2-200;
                                                                                       zywnosc2:=zywnosc2-150;
                                                                                 goto koniec;end;
                                                                                   end;
 end;
end;
until ys=1000;
koniec:
str(zywnosc1:1,zywn1);
str(zywnosc2:1,zywn2);
str(zloto1:1,zlot1);
str(zloto2:1,zlot2);
str(ludzie1:1,ludz1);
str(ludzie2:1,ludz2);
str(drewno1:1,drewn1);
str(drewno2:1,drewn2);
setfillstyle(1,0);
setcolor(yellow);
settextstyle(2,horizdir,4);
bar(270,4,349,69);
if gracz=1 then begin
outtextxy(275,5,zlot1);
outtextxy(275,20,zywn1);
outtextxy(275,35,drewn1);
outtextxy(275,50,ludz1);
end;
if gracz=2 then begin
outtextxy(275,5,zlot2);
outtextxy(275,20,zywn2);
outtextxy(275,35,drewn2);
outtextxy(275,50,ludz2);
end;

schowajmyche;
end;


procedure btarg;
label koniec,poczatek;
begin
poczatek:
if targ[wmiasto]=1 then goto koniec;
if naleznosc[wmiasto]<>gracz then goto koniec;
schowajmyche;
setfillstyle(1,0);
bar(356,0,499,69);
bar(506,146,651,351);
bar(506,0,651,69);
settextstyle(2,horizdir,6);
outtextxy(515,150,'Koszt targu:');
settextstyle(2,horizdir,4);
outtextxy(515,170,'Zloto:2500');
outtextxy(515,185,'Zywnosc:100');
outtextxy(515,200,'Drewno:100');
outtextxy(515,215,'Ludzi:50');

setcolor(kolory[wmiasto]);
settextstyle(2,horizdir,5);
outtextxy(400,5,'MIASTO');

setcolor(yellow);
settextstyle(4,horizdir,1);
setfillstyle(9,brown);
rectangle(510,345,635,320);                     {p anuluj}
floodfill(515,340,yellow);
outtextxy(545,320,'Anuluj');
rectangle(510,315,635,290);
floodfill(515,300,yellow);
outtextxy(545,290,'Buduj');                      {p buduj}
ustawmyche(510,145,640,350);
pokazmyche;
repeat
pobierzmyche(x,y,przyciski);

if przyciski=1 then begin
                    delay(100);
                    if (x>510)and(x<635)and(y>320)and(y<345) then begin
                                                                  schowajmyche;
                                                                  setfillstyle(1,0);
                                                                  bar(356,0,499,69);
                                                                  bar(510,146,651,351);
                                                                  bar(506,0,651,69);
                                                                  pokazmyche;
                                                                  goto koniec;
                                                                  end;
                     if (x>510)and(x<635)and(y>290)and(y<315) then begin
                                                                   znazw:=0;
                                                                   if gracz=1 then begin
                                                                                   if zywnosc1<100 then goto poczatek
                                                                                   else  if zloto1<2500 then goto poczatek
                                                                                 else  if drewno1<100 then goto poczatek
                                                                                 else  if ludzie1<50 then goto poczatek

                                                                                 else  begin targ[wmiasto]:=1;
                                                                                             zywnosc1:=zywnosc1-100;
                                                                                             zloto1:=zloto1-2500;
                                                                                             drewno1:=drewno1-100;
                                                                                             ludzie1:=ludzie1-50;

                                                                                             zld[wmiasto]:=zld[wmiasto]+1000;
                                                                                             goto koniec;
                                                                                             end;
                                                                                   end;

                                                                   if gracz=2 then begin
                                                                                   if zywnosc2<100 then goto poczatek
                                                                                 else  if zloto2<2500 then goto poczatek
                                                                                 else  if drewno2<100 then goto poczatek
                                                                                 else  if ludzie2<50 then goto poczatek
                                                                                 else  begin
                                                                                            zloto2:=zloto2-2500;
                                                                                             drewno2:=drewno2-100;
                                                                                             ludzie2:=ludzie2-50;
                                                                                             zywnosc2:=zywnosc2-100;
                                                                                            zld[wmiasto]:=zld[wmiasto]+1000;
                                                                                            targ[wmiasto]:=1;
                                                                                            goto koniec;
                                                                                            end;
                                                                                   end;
 end;
end;
until ys=1000;
koniec:
str(zywnosc1:1,zywn1);
str(zywnosc2:1,zywn2);
str(zloto1:1,zlot1);
str(zloto2:1,zlot2);
str(ludzie1:1,ludz1);
str(ludzie2:1,ludz2);
str(drewno1:1,drewn1);
str(drewno2:1,drewn2);
setfillstyle(1,0);
setcolor(yellow);
settextstyle(2,horizdir,4);
bar(270,4,349,69);
if gracz=1 then begin
outtextxy(275,5,zlot1);
outtextxy(275,20,zywn1);
outtextxy(275,35,drewn1);
outtextxy(275,50,ludz1);
end;
if gracz=2 then begin
outtextxy(275,5,zlot2);
outtextxy(275,20,zywn2);
outtextxy(275,35,drewn2);
outtextxy(275,50,ludz2);
end;

schowajmyche;
end;

procedure bmlyn;
label koniec,poczatek;
begin
poczatek:
if mlyn[wmiasto]=1 then goto koniec;
if naleznosc[wmiasto]<>gracz then goto koniec;
schowajmyche;
setfillstyle(1,0);
bar(356,0,499,69);
bar(506,146,651,351);
bar(506,0,651,69);
settextstyle(2,horizdir,6);
outtextxy(515,150,'Koszt mlyna:');
settextstyle(2,horizdir,4);
outtextxy(515,170,'Zloto:1500');
outtextxy(515,185,'Zywnosc:50');
outtextxy(515,200,'Drewno:300');
outtextxy(515,215,'Ludzi:100');

setcolor(kolory[wmiasto]);
settextstyle(2,horizdir,5);
outtextxy(400,5,'MIASTO');

setcolor(yellow);
settextstyle(4,horizdir,1);
setfillstyle(9,brown);
rectangle(510,345,635,320);                     {p anuluj}
floodfill(515,340,yellow);
outtextxy(545,320,'Anuluj');
rectangle(510,315,635,290);
floodfill(515,300,yellow);
outtextxy(545,290,'Buduj');                      {p buduj}
ustawmyche(510,145,640,350);
pokazmyche;
repeat

pobierzmyche(x,y,przyciski);
if przyciski=1 then begin
                    delay(100);
                    if (x>510)and(x<635)and(y>320)and(y<345) then begin
                                                                  schowajmyche;
                                                                  setfillstyle(1,0);
                                                                  bar(356,0,499,69);
                                                                  bar(510,146,651,351);
                                                                  bar(506,0,651,69);
                                                                  pokazmyche;
                                                                  goto koniec;
                                                                  end;
                     if (x>510)and(x<635)and(y>290)and(y<315) then begin
                                                                   znazw:=0;
                                                                   if gracz=1 then begin
                                                                                   if zywnosc1<50 then goto poczatek
                                                                                   else  if zloto1<1500 then goto poczatek
                                                                                 else  if drewno1<300 then goto poczatek
                                                                                 else  if ludzie1<100 then goto poczatek

                                                                                 else  begin
                                                                                       mlyn[wmiasto]:=1;
                                                                                       zyd[wmiasto]:=zyd[wmiasto]+100;

                                                                                       zywnosc1:=zywnosc1-50;
                                                                                       zloto1:=zloto1-1500;
                                                                                       drewno1:=drewno1-300;
                                                                                       ludzie1:=ludzie1-100;

                                                                                       goto koniec;
                                                                                       end;
                                                                                   end;

                                                                   if gracz=2 then begin
                                                                                   if zywnosc2<50 then goto poczatek
                                                                                 else  if zloto2<1500 then goto poczatek
                                                                                 else  if drewno2<300 then goto poczatek
                                                                                 else  if ludzie2<100 then goto poczatek
                                                                                 else  begin
                                                                                       mlyn[wmiasto]:=1;
                                                                                       zyd[wmiasto]:=zyd[wmiasto]+1000;
                                                                                       zywnosc2:=zywnosc2-50;
                                                                                       zloto2:=zloto2-1500;
                                                                                       drewno2:=drewno2-300;
                                                                                       ludzie2:=ludzie2-100;

                                                                                       goto koniec;
                                                                                       end;
                                                                                   end;
 end;
end;
until ys=1000;
koniec:
str(zywnosc1:1,zywn1);
str(zywnosc2:1,zywn2);
str(zloto1:1,zlot1);
str(zloto2:1,zlot2);
str(ludzie1:1,ludz1);
str(ludzie2:1,ludz2);
str(drewno1:1,drewn1);
str(drewno2:1,drewn2);
setfillstyle(1,0);
setcolor(yellow);
settextstyle(2,horizdir,4);
bar(270,4,349,69);
if gracz=1 then begin
outtextxy(275,5,zlot1);
outtextxy(275,20,zywn1);
outtextxy(275,35,drewn1);
outtextxy(275,50,ludz1);
end;
if gracz=2 then begin
outtextxy(275,5,zlot2);
outtextxy(275,20,zywn2);
outtextxy(275,35,drewn2);
outtextxy(275,50,ludz2);
end;

schowajmyche;
end;

procedure btartak;
label koniec,poczatek;
begin
poczatek:
if tartak[wmiasto]=1 then goto koniec;
if naleznosc[wmiasto]<>gracz then goto koniec;
schowajmyche;
setfillstyle(1,0);
bar(356,0,499,69);
bar(506,146,651,351);
bar(506,0,651,69);
settextstyle(2,horizdir,6);
outtextxy(515,150,'Koszt tartaku:');
settextstyle(2,horizdir,4);
outtextxy(515,170,'Zloto:1500');
outtextxy(515,185,'Zywnosc:50');
outtextxy(515,200,'Drewno:300');
outtextxy(515,215,'Ludzi:100');

setcolor(kolory[wmiasto]);
settextstyle(2,horizdir,5);
outtextxy(400,5,'MIASTO');

setcolor(yellow);
settextstyle(4,horizdir,1);
setfillstyle(9,brown);
rectangle(510,345,635,320);                     {p anuluj}
floodfill(515,340,yellow);
outtextxy(545,320,'Anuluj');
rectangle(510,315,635,290);
floodfill(515,300,yellow);
outtextxy(545,290,'Buduj');                      {p buduj}
ustawmyche(510,145,640,350);
pokazmyche;
repeat

pobierzmyche(x,y,przyciski);
if przyciski=1 then begin
                    delay(100);
                    if (x>510)and(x<635)and(y>320)and(y<345) then begin
                                                                  schowajmyche;
                                                                  setfillstyle(1,0);
                                                                  bar(356,0,499,69);
                                                                  bar(510,146,651,351);
                                                                  bar(506,0,651,69);
                                                                  pokazmyche;
                                                                  goto koniec;
                                                                  end;
                     if (x>510)and(x<635)and(y>290)and(y<315) then begin
                                                                   znazw:=0;
                                                                   if gracz=1 then begin
                                                                                   if zywnosc1<50 then goto poczatek
                                                                                   else  if zloto1<1500 then goto poczatek
                                                                                 else  if drewno1<300 then goto poczatek
                                                                                 else  if ludzie1<100 then goto poczatek

                                                                                 else  begin
                                                                                       tartak[wmiasto]:=1;
                                                                                       drd[wmiasto]:=drd[wmiasto]+100;
                                                                                       zywnosc1:=zywnosc1-50;
                                                                                       zloto1:=zloto1-1500;
                                                                                       drewno1:=drewno1-300;
                                                                                       ludzie1:=ludzie1-100;

                                                                                       goto koniec;
                                                                                       end;
                                                                                   end;

                                                                   if gracz=2 then begin
                                                                                   if zywnosc2<50 then goto poczatek
                                                                                 else  if zloto2<1500 then goto poczatek
                                                                                 else  if drewno2<300 then goto poczatek
                                                                                 else  if ludzie2<100 then goto poczatek
                                                                                 else  begin
                                                                                       tartak[wmiasto]:=1;
                                                                                       drd[wmiasto]:=drd[wmiasto]+100;
                                                                                       zywnosc2:=zywnosc2-50;
                                                                                       zloto2:=zloto2-1500;
                                                                                       drewno2:=drewno2-300;
                                                                                       ludzie2:=ludzie2-100;
                                                                                       goto koniec;
                                                                                       end;
                                                                                   end;
 end;
end;
until ys=1000;
koniec:
str(zywnosc1:1,zywn1);
str(zywnosc2:1,zywn2);
str(zloto1:1,zlot1);
str(zloto2:1,zlot2);
str(ludzie1:1,ludz1);
str(ludzie2:1,ludz2);
str(drewno1:1,drewn1);
str(drewno2:1,drewn2);
setfillstyle(1,0);
setcolor(yellow);
settextstyle(2,horizdir,4);
bar(270,4,349,69);
if gracz=1 then begin
outtextxy(275,5,zlot1);
outtextxy(275,20,zywn1);
outtextxy(275,35,drewn1);
outtextxy(275,50,ludz1);
end;
if gracz=2 then begin
outtextxy(275,5,zlot2);
outtextxy(275,20,zywn2);
outtextxy(275,35,drewn2);
outtextxy(275,50,ludz2);
end;

schowajmyche;
end;

procedure bratusz;
label koniec,poczatek;
begin
poczatek:
if ratusz[wmiasto]=1 then goto koniec;
if naleznosc[wmiasto]<>gracz then goto koniec;
schowajmyche;
setfillstyle(1,0);
bar(356,0,499,69);
bar(506,146,651,351);
bar(506,0,651,69);
settextstyle(2,horizdir,6);
outtextxy(515,150,'Koszt ratusza:');
settextstyle(2,horizdir,4);
outtextxy(515,170,'Zloto:3500');
outtextxy(515,185,'Zywnosc:200');
outtextxy(515,200,'Drewno:1500');
outtextxy(515,215,'Ludzi:300');

setcolor(kolory[wmiasto]);
settextstyle(2,horizdir,5);
outtextxy(400,5,'MIASTO');

setcolor(yellow);
settextstyle(4,horizdir,1);
setfillstyle(9,brown);
rectangle(510,345,635,320);                     {p anuluj}
floodfill(515,340,yellow);
outtextxy(545,320,'Anuluj');
rectangle(510,315,635,290);
floodfill(515,300,yellow);
outtextxy(545,290,'Buduj');                      {p buduj}
ustawmyche(510,145,640,350);
pokazmyche;
repeat

pobierzmyche(x,y,przyciski);
if przyciski=1 then begin
                    delay(100);
                    if (x>510)and(x<635)and(y>320)and(y<345) then begin
                                                                  schowajmyche;
                                                                  setfillstyle(1,0);
                                                                  bar(356,0,499,69);
                                                                  bar(510,146,651,351);
                                                                  bar(506,0,651,69);
                                                                  pokazmyche;
                                                                  goto koniec;
                                                                  end;
                     if (x>510)and(x<635)and(y>290)and(y<315) then begin
                                                                   znazw:=0;
                                                                   if gracz=1 then begin
                                                                                   if zywnosc1<200 then goto poczatek
                                                                                   else  if zloto1<3500 then goto poczatek
                                                                                 else  if drewno1<1500 then goto poczatek
                                                                                 else  if ludzie1<300 then goto poczatek

                                                                                 else  begin
                                                                                       ratusz[wmiasto]:=1;
                                                                                       pod[wmiasto]:=pod[wmiasto]+150;
                                                                                       zywnosc1:=zywnosc1-200;
                                                                                       zloto1:=zloto1-3500;
                                                                                       drewno1:=drewno1-1500;
                                                                                       ludzie1:=ludzie1-300;
                                                                                       goto koniec;
                                                                                       end;
                                                                                   end;

                                                                   if gracz=2 then begin
                                                                                   if zywnosc2<200 then goto poczatek
                                                                                 else  if zloto2<3500 then goto poczatek
                                                                                 else  if drewno2<1500 then goto poczatek
                                                                                 else  if ludzie2<300 then goto poczatek
                                                                                 else  begin
                                                                                       ratusz[wmiasto]:=1;
                                                                                       zywnosc2:=zywnosc2-200;
                                                                                       zloto2:=zloto2-3500;
                                                                                       drewno2:=drewno2-1500;
                                                                                       ludzie2:=ludzie2-300;
                                                                                       pod[wmiasto]:=pod[wmiasto]+150;
                                                                                       goto koniec;
                                                                                       end;
                                                                                   end;
 end;
end;
until ys=1000;
koniec:
str(zywnosc1:1,zywn1);
str(zywnosc2:1,zywn2);
str(zloto1:1,zlot1);
str(zloto2:1,zlot2);
str(ludzie1:1,ludz1);
str(ludzie2:1,ludz2);
str(drewno1:1,drewn1);
str(drewno2:1,drewn2);
setfillstyle(1,0);
setcolor(yellow);
settextstyle(2,horizdir,4);
bar(270,4,349,69);
if gracz=1 then begin
outtextxy(275,5,zlot1);
outtextxy(275,20,zywn1);
outtextxy(275,35,drewn1);
outtextxy(275,50,ludz1);
end;
if gracz=2 then begin
outtextxy(275,5,zlot2);
outtextxy(275,20,zywn2);
outtextxy(275,35,drewn2);
outtextxy(275,50,ludz2);
end;



schowajmyche;
end;
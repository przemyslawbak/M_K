procedure rekrutacjam;
label koniec,poczatek;
begin
if naleznosc[wmiasto]<>gracz then goto koniec;
nowaa:=0;
schowajmyche;
ustawmyche(510,145,640,350);
setfillstyle(1,0);
bar(356,0,499,69);
bar(506,146,651,351);
bar(506,0,651,69);
str(armiam[wmiasto]:1,armiams[wmiasto]);
settextstyle(2,horizdir,6);
outtextxy(515,150,'Zolnierzy:');
settextstyle(2,horizdir,4);
outtextxy(515,170,armiams[wmiasto]);
settextstyle(2,horizdir,5);
outtextxy(515,5,'Koszt rekrutacji ');
outtextxy(515,15,'1 czlowieka :');
settextstyle(2,horizdir,4);
outtextxy(515,35,'Zloto: 10');
outtextxy(515,50,'Zywnosc: 2');
setcolor(kolory[wmiasto]);
settextstyle(2,horizdir,5);
outtextxy(400,5,'MIASTO');



setcolor(yellow);
settextstyle(4,horizdir,1);
setfillstyle(9,brown);
rectangle(510,315,567,290);                     {p -10}
floodfill(517,310,yellow);
outtextxy(517,290,'-10');

settextstyle(4,horizdir,1);
setfillstyle(9,brown);
rectangle(575,285+30,635,260+30);                     {p +10}
floodfill(580,280+30,yellow);
outtextxy(580,260+30,'+10');

settextstyle(4,horizdir,1);
setfillstyle(9,brown);
rectangle(510,315+30,635,290+30);                     {p Rekrutuj}
floodfill(515,310+30,yellow);
outtextxy(540,290+30,'Rekrutuj');



pokazmyche;
poczatek:

repeat
setfillstyle(1,0);

pobierzmyche(x,y,przyciski);
if przyciski=1 then begin
                    delay(100);



if (x>510)and(x<635)and(y>290+30)and(y<315+30) then begin      {akceptacja}
                       armiam[wmiasto]:=armiam[wmiasto]+nowaa;
                       goto koniec;end;

if (x>510)and(x<567)and(y>290)and(y<315) then  begin   {-10}

                       if nowaa<10 then goto poczatek
                       else
                       if gracz=1 then begin
                                       zywnosc1:= zywnosc1+20;
                                       ludzie1:=ludzie1+10;
                                       zloto1:=zloto1+100;
                                       end
                       else
                       if gracz=2 then begin
                                       zywnosc2:= zywnosc2+20;
                                       ludzie2:=ludzie2+10;
                                       zloto2:=zloto2+100;
                                       end;

                       nowaa:=nowaa-10;
                       bar(529,184,639,210);
                       str(nowaa:1,nowaab);
                       settextstyle(2,horizdir,6);
                       outtextxy(515,185,'+');outtextxy(530,185,nowaab);

                       end;

if (x>570)and(x<640)and(y>290)and(y<315) then  begin   {+10}




                       if gracz=1 then begin
                                       if zywnosc1<20 then goto poczatek;
                                       if ludzie1<10 then goto poczatek;
                                       if zloto1<100 then goto poczatek;
                                       end;

                       if gracz=2 then begin
                                       if zywnosc2<20 then goto poczatek;
                                       if ludzie2<10 then goto poczatek;
                                       if zloto2<100 then goto poczatek;
                                       end;

                       if gracz=1 then begin
                                       zywnosc1:= zywnosc1-20;
                                       ludzie1:=ludzie1-10;
                                       zloto1:=zloto1-100;
                                       end;

                       if gracz=2 then begin
                                       zywnosc2:= zywnosc2-20;
                                       ludzie2:=ludzie2-10;
                                       zloto2:=zloto2-100;
                                       end;



                       nowaa:=nowaa+10;
                       bar(529,184,639,210);
                       str(nowaa:1,nowaab);
                       settextstyle(2,horizdir,6);
                       outtextxy(515,185,'+');outtextxy(530,185,nowaab);
end;
end;
until ys=1000;




koniec:
schowajmyche;
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


end;


procedure transfer;

label poczatek,koniec;
begin
nowaa:=0;
str(wojaa1:1,woaa1);
str(wojab1:1,woab1);
str(wojaa2:1,woaa2);
str(wojab2:1,woab2);
setfillstyle(1,0);
bar(356,0,499,69);
bar(506,146,651,351);
bar(506,0,651,69);

if arm=11 then begin                                  {zm}
                        case ya1 of                   {zm}
                        85:wmiasto:=1;
                        205:wmiasto:=2;
                        258:wmiasto:=3;
                        330:wmiasto:=4;
                        180:wmiasto:=5;
                        275:wmiasto:=6;
                        320:wmiasto:=7;
                        206:wmiasto:=8;
                        100:wmiasto:=9;
                        337-2:wmiasto:=10;
                        293+5:wmiasto:=11;
                        197+15:wmiasto:=12;
                        94:wmiasto:=13;
                        150:wmiasto:=14;
                        101+10:wmiasto:=15;
                        153:wmiasto:=16;
                        240+10:wmiasto:=17;
                        235:wmiasto:=18;
                        end;


str(armiam[wmiasto]:1,armiams[wmiasto]);
settextstyle(2,horizdir,6);
setcolor(blue);                                       {zm kolor}
outtextxy(510,145,'Armia I');                          {zm}
outtextxy(510,5,'Miasto');
setcolor(yellow);
outtextxy(510,25,'Zolnierzy :');
outtextxy(510,165,'Zolnierzy :');
settextstyle(2,horizdir,4);
outtextxy(510,45,armiams[wmiasto]);
outtextxy(510,185,woaa1);


end;

if arm=21 then begin                                  {zm}
                        case yb1 of                   {zm}
                        85-5:wmiasto:=1;
                        205-5:wmiasto:=2;
                        258-5:wmiasto:=3;
                        330-5:wmiasto:=4;
                        180-5:wmiasto:=5;
                        275-5:wmiasto:=6;
                        320-5:wmiasto:=7;
                        206-5:wmiasto:=8;
                        100-5:wmiasto:=9;
                        337-5-2:wmiasto:=10;
                        293-5+5:wmiasto:=11;
                        197-5+15:wmiasto:=12;
                        94-5:wmiasto:=13;
                        150-5:wmiasto:=14;
                        101-5+10:wmiasto:=15;
                        153-5:wmiasto:=16;
                        240+10-5:wmiasto:=17;
                        235-5:wmiasto:=18;
                        end;


str(armiam[wmiasto]:1,armiams[wmiasto]);
settextstyle(2,horizdir,6);
setcolor(blue);                                       {zm kolor}
outtextxy(510,145,'Armia II');                          {zm}
outtextxy(510,5,'Miasto');
setcolor(yellow);
outtextxy(510,25,'Zolnierzy :');
outtextxy(510,165,'Zolnierzy :');
settextstyle(2,horizdir,4);
outtextxy(510,45,armiams[wmiasto]);
outtextxy(510,185,woab1);


end;

if arm=12 then begin                                  {zm}
                        case ya2 of                   {zm}
                        85:wmiasto:=1;
                        205:wmiasto:=2;
                        258:wmiasto:=3;
                        330:wmiasto:=4;
                        180:wmiasto:=5;
                        275:wmiasto:=6;
                        320:wmiasto:=7;
                        206:wmiasto:=8;
                        100:wmiasto:=9;
                        337-2:wmiasto:=10;
                        293+5:wmiasto:=11;
                        197+15:wmiasto:=12;
                        94:wmiasto:=13;
                        150:wmiasto:=14;
                        101+10:wmiasto:=15;
                        153:wmiasto:=16;
                        240+10:wmiasto:=17;
                        235:wmiasto:=18;
                        end;


str(armiam[wmiasto]:1,armiams[wmiasto]);
settextstyle(2,horizdir,6);
setcolor(red);                                       {zm kolor}
outtextxy(510,145,'Armia I');                          {zm}
outtextxy(510,5,'Miasto');
setcolor(yellow);
outtextxy(510,25,'Zolnierzy :');
outtextxy(510,165,'Zolnierzy :');
settextstyle(2,horizdir,4);
outtextxy(510,45,armiams[wmiasto]);
outtextxy(510,185,woaa2);


end;

if arm=22 then begin                                  {zm}
                        case yb2 of                   {zm}
                        85-5:wmiasto:=1;
                        205-5:wmiasto:=2;
                        258-5:wmiasto:=3;
                        330-5:wmiasto:=4;
                        180-5:wmiasto:=5;
                        275-5:wmiasto:=6;
                        320-5:wmiasto:=7;
                        206-5:wmiasto:=8;
                        100-5:wmiasto:=9;
                        337-5-2:wmiasto:=10;
                        293-5+5:wmiasto:=11;
                        197-5+15:wmiasto:=12;
                        94-5:wmiasto:=13;
                        150-5:wmiasto:=14;
                        101-5+10:wmiasto:=15;
                        153-5:wmiasto:=16;
                        240-5+10:wmiasto:=17;
                        235-5:wmiasto:=18;
                        end;


str(armiam[wmiasto]:1,armiams[wmiasto]);
settextstyle(2,horizdir,6);
setcolor(red);                                       {zm kolor}
outtextxy(510,145,'Armia II');                          {zm}
outtextxy(510,5,'Miasto');
setcolor(yellow);
outtextxy(510,25,'Zolnierzy :');
outtextxy(510,165,'Zolnierzy :');
settextstyle(2,horizdir,4);
outtextxy(510,45,armiams[wmiasto]);
outtextxy(510,185,woab2);


end;
settextstyle(4,horizdir,1);
setfillstyle(9,brown);
rectangle(510,345,635,320);                     {p anuluj}
floodfill(515,340,yellow);
outtextxy(545,320,'Anuluj');

settextstyle(4,horizdir,1);
setfillstyle(9,brown);
rectangle(510,315-30,567,290-30);                     {p -10}
floodfill(517,310-30,yellow);
outtextxy(517,290-30,'-10');

settextstyle(4,horizdir,1);
setfillstyle(9,brown);
rectangle(575,285,635,260);                     {p +10}
floodfill(580,280,yellow);
outtextxy(580,260,'+10');

settextstyle(4,horizdir,1);
setfillstyle(9,brown);
rectangle(510,315,635,290);                     {p Transeruj}
floodfill(515,310,yellow);
outtextxy(530,290,'Transferuj');


pokazmyche;
poczatek:

repeat
setfillstyle(1,0);

pobierzmyche(x,y,przyciski);
if przyciski=1 then begin
                    delay(100);

if (x>510)and(x<635)and(y>320)and(y<345) then begin  {anulowanie}
                    schowajmyche;
                    setfillstyle(1,0);
                    bar(356,0,499,69);
                    bar(510,146,651,351);
                    bar(506,0,651,69);
                    pokazmyche;
                    goto koniec;
                    end;

if (x>510)and(x<635)and(y>290)and(y<315) then begin      {akceptacja}
                       armiam[wmiasto]:=armiam[wmiasto]-nowaa;

                       if arm=11 then wojaa1:=wojaa1+nowaa;
                       if arm=21 then wojab1:=wojab1+nowaa;
                       if arm=12 then wojaa2:=wojaa2+nowaa;
                       if arm=22 then wojab2:=wojab2+nowaa;

                       goto koniec;end;

if (x>510)and(x<567)and(y>290-30)and(y<315-30) then  begin   {-10}

                       if arm=11 then begin
                       if nowaa<-(wojaa1-10) then goto poczatek;
                       end;
                       if arm=21 then begin
                       if nowaa<-(wojab1-10) then goto poczatek;
                       end;
                       if arm=12 then begin
                       if nowaa<-(wojaa2-10) then goto poczatek;
                       end;
                       if arm=22 then begin
                       if nowaa<-(wojab2-10) then goto poczatek;
                       end;

                       nowaa:=nowaa-10;
                       bar(529,200,639,230);
                       str(nowaa:1,nowaab);
                       settextstyle(2,horizdir,6);

                       if nowaa>0 then outtextxy(515,200,'+');
                       outtextxy(530,200,nowaab);

                       end;

if (x>570)and(x<640)and(y>290-30)and(y<315-30) then  begin   {+10}

                if nowaa>armiam[wmiasto]-10 then goto poczatek;


                       nowaa:=nowaa+10;
                       bar(529,200,639,230);
                       str(nowaa:1,nowaab);
                       settextstyle(2,horizdir,6);

                       if nowaa>0 then outtextxy(515,200,'+');
                       outtextxy(530,200,nowaab);
end;
end;
until ys=1000;




koniec:
schowajmyche;
bar(356,0,499,69);
bar(506,146,651,351);
bar(506,0,651,69);

zmienna:=1;
end;
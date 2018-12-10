procedure warun;
label koniec;
begin
if gracz=1 then begin
                if zloto1<1000 then goto koniec;
                if zywnosc1<100 then goto koniec;
                if drewno1<100 then goto koniec;


                if naleznosc[wmiasto]<>gracz then goto koniec;
                if a1=0 then begin
                             zloto1:=zloto1-1000;
                            zywnosc1:=zywnosc1-100;
                            drewno1:=drewno1-100;
                             a1:=1;
                             wojaa1:=10;
                             case wmiasto of
                             1:begin xa1:=78;ya1:=85;end;
                             2:begin xa1:=22;ya1:=205;end;
                             3:begin xa1:=46;ya1:=258;end;
                             4:begin xa1:=78;ya1:=330;end;
                             5:begin xa1:=109;ya1:=180;end;
                             6:begin xa1:=135;ya1:=275;end;
                             7:begin xa1:=234;ya1:=320;end;
                             8:begin xa1:=188;ya1:=206;end;
                             9:begin xa1:=210;ya1:=100;end;
                            10:begin xa1:=344-2;ya1:=337-2;end;
                            11:begin xa1:=438+5;ya1:=293+5;end;
                            12:begin xa1:=406+15;ya1:=197+15;end;
                            13:begin xa1:=438;ya1:=94;end;
                            14:begin xa1:=460;ya1:=150;end;
                            15:begin xa1:=302+10;ya1:=101+10;end;
                            16:begin xa1:=320;ya1:=153;end;
                            17:begin xa1:=344+10;ya1:=240+10;end;
                            18:begin xa1:=272;ya1:=235;end;
                            end;

                            goto koniec;
                            end;
                if b1=0 then begin
                             zloto1:=zloto1-1000;
                            zywnosc1:=zywnosc1-100;
                            drewno1:=drewno1-100;
                             b1:=1;
                             wojab1:=10;
                             case wmiasto of
                             1:begin xb1:=78-5;yb1:=85-5;end;
                             2:begin xb1:=22-5;yb1:=205-5;end;
                             3:begin xb1:=46-5;yb1:=258-5;end;
                             4:begin xb1:=78-5;yb1:=330-5;end;
                             5:begin xb1:=109-5;yb1:=180-5;end;
                             6:begin xb1:=135-5;yb1:=275-5;end;
                             7:begin xb1:=234-5;yb1:=320-5;end;
                             8:begin xb1:=188-5;yb1:=206-5;end;
                             9:begin xb1:=210-5;yb1:=100-5;end;
                            10:begin xb1:=344-5-2;yb1:=337-5-2;end;
                            11:begin xb1:=438-5+5;yb1:=293-5+5;end;
                            12:begin xb1:=406-5+15;yb1:=197-5+15;end;
                            13:begin xb1:=438-5;yb1:=94-5;end;
                            14:begin xb1:=460-5;yb1:=150-5;end;
                            15:begin xb1:=302-5+10;yb1:=101-5+10;end;
                            16:begin xb1:=320-5;yb1:=153-5;end;
                            17:begin xb1:=344-5+10;yb1:=240-5+10;end;
                            18:begin xb1:=272-5;yb1:=235-5;end;
                            end;

                            goto koniec;
                            end;

end
else
if gracz=2 then begin
                if zloto2<1000 then goto koniec;
                if zywnosc2<100 then goto koniec;
                if drewno2<100 then goto koniec;

                if naleznosc[wmiasto]<>gracz then goto koniec;
                if a2=0 then begin
                             zloto2:=zloto2-1000;
                            zywnosc2:=zywnosc2-100;
                            drewno2:=drewno2-100;
                             a2:=1;
                             wojaa2:=10;
                             case wmiasto of
                             1:begin xa2:=78;ya2:=85;end;
                             2:begin xa2:=22;ya2:=205;end;
                             3:begin xa2:=46;ya2:=258;end;
                             4:begin xa2:=78;ya2:=330;end;
                             5:begin xa2:=109;ya2:=180;end;
                             6:begin xa2:=135;ya2:=275;end;
                             7:begin xa2:=234;ya2:=320;end;
                             8:begin xa2:=188;ya2:=206;end;
                             9:begin xa2:=210;ya2:=100;end;
                            10:begin xa2:=344-2;ya2:=337-2;end;
                            11:begin xa2:=438+5;ya2:=293+5;end;
                            12:begin xa2:=406+15;ya2:=197+15;end;
                            13:begin xa2:=438;ya2:=94;end;
                            14:begin xa2:=460;ya2:=150;end;
                            15:begin xa2:=302+10;ya2:=101+10;end;
                            16:begin xa2:=320;ya2:=153;end;
                            17:begin xa2:=344+10;ya2:=240+10;end;
                            18:begin xa2:=272;ya2:=235;end;
                            end;

                            goto koniec;
                            end;
                if b2=0 then begin
                             b2:=1;
                             zloto2:=zloto2-1000;
                            zywnosc2:=zywnosc2-100;
                            drewno2:=drewno2-100;
                             wojab2:=10;
                             case wmiasto of
                             1:begin xb2:=78-5;yb2:=85-5;end;
                             2:begin xb2:=22-5;yb2:=205-5;end;
                             3:begin xb2:=46-5;yb2:=258-5;end;
                             4:begin xb2:=78-5;yb2:=330-5;end;
                             5:begin xb2:=109-5;yb2:=180-5;end;
                             6:begin xb2:=135-5;yb2:=275-5;end;
                             7:begin xb2:=234-5;yb2:=320-5;end;
                             8:begin xb2:=188-5;yb2:=206-5;end;
                             9:begin xb2:=210-5;yb2:=100-5;end;
                            10:begin xb2:=344-5-2;yb2:=337-5-2;end;
                            11:begin xb2:=438-5+5;yb2:=293-5+5;end;
                            12:begin xb2:=406-5+15;yb2:=197-5+15;end;
                            13:begin xb2:=438-5;yb2:=94-5;end;
                            14:begin xb2:=460-5;yb2:=150-5;end;
                            15:begin xb2:=302-5+10;yb2:=101-5+10;end;
                            16:begin xb2:=320-5;yb2:=153-5;end;
                            17:begin xb2:=344-5+10;yb2:=240-5+10;end;
                            18:begin xb2:=272-5;yb2:=235-5;end;
                            end;

                            goto koniec;
                            end;
end;
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





procedure armiaa1;

begin
           setlinestyle(0,0,normwidth);
                                                  {ARMIE a1}
           setcolor(black);
           setfillstyle(1,blue);
           bar(0+xa1,0+ya1,26+xa1,12+ya1);
           rectangle(1+xa1,1+ya1,25+xa1,11+ya1);
           moveto(6+xa1,3+ya1);lineto(16+xa1,3+ya1);
           lineto(16+xa1,6+ya1);lineto(12+xa1,10+ya1);
           lineto(10+xa1,10+ya1);lineto(6+xa1,6+ya1);
           lineto(6+xa1,3+ya1);
           setfillstyle(1,black);
           bar(19+xa1,6+ya1,20+xa1,9+ya1);    {b1}

           floodfill(11+xa1,7+ya1,black);

end;

procedure armiab1;

begin
           setlinestyle(0,0,normwidth);
                                                  {ARMIE b1}
           setcolor(black);
           setfillstyle(1,blue);
           bar(0+xb1,0+yb1,26+xb1,12+yb1);
           rectangle(1+xb1,1+yb1,25+xb1,11+yb1);
           moveto(6+xb1,3+yb1);lineto(16+xb1,3+yb1);
           lineto(16+xb1,6+yb1);lineto(12+xb1,10+yb1);
           lineto(10+xb1,10+yb1);lineto(6+xb1,6+yb1);
           lineto(6+xb1,3+yb1);
           setfillstyle(1,black);
           bar(19+xb1,6+yb1,20+xb1,9+yb1);    {b1}
           bar(22+xb1,6+yb1,23+xb1,9+yb1);    {b2}
           floodfill(11+xb1,7+yb1,black);

end;

procedure armiaa2;

begin
           setlinestyle(0,0,normwidth);
                                                  {ARMIE a2}
           setcolor(black);
           setfillstyle(1,red);
           bar(0+xa2,0+ya2,26+xa2,12+ya2);
           rectangle(1+xa2,1+ya2,25+xa2,11+ya2);
           moveto(6+xa2,3+ya2);lineto(16+xa2,3+ya2);
           lineto(16+xa2,6+ya2);lineto(12+xa2,10+ya2);
           lineto(10+xa2,10+ya2);lineto(6+xa2,6+ya2);
           lineto(6+xa2,3+ya2);
           setfillstyle(1,black);
           bar(19+xa2,6+ya2,20+xa2,9+ya2);    {b1}
           floodfill(11+xa2,7+ya2,black);

end;
procedure armiab2;

begin
           setlinestyle(0,0,normwidth);
                                                  {ARMIE b2}
           setcolor(black);
           setfillstyle(1,red);
           bar(0+xb2,0+yb2,26+xb2,12+yb2);
           rectangle(1+xb2,1+yb2,25+xb2,11+yb2);
           moveto(6+xb2,3+yb2);lineto(16+xb2,3+yb2);
           lineto(16+xb2,6+yb2);lineto(12+xb2,10+yb2);
           lineto(10+xb2,10+yb2);lineto(6+xb2,6+yb2);
           lineto(6+xb2,3+yb2);
           setfillstyle(1,black);
           bar(19+xb2,6+yb2,20+xb2,9+yb2);    {b1}
           bar(22+xb2,6+yb2,23+xb2,9+yb2);    {b2}
           floodfill(11+xb2,7+yb2,black);

end;


procedure wybor;

label konieca,poczatek1,koniec1;
begin
str(wojaa1:1,woaa1);
str(wojab1:1,woab1);
str(wojaa2:1,woaa2);
str(wojab2:1,woab2);
if arm=11 then begin if gracz=2 then begin zmienna:=1;goto konieca;end;end;
if arm=21 then begin if gracz=2 then begin zmienna:=1;goto konieca;end;end;
if arm=12 then begin if gracz=1 then begin zmienna:=1;goto konieca;end;end;
if arm=22 then begin if gracz=1 then begin zmienna:=1;goto konieca;end;end;




zmienna:=0;
schowajmyche;
setcolor(yellow);
setfillstyle(1,0);
bar(356,0,499,69);
bar(506,146,651,351);
bar(506,0,651,69);
if arm=11 then begin
               settextstyle(2,horizdir,5);
               setcolor(blue);
               outtextxy(380,5,'Armia I');
               settextstyle(2,horizdir,6);
               setcolor(yellow);
               outtextxy(365,20,'Zolnierzy :');
               outtextxy(365,35,woaa1);
               end;
if arm=21 then begin
               settextstyle(2,horizdir,5);
               setcolor(blue);
               outtextxy(380,5,'Armia II');
               settextstyle(2,horizdir,6);
               setcolor(yellow);
               outtextxy(365,20,'Zolnierzy :');
               outtextxy(365,35,woab1);
               end;
if arm=12 then begin
               settextstyle(2,horizdir,5);
               setcolor(red);
               outtextxy(380,5,'Armia I');
               settextstyle(2,horizdir,6);
               setcolor(yellow);
               outtextxy(365,20,'Zolnierzy :');
               outtextxy(365,35,woaa2);
               end;
if arm=22 then begin
               settextstyle(2,horizdir,5);
               setcolor(red);
               outtextxy(380,5,'Armia II');
               settextstyle(2,horizdir,6);
               setcolor(yellow);
               outtextxy(365,20,'Zolnierzy :');
               outtextxy(365,35,woab2);
               end;
setcolor(yellow);
rectangle(510,150,635,175);                 {p rekrutuj}
setfillstyle(9,brown);
floodfill(515,155,yellow);
settextstyle(4,horizdir,1);
outtextxy(540,150,'Rekrutuj');

setcolor(yellow);
rectangle(510,180,635,205);                 {p transfer}
setfillstyle(9,brown);
floodfill(515,185,yellow);
settextstyle(4,horizdir,1);
outtextxy(540,180,'Transfer');

setcolor(yellow);
rectangle(510,210,635,235);                 {p ruch}
setfillstyle(9,brown);
floodfill(515,215,yellow);
settextstyle(4,horizdir,1);
outtextxy(550,210,'Ruch');

setfillstyle(9,brown);
settextstyle(4,horizdir,1);
setcolor(yellow);
setfillstyle(9,brown);
rectangle(510,345,635,320);                     {p anuluj}
floodfill(515,340,yellow);
outtextxy(545,320,'Anuluj');


ustawmyche(510,145,640,350);
pokazmyche;
pokazmyche;
repeat
pobierzmyche(x,y,przyciski);
if przyciski=1 then
begin
if (x>510)and(x<635)and(y>320)and(y<345) then begin
                                         zmienna:=1;
                                         schowajmyche;
                                         setfillstyle(1,0);
                                         bar(356,0,499,69);
                                         bar(510,146,651,351);
                                         bar(506,0,651,69);
                                         pokazmyche;
                                         goto koniec1;
                                         end
else
if (x>510)and(x<635)and(y>150)and(y<175) then begin
zmienna:=1;
nowaa:=0;
schowajmyche;
ustawmyche(510,145,640,350);

setfillstyle(1,0);
bar(356,0,499,69);
bar(506,146,651,351);
bar(506,0,651,69);



settextstyle(2,horizdir,6);
outtextxy(515,150,'Zolnierzy:');
settextstyle(2,horizdir,4);

if arm=11 then outtextxy(515,170,woaa1);
if arm=21 then outtextxy(515,170,woab1);
if arm=12 then outtextxy(515,170,woaa2);
if arm=22 then outtextxy(515,170,woab2);

settextstyle(2,horizdir,5);
outtextxy(515,5,'Koszt rekrutacji ');
outtextxy(515,15,'1 czlowieka :');
settextstyle(2,horizdir,4);
outtextxy(515,35,'Zloto: 10');
outtextxy(515,50,'Zywnosc: 2');
if gracz=1 then setcolor(blue);
if gracz=2 then setcolor(red);

settextstyle(2,horizdir,5);
if arm=11 then outtextxy(390,5,'Armia I');
if arm=21 then outtextxy(390,5,'Armia II');
if arm=12 then outtextxy(390,5,'Armia I');
if arm=22 then outtextxy(390,5,'Armia II');



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
poczatek1:

repeat
setfillstyle(1,0);

pobierzmyche(x,y,przyciski);
if przyciski=1 then begin
                    delay(100);



if (x>510)and(x<635)and(y>290+30)and(y<315+30) then begin      {akceptacja}

                       if arm=11 then wojaa1:=wojaa1+nowaa;
                       if arm=21 then wojab1:=wojab1+nowaa;
                       if arm=12 then wojaa2:=wojaa2+nowaa;
                       if arm=22 then wojab2:=wojab2+nowaa;

                       goto koniec1;end;

if (x>510)and(x<567)and(y>290)and(y<315) then  begin   {-10}

                       if nowaa<10 then goto poczatek1
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
                                       if zywnosc1<20 then goto poczatek1;
                                       if ludzie1<10 then goto poczatek1;
                                       if zloto1<100 then goto poczatek1;
                                       end;

                       if gracz=2 then begin
                                       if zywnosc2<20 then goto poczatek1;
                                       if ludzie2<10 then goto poczatek1;
                                       if zloto2<100 then goto poczatek1;
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




koniec1:
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


pokazmyche;
goto konieca;

end;
if (x>510)and(x<635)and(y>180)and(y<205)then
begin
zmienna:=2;
goto konieca;
end;

if (x>510)and(x<635)and(y>210)and(y<235)then
begin
zmienna:=3;
goto konieca;
end;


end;



until ys=1000;





konieca:
schowajmyche;
end;
procedure tury;
label armiee;
begin
if armieeee=1 then goto armiee;
if (zmiana=1)and(powrot=0) then begin;

                 ludzie1:=0;
                 ludzie2:=0;
                 warunki:=random(4);
                 przyrost:=random(6);
                 rucha1:=0;
                 ruchb1:=0;
                 rucha2:=0;
                 ruchb2:=0;
                 if przyrost=0 then begin
                                      pom[1]:=50+pod[1]+random(20); pom[10]:=100+pod[10]+random(44);
                                      pom[2]:=100+pod[2]+random(50); pom[11]:=100+pod[11]+random(50);
                                      pom[3]:=100+pod[3]+random(18); pom[12]:=50+pod[12]+random(20);
                                      pom[4]:=100+pod[4]+random(45); pom[13]:=100+pod[13]+random(45);
                                      pom[5]:=50+pod[5]+random(15); pom[14]:=100+pod[14]+random(18);
                                      pom[6]:=100+pod[6]+random(33); pom[15]:=100+pod[15]+random(33);
                                      pom[7]:=100+pod[7]+random(12); pom[16]:=100+pod[16]+random(12);
                                      pom[8]:=100+pod[8]+random(44); pom[17]:=50+pod[17]+random(15);
                                      pom[9]:=100+pod[9]+random(8); pom[18]:=100+pod[18]+random(8);
                                      pom[n1]:=pom[n1]+300;
                                      pom[n2]:=pom[n2]+300;
                                      znazw:=0;
                                      repeat
                                      znazw:=znazw+1;
                                      zym[znazw]:=50+zyd[znazw]+random(10);
                                      until znazw=18;
                                      znazw:=0;
                                      end

         else        if przyrost=1 then begin
                                      pom[1]:=200+pod[1]-random(20); pom[10]:=400+pod[10]-random(20);
                                      pom[2]:=400+pod[2]-random(20); pom[11]:=400+pod[11]-random(20);
                                      pom[3]:=400+pod[3]-random(20); pom[12]:=200+pod[12]-random(20);
                                      pom[4]:=400+pod[4]-random(20); pom[13]:=400+pod[13]-random(20);
                                      pom[5]:=200+pod[5]-random(20); pom[14]:=400+pod[14]-random(20);
                                      pom[6]:=400+pod[6]-random(20); pom[15]:=400+pod[15]-random(20);
                                      pom[7]:=400+pod[7]-random(20); pom[16]:=400+pod[16]-random(20);
                                      pom[8]:=400+pod[8]-random(20); pom[17]:=200+pod[17]-random(20);
                                      pom[9]:=400+pod[9]-random(20); pom[18]:=400+pod[18]-random(20);
                                      pom[n1]:=pom[n1]+600;
                                      pom[n2]:=pom[n2]+600;

                                      znazw:=0;
                                      repeat
                                      znazw:=znazw+1;
                                      zym[znazw]:=150+zyd[znazw]-random(50);
                                      until znazw=18;
                                      znazw:=0;
                                      end
                 else begin
                                      pom[1]:=100+pod[1]+random(10); pom[10]:=200+pod[10]+random(10);
                                      pom[2]:=200+pod[2]+random(10); pom[11]:=200+pod[11]+random(10);
                                      pom[3]:=200+pod[3]+random(10); pom[12]:=100+pod[12]+random(10);
                                      pom[4]:=200+pod[4]+random(10); pom[13]:=200+pod[13]+random(10);
                                      pom[5]:=100+pod[5]+random(10); pom[14]:=200+pod[14]+random(10);
                                      pom[6]:=200+pod[6]+random(10); pom[15]:=200+pod[15]+random(10);
                                      pom[7]:=200+pod[7]+random(10); pom[16]:=200+pod[16]+random(10);
                                      pom[8]:=200+pod[8]+random(10); pom[17]:=100+pod[17]+random(10);
                                      pom[9]:=200+pod[9]+random(10); pom[18]:=200+pod[18]+random(10);
                                      pom[n1]:=pom[n1]+400;
                                      pom[n2]:=pom[n2]+400;

                                      znazw:=0;
                                      repeat
                                      znazw:=znazw+1;
                                      zym[znazw]:=100+zyd[znazw];
                                      until znazw=18;
                                      znazw:=0;
                                      end;

                 drm[1]:=1300+drd[1];  drm[10]:=79+drd[10];
                 drm[2]:=86+drd[2];  drm[11]:=86+drd[11];
                 drm[3]:=79+drd[3];  drm[12]:=1300+drd[12];
                 drm[4]:=106+drd[4];  drm[13]:=106+drd[13];
                 drm[5]:=112+drd[5];  drm[14]:=112+drd[14];
                 drm[6]:=89+drd[6];  drm[15]:=89+drd[15];
                 drm[7]:=121+drd[7];  drm[16]:=121+drd[16];
                 drm[8]:=111+drd[8];  drm[17]:=111+drd[17];
                 drm[9]:=102+drd[9];  drm[18]:=102+drd[18];

                 znazw:=0;
                 repeat
                 znazw:=znazw+1;
                 if naleznosc[znazw]=1 then begin ludzie1:=ludzie1+pom[znazw];
                                                  drewno1:=drewno1+drm[znazw];
                                                  zywnosc1:=zywnosc1+zym[znazw];
                                                  zloto1:=zloto1+pom[znazw]*podatek+zld[znazw];
                                            end;
                 until znazw=18;
                 znazw:=0;
                 repeat
                 znazw:=znazw+1;
                 if naleznosc[znazw]=2 then begin ludzie2:=ludzie2+pom[znazw];
                                                  drewno2:=drewno2+drm[znazw];
                                                  zywnosc2:=zywnosc2+zym[znazw];
                                                  zloto2:=zloto2+pom[znazw]*podatek+zld[znazw];
                                                end;

                 until znazw=18;

                 if naleznosc[5]=1 then zloto1:=zloto1+5000;
                 if naleznosc[17]=1 then zloto1:=zloto1+5000;
                 if naleznosc[5]=2 then zloto2:=zloto1+5000;
                 if naleznosc[17]=2 then zloto2:=zloto1+5000;

                                 znazw:=0;
                                 repeat
                                 znazw:=znazw+1;
                                 if naleznosc[znazw]=2 then zloto2:=zloto2-armiam[znazw];
                                 if naleznosc[znazw]=1 then zloto1:=zloto1-armiam[znazw];
                                 until znazw=18;
                                 zloto1:=zloto1-wojaa1-wojab1;
                                 zloto2:=zloto2-wojaa2-wojab2;



end;

armiee:
armieeee:=0;
                 if (gracz=1)and(powrot=0) then gracz:=2 else
                 if (gracz=2)and(powrot=0) then begin gracz:=1;miesiac:=miesiac+1;end;


if (gracz=1)and(powrot=0) then begin kolora:=kolor1;kolorb:=kolor2;end;
if (gracz=2)and(powrot=0) then begin kolora:=kolor2;kolorb:=kolor1;end;

setcolor(kolora);
setfillstyle(1,0);
bar(74,0,209,25);

if gracz=1 then begin settextstyle(1,horizdir,1);outtextxy(75,0,nazwisko1);end;
if gracz=2 then begin settextstyle(1,horizdir,1);outtextxy(75,0,nazwisko2);end;


setlinestyle(0,0,normwidth);
setcolor(brown);                                  {klepsydra}
ellipse(19+8,4+4,0,180,19,4);
ellipse(19+8,8+4,0,180,19,4);
moveto(0+8,4+4);lineto(0+8,8+4);
moveto(38+8,4+4);lineto(38+8,8+4);
ellipse(19+8,54+4,180,0,19,4);
ellipse(19+8,50+4,180,0,19,4);
moveto(0+8,50+4);lineto(0+8,54+4);
moveto(38+8,50+4);lineto(38+8,54+4);

setcolor(cyan);
ellipse(19+8,9+4,0,180,19,4);
ellipse(19+8,49+4,180,0,19,4);
moveto(0+8,9+4);lineto(38+8,49+4);
moveto(38+8,9+4);lineto(0+8,49+4);
setcolor(brown);
setfillstyle(2,brown);
bar(0,0,54,2);
moveto(0,2);lineto(8,12);
moveto(54,2);lineto(46,12);
bar(0,66,54,64);
moveto(54,64);lineto(46,54);
moveto(0,64);lineto(8,54);
setlinestyle(0,0,thickwidth);
bar(2,0,5,64);
bar(52,64,49,0);

setlinestyle(0,0,normwidth);
setcolor(kolorb);              {zm}
ellipse(19+8,10+4,0,180,17,3);
moveto(19+8,15+4);lineto(1+8,10+4);
moveto(19+8,15+4);lineto(37+8,10+4);
moveto(19+8,15+4);lineto(19+8,28+4);

setcolor(kolora);              {zm}
ellipse(19+8,49+4,180,0,17,3);
moveto(19+8,35+4);lineto(19+8,30+4);
moveto(19+8,35+4);lineto(1+8,49+4);
moveto(19+8,35+4);lineto(37+8,49+4);

setfillstyle(9,brown);
floodfill(19+8,3+4,brown);
floodfill(19+8,55+4,brown);

setfillstyle(9,kolorb);      {zm}
floodfill(19+8,12+4,kolorb);

setfillstyle(9,kolora);      {zm}
floodfill(19+8,46+4,kolora);

setfillstyle(1,0);
            setcolor(yellow);
            settextstyle(2,horizdir,4);
            str(miesiac:1,miesia);
            bar(134,24,209,69);
            outtextxy(135,25,miesia);
            if warunki=0 then begin setcolor(red);outtextxy(135,40,'Zle');end
            else
            if warunki=1 then begin setcolor(blue);outtextxy(135,40,'Dobre');end
            else begin setcolor(yellow);outtextxy(135,40,'Zmienne');end;
            if przyrost=0 then begin setcolor(red);outtextxy(135,55,'Niski');end
            else
            if przyrost=1 then begin setcolor(blue);outtextxy(135,55,'Duzy');end
            else
            begin setcolor(yellow);outtextxy(135,55,'Przecietny');end;





if zmiana=1 then begin


          str(zywnosc1:1,zywn1);
          str(zywnosc2:1,zywn2);
          str(zloto1:1,zlot1);
          str(zloto2:1,zlot2);
          str(ludzie1:1,ludz1);
          str(ludzie2:1,ludz2);
          str(drewno1:1,drewn1);
          str(drewno2:1,drewn2);

          znazw:=0;
          repeat
          znazw:=znazw+1;
          str(zym[znazw]:1,zy[znazw]);
          str(drm[znazw]:1,dr[znazw]);
          str(pom[znazw]:1,po[znazw]);
          until znazw=18;





end;
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





zmiana:=0;
powrot:=0;
end;



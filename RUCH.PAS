procedure ruch;
var
ruch:integer;
pol:array[1..18] of word;


label koniec,poczatek,analizap,spr,akcept,propozycja,odpowiedz,bitw;



begin
ruch:=0;
xx:=-30;
yy:=-30;

znazw:=0;
repeat
znazw:=znazw+1;
pol[znazw]:=0;
until znazw=18;

if arm=11 then begin if rucha1=1 then goto koniec;xx:=xa1;yy:=ya1;end;
if arm=21 then begin if ruchb1=1 then goto koniec;xx:=xb1;yy:=yb1;end;
if arm=12 then begin if rucha2=1 then goto koniec;xx:=xa2;yy:=ya2;end;
if arm=22 then begin if ruchb2=1 then goto koniec;xx:=xb2;yy:=yb2;end;
delay(100);
setfillstyle(1,0);
bar(356,0,499,69);
bar(506,146,651,351);
bar(506,0,651,69);

settextstyle(2,horizdir,5);
setcolor(yellow);
outtextxy(515,150,'Wybierz miasto');
outtextxy(515,165,'docelowe...');

settextstyle(4,horizdir,1);
setcolor(yellow);
setfillstyle(9,brown);
rectangle(510,345,635,320);                     {p anuluj}
floodfill(515,340,yellow);
outtextxy(545,320,'Anuluj');

case yy of                              {zm armii}
85:begin pol[2]:=1;pol[5]:=1;pol[9]:=1;end;
205:begin pol[1]:=1;pol[5]:=1;pol[3]:=1;end;
258:begin pol[2]:=1;pol[6]:=1;pol[4]:=1;end;
330:begin pol[3]:=1;pol[6]:=1;pol[7]:=1;end;
180:begin pol[1]:=1;pol[2]:=1;pol[6]:=1;pol[8]:=1;pol[9]:=1;end;
275:begin pol[3]:=1;pol[4]:=1;pol[7]:=1;pol[8]:=1;pol[5]:=1;end;
320:begin pol[4]:=1;pol[6]:=1;pol[10]:=1;end;
206:begin pol[9]:=1;pol[5]:=1;pol[6]:=1;end;
100:begin pol[15]:=1;pol[8]:=1;pol[5]:=1;pol[1]:=1;end;
337-2:begin pol[7]:=1;pol[17]:=1;pol[11]:=1;end;
293+5:begin pol[10]:=1;pol[12]:=1;pol[14]:=1;end;
197+15:begin pol[11]:=1;pol[14]:=1;pol[13]:=1;pol[17]:=1;end;
94: begin pol[14]:=1;pol[12]:=1;pol[16]:=1;pol[15]:=1;end;
150:begin pol[13]:=1;pol[12]:=1;pol[11]:=1;end;
101+10:begin pol[16]:=1;pol[13]:=1;pol[9]:=1;end;
153:begin pol[15]:=1;pol[13]:=1;pol[17]:=1;pol[18]:=1;end;
240+10:begin pol[18]:=1;pol[10]:=1;pol[12]:=1;pol[16]:=1;end;
235:begin pol[17]:=1;pol[16]:=1;end;
end;{case}

case yy of                              {zm armii}
85-5:begin pol[2]:=1;pol[5]:=1;pol[9]:=1;end;
205-5:begin pol[1]:=1;pol[5]:=1;pol[3]:=1;end;
258-5:begin pol[2]:=1;pol[6]:=1;pol[4]:=1;end;
330-5:begin pol[3]:=1;pol[6]:=1;pol[7]:=1;end;
180-5:begin pol[1]:=1;pol[2]:=1;pol[6]:=1;pol[8]:=1;pol[9]:=1;end;
275-5:begin pol[3]:=1;pol[4]:=1;pol[7]:=1;pol[8]:=1;pol[5]:=1;end;
320-5:begin pol[4]:=1;pol[6]:=1;pol[10]:=1;end;
206-5:begin pol[9]:=1;pol[5]:=1;pol[6]:=1;end;
100-5:begin pol[15]:=1;pol[8]:=1;pol[5]:=1;pol[1]:=1;end;
337-5-2:begin pol[7]:=1;pol[17]:=1;pol[11]:=1;end;
293-5+5:begin pol[10]:=1;pol[12]:=1;pol[14]:=1;end;
197-5+15:begin pol[11]:=1;pol[14]:=1;pol[13]:=1;pol[17]:=1;end;
94-5: begin pol[14]:=1;pol[12]:=1;pol[16]:=1;pol[15]:=1;end;
150-5:begin pol[13]:=1;pol[12]:=1;pol[11]:=1;end;
101-5+10:begin pol[16]:=1;pol[13]:=1;pol[9]:=1;end;
153-5:begin pol[15]:=1;pol[13]:=1;pol[17]:=1;pol[18]:=1;end;
240-5+10:begin pol[18]:=1;pol[10]:=1;pol[12]:=1;pol[16]:=1;end;
235-5:begin pol[17]:=1;pol[16]:=1;end;
end;{case}


poczatek:
ustawmyche(0,75,640,350);
pokazmyche;
repeat
pobierzmyche(x,y,przyciski);
if przyciski=1 then goto analizap;
until ys=1000;

miasto:=0;

analizap:
delay(100);
if (x>510)and(x<635)and(y>320)and(y<345) then begin  {anulowanie}
                    schowajmyche;
                    setfillstyle(1,0);
                    bar(356,0,499,69);
                    bar(510,146,651,351);
                    bar(506,0,651,69);
                    zmienna:=1;
                    pokazmyche;
                    goto koniec;
                    end;
if (pol[1]=1)and(x>35)and(x<55)and(y>100)and(y<110)then begin miasto:=1;goto spr;end;
if (pol[2]=1)and(x>40)and(x<60)and(y>180)and(y<190)then begin miasto:=2;goto spr;end;
if (pol[3]=1)and(x>30)and(x<50)and(y>280)and(y<290)then begin miasto:=3;goto spr;end;
if (pol[4]=1)and(x>90)and(x<110)and(y>310)and(y<320)then begin miasto:=4;goto spr;end;
if (pol[5]=1)and(x>94)and(x<114)and(y>155)and(y<165)then begin miasto:=5;goto spr;end;
if (pol[6]=1)and(x>117)and(x<137)and(y>245)and(y<255)then begin miasto:=6;goto spr;end;
if (pol[7]=1)and(x>195)and(x<215)and(y>315)and(y<325)then begin miasto:=7;goto spr;end;
if (pol[8]=1)and(x>210)and(x<230)and(y>175)and(y<185)then begin miasto:=8;goto spr;end;
if (pol[9]=1)and(x>188)and(x<208)and(y>140)and(y<150)then begin miasto:=9;goto spr;end;
if (pol[10]=1)and(x>310)and(x<330)and(y>333)and(y<343)then begin miasto:=10;goto spr;end;
if (pol[11]=1)and(x>453)and(x<473)and(y>267)and(y<277)then begin miasto:=11;goto spr;end;
if (pol[12]=1)and(x>400)and(x<420)and(y>185)and(y<195)then begin miasto:=12;goto spr;end;
if (pol[13]=1)and(x>392)and(x<412)and(y>110)and(y<120)then begin miasto:=13;goto spr;end;
if (pol[14]=1)and(x>453)and(x<473)and(y>132)and(y<142)then begin miasto:=14;goto spr;end;
if (pol[15]=1)and(x>281)and(x<301)and(y>88)and(y<98)then begin miasto:=15;goto spr;end;
if (pol[16]=1)and(x>285)and(x<305)and(y>158)and(y<168)then begin miasto:=16;goto spr;end;
if (pol[17]=1)and(x>328)and(x<348)and(y>272)and(y<282)then begin miasto:=17;goto spr;end;
if (pol[18]=1)and(x>260)and(x<280)and(y>265)and(y<275)then begin miasto:=18;goto spr;end;
goto poczatek;

spr:
if naleznosc[miasto]=gracz then begin
                                ruch:=1;
                                if gracz=1 then begin
                                                setfillstyle(9,blue);
                                                floodfill(xx,yy,yellow);
                                                schowajmyche;
                                                end;
                                if gracz=2 then begin
                                                setfillstyle(9,red);
                                                floodfill(xx,yy,yellow);
                                                schowajmyche;
                                                end;
                                goto akcept;
                                end;
if naleznosc[miasto]=3 then goto propozycja;
if naleznosc[miasto]<>gracz then goto bitw;

akcept:
if arm=11 then rucha1:=1;
if arm=21 then ruchb1:=1;
if arm=12 then rucha2:=1;
if arm=22 then ruchb2:=1;

if gracz=1 then setfillstyle(9,blue);
if gracz=2 then setfillstyle(9,red);

if arm=11 then floodfill(xa1,ya1,yellow);
if arm=21 then floodfill(xb1,yb1,yellow);
if arm=12 then floodfill(xa2,ya2,yellow);
if arm=22 then floodfill(xb2,yb2,yellow);
                                                   {cos tutajjjjjjjjjjj zle}

case miasto of
1:begin xx:=78;yy:=85;end;
2:begin xx:=22;yy:=205;end;
3:begin xx:=46;yy:=258;end;
4:begin xx:=78;yy:=330;end;
5:begin xx:=109;yy:=180;end;
6:begin xx:=135;yy:=275;end;
7:begin xx:=234;yy:=320;end;
8:begin xx:=188;yy:=206;end;
9:begin xx:=210;yy:=100;end;
10:begin xx:=344-2;yy:=337-2;end;
11:begin xx:=438+5;yy:=293+5;end;
12:begin xx:=406+15;yy:=197+15;end;
13:begin xx:=438;yy:=94;end;
14:begin xx:=460;yy:=150;end;
15:begin xx:=302+10;yy:=101+10;end;
16:begin xx:=320;yy:=153;end;
17:begin xx:=344+10;yy:=240+10;end;
18:begin xx:=272;yy:=235;end;
end;


if arm=11 then begin xa1:=xx;ya1:=yy;end;
if arm=21 then begin xb1:=xx-5;yb1:=yy-5;end;
if arm=12 then begin xa2:=xx;ya2:=yy;end;
if arm=22 then begin xb2:=xx-5;yb2:=yy-5;end;

goto koniec;

propozycja:
if naleznosc[miasto]=3 then begin
schowajmyche;
setfillstyle(1,0);
bar(356,0,499,69);
bar(506,146,651,351);
bar(506,0,651,69);
setcolor(7);
settextstyle(2,horizdir,6);
outtextxy(540,145,'MIASTO');
setcolor(yellow);
settextstyle(2,horizdir,4);
outtextxy(515,165,'Przylaczy sie jesli');
outtextxy(515,180,'zaplacisz :');
settextstyle(2,horizdir,6);
outtextxy(515,195,'30000 zlota');

settextstyle(4,horizdir,1);
setcolor(yellow);
setfillstyle(9,brown);
rectangle(510,345,635,320);                     {p anuluj}
floodfill(515,340,yellow);
outtextxy(545,320,'Anuluj');

settextstyle(4,horizdir,1);
setfillstyle(9,brown);
rectangle(510,285,635,260);                     {p Zaplac}
floodfill(580,280,yellow);
outtextxy(545,260,'Zaplac');

settextstyle(4,horizdir,1);
setfillstyle(9,brown);
rectangle(510,315,635,290);                     {p Zaatakuj}
floodfill(515,310,yellow);
outtextxy(540,290,'Zaatakuj');

odpowiedz:
ustawmyche(510,145,640,350);
pokazmyche;
repeat
pobierzmyche(x,y,przyciski);
if przyciski=1 then
begin
               if (x>510)and(x<635)and(y>320)and(y<345)then
               begin
               schowajmyche;
               zmienna:=1;
               bar(356,0,499,69);
               bar(506,146,651,351);
               bar(506,0,651,69);
               pokazmyche;
               goto koniec;
               end;

               if (x>510)and(x<635)and(y>260)and(y<285)then
               begin
               if gracz=1 then begin
                               if zloto1<30000 then goto odpowiedz;
                               zloto1:=zloto1-30000;
                               naleznosc[miasto]:=1;
                               goto akcept;
                               end;
               if gracz=2 then begin
                               if zloto2<30000 then goto odpowiedz;
                               zloto2:=zloto2-30000;
                               naleznosc[miasto]:=2;
                               goto akcept;
                               end;


               end;

               if (x>510)and(x<635)and(y>290)and(y<315)then
               begin

               goto bitw;
               end;


end;

until ys=1000;
end;
zwyciestwo:=0;
odwrot:=0;
bitw:
bitwa;



koniec:
schowajmyche;
str(zloto1:1,zlot1);
str(zloto2:1,zlot2);
setfillstyle(1,0);
setcolor(yellow);
settextstyle(2,horizdir,4);
bar(270,4,349,19);
if gracz=1 then outtextxy(275,5,zlot1);
if gracz=2 then outtextxy(275,5,zlot2);


end; {procedure}
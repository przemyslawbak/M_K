procedure bitwa;

var
armia1,armia2,woj1,woj2,armia3,armia4,los:longint;
xx,yy,o:word;

label poczatek,koniec,kkoniec;

begin
sound(200);
delay(100);
sound(500);
delay(150);
nosound;
delay(50);
sound(200);
delay(100);
sound(500);
delay(250);
nosound;

schowajmyche;
setfillstyle(1,0);
bar(356,0,499,69);
bar(506,146,651,351);
bar(506,0,651,69);
if gracz=1 then setcolor(blue);
if gracz=2 then setcolor(red);
settextstyle(2,horizdir,5);
if arm=11 then begin armia1:=wojaa1;outtextxy(390,0,'Armia I');end;
if arm=21 then begin armia1:=wojab1;outtextxy(390,0,'Armia II');end;
if arm=12 then begin armia1:=wojaa2;outtextxy(390,0,'Armia I');end;
if arm=22 then begin armia1:=wojab2;outtextxy(390,0,'Armia II');end;

setcolor(kolory[miasto]);
outtextxy(540,0,'MIASTO');
settextstyle(2,horizdir,7);
setcolor(yellow);
outtextxy(520,145,'...Bitwa...');

settextstyle(4,horizdir,1);
setcolor(yellow);
setfillstyle(9,brown);
rectangle(510,345,635,320);                     {p Odwrot}
floodfill(515,340,yellow);
outtextxy(545,320,'Odwrot');

woj1:=0;
woj2:=0;
znazw:=0;
o:=1;
if fort[miasto]=1 then o:=2;
repeat
znazw:=znazw+1;

case znazw of
1:yy:=85;
2:yy:=205;
3:yy:=258;
4:yy:=330;
5:yy:=180;
6:yy:=275;
7:yy:=320;
8:yy:=206;
9:yy:=100;
10:yy:=337-2;
11:yy:=293+5;
12:yy:=197+15;
13:yy:=94;
14:yy:=150;
15:yy:=101+10;
16:yy:=153;
17:yy:=240+10;
18:yy:=235;
end;


if miasto=znazw then begin if ya1=yy then woj1:=wojaa1;
                           if yb1=yy-5 then woj2:=wojab1;
                           if ya2=yy then woj1:=wojaa2;
                           if yb2=yy-5 then woj2:=wojab2;
                     end;

until znazw=18;

armia2:=armiam[miasto];
armia3:=woj1;
armia4:=woj2;
if warunki=0 then los:=10; {zle}
if warunki=1 then los:=100;  {dobre}
if warunki>1 then los:=75;  {zmienne}


ustawmyche(510,145,640,350);
pokazmyche;
poczatek:
repeat



setfillstyle(1,0);
bar(356,19,499,69);
bar(506,19,640,69);

str(armia1:1,arm1);
str(armia2:1,arm2);
str(armia3:1,arm3);
str(armia4:1,arm4);
setcolor(yellow);
settextstyle(2,horizdir,5);
outtextxy(390,45,arm1);
outtextxy(540,45,arm2);
outtextxy(510,55,'+');
outtextxy(520,55,arm3);
outtextxy(570,55,'+');
outtextxy(580,55,arm4);

znazw:=0;
repeat
znazw:=znazw+1;
if armia1>znazw*100-1 then
begin
if gracz=1 then setfillstyle(1,blue);
if gracz=2 then setfillstyle(1,red);
bar(0+360+(znazw-1)*11,0+20,10+360+(znazw-1)*11,20+20);
setcolor(black);
setfillstyle(1,0);
bar(4+360+(znazw-1)*11,1+20,6+360+(znazw-1)*11,2+20);
setcolor(0);
line(5+360+(znazw-1)*11,3+20,5+360+(znazw-1)*11,4+20);
bar(2+360+(znazw-1)*11,5+20,8+360+(znazw-1)*11,6+20);
bar(4+360+(znazw-1)*11,7+20,6+360+(znazw-1)*11,18+20);
end;
until znazw=12;


znazw:=0;
repeat
znazw:=znazw+1;
if (armia2+armia3+armia4)>znazw*100-1 then
begin
setfillstyle(1,kolory[miasto]);

bar(0+510+(znazw-1)*11-1,0+20,10+510+(znazw-1)*11-1,20+20);
setcolor(black);
setfillstyle(1,0);
bar(4+510+(znazw-1)*11-1,1+20,6+510+(znazw-1)*11-1,2+20);
setcolor(0);
line(5+510+(znazw-1)*11-1,3+20,5+510+(znazw-1)*11-1,4+20);
bar(2+510+(znazw-1)*11-1,5+20,8+510+(znazw-1)*11-1,6+20);
bar(4+510+(znazw-1)*11-1,7+20,6+510+(znazw-1)*11-1,18+20);
end;
until znazw=12;

znazw:=0;
repeat
znazw:=znazw+1;
delay(1);
pobierzmyche(x,y,przyciski);
if przyciski=1 then begin
                   if(x>510)and(x<635)and(y>320)and(y<345) then begin
                                                                odwrot:=1;
                                                                goto kkoniec;
                                                                end;
                   end;

until znazw=3000;

armia1:=armia1-((armia3+armia2+armia4)*o div 10)- random((armia1)*o div los);
if armia3>0 then begin
                 armia3:=armia3-(armia1 div 10)div o;
                 end
else
if armia4>0 then begin
                 armia4:=armia4-(armia1 div 10)div o;
                 end
else
armia2:=armia2-(armia1 div 10)div o;

if armia1<=0 then goto koniec;

if (armia2+armia3+armia4)<=0 then goto koniec;

until ys=1000;

koniec:

if armia1>(armia2+armia3+armia4) then begin
                                      zwyciestwo:=1;

                                      if gracz=1 then begin
                                      naleznosc[miasto]:=1;
                                      end;

                                      if gracz=2 then begin
                                      naleznosc[miasto]:=2;
                                      end;

                                      end;


if armia2<=0 then armia2:=0;


if arm=11 then rucha1:=1;
if arm=21 then ruchb1:=1;
if arm=12 then rucha2:=1;
if arm=22 then ruchb2:=1;





kkoniec:
znazw:=0;
repeat
znazw:=znazw+1;

case znazw of
1:yy:=85;
2:yy:=205;
3:yy:=258;
4:yy:=330;
5:yy:=180;
6:yy:=275;
7:yy:=320;
8:yy:=206;
9:yy:=100;
10:yy:=337-2;
11:yy:=293+5;
12:yy:=197+15;
13:yy:=94;
14:yy:=150;
15:yy:=101+10;
16:yy:=153;
17:yy:=240+10;
18:yy:=235;
end;





if miasto=znazw then begin if ya1=yy then wojaa1:=armia3;
                           if yb1=yy-5 then wojab1:=armia4;
                           if ya2=yy then wojaa2:=armia3;
                           if yb2=yy-5 then wojaa2:=armia4;
                     end;

until znazw=18;




armiam[miasto]:=armia2;
if odwrot=1 then armia1:=armia1-(armia1 div 5);

if arm=11 then wojaa1:=armia1;
if arm=21 then wojab1:=armia1;
if arm=12 then wojaa2:=armia1;
if arm=22 then wojab2:=armia1;

end;
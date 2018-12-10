 procedure nazwa;
var amenun:char;
label dalej,endi,petla2,next,gr2,pocz,finito,poczatek;



begin
poczatek:
znazw:=0;

repeat

nazwisko1[znazw]:=' ';
znazw:=znazw+1;
until znazw=11;
znazw:=0;
repeat

nazwisko2[znazw]:=' ';
znazw:=znazw+1;
until znazw=11;




na:=0;
xm:=185;
ym:=5;
pocz:
amenun:='x';
setactivepage(0);
cleardevice;
setvisualpage(0);
xnazw:=230;
znazw:=0;
nazwy:=0;
ys:=258;


na:=na+1;


repeat

setlinestyle(0,0,normwidth);                                         {SMOK}

setcolor(yellow);
moveto(13+xm,2+5);lineto(20+xm,12+5);lineto(10+xm,14+5);lineto(13+185,2+5);
MOVETO(20+185,12+5);lineto(45+185,18+5);lineto(26+185,31+5);lineto(20+185,12+5);
moveto(45+185,18+5);lineto(57+185,12+5);lineto(54+185,25+5);lineto(45+185,18+5);

moveto(45+xm,18+5);lineto(56+xm,68+5);lineto(66+xm,80+5);lineto(92+xm,90+5);
lineto(100+xm,100+5);lineto(98+xm,105+5);lineto(112+xm,105+5);lineto(108+xm,100+5);
lineto(100+xm,78+5);lineto(90+xm,73+5);

moveto(110+xm,65+5);lineto(140+xm,30+5);lineto(150+xm,80+5);lineto(140+xm,65+5);
lineto(140+xm,75+5);lineto(130+xm,65+5);lineto(130+xm,70+5);lineto(120+xm,65+5);lineto(110+xm,65+5);

moveto(68+xm,82+5);lineto(55+xm,90+5);lineto(53+xm,100+5);lineto(55+xm,105+5);lineto(41+xm,105+5);
lineto(45+xm,100+5);lineto(46+xm,90+5);lineto(58+xm,70+5);

moveto(45+xm,18+5);lineto(90+xm,60+5);lineto(116+xm,57+5);
moveto(145+xm,54+5);lineto(170+xm,50+5);lineto(210+xm,80+5);lineto(220+xm,75+5);
lineto(205+xm,50+5);lineto(230+xm,70+5);lineto(220+xm,90+5);lineto(183+xm,80+5);lineto(173+xm,90+5);

moveto(116+xm,57+5);lineto(100+xm,30+5);lineto(90+xm,60+5);

moveto(150+xm,90+5);lineto(145+xm,105+5);lineto(131+xm,105+5);lineto(137+xm,96+5);lineto(136+xm,92+5);

moveto(104+xm,90+5);lineto(120+xm,95+5);lineto(150+xm,90+5);moveto(160+xm,70+5);
lineto(150+xm,90+5);lineto(160+xm,95+5);lineto(155+xm,105+5);lineto(169+xm,105+5);
lineto(173+xm,90+5);
                                             {fire}

setcolor(yellow);
moveto(26+186,31+5);lineto(150,75);lineto(160,76);lineto(118,100);
lineto(140,100);lineto(130,120);lineto(160,110);lineto(160,120);
lineto(170,110);lineto(195,130);
moveto(26+185,31+5);lineto(225,55);lineto(220,55);lineto(230,80);
lineto(220,79);lineto(225,110);lineto(194,110);lineto(194,130);
setfillstyle(6,red);
floodfill(170,100,yellow);
setlinestyle(0,0,normwidth);



setfillstyle(9,green);
floodfill(100+xm,70+5,yellow);
floodfill(30+xm,25+5,yellow);
floodfill(56+xm,78+5,yellow);
floodfill(145+xm,95+5,yellow);
setfillstyle(9,brown);
floodfill(15+xm,7+5,yellow);
floodfill(50+xm,18+5,yellow);
floodfill(110+xm,57+5,yellow);
floodfill(130+xm,57+5,yellow);

setfillstyle(1,red);
setcolor(red);moveto(23+xm,15+5);lineto(27+xm,18+5);lineto(26+xm,20+5);
lineto(23+xm,15+5);floodfill(26+xm,18+5,red);
setcolor(red);moveto(33+xm,20+5);lineto(38+xm,20+5);lineto(32+xm,22+5);
lineto(33+xm,20+5);floodfill(34+xm,21+5,red);


setcolor(yellow);
settextstyle(4,horizdir,1);


if na=1 then outtextxy(205,120,'Gracz 1 jak chcesz sie nazywac?');
if na=2 then outtextxy(205,120,'Gracz 2 jak chcesz sie nazywac?');
rectangle(200,115,470,155);
rectangle(195,110,475,190);


settextstyle(3,horizdir,3);

if na=2 then goto gr2;
if na=1 then begin

nazwisko1[znazw]:=readkey;
setcolor(blue);
outtextxy(xnazw,154,nazwisko1[znazw]);
if nazwisko1[znazw]= #13 then goto dalej
else
if nazwisko1[znazw]= #27 then goto next
else

xnazw:=xnazw+20;znazw:=znazw+1;
end;
until znazw=10;
goto dalej;
gr2:
repeat
if na=2 then begin
nazwisko2[znazw]:=readkey;
setcolor(red);
outtextxy(xnazw,154,nazwisko2[znazw]);
if nazwisko2[znazw]= #13 then goto dalej
else
if nazwisko2[znazw]= #27 then goto next

else
xnazw:=xnazw+20;znazw:=znazw+1;
end;
until znazw=10;

goto dalej;
dalej:


setcolor(yellow);
settextstyle(4,horizdir,1);
outtextxy(288,205,'Na pewno?');
rectangle(280,200,380,235);
setcolor(cyan);
outtextxy(288,245,'Tak');
outtextxy(288,265,'Nie');


petla2:

case amenun of
     #80: begin case ys of
                   250+8 :  ys:=ys+20;
                   270+8 :  ys:=ys-20 ;

                   end
          end;
     #72: begin case ys of
                   250+8 :  ys:=ys+20;
                   270+8 :  ys:=ys-20 ;

                   end
          end;
     #13 : begin if na=1 then goto next;
                 if na=2 then goto next;
           end;


end;

                                       {KURSOR}


setlinestyle(0,0,normwidth);
setcolor(blue);
moveto(430-100,ys);lineto(432-100,ys-2);lineto(452-100,ys-2);
lineto(452-100,ys+2);lineto(432-100,ys+2);lineto(430-100,ys);
setlinestyle(0,0,thickwidth);
setfillstyle(1,blue);
floodfill(432-100,ys,blue);
setcolor(brown);
moveto(454-100,ys+5);lineto(454-100,ys-5);
moveto(454-100,ys);lineto(464-100,ys);

amenun:= readkey;
setcolor(black);

setfillstyle(1,black);
bar(425-100,ys-10,470-100,ys+10);
goto petla2;


next:

if ys=278 then goto poczatek;
if ys=258 then goto finito;


finito:
if nazwisko1[0]=#13 then begin nazwisko1[0]:='I';
                           nazwisko1[1]:='n';
                           nazwisko1[2]:='c';
                           nazwisko1[3]:='o';
                           nazwisko1[4]:='g';
                           nazwisko1[5]:='n';
                           nazwisko1[6]:='i';
                           nazwisko1[7]:='t';
                           nazwisko1[8]:='o';
                      end;

if nazwisko2[0]=#13 then begin nazwisko2[0]:='I';
                           nazwisko2[1]:='n';
                           nazwisko2[2]:='c';
                           nazwisko2[3]:='o';
                           nazwisko2[4]:='g';
                           nazwisko2[5]:='n';
                           nazwisko2[6]:='i';
                           nazwisko2[7]:='t';
                           nazwisko2[8]:='o';
                      end;

if nazwisko1[znazw] = #27 then begin nazwyy:=3;goto endi;end;
if nazwisko2[znazw] = #27 then begin nazwyy:=3;goto endi;end;

if na=1 then goto pocz;

if ys= 258 then begin
                setactivepage(0);
                cleardevice;
                setvisualpage(0);
                nazwy:=2;
                sound(1000);
              delay(150);
              sound(800);
              delay(150);
              sound(600);
              delay(150);
              sound(800);
              delay(150);
              sound(1000);
              delay(150);
              sound(800);
              delay(150);
              sound(1100);
              delay(150);
              sound(900);
              delay(150);
              sound(1000);
              delay(150);
              sound(800);
              delay(150);
              sound(600);
              delay(150);
              sound(800);
              delay(150);
              sound(1000);
              delay(150);
              sound(800);
              delay(150);
              sound(700);
              delay(350);

              sound(1000);
              delay(150);
              sound(800);
              delay(150);
              sound(600);
              delay(150);
              sound(800);
              delay(150);
              sound(1000);
              delay(150);
              sound(800);
              delay(150);
              sound(1100);
              delay(150);
              sound(900);
              delay(150);
              sound(1000);
              delay(150);
              sound(800);
              delay(150);
              sound(600);
              delay(150);
              sound(800);
              delay(150);
              sound(1000);
              delay(150);
              sound(800);
              delay(150);
              sound(900);
              delay(350);
              nosound;
                end;
if ys= 298 then nazwy:=3;
endi:
end;

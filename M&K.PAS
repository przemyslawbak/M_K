program MiK;
uses crt;

var ys:integer;
    nazwisko1:array [0..11] of char;     {nazwisko 1 gacza}
    nazwisko2:array [0..11] of char;     {nazwisko 2 gracza}
    na:word;
    xnazw: word;
    znazw,znazwf,wro: longint;
    amenug:char;                  {zm menu glownego}
    zmmg:char;
    nazwy:word;
    nazwyy:word;
    ym,xm:integer;                {zm punktow art}
    x,y,przyciski:word;           {zm.myszy}
    gracz:word;                   {nr gracza}
    kolor1,kolor2,kolor3,kolora,kolorb:word;         {kolor graczy}
    kolory:array [1..18] of word;
    zmiana:byte;                  {nowa tura?}
    xxx,yyy:integer;               {+wsp.miast}
    naleznosc:array [1..18] of word;     { naleznosc pol}
    miesiac:longint;               {miesiac}
    miesia:string;
    warunki,przyrost:byte;                  {warunki,przyrost}
    zlm:array[1..18] of longint;            {zloto miasta}
    zym:array[1..18] of longint;            {zywnosc miasta}
    drm:array[1..18] of longint;            {drewno miasta}
    pom:array[1..18] of longint;            {populacja miasta}
    zld:array[1..18] of longint;            {zloto miasta}
    zyd:array[1..18] of longint;            {zywnosc miasta}
    drd:array[1..18] of longint;            {drewno miasta}
    pod:array[1..18] of longint;
    ludzie1,ludzie2:longint;                    {populacja graczy}
    zloto1,zloto2:longint;                      {zloto gr.}
    drewno1,drewno2:longint;                    {drewno gr.}
    zywnosc1,zywnosc2:longint;                  {zywnosc gr.}
    podatek,rozpoczeta,powrot:word;         {petle,wmiasto}
    zywn1,zywn2,zlot1,zlot2,ludz1,ludz2,drewn1,drewn2:string;  {z,d,z,l-ogolnie}
    zl,zy,dr,po:array [1..18] of string;           {z,d,z,l-string}
    fort,targ,mlyn,tartak,ratusz:array[1..18] of word;        {budynki+-}
    armiam:array[1..18] of longint;                             {armie}
    wojaa1,wojab1,wojaa2,wojab2:longint;        {licz.armii mob.}
    woaa1,woab1,woaa2,woab2:string;             {licz.armii mob.string}
    armiams:array[1..18] of string;
    nowaa:longint;
    nowaab:string;
    wmiasto:longint;                                          {armie}
    a1,b1,a2,b2:word;
    xa1,ya1,xb1,yb1:integer;                         {xy arm}
    xa2,ya2,xb2,yb2:integer;
    armieeee,arm,zmienna:word;
    armiasta:longint;
    armiastas:string;
    rucha1,ruchb1,rucha2,ruchb2:word;
    miasto:word;
    arm1,arm2,arm3,arm4:string;
    zwyciestwo:word;
    w1,w2,odwrot,n1,n2:word;
    xx,yy:integer;


label koniec,menu,poczatek,nazwaa,dalej1,dalej2,dalej3,analiza,mysza;
label miastaa,powtorz;

{$i vga.pas}
{$i ega.pas}
{$i finito.pas}
{$i animf.pas}
{$i bitwa.pas}
{$i ruch.pas}
{$i armie.pas}
{$i miasta.pas}
{$i buduj.pas}
{$i rekrutuj.pas}
{$i tury.pas}
{$i znaki.pas}
{$i mapa.pas}
{$i nazwa.pas}
{$i zasady.pas}
{$i menug.pas}
{$i intro.pas}



begin
                        {wykonanie}
egainit;
{intro}intro;
poczatek:
menu:
menug;
repeat

case zmmg of
     'n':goto nazwaa;
     'o':begin if rozpoczeta=0 then goto menu;powrot:=1; goto dalej1;end;
     'z':begin
              zasady;goto menu;
         end;
     'k':goto koniec;
     else goto menu;
end;
goto menu;
until ys=1000;
nazwaa:
rozpoczeta:=0;                                        {zmienne}
randomize;
zmiana:=1;
gracz:=2;

powrot:=0;

zywnosc1:=0;
zywnosc2:=0;
drewno1:=0;
drewno2:=0;
zloto1:=0;
zloto2:=0;
ludzie1:=0;
ludzie2:=0;
podatek:=2;


kolor1:=1;
kolor2:=4;
kolor3:=7;

a1:=0;
a2:=0;
b1:=0;
b2:=0;

miesiac:=0;
znazw:=0;
repeat
znazw:=znazw+1;
zlm[znazw]:=0;
zld[znazw]:=0;
fort[znazw]:=0;
targ[znazw]:=0;
mlyn[znazw]:=0;
tartak[znazw]:=0;
ratusz[znazw]:=0;
armiam[znazw]:=random(300)+100;
until znazw=18;

armiam[5]:=armiam[5]+400;
armiam[17]:=armiam[17]+400;
armiam[12]:=armiam[12]+400;
armiam[1]:=armiam[1]+400;




zld[5]:=10000;
zld[17]:=10000;



znazw:=0;
repeat
znazw:=znazw+1;
zym[znazw]:=0;
zyd[znazw]:=0;
until znazw=18;
znazw:=0;
repeat
znazw:=znazw+1;
drm[znazw]:=0;
drd[znazw]:=0;
until znazw=18;
znazw:=0;
repeat
znazw:=znazw+1;
pom[znazw]:=0;
pod[znazw]:=0;
until znazw=18;
znazw:=0;

powtorz:
repeat                                 {naleznosc}
znazw:=znazw+1;
naleznosc[znazw]:=3;
until znazw=18;
n1:=random(8)+1;
n2:=random(8)+10;
if(n1=1)or(n1=5) then goto powtorz;
if(n2=17)or(n2=12) then goto powtorz;
naleznosc[n1]:=1;
naleznosc[n2]:=2;
armiam[n1]:=400;
armiam[n2]:=400;
fort[n1]:=1;
fort[n2]:=1;


repeat
nazwa;
case nazwy of
     2:begin rozpoczeta:=1;goto dalej1;end;
     3:goto menu;
end;
if nazwisko1[znazw] = #27 then goto menu;
if nazwisko2[znazw] = #27 then goto menu;

until ys=1000;

dalej1:
mapa;

dalej2:
znaki;

if wojaa1<=0 then a1:=0;
if wojab1<=0 then b1:=0;
if wojaa2<=0 then a2:=0;
if wojab2<=0 then b2:=0;

if a1=1 then armiaa1;
if b1=1 then armiab1;
if a2=1 then armiaa2;
if b2=1 then armiab2;


dalej3:
tury;

mysza:
zmienna:=0;
setfillstyle(1,0);
bar(506,146,641,351);
bar(356,0,499,69);
bar(506,0,651,69);
pokazmyche;
pokazmyche;
setfillstyle(1,0);
ustawmyche(1,1,640,350);
repeat                                  {pobieranie myszy}

znazw:=0;
w1:=0;w2:=0;
wro:=0;
repeat
znazw:=znazw+1;
if naleznosc[znazw]=1 then w1:=w1+1;
if naleznosc[znazw]=2 then w2:=w2+1;
if w1=18 then goto koniec;
if w2=18 then goto koniec;
until znazw=18;

animf;                               {animacja flagi}
znazwf:=znazwf+1;
znazw:=0;
repeat
znazw:=znazw+1;
delay(11);
pobierzmyche(x,y,przyciski);
if przyciski=1 then goto analiza;
until znazw=7;



until ys=1000;

analiza:
pobierzmyche(x,y,przyciski);
delay(100);
schowajmyche;
if(x>-1)and(x<60)and(y>-1)and(y<70) then begin
                                         if gracz=2 then zmiana:=1;
                                         goto dalej3;
                                         end
else
if(x>510)and(x<635)and(y>110)and(y<135) then goto koniec
else
if(x>510)and(x<635)and(y>80)and(y<105) then goto menu
else
if(x>35)and(x<55)and(y>100)and(y<110) then begin
                                           wmiasto:=1;
                                           miastoo;
                                           goto miastaa;
                                           end
else
if(x>40)and(x<60)and(y>180)and(y<190) then begin
                                           wmiasto:=2;
                                           miastoo;
                                           goto miastaa;
                                           end
else
if(x>30)and(x<50)and(y>280)and(y<290) then begin
                                           wmiasto:=3;
                                           miastoo;
                                           goto miastaa;
                                           end
else
if(x>90)and(x<110)and(y>310)and(y<320) then begin
                                           wmiasto:=4;
                                           miastoo;
                                           goto miastaa;
                                           end
else
if(x>94)and(x<114)and(y>155)and(y<165) then begin
                                           wmiasto:=5;
                                           miastoo;
                                           goto miastaa;
                                           end
else
if(x>117)and(x<137)and(y>245)and(y<255) then begin
                                           wmiasto:=6;
                                           miastoo;
                                           goto miastaa;
                                           end
else
if(x>195)and(x<215)and(y>315)and(y<325) then begin
                                           wmiasto:=7;
                                           miastoo;
                                           goto miastaa;
                                           end
else
if(x>210)and(x<230)and(y>175)and(y<185) then begin
                                           wmiasto:=8;
                                           miastoo;
                                           goto miastaa;
                                           end

else
if(x>188)and(x<208)and(y>140)and(y<150) then begin
                                           wmiasto:=9;
                                           miastoo;
                                           goto miastaa;
                                           end

else
if(x>310)and(x<330)and(y>333)and(y<343) then begin
                                           wmiasto:=10;
                                           miastoo;
                                           goto miastaa;
                                           end
else
if(x>453)and(x<473)and(y>267)and(y<277) then begin
                                           wmiasto:=11;
                                           miastoo;
                                           goto miastaa;
                                           end


else
if(x>400)and(x<420)and(y>185)and(y<195) then begin
                                           wmiasto:=12;
                                           miastoo;
                                           goto miastaa;
                                           end


else
if(x>392)and(x<412)and(y>110)and(y<120) then begin
                                           wmiasto:=13;
                                           miastoo;
                                           goto miastaa;
                                           end

else
if(x>453)and(x<473)and(y>132)and(y<142) then begin
                                           wmiasto:=14;
                                           miastoo;
                                           goto miastaa;
                                           end

else
if(x>281)and(x<301)and(y>88)and(y<98) then begin
                                           wmiasto:=15;
                                           miastoo;
                                           goto miastaa;
                                           end
else
if(x>285)and(x<305)and(y>158)and(y<168) then begin
                                           wmiasto:=16;
                                           miastoo;
                                           goto miastaa;
                                           end
else
if(x>328)and(x<348)and(y>272)and(y<282) then begin
                                           wmiasto:=17;
                                           miastoo;
                                           goto miastaa;
                                           end
else
if(x>260)and(x<280)and(y>265)and(y<275) then begin
                                           wmiasto:=18;
                                           miastoo;
                                           goto miastaa;
                                           end
else
if(x>xb1)and(x<xb1+26)and(y>yb1)and(y<yb1+12) then begin arm:=21;wybor;
if zmienna=2 then transfer;
if zmienna=3 then ruch;if zmienna=1 then goto mysza;powrot:=1;zmienna:=0;goto dalej2;end
else
if(x>xa1)and(x<xa1+26)and(y>ya1)and(y<ya1+12) then begin arm:=11;wybor;
if zmienna=2 then transfer;
if zmienna=3 then ruch;if zmienna=1 then goto mysza;powrot:=1;zmienna:=0;goto dalej2;end
else
if(x>xb2)and(x<xb2+26)and(y>yb2)and(y<yb2+12) then begin arm:=22;wybor;
if zmienna=2 then transfer;
if zmienna=3 then ruch;if zmienna=1 then goto mysza;powrot:=1;zmienna:=0;goto dalej2;end
else
if(x>xa2)and(x<xa2+26)and(y>ya2)and(y<ya2+12) then begin arm:=12;wybor;
if zmienna=2 then transfer;
if zmienna=3 then ruch;if zmienna=1 then goto mysza;powrot:=1;zmienna:=0;goto dalej2;end
else
    begin
    pokazmyche;
    goto mysza;
    end;

miastaa:
ustawmyche(505,0,640,350);
pokazmyche;

repeat
pobierzmyche(x,y,przyciski);

if przyciski=1 then begin
                    if (x>510)and(x<635)and(y>320)and(y<345) then begin
                                                                  schowajmyche;
                                                                  setfillstyle(1,0);
                                                                  bar(356,0,499,69);
                                                                  bar(510,146,651,351);
                                                                  bar(506,0,651,69);
                                                                  pokazmyche;
                                                                  goto mysza;
                                                                  end
                    else
                    if (x>510)and(x<635)and(y>5)and(y<15) then begin bfort;wmiasto:=wmiasto+1000;goto mysza;end
                    else
                    if (x>510)and(x<635)and(y>16)and(y<27) then begin btarg;wmiasto:=wmiasto+1000;goto mysza;end
                    else
                    if (x>510)and(x<635)and(y>29)and(y<40) then begin bmlyn;wmiasto:=wmiasto+1000;goto mysza;end
                    else
                    if (x>510)and(x<635)and(y>41)and(y<52) then begin btartak;wmiasto:=wmiasto+1000;goto mysza;end
                    else
                    if (x>510)and(x<635)and(y>53)and(y<62) then begin bratusz;wmiasto:=wmiasto+1000;goto mysza;end
                    else

                    if (x>510)and(x<635)and(y>150)and(y<175) then begin
                    rekrutacjam;
                    wmiasto:=wmiasto+1000;
                    goto mysza;
                    end

                    else
                    if (x>510)and(x<635)and(y>180)and(y<205) then begin
                    armieeee:=1;
                    powrot:=1;
                    warun;
                    wmiasto:=wmiasto+1000;
                    goto dalej2;
                    end

                    else
                    if(x>510)and(x<635)and(y>110)and(y<135) then goto koniec
                    else
                    if(x>510)and(x<635)and(y>80)and(y<105) then begin wmiasto:=wmiasto+1000;goto menu;end;
                    end;
until ys=1000;
koniec:
finito;
closegraph;
end.
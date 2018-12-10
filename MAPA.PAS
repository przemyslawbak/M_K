procedure mapa;


begin



setactivepage(0);
cleardevice;

setlinestyle(0,0,normwidth);
setcolor(yellow);
rectangle(-1,-1,60,70);
rectangle(65,-1,210,70);


settextstyle(2,horizdir,4);              {tydz}
outtextxy(75,25,'Miesiac :');
outtextxy(75,40,'Warunki :');
outtextxy(75,55,'Przyrost :');
rectangle(215,-1,350,70);
                                             {ilosc}
outtextxy(220,5, 'Zloto :');
outtextxy(220,20,'Zywnosc :');
outtextxy(220,35,'Drewno :');
outtextxy(220,50,'Popul. :');

rectangle(355,-1,500,70);
rectangle(505,-1,641,70);
rectangle(505,75,641,140);
rectangle(505,145,641,351);
rectangle(500,75,1,349);
setfillstyle(9,brown);
floodfill(502,73,yellow);
rectangle(510,80,635,105);         {przycisk menu}
rectangle(510,110,635,135);             {przycisk wyjscie}
floodfill(515,85,yellow);
settextstyle(4,horizdir,1);
outtextxy(550,80,'Menu');
floodfill(515,115,yellow);

outtextxy(545,110,'Wyjscie');
setlinestyle(0,0,thickwidth);
                                                     {mapa}
moveto(94,114);lineto(60,150);lineto(60,150);lineto(90,192);lineto(75,223);
lineto(156,215);lineto(188,182);lineto(171,118);lineto(135,135);lineto(94,114);
moveto(60,150);lineto(20,150);lineto(0,135);moveto(171,118);lineto(160,100);
lineto(188,75);moveto(75,223);lineto(26,250);lineto(0,232);moveto(75,223);
lineto(109,280);lineto(63,320);lineto(22,310);lineto(0,328);moveto(109,280);lineto(150,337);
lineto(185,350);moveto(150,337);lineto(200,285);lineto(203,240);lineto(156,215);moveto(188,182);
lineto(255,135);lineto(254,75);moveto(255,135);lineto(270,205);lineto(245,223);lineto(255,250);
lineto(200,285);lineto(275,302);lineto(281,350);
moveto(265,75);lineto(265,127);lineto(285,205);lineto(255,223);lineto(265,250);
lineto(215,282);lineto(290,295);lineto(292,350);
MOVETO(265,127);lineto(313,145);lineto(375,100);lineto(344,75);moveto(375,100);lineto(375,162);
lineto(313,223);lineto(344,240);lineto(290,295);lineto(359,328);lineto(390,285);
lineto(430,280);lineto(375,162);lineto(442,145);lineto(438,118);lineto(500,105);
moveto(442,145);lineto(472,197);lineto(453,205);lineto(484,240);lineto(500,260);moveto(484,240);
lineto(430,280);lineto(438,350);moveto(313,223);lineto(285,205);
end;







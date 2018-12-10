


procedure menug ;

var amenug: char;
label petla1,koniec;


begin


ys:=95;

setactivepage(0);
cleardevice;
setvisualpage(0);
setfillstyle(9,brown);


setlinestyle(0,0,normwidth);
setcolor(yellow);
rectangle(150,75,490,275);
rectangle(145,30,495,280);
rectangle(140,25,500,285);
floodfill(142,27,yellow);

setcolor(blue);                  {ART}
moveto(175,310); lineto(150,320);lineto(175,330);
lineto(370,330);lineto(380,325);
ellipse(380,320,270,90,3,5);
moveto(380,315);lineto(370,310);lineto(175,310);
moveto(190,320);
setfillstyle(9,blue);
floodfill(186,315,blue);


lineto(360,320);
moveto(195,323);lineto(355,323);lineto(356,326);lineto(270,326);

setlinestyle(0,0,normwidth);setcolor(green);
ellipse(381,320,270,90,2,5);
moveto(381,315);
lineto(376,295);moveto(380,300);lineto(383,315);moveto(382,300);
lineto(384,314);
ellipse(386,295,0,360,10,2);
moveto(396,295);lineto(391,315);
ellipse(386,315,180,360,5,3);
ellipse(386,325,180,360,5,3);
moveto(391,315);lineto(391,325);lineto(396,345);
ellipse(386,345,180,360,10,2);moveto(376,345);lineto(381,325);
moveto(391,315);lineto(396,313);lineto(466,311);
moveto(391,325);lineto(396,327);lineto(466,329);
ellipse(396,320,270,90,2,6);ellipse(466,320,270,90,4,9);
setlinestyle(0,0,normwidth);



setfillstyle(9,green);
floodfill(398,316,green);
floodfill(378,343,green);
floodfill(378,300,green);
floodfill(378,295,green);
floodfill(390,320,green);
floodfill(396,320,green);
moveto(400,315);lineto(442,313);
lineto(443,315);lineto(415,315);

setcolor(yellow);
settextstyle(4,horizdir,4);
outtextxy(230,32,'M e n u :');
settextstyle(4,horizdir,2);
setcolor(cyan);
outtextxy(220,80,'Rozpocznij nowa gre');
outtextxy(200,110,'Kontynuuj rozpoczeta gre');
outtextxy(280,140,'Zasady');
outtextxy(250,185,'Wyjscie z gry');
settextstyle(0,horizdir,1);
outtextxy(215,260,'" Miecz i korona " v.1.00b  ');
petla1:
case amenug of
     #80: begin case ys of
                   95 :  ys:=ys+30;
                   125 :  ys:=ys+30 ;
                   155 :  ys:=ys+45;
                   200 :  ys:=ys-105;
                   end
          end;
     #72: begin case ys of
                   95 :  ys:=ys+105;
                   125 :  ys:=ys-30 ;
                   155 :  ys:=ys-30;
                   200 : ys:=ys-45;
                   end
          end;
     #13 : goto koniec;




end;

                                       {KURSOR}


setlinestyle(0,0,normwidth);
setcolor(blue);
moveto(430,ys);lineto(432,ys-2);lineto(452,ys-2);
lineto(452,ys+2);lineto(432,ys+2);lineto(430,ys);
setlinestyle(0,0,thickwidth);
setfillstyle(1,blue);
floodfill(432,ys,blue);
setcolor(brown);
moveto(454,ys+5);lineto(454,ys-5);
moveto(454,ys);lineto(464,ys);

amenug:= readkey;
setcolor(black);

setfillstyle(1,black);
bar(425,ys-10,470,ys+10);
goto petla1;






koniec:
case ys of
     95:  zmmg:='n';
     125: zmmg:='o';
     155: zmmg:='z';
     200: zmmg:='k';
     else menug;

end;

end;








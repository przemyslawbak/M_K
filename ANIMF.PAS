procedure animf;
var
x1f,x2f,wr:integer;
x60:integer;

begin
schowajmyche;
setfillstyle(1,0);
bar(356,0,499,69);

setlinestyle(0,0,normwidth);
setcolor(brown);
moveto(400,0);lineto(450,0);
moveto(400,6);lineto(450,6);
ellipse(400,3,90,270,3,3);
ellipse(450,3,270,90,3,3);
setfillstyle(9,brown);
floodfill(430,5,brown);

case znazwf of
0:begin x1f:=1;x2f:=-1;wr:=0;end;
1:begin x1f:=2;x2f:=-2;wr:=1;end;
2:begin x1f:=3;x2f:=-3;wr:=2;end;
3:begin x1f:=2;x2f:=-2;wr:=2;end;
4:begin x1f:=1;x2f:=-1;wr:=3;end;
5:begin x1f:=0;x2f:=0;wr:=3;end;
6:begin x1f:=-1;x2f:=1;wr:=3;end;
7:begin x1f:=-2;x2f:=2;wr:=3;end;
8:begin x1f:=-3;x2f:=3;wr:=2;end;
9:begin x1f:=-2;x2f:=2;wr:=1;end;
10:begin x1f:=-1;x2f:=1;wr:=-1;end;
11:begin x1f:=0;x2f:=0;wr:=-2;end;
12:begin x1f:=3;x2f:=-3;wr:=-2;end;
13:begin x1f:=2;x2f:=-2;wr:=-2;end;
14:begin x1f:=1;x2f:=-1;wr:=-1;end;
15:begin x1f:=0;x2f:=0;wr:=-0;end;
16:begin x1f:=-1;x2f:=1;wr:=2;end;
17:begin x1f:=-2;x2f:=2;wr:=1;end;
18:begin x1f:=-3;x2f:=3;wr:=0;end;
19:begin x1f:=-2;x2f:=2;wr:=-2;end;
20:begin x1f:=-1;x2f:=1;wr:=-2;end;
21:begin x1f:=0;x2f:=0;wr:=0;znazwf:=0;end;

end;

x60:=random(2);

if gracz=1 then setcolor(blue);
if gracz=2 then setcolor(red);
moveto(400,7);
lineto(412-wr,15);lineto(425,7);
lineto(438-wr,15);lineto(450,7);

lineto(450+x1f-wr*1,20);lineto(450+x2f-wr*2,30);
lineto(450+x1f-wr*3,40);lineto(450+x2f-wr*2,50);
lineto(450+x1f-wr*x60,62);
moveto(400,10);
lineto(400+x1f-wr*1,20);lineto(400+x2f-wr*2,30);
lineto(400+x1f-wr*3,40);lineto(400+x2f-wr*2,50);
lineto(400+x1f-wr*x60,62);lineto(450+x1f-wr*x60,62);

if gracz=1 then setfillstyle(10,blue);
if gracz=2 then setfillstyle(10,red);
if gracz=1 then floodfill(425,25,blue);
if gracz=2 then floodfill(425,21,red);
pokazmyche;
end;
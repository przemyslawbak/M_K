procedure znaki;


begin

setcolor(kolora);

case naleznosc[1] of
     1:kolory[1]:=1;
     2:kolory[1]:=4;
     3:kolory[1]:=7;
end;
case naleznosc[2] of
     1:kolory[2]:=1;
     2:kolory[2]:=4;
     3:kolory[2]:=7;
end;
case naleznosc[3] of
     1:kolory[3]:=1;
     2:kolory[3]:=4;
     3:kolory[3]:=7;
end;
case naleznosc[4] of
     1:kolory[4]:=1;
     2:kolory[4]:=4;
     3:kolory[4]:=7;
end;
case naleznosc[5] of
     1:kolory[5]:=1;
     2:kolory[5]:=4;
     3:kolory[5]:=7;
end;
case naleznosc[6] of
     1:kolory[6]:=1;
     2:kolory[6]:=4;
     3:kolory[6]:=7;
end;
case naleznosc[7] of
     1:kolory[7]:=1;
     2:kolory[7]:=4;
     3:kolory[7]:=7;
end;
case naleznosc[8] of
     1:kolory[8]:=1;
     2:kolory[8]:=4;
     3:kolory[8]:=7;
end;
case naleznosc[9] of
     1:kolory[9]:=1;
     2:kolory[9]:=4;
     3:kolory[9]:=7;
end;
case naleznosc[10] of
     1:kolory[10]:=1;
     2:kolory[10]:=4;
     3:kolory[10]:=7;
end;
case naleznosc[11] of
     1:kolory[11]:=1;
     2:kolory[11]:=4;
     3:kolory[11]:=7;
end;
case naleznosc[12] of
     1:kolory[12]:=1;
     2:kolory[12]:=4;
     3:kolory[12]:=7;
end;
case naleznosc[13] of
     1:kolory[13]:=1;
     2:kolory[13]:=4;
     3:kolory[13]:=7;
end;
case naleznosc[14] of
     1:kolory[14]:=1;
     2:kolory[14]:=4;
     3:kolory[14]:=7;
end;
case naleznosc[15] of
     1:kolory[15]:=1;
     2:kolory[15]:=4;
     3:kolory[15]:=7;
end;
case naleznosc[16] of
     1:kolory[16]:=1;
     2:kolory[16]:=4;
     3:kolory[16]:=7;
end;
case naleznosc[17] of
     1:kolory[17]:=1;
     2:kolory[17]:=4;
     3:kolory[17]:=7;
end;
case naleznosc[18] of
     1:kolory[18]:=1;
     2:kolory[18]:=4;
     3:kolory[18]:=7;
end;

setcolor(yellow);
setlinestyle(0,0,thickwidth);
line(255,135,254,75);
line(265,75,265,127);
line(275,302,281,350);
line(290,295,291,350);
setlinestyle(0,0,normwidth);

setfillstyle(9,kolory[1]);floodfill(140,110,yellow);
setfillstyle(9,kolory[2]);floodfill(20,162,yellow);
setfillstyle(9,kolory[3]);floodfill(26,260,yellow);
setfillstyle(9,kolory[4]);floodfill(63,330,yellow);
setfillstyle(9,kolory[5]);floodfill(70,150,yellow);
setfillstyle(9,kolory[6]);floodfill(120,280,yellow);
setfillstyle(9,kolory[7]);floodfill(160,337,yellow);
setfillstyle(9,kolory[8]);floodfill(200,182,yellow);
setfillstyle(9,kolory[9]);floodfill(170,100,yellow);
setfillstyle(9,kolory[10]);floodfill(360,330,yellow);
setfillstyle(9,kolory[11]);floodfill(440,280,yellow);
setfillstyle(9,kolory[12]);floodfill(380,165,yellow);
setfillstyle(9,kolory[13]);floodfill(380,100,yellow);
setfillstyle(9,kolory[14]);floodfill(480,190,yellow);
setfillstyle(9,kolory[15]);floodfill(270,125,yellow);
setfillstyle(9,kolory[16]);floodfill(320,145,yellow);
setfillstyle(9,kolory[17]);floodfill(350,240,yellow);
setfillstyle(9,kolory[18]);floodfill(270,250,yellow);

znazw:=0;
repeat
znazw:=znazw+1;
case znazw of
           1:begin xxx:=35;yyy:=20;  end;
           2:begin xxx:=40;yyy:=100;  end;
           3:begin xxx:=30;yyy:=200;  end;
           4:begin xxx:=90;yyy:=230;  end;
           5:begin xxx:=94;yyy:=75;  end;
           6:begin xxx:=117;yyy:=165;  end;
           7:begin xxx:=195;yyy:=235;  end;
           8:begin xxx:=210;yyy:=95;  end;
           9:begin xxx:=188;yyy:=60;  end;
          10:begin xxx:=310;yyy:=253;  end;
          11:begin xxx:=453;yyy:=187;  end;
          12:begin xxx:=400;yyy:=105;  end;
          13:begin xxx:=392;yyy:=30;  end;
          14:begin xxx:=453;yyy:=52;  end;
          15:begin xxx:=281;yyy:=8;  end;
          16:begin xxx:=285;yyy:=78;  end;
          17:begin xxx:=328;yyy:=192;  end;
          18:begin xxx:=260;yyy:=185;  end;

end;
                                     {ikona  miasta}
setfillstyle(1,kolory[znazw]);

bar(0+xxx,80+yyy,21+xxx,90+yyy);
setlinestyle(0,0,normwidth);
setcolor(black);
setfillstyle(1,black);
moveto(3+xxx,80+yyy);lineto(3+xxx,83+yyy);lineto(4+xxx,83+yyy);lineto(4+xxx,90+yyy);
lineto(10+xxx,90+yyy);lineto(10+xxx,88+yyy);lineto(11+xxx,87+yyy);lineto(12+xxx,88+yyy);
lineto(12+xxx,90+yyy);lineto(18+xxx,90+yyy);lineto(18+xxx,83+yyy);lineto(19+xxx,83+yyy);
lineto(19+xxx,80+yyy);lineto(14+xxx,80+yyy);lineto(14+xxx,83+yyy);lineto(15+xxx,83+yyy);
lineto(15+xxx,84+yyy);lineto(13+xxx,84+yyy);lineto(13+xxx,85+yyy);lineto(12+xxx,84+yyy);
lineto(9+xxx,84+yyy);lineto(9+xxx,85+yyy);lineto(8+xxx,84+yyy);lineto(7+xxx,84+yyy);lineto(7+xxx,83+yyy);
lineto(8+xxx,83+yyy);lineto(8+xxx,80+yyy);lineto(3+xxx,80+yyy);
floodfill(6+xxx,86+yyy,black);


until znazw=18;
                                      {drewno}
setcolor(brown);
setfillstyle(1,kolory[1]);
bar(0+20,0+83,27+20,12+83);
ellipse(6+20,3+83,90,270,3,3);
ellipse(20+20,3+83,0,360,3,3);
ellipse(4+20,9+83,90,270,3,3);
ellipse(18+20,9+83,0,360,3,3);
ellipse(24+20,9+83,0,360,3,3);
line(6+20,0+83,20+20,0+83);line(6+20,6+83,20+20,6+83);
line(4+20,6+83,18+20,6+83);line(4+20,12+83,22+20,12+83);
setfillstyle(9,brown);
floodfill(6+20,3+83,brown);
floodfill(4+20,9+83,brown);
setfillstyle(1,brown);
floodfill(20+20,3+83,brown);
floodfill(18+20,9+83,brown);
floodfill(24+20,9+83,brown);

                                     {drewno}
setcolor(brown);
setfillstyle(1,kolory[12]);
bar(0+411,0+157,27+411,12+157);
ellipse(6+411,3+157,90,270,3,3);
ellipse(20+411,3+157,0,360,3,3);
ellipse(4+411,9+157,90,270,3,3);
ellipse(18+411,9+157,0,360,3,3);
ellipse(24+411,9+157,0,360,3,3);
line(6+411,0+157,20+411,0+157);line(6+411,6+157,20+411,6+157);
line(4+411,6+157,18+411,6+157);line(4+411,12+157,22+411,12+157);
setfillstyle(9,brown);
floodfill(6+411,3+157,brown);
floodfill(4+411,9+157,brown);
setfillstyle(1,brown);
floodfill(20+411,3+157,brown);
floodfill(18+411,9+157,brown);
floodfill(24+411,9+157,brown);

setcolor(yellow);                        {rzeka}
setlinestyle(0,0,thickwidth);
moveto(254,75);lineto(255,135);
moveto(265,75);lineto(265,127);
moveto(290,295);lineto(291,350);
moveto(275,302);lineto(281,350);
setfillstyle(9,cyan);
floodfill(278,205,yellow);

setfillstyle(1,brown);       {most}
bar(250,85,270,90);

bar(270,328,300,332);




setlinestyle(0,0,normwidth);
                                        {money}
setcolor(yellow);
setfillstyle(1,kolory[5]);
bar(0+140,1+162,22+140,15+162);
setfillstyle(9,yellow);
ellipse(8+140,8+162,90,270,8,6);
ellipse(10+140,8+162,90,270,8,6);
ellipse(12+140,8+162,90,270,8,6);
ellipse(14+140,8+162,0,360,8,6);
floodfill(14+140,8+162,yellow);

setcolor(yellow);
setfillstyle(1,kolory[17]);
bar(0+350,1+220,22+350,15+220);
setfillstyle(9,yellow);
ellipse(8+350,8+220,90,270,8,6);
ellipse(10+350,8+220,90,270,8,6);
ellipse(12+350,8+220,90,270,8,6);
ellipse(14+350,8+220,0,360,8,6);
floodfill(14+350,8+220,yellow);


setvisualpage(0);


end;
procedure zasady;

begin
setactivepage(0);
cleardevice;
setvisualpage(0);
setlinestyle(0,0,normwidth);
setcolor(yellow);
rectangle(0,0,639,349);
moveto(5,5);lineto(634,5);lineto(634,344);
lineto(150,344);lineto(150,180);lineto(5,180);
lineto(5,5);
moveto(10,10);lineto(629,10);lineto(629,339);
lineto(155,339);lineto(155,175);lineto(10,175);
lineto(10,10);
setfillstyle(9,brown);
floodfill(8,8,yellow);

                                                                {ART}
setcolor(blue);
ellipse(75,220,180,0,60,110);
ellipse(75,220,180,0,60,10);
moveto(75,230);lineto(75,330);
ellipse(75,270,180,0,53,10);
setfillstyle(9,1);
floodfill(72,240,1);
floodfill(80,290,1);
setfillstyle(11,4);
floodfill(78,240,1);
floodfill(72,290,1);
settextstyle(4,horizdir,2);
setcolor(yellow);
outtextxy(30,185,'Zasady gry');
settextstyle(0,horizdir,1);

setcolor(yellow);
settextstyle(0,horizdir,1);
outtextxy(40,15,'Gra jest gr¹ turow¹ przeznaczon¹ dla dwóch graczy.');
outtextxy(15,25,'Zwyciê¿a gracz który zdobêdzie wszystkie miasta i pokona przeciwnika.');
outtextxy(15,35,'W tym celu nale¿y atakowaæ miasta przeciwnika lub neutralne (szary kolor).');
outtextxy(40,50,'Oznaczenia mapy :');

xxx:=15;yyy:=-10;
setfillstyle(1,blue);
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
setcolor(yellow);
outtextxy(50,72,'- Miasto gracza I');

xxx:=15;yyy:=5;
setfillstyle(1,red);
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
setcolor(yellow);
outtextxy(50,87,'- Miasto gracza II');

xxx:=15;yyy:=20;
setfillstyle(1,7);
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
setcolor(yellow);
outtextxy(50,102,'- Miasto neutralne');

xa1:=15;ya1:=120;
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

xb1:=15+30;yb1:=120;
setlinestyle(0,0,normwidth);
                                                  {ARMIE b1}
           setcolor(black);
           setfillstyle(1,red);
           bar(0+xb1,0+yb1,26+xb1,12+yb1);
           rectangle(1+xb1,1+yb1,25+xb1,11+yb1);
           moveto(6+xb1,3+yb1);lineto(16+xb1,3+yb1);
           lineto(16+xb1,6+yb1);lineto(12+xb1,10+yb1);
           lineto(10+xb1,10+yb1);lineto(6+xb1,6+yb1);
           lineto(6+xb1,3+yb1);
           setfillstyle(1,black);
           bar(19+xb1,6+yb1,20+xb1,9+yb1);    {b1}

           floodfill(11+xb1,7+yb1,black);

setcolor(yellow);
outtextxy(80,122,'- Armie (Gracz I i II)');

                                      {drewno}
setcolor(brown);
setfillstyle(1,0);
bar(0+220,0+63,27+220,12+63);
ellipse(6+220,3+63,90,270,3,3);
ellipse(20+220,3+63,0,360,3,3);
ellipse(4+220,9+63,90,270,3,3);
ellipse(18+220,9+63,0,360,3,3);
ellipse(24+220,9+63,0,360,3,3);
line(6+220,0+63,20+220,0+63);line(6+220,6+63,20+220,6+63);
line(4+220,6+63,18+220,6+63);line(4+220,12+63,22+220,12+63);
setfillstyle(9,brown);
floodfill(6+220,3+63,brown);
floodfill(4+220,9+63,brown);
setfillstyle(1,brown);
floodfill(20+220,3+63,brown);
floodfill(18+220,9+63,brown);
floodfill(24+220,9+63,brown);

setcolor(yellow);
outtextxy(255,65,'- Obszar o du¿ym zalesieniu (drewno+1300/turê)');

setlinestyle(0,0,normwidth);
                                        {money}
setcolor(yellow);
setfillstyle(1,0);
bar(0+220,1+80,22+220,15+80);
setfillstyle(9,yellow);
ellipse(8+220,8+80,90,270,8,6);
ellipse(10+220,8+80,90,270,8,6);
ellipse(12+220,8+80,90,270,8,6);
ellipse(14+220,8+80,0,360,8,6);
floodfill(14+220,8+80,yellow);
setcolor(yellow);
outtextxy(255,82,'- Dodatkowe wpˆywy z handlu (zˆoto+10000/turê)');

outtextxy(185,180,'Na pocz¹tku gry, ka¿dego miasta neutralnego  ');
outtextxy(160,190,'strze¿e od 100 do 400 ¿oˆnierzy. Wyj¹tkiem s¹ dwa miasta ');
outtextxy(160,200,'w których jest zwiêkszona produkcja drewna oraz dwa ');
outtextxy(160,210,'miasta w których jest dobrze rozwiniêty handel. ');
outtextxy(160,220,'Tych czterech miast strze¿e od 500 do 800 ¿oˆnierzy.');
outtextxy(185,235,'Aby rekrutowac ¿oˆnierzy nale¿y klikn¹c l-przyciskiem');
outtextxy(160,245,'Myszy na ikonê miasta i wybraæ opcjê rekrutacji.');
outtextxy(160,255,'Koszt rekrutacji jednego czˆowieka wynosi 10 szt.zˆota,');
outtextxy(160,265,'2 porcje ¿ywno˜ci oraz 1 szt.zˆota ¿oˆdu miesiêcznie.');
outtextxy(185,280,'Mo¿na stawiaæ budynki które wespr¹ gospodarkê ');
outtextxy(160,290,'w królestwie. W tym celu nale¿y po wybraniu ikony miasta');
outtextxy(160,300,'wybraæ budynek który chcesz wybudowaæ (prawy górny róg).');
outtextxy(160,310,'Je˜li jest ju¿ on wybudowany, jego nazwa bêdzie wypisana');
outtextxy(160,320,'¿óˆt¹ czcionk¹. Je˜li nie to kolor napisu bêdzie szary.');

readkey;


setactivepage(0);
cleardevice;
setvisualpage(0);
setlinestyle(0,0,normwidth);
setcolor(yellow);
rectangle(0,0,639,349);
moveto(5,5);lineto(634,5);lineto(634,344);
lineto(150,344);lineto(150,180);lineto(5,180);
lineto(5,5);
moveto(10,10);lineto(629,10);lineto(629,339);
lineto(155,339);lineto(155,175);lineto(10,175);
lineto(10,10);
setfillstyle(9,brown);
floodfill(8,8,yellow);

                                                                {ART}
setcolor(blue);
ellipse(75,220,180,0,60,110);
ellipse(75,220,180,0,60,10);
moveto(75,230);lineto(75,330);
ellipse(75,270,180,0,53,10);
setfillstyle(9,1);
floodfill(72,240,1);
floodfill(80,290,1);
setfillstyle(11,4);
floodfill(78,240,1);
floodfill(72,290,1);
settextstyle(4,horizdir,2);
setcolor(yellow);
outtextxy(30,185,'Zasady gry');
settextstyle(0,horizdir,1);

setcolor(yellow);
settextstyle(0,horizdir,1);
outtextxy(40,15,'Tworzenie armii odbywa siê poprzez wybranie ikony miasta w którym chcesz');
outtextxy(15,25,'utworzyæ now¹ armiê oraz klikniecie ikony "Twórz armiê". Kosz utworzenia');
outtextxy(15,35,'armii wynosi 1000 szt.zˆota,100 porcji drewna oraz 100 porcji ¿ywno˜ci.');
outtextxy(15,45,'½oˆnierzy rekrutuje siê do armii podobnie jak w mie˜cie. Natomiast');
outtextxy(15,55,'mo¿na dokonywaæ tranferu wojsk pomiêdzy miejskimi koszarami a armi¹.');
outtextxy(15,65,'W tym celu po wybraniu armii nale¿y wybraæ ikonê "Transfer".');
outtextxy(40,80,'Aby wykonaæ ruch wybran¹ armi¹ nale¿y po wybraniu armii wybraæ ikonê');
outtextxy(15,90,'"Ruch" a nastêpnie wybraæ miasto do którego armia ma siê udaæ. Armia wykona');
outtextxy(15,100,'ruch tylko wtedy, gdy oba miasta maj¹ wspólne granice. Poszczególne armie');
outtextxy(15,110,'mog¹ wykonaæ tylko po jednym ruchu w trakcie bierz¹cej tury.');
outtextxy(40,125,'Klepsydra w lewym górnym rogu sˆu¿y do zakoñczenia tury przez gracza');
outtextxy(15,135,'je˜li wykona on ju¿ wszystkie czynno˜ci. "Miesi¹c" - jest to numer bierz¹cej');
outtextxy(15,145,'tury. "Warunki" - s¹ to warunki bitewne panuj¹ce w bierz¹cej turze. Od nich');
outtextxy(15,155,'zale¿y przebieg bitew. Je˜li s¹ zˆe to ciê¿ko jest wykorzystaæ przewagê ');
outtextxy(160,165,'na polu bitwy i gracz posiadaj¹cy wiêksz¹ armiê ponosi');
outtextxy(160,175,'wiêksze straty. Je˜li warunki s¹ zmienne to straty te ');
outtextxy(160,185,'s¹ wiele mniejsze. Je˜li natomiast warunki s¹ dobre to');
outtextxy(160,195,'gracz posiadaj¹cy liczniejsze wojsko mo¿e je wykorzystaæ');
outtextxy(160,205,'prawie w 100%.');
outtextxy(185,220,'Od "Przyrostu" jest zale¿na ilo˜æ mieszkañców w danej');
outtextxy(160,230,'turze oraz ilo˜æ ¿ywno˜ci skˆadowanej w królewskich');
outtextxy(160,240,'spichlerzach.');
outtextxy(185,250,'Zˆoto,drewno oraz ¿ywno˜æ s¹ to jednostki które siê');
outtextxy(160,260,'nawarstwiaj¹ z upˆywem tur. Natomiast ludno˜æ nie ');
outtextxy(160,270,'nawarstwia siê. Liczba ludno˜ci jest zale¿na jedynie ');
outtextxy(160,280,'od przyrostu. Wycofanie siê z pola bitwy kosztuje');
outtextxy(160,290,'utratê 1/5 wojsk które byˆy w tym momencie na polu walki.');
outtextxy(160,300,'Po wybgranej bitwie armia mo¿e zaj¹æ miasto dopiero ');
outtextxy(160,310,'w nastêpnej turze. Gdy miasto jest wykupywane(wraz ');
outtextxy(160,320,'z wojskiem), armia zajmuje je w tej samej turze');
outtextxy(160,330,'Przepraszam za bˆêdy mog¹ce wyst¹piæ w programie');



readkey;
end;

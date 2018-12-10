unit uzytki;
interface
uses crt,dos,graph;


procedure pokazmyche;
procedure schowajmyche;
procedure ustawmyche(x1,y1,x2,y2:word);
procedure pobierzmyche (var x,y,butt: word);

procedure writexy(x,y:byte; s:string);
procedure ramka(x1,y1,x2,y2:byte);

implementation

procedure writexy(x,y:byte; s:string);
begin
gotoxy(x,y);
write(s);
end;

procedure ramka(x1,y1,x2,y2:byte);
var
t:byte;
begin
writexy(x1,y1,chr(201));
writexy(x1,y1,chr(200));
writexy(x1,y1,chr(187));
writexy(x1,y1,chr(188));
for t:=x1+1 to x2-1 do writexy(t,y1,char(205));
for t:=x1+1 to x2-1 do writexy(t,y2,char(205));
for t:=x1+1 to x2-1 do writexy(x1,t,char(186));
for t:=x1+1 to x2-1 do writexy(x2,t,char(186));
end;
procedure pokazmyche;
var
r:registers;

begin
r.ax:=$0001;
intr($33,r);
end;


procedure schowajmyche;
var
r:registers;
begin
r.ax:=$0002;
intr($33,r);
end;

procedure ustawmyche(x1,y1,x2,y2:word);
var
r:registers;
begin
r.ax:=$0007;
r.cx:=x1;
r.dx:=x2;
intr($33,r);
r.ax:=$0008;
r.cx:=y1;
r.dx:=y2;
intr($33,r);
end;

procedure pobierzmyche (var x,y,butt: word);

var
r:registers;
begin
r.ax:=$0003;
intr($33,r);
x:=r.cx;
y:=r.dx;
butt:=r.bx;
end;

begin

end.
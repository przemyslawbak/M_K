procedure vgainit;

var
sterownik,tryb:integer;



begin

sterownik:=vga; tryb:= vgamed;
initgraph (sterownik,tryb,'');

end;
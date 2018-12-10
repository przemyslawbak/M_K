procedure egainit;

var
sterownik,tryb:integer;



begin

sterownik:=vga; tryb:= vgamed;
initgraph (sterownik,tryb,'');

end;
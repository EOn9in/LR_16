Type
    point=^Mylist;
    Mylist=Record
          Info:Integer;
          Next:point;
          end;
Var
   phead:point;

Procedure Sozdanie(Var t:point);
Var
   y:point;
Begin
     New(y);
     var i:=ReadInteger();
     y^.Info:= i;
     y^.Next:= t;
     t:=y;
     end;

Procedure MaxElem(t:point);
Var
   y:point;
   Max:Integer;
Begin
     y:=t;
     Max:=y^.Info;
     While y<>Nil do begin
     If y^.Info>Max then Max:=y^.Info;
     y:=y^.Next;
     end;
     println('Максимальный элемент списка: ',Max);
end;

Procedure MinElem(t:point);
Var
   y:point;
   Min:Integer;
Begin
     y:=t;
     Min:=y^.Info;
     While y<>Nil do begin
     If y^.Info<Min then Min:=y^.Info;
     y:=y^.Next;
     end;
     println('Минимальный элемент списка: ',Min);
end;

Begin
  var n:=ReadInteger('Введите кол-во элементов списка: ');
  for var i:=1 to n do
    Sozdanie(phead);
  MaxElem(phead);
  MinElem(phead);
End.
unit Func;

Interface
  type mifu=function(x:real):real;
  procedure intg(var res:real;lb:real;rb:real;na:integer;nfu:mifu);

Implementation
  procedure intg;
  var i:integer;
      stp:real;
  begin
    stp:=(rb-lb)/na;
    res:=0;
    for i := 1 to na do
      res:=res+nfu(lb+stp*i);
    res:=abs(stp*res);
  end;
End.


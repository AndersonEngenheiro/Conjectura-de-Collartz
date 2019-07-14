program projConjecturaCollartz;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var

  n,resultado,contador:integer;

begin
  try

    Begin
      writeln('digite um numero para aplicarmos a conjectura de collartz, mostrando cada resultado e quantas vezes foi aplicado');
      readln(n);
      while (n<>1) do
      begin
        if (n mod 2= 0) then
        begin
          n:= n div 2;
          contador:= contador+1;
          write(n,' ')
          end
          else
          begin
            n:=(3*n)+1 ;
            contador:=contador+1;
            write(n,' ')
          end;
        end;
        writeln('o numero de vezes que foi utilizado a conjectura foi de ',contador);
        Readln;
      End;


  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.

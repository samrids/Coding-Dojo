program calGrade;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  Grade in 'Grade.pas';

var
  i: byte;
  G: TGrade;

begin
  G := TGrade.Create;
  try
    for i := 100 downto 0 do
    begin
      G.Score := i;
      Writeln(format('Score: %d Grade=%s', [G.Score, G.Grade]));
    end;
    G.Free;
    Write('Please any key to close...');
    readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.

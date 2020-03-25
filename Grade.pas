unit Grade;

interface

type
  TGrade = class
  private
    FScore: Integer;
    FGrade: string;
    procedure setGrade(const Value: String);
    function getGrade: String;
  public
    property Score: Integer read FScore Write FScore;
    property Grade: String read getGrade Write setGrade;
  end;

implementation

{ TGrade }

function TGrade.getGrade: String;
begin
  case Score of
    91 .. 100: result := 'A';
    81 .. 90:  result := 'B';
    71 .. 80:  result := 'C';
    61 .. 70:  result := 'D';
  else         result := 'F';
  end;
end;

procedure TGrade.setGrade(const Value: String);
begin
  FGrade := Value;
end;

end.

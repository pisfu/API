unit GearClassesUnit;

interface

uses Classes, GearTypesUnit, Graphics, SysUtils, Dialogs;

type

  {{
   ������ ���� �������
  }
  TGear = class(TObject)
  private
    FP1: extended;
    Fd1: extended;
    Fa: extended;
    Fup: extended;
    Fn1: extended;
    procedure SetP1(const Value: extended);
    procedure SetA(const Value: extended); virtual;
    procedure SetD1(const Value: extended); virtual;
    procedure SetN1(const Value: extended);
    procedure SetUp(const Value: extended);
  protected
    FFullName: string;
    //1 ��������� �������� ������������ ������� ������
    procedure Checking; virtual; abstract;
  public
    constructor Create;
    //1 ����� ������� ���������
    procedure Clear; virtual; abstract;
    //1  ����� ������� ���������� ��������� � ���������
    function Count: integer; virtual; abstract;
    //1 ������� ���������� ���. ������. ��������� ���������� ��� ������� ����������
    function MinDistance: extended; virtual; abstract;
    //1 ��� ��������
    property FullName: string read FFullName;
    //1 �������� �� ������� ����, ���
    property P1: extended read FP1 write SetP1;
    //1 ������� �������� �������� �����, ��/���
    property n1: extended read Fn1 write SetN1;
    //1 ������������ �����
    property up: extended read Fup write SetUp;
    //1 ������� �� �����, ��
    property d1: extended read Fd1 write SetD1;
    //1 ��������� ����������, ��
    property a: extended read Fa write SetA;
  end;

  {{
   ������ ������ �������
  }
  TChain = class(TGear)
  private
    //1 ���������� ���� �������� ��� ������ ��������
    FChainType: TChainType;
    //1 ��������� �������� ������������ ������� ������
    procedure Checking; override;
  public
    constructor Create;
    //1 �������� ��� ������ ���� ������ ��������
    property ChainType: TChainType read FChainType;
  end;

  {{
   ������ ������� �������
  }
  TBelt = class(TGear)
  private
    FSectionIndex: integer;
    FCp: extended;
    FTension: TTensionType;
    procedure SetTension(const Value: TTensionType);
  protected
    //1 ���������� ���� �������� ��� �������� ��������
    FBeltType: TBeltType;
    //1 ��������� �������� ������������ ������� ������
    procedure Checking; override;
    procedure SetSectionIndex(const Value: integer);
    procedure SetCp(const Value: extended);
    procedure SetD1(const Value: extended); override;
    procedure SetA(const Value: extended); override;
  public
    //1 ������� ���������� ���. ������. ������� �������� ����� ��� ������� ����������
    function MinDiameter: extended; virtual; abstract;
    //1 ������� ���������� ����. ������. ������� �������� ����� ��� ������� ����������
    function MaxDiameter: extended; virtual;
    //1 ������� ���������� ���. ������. ��������� ���������� ��� ������� ����������
    function MinDistance: extended; override;
    constructor Create;
    //1 �������� ��� ������ ���� �������� ��������
    property BeltType: TBeltType read FBeltType;
    //1 ����� ����������� �����
    property SectionIndex: integer read FSectionIndex write SetSectionIndex;
    //1 ��� ��������� �����
    property Tension: TTensionType read FTension write SetTension;
    //1 ���������� ����� � ��������� ����
    function Section(SectionIndex: integer): String; virtual;
    //1 ����������� ������ ������
    property Cp: extended read FCp write SetCp;
  end;

  {{
   ������ ������� �������������� � CADTrans
  }
  TAllGears = class(TObject)
  public
    Gears: TList;
    constructor Create;
    destructor Destroy; override;
  end;

//  {{
//   ������� ������� ��������
//  }
//  TFlatBelt = class(TBelt)
//  private
//    //1 ��������� �������� ������������ ������� ������
//    procedure Checking; override;
//  public
//    constructor Create;
//  end;

  {{
   ��������� ������ ��������
  }
  TRollerChain = class(TChain)
  private
    //1 ��������� �������� ������������ ������� ������
    procedure Checking; override;
  public
    constructor Create;
  end;

implementation

uses Gost;

{
 ************************************ TGear ************************************
}
constructor TGear.Create;
begin
  inherited;
  FFullName := '����������� ��������';
end;

procedure TGear.SetA(const Value: extended);
begin
  if Value < 0 then
    raise ERangeError.CreateFmt
      ('[TGear.SetA] ��������� ���������� (a) �� ����� ���� ����� %g, �������� ������ ���� ���� %d ��. (������� �������� ������ ���������� �����������, ����� ������ ������� ����� ��������� ������)',
      [Value, 0]);

  Fa := Value;
end;

procedure TGear.SetD1(const Value: extended);
begin
  if (Value < 0) or (Value > 2000) then
    raise ERangeError.CreateFmt
      ('[TGear.SetD1] ������� (D1) �������� ������ (�����) �� ����� ���� ����� %g, ���������� �������� �� %g �� %g ��. (�������� �������� � ���� ���������, ����� ������ ������� ����� ��������� ������)',
      [Value, 0, 2000]);

  Fd1 := Value;
end;

procedure TGear.SetN1(const Value: extended);
begin
  if (Value < N1Min) or (Value > N1Max) then
    raise ERangeError.CreateFmt
      ('[TGear.SetN1] ������� ��������(n1) �������� ������ (�����) �� ����� ���� ����� %g, ���������� �������� �� %g �� %g ��/���',
      [Value, N1Min, N1Max]);

  Fn1 := Value;
end;

procedure TGear.SetP1(const Value: extended);
begin
  if (Value < P1Min) or (Value > P1Max) then
    raise ERangeError.CreateFmt
      ('[TGear.SetP1] �������� �� ������� ���� (P1) �� ����� ���� ����� %g, ���������� �������� �� %g �� %g ���',
      [Value, P1Min, P1Max]);

  FP1 := Value;
end;

procedure TGear.SetUp(const Value: extended);
begin
  if (Value < UpMin) or (Value > UpMax) then
    raise ERangeError.CreateFmt
      ('[TGear.SetUp] ������������ ����� (Up) �� ����� ���� ����� %g, ���������� �������� �� %g �� %g',
      [Value, UpMin, UpMax]);

  Fup := Value;
end;

{
 ************************************ TChain ***********************************
}
constructor TChain.Create;
begin
  inherited;
  FFullName := '������ ��������';
end;

procedure TChain.Checking;
begin
  inherited;
end;

{
 ************************************ TBelt ************************************
}
constructor TBelt.Create;
begin
  inherited;
  FFullName := '������� ��������';
end;

function TBelt.MaxDiameter: extended;
var
  Diameter: extended;
  id2: integer;
begin
  if up > 1 then
    Diameter := TArrayD[38] / up
  else
    Diameter := TArrayD[38] * up;

{  try
    RoundGOST(TArrayD, 1, 38, Diameter, Diameter, id2);
  except
    on E: Exception do
      raise Exception.Create
        ('[TBelt.MaxDiameter] �� ������� ��������� ������� ����� �� ���������� �������� �� ���� �������� ��������');
  end; }

  Result := Diameter;
end;

function TBelt.MinDistance: extended;
var
  Diameter: extended;
begin
  //���������� � ������� �������
  if d1 = 0 then

    Result := trunc(0.6 * 1100 * exp(1 / 3 * ln(P1 / n1)) * (up + 1)) + 1
  else
    Result := trunc(0.6 * d1 * (up + 1)) + 1;
end;

function TBelt.Section(SectionIndex: integer): String;
begin
  Result := '�� �����';
end;

procedure TBelt.SetA(const Value: extended);
begin
  if (Value < MinDistance) and (Value <> 0) then
    raise ERangeError.CreateFmt
      ('[TBelt.SetA] ��������� ���������� (a) �� ����� ���� ����� %g, �������� ������ ���� ������ %g ��',
      [Value, MinDistance]);

  inherited;
end;

procedure TBelt.SetCp(const Value: extended);
begin
  {����������� ������ ������}
  {1 - ��������� ��������, 1.15 - ��������� ���������}
  {1.25 - ������������ ���������, 1.55 - ������� ��������}
  if (Value = 1) or (Value = 1.15) or (Value = 1.25) or (Value = 1.55) then
    FCp := Value
  else
    raise EListError.CreateFmt
      ('[TBelt.SetCp] ����������� ������ ������ (Cp) �� ����� ���� ����� %g, �������� ������ ���� �����: 1; 1,15; 1,25 ��� 1,55',
      [Value]);
end;

procedure TBelt.SetD1(const Value: extended);
var
  n: integer;
  Res: Boolean;
  //���� �������� �������� ����������� ������� ���������� ��������� ������, �� Res=True
begin
  Res := False;
  for n := Low(TArrayD) to 38 do
    if Value = TArrayD[n] then
      Res := True;

  //���� �������� �� ����� ����������� �������� �����, �� ������ ������ �� �������
  if not(Res) and (Value <> 0) then
    raise EListError.CreateFmt
      ('[TBelt.SetD1] ������� �������� ����� �� ����� ���� ����� %g ��, �������� �������� ������ ������� �� ������ ���������� �������� (���� 20889-88)',
      [Value]);

  inherited;
end;

procedure TBelt.SetSectionIndex(const Value: integer);
begin
  if Value < 0  then
    raise ERangeError.CreateFmt
      ('[TBelt.SetSectionIndex] ����� ������� �� ����� ���� ����� %g, �������� ������ ���� ������ ����',
      [Value]);

  FSectionIndex := Value;
end;

procedure TBelt.SetTension(const Value: TTensionType);
begin
  FTension := Value;
end;

procedure TBelt.Checking;
begin
  inherited;
end;

{
 ********************************** TAllGears **********************************
}
constructor TAllGears.Create;
begin
  Gears := TList.Create;
//  Gears.Add(TFlatBelt.Create);
  Gears.Add(TRollerChain.Create);
end;

destructor TAllGears.Destroy;
var
  i: integer;
begin
  for i := 0 to Gears.Count - 1 do
  begin
    TGear(Gears[i]).Free;
  end;

  Gears.Free;
end;

//{
// ********************************** TFlatBelt **********************************
//}
//constructor TFlatBelt.Create;
//begin
//  inherited;
//  FFullName := '������� ������� ��������';
//  FBeltType := btFlat;
//end;
//
//procedure TFlatBelt.Checking;
//begin
//  inherited;
//end;

{
 ********************************* TRollerChain ********************************
}
constructor TRollerChain.Create;
begin
  inherited;
  FFullName := '��������� ������ ��������';
  FChainType := ctRoller;
end;

procedure TRollerChain.Checking;
begin
  inherited;
end;

end.

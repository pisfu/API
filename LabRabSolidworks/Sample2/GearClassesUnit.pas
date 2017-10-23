unit GearClassesUnit;

interface

uses Classes, GearTypesUnit, Graphics, SysUtils, Dialogs;

type

  {{
   Предок всех передач
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
    //1 Процедура проверки корректности входных данных
    procedure Checking; virtual; abstract;
  public
    constructor Create;
    //1 Метод очистки коллекции
    procedure Clear; virtual; abstract;
    //1  Метод выводит количество элементов в коллекции
    function Count: integer; virtual; abstract;
    //1 Функция возвращает мин. допуст. межосевое расстояние для текущих параметров
    function MinDistance: extended; virtual; abstract;
    //1 Имя передачи
    property FullName: string read FFullName;
    //1 Мощность на ведущем валу, кВт
    property P1: extended read FP1 write SetP1;
    //1 Частота вращения ведущего шкива, об/мин
    property n1: extended read Fn1 write SetN1;
    //1 Передаточное число
    property up: extended read Fup write SetUp;
    //1 Диаметр на входе, мм
    property d1: extended read Fd1 write SetD1;
    //1 Межосевое расстояние, мм
    property a: extended read Fa write SetA;
  end;

  {{
   Предок цепных передач
  }
  TChain = class(TGear)
  private
    //1 Внутреннее поле хранящее тип цепной передачи
    FChainType: TChainType;
    //1 Процедура проверки корректности входных данных
    procedure Checking; override;
  public
    constructor Create;
    //1 Свойство для вывода типа цепной передачи
    property ChainType: TChainType read FChainType;
  end;

  {{
   Предок ремённых передач
  }
  TBelt = class(TGear)
  private
    FSectionIndex: integer;
    FCp: extended;
    FTension: TTensionType;
    procedure SetTension(const Value: TTensionType);
  protected
    //1 Внутреннее поле хранящее тип ременной передачи
    FBeltType: TBeltType;
    //1 Процедура проверки корректности входных данных
    procedure Checking; override;
    procedure SetSectionIndex(const Value: integer);
    procedure SetCp(const Value: extended);
    procedure SetD1(const Value: extended); override;
    procedure SetA(const Value: extended); override;
  public
    //1 Функция возвращает мин. допуст. диаметр ведущего шкива для текущих параметров
    function MinDiameter: extended; virtual; abstract;
    //1 Функция возвращает макс. допуст. диаметр ведущего шкива для текущих параметров
    function MaxDiameter: extended; virtual;
    //1 Функция возвращает мин. допуст. межосевое расстояние для текущих параметров
    function MinDistance: extended; override;
    constructor Create;
    //1 Свойство для вывода типа ременной передачи
    property BeltType: TBeltType read FBeltType;
    //1 Номер типоразмера ремня
    property SectionIndex: integer read FSectionIndex write SetSectionIndex;
    //1 Тип натяжения ремня
    property Tension: TTensionType read FTension write SetTension;
    //1 Типоразмер ремня в строковом виде
    function Section(SectionIndex: integer): String; virtual;
    //1 Коэффициент режима работы
    property Cp: extended read FCp write SetCp;
  end;

  {{
   Список передач рассчитываемых в CADTrans
  }
  TAllGears = class(TObject)
  public
    Gears: TList;
    constructor Create;
    destructor Destroy; override;
  end;

//  {{
//   Плоская ремённая передача
//  }
//  TFlatBelt = class(TBelt)
//  private
//    //1 Процедура проверки корректности входных данных
//    procedure Checking; override;
//  public
//    constructor Create;
//  end;

  {{
   Роликовая цепная передача
  }
  TRollerChain = class(TChain)
  private
    //1 Процедура проверки корректности входных данных
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
  FFullName := 'Неизвестная передача';
end;

procedure TGear.SetA(const Value: extended);
begin
  if Value < 0 then
    raise ERangeError.CreateFmt
      ('[TGear.SetA] Межосевое расстояние (a) не может быть равно %g, значение должно быть выше %d мм. (Введите значение больше минимально допустимого, чтобы узнать границы этого параметра точнее)',
      [Value, 0]);

  Fa := Value;
end;

procedure TGear.SetD1(const Value: extended);
begin
  if (Value < 0) or (Value > 2000) then
    raise ERangeError.CreateFmt
      ('[TGear.SetD1] Диаметр (D1) ведущего колеса (шкива) не может быть равен %g, допустимый диапазон от %g до %g мм. (Выберите значение в этом диапазоне, чтобы узнать границы этого параметра точнее)',
      [Value, 0, 2000]);

  Fd1 := Value;
end;

procedure TGear.SetN1(const Value: extended);
begin
  if (Value < N1Min) or (Value > N1Max) then
    raise ERangeError.CreateFmt
      ('[TGear.SetN1] Частота вращения(n1) ведущего колеса (шкива) не может быть равна %g, допустимый диапазон от %g до %g об/мин',
      [Value, N1Min, N1Max]);

  Fn1 := Value;
end;

procedure TGear.SetP1(const Value: extended);
begin
  if (Value < P1Min) or (Value > P1Max) then
    raise ERangeError.CreateFmt
      ('[TGear.SetP1] Мощность на ведущем валу (P1) не может быть равна %g, допустимый диапазон от %g до %g кВт',
      [Value, P1Min, P1Max]);

  FP1 := Value;
end;

procedure TGear.SetUp(const Value: extended);
begin
  if (Value < UpMin) or (Value > UpMax) then
    raise ERangeError.CreateFmt
      ('[TGear.SetUp] Передаточное число (Up) не может быть равно %g, допустимый диапазон от %g до %g',
      [Value, UpMin, UpMax]);

  Fup := Value;
end;

{
 ************************************ TChain ***********************************
}
constructor TChain.Create;
begin
  inherited;
  FFullName := 'Цепная передача';
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
  FFullName := 'Ремённая передача';
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
        ('[TBelt.MaxDiameter] Не удалось округлить диаметр шкива до ближайшего значения из ряда линейных размеров');
  end; }

  Result := Diameter;
end;

function TBelt.MinDistance: extended;
var
  Diameter: extended;
begin
  //Округление в большую сторону
  if d1 = 0 then

    Result := trunc(0.6 * 1100 * exp(1 / 3 * ln(P1 / n1)) * (up + 1)) + 1
  else
    Result := trunc(0.6 * d1 * (up + 1)) + 1;
end;

function TBelt.Section(SectionIndex: integer): String;
begin
  Result := 'Не задан';
end;

procedure TBelt.SetA(const Value: extended);
begin
  if (Value < MinDistance) and (Value <> 0) then
    raise ERangeError.CreateFmt
      ('[TBelt.SetA] Межосевое расстояние (a) не может быть равно %g, значение должно быть больше %g мм',
      [Value, MinDistance]);

  inherited;
end;

procedure TBelt.SetCp(const Value: extended);
begin
  {Коэффициент режима работы}
  {1 - спокойная нагрузка, 1.15 - умеренные колебания}
  {1.25 - значительные колебания, 1.55 - ударная нагрузка}
  if (Value = 1) or (Value = 1.15) or (Value = 1.25) or (Value = 1.55) then
    FCp := Value
  else
    raise EListError.CreateFmt
      ('[TBelt.SetCp] Коэффициент режима работы (Cp) не может быть равен %g, значение должно быть равно: 1; 1,15; 1,25 или 1,55',
      [Value]);
end;

procedure TBelt.SetD1(const Value: extended);
var
  n: integer;
  Res: Boolean;
  //если вводимое значение принадлежит массиву допустимых диаметров шкивов, то Res=True
begin
  Res := False;
  for n := Low(TArrayD) to 38 do
    if Value = TArrayD[n] then
      Res := True;

  //если значение не равно допустимому диаметру шкива, то ошибка работы со списком
  if not(Res) and (Value <> 0) then
    raise EListError.CreateFmt
      ('[TBelt.SetD1] Диаметр ведущего шкива не может быть равен %g мм, значение диаметра должно браться из списка допустимых значений (ГОСТ 20889-88)',
      [Value]);

  inherited;
end;

procedure TBelt.SetSectionIndex(const Value: integer);
begin
  if Value < 0  then
    raise ERangeError.CreateFmt
      ('[TBelt.SetSectionIndex] Номер сечения не может быть равен %g, значение должно быть больше нуля',
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
//  FFullName := 'Плоская ремённая передача';
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
  FFullName := 'Роликовая цепная передача';
  FChainType := ctRoller;
end;

procedure TRollerChain.Checking;
begin
  inherited;
end;

end.

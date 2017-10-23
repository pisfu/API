unit GEARSProcCE;

interface

uses Math,Dialogs,sysutils,GradientCE;

const
 c_= 0.2;
 Ha_= 1;

type
ZUB_POINT= record
  X: extended;
  Y: extended;
  Z: extended;
//  Number: integer;
end;

ARRAY1D= array of ZUB_POINT;

ZUB= record
  Right,
  Left: ARRAY1D;
end;

ZUB_ARRAY= array of ZUB;

ZUB_POINTS= record
 Zubs: ZUB_ARRAY;
 Center: ZUB_POINT;
end;

TFunParam=record
 e:extended;
 Ha:extended;
 ro:extended;
 Alfa:extended;
 r:extended;
 m:extended;
end;

TFunParam1=record
 p:extended;
 d:extended;
 alfa:extended;
end;

var
     FunParam:TFunParam;
     FunParam1:TFunParam1;
     paramEvolv:extended;
procedure CreateGear(isGear: boolean; m, Alfa, z, x,xtau: double;
							nPoint:word;
							Scale: double;
							zCount:word;
 							rotZ: double;
  							var Data: ZUB_POINTS);
procedure CreateZubPoints(isGear: boolean; m, Alfa, z,
                            x, xtau: double;
                            nPoint: WORD;
                            Scale: double;
                            var Data: ARRAY1D);
implementation
uses SW;

function W( isGear:boolean; Alfa, m, ro, r, Ha, e,ds, t: extended; var x, y: extended):boolean;
var
  a, b, xo1,yo1,xv1,yv1,x2,y2,dx2,dy2,hao, Koren: extended;
begin
  try
    a:= ro-Ha+e;
    hao:=ha-ro;

    b:=(pi*m/4)-(hao*tan(alfa))-(ro/cos(alfa))+ds;

    xo1:=r*sin(t)-r*t*cos(t);
    yo1:=r*cos(t)+r*t*sin(t);

    xv1:=xo1+a*sin(t);
    yv1:=yo1+a*cos(t);

    x2:=xv1+b*cos(t);
    y2:=yv1-b*sin(t);

    dx2:=a*cos(t)+(r*t-b)*sin(t);
    dy2:=-a*sin(t)+(r*t-b)*cos(t);

    koren:=sqrt(sqr(dx2)+sqr(dy2));
    if e-ha+r>=0 then
             begin
             x:=x2-ro*dy2/koren;
             y:=y2+ro*dx2/Koren;
             end
            else
             begin
             x:=x2+ro*dy2/koren;
             y:=y2-ro*dx2/Koren;
             end;


    result:=TRUE;
  except
    result:=FALSE;
  end;
end;

function Evoliventa( m, Alfa, ro, e, r, Ha, ds, t: extended; var x, y: extended):boolean;
var p:extended;
begin
  try
    P:=(-(r+e)*sin(t)+(r*t-pi*m/4-ds)*cos(t)+r*sin(t))*sin(alfa+t)-((r+e)*cos(t)+(r*t-pi*m/4-ds)*sin(t)-r*cos(t))*cos(alfa+t);

    x:= (r+e)*sin(t)-(r*t-pi*m/4-ds)*cos(t)+P*sin(Alfa+t);

    y:= (r+e)*cos(t)+(r*t-pi*m/4-ds)*sin(t)+P*cos(Alfa+t);

    result:= TRUE;
  except
    result:= FALSE;
  end;
end;

function Trough(Rf, t: double; var x, y: extended): boolean;
begin
  try
    x:=Rf*sin(t);
    y:=Rf*cos(t);
    result:= TRUE;
  except
    result:= FALSE;
  end;
end;

function FindRadNach(m, Alfa, ro, e, z, ds: extended; var Rad: extended):boolean;
var p,r,t,dt:extended; x1,y1,x,y:array[0..1] of extended; i:byte;
begin
  try
    r:=m*z/2;
    t:=0; dt:=0.1;
    repeat
    for i:=0 to 1 do
     begin
     if i=1 then t:=t+dt;
     P:=(-(r+e)*sin(t)+(r*t-pi*m/4-ds)*cos(t)+r*sin(t))*sin(alfa+t)-((r+e)*cos(t)+(r*t-pi*m/4-ds)*sin(t)-r*cos(t))*cos(alfa+t);
     x1[i]:= (r+e)*sin(t)-(r*t-pi*m/4-ds)*cos(t)+P*sin(Alfa+t);
     y1[i]:= (r+e)*cos(t)+(r*t-pi*m/4-ds)*sin(t)+P*cos(Alfa+t);
     y[i]:=-x1[i]*sin(-pi/(2.0*z))+y1[i]*cos(-pi/(2.0*z));
     x[i]:=x1[i]*cos(-pi/(2.0*z))+y1[i]*sin(-pi/(2.0*z));
     end;
    if x[0]/x[1]<0 then
                  begin
                  t:=t-dt;
                  dt:=dt/2;
                  end;
    until abs (x[0])<0.0001;
    Rad:=y[0];
    result:= TRUE;
  except
    result:= FALSE;
  end;

end;

procedure CreateZubPoints(isGear: boolean; m, Alfa, z,
                            x, xtau: double;
                            nPoint: WORD;
                            Scale: double;
                            var Data: ARRAY1D);
var

  Ra,Rf, r,	// радиусы вершин, впадин и делительной окружности
  Ha,			// общая высота зуба инструмента
  ro,			// радиус окружности, аппроксимирующей скругление кромки зуба инструмента
  e,			// величина смещения инструмента при нарезании шестерни
  c,
  ds,
  t1, t2, t3,t21,t31,// углы
  delta_t,epsil,RadNach  : extended;	// шаг угла
  i,
  nP1,
  nP2,
  nP3: WORD;
  code:integer;
label
  End1;

begin
  try
    // РАСЧЕТ ВСПОМОГАТЕЛЬНЫХ ПАРАМЕТРОВ:
    RadNach:=0;
    Ha:=Ha_*m+c_*m;
    ro:=0.2*m;  // c_*m/(1-sin(Alfa));
    Rf:= m*(z/2.0-Ha_-c_+x);
    Ra:= m*(z/2.0+Ha_-0.1+x);
    e:= x*m;
    r:= m*z/2.0;
    c:= e-Ha+ro*(1-sin(Alfa));
    ds:=xtau*m;
    epsil:=0.0001;
 //   Val(Form1.Edit9.Text,epsil,code);
   // if code<>0 then exit;
    t1:= (m*Pi/4-Ha*tan(Alfa)-ro*(1-sin(Alfa))/cos(Alfa))/r;
    if e-ha+r<0 then    t2:=(c/tan(Alfa)+m*Pi/4-Ha*tan(Alfa)-ro*(1-sin(Alfa))/cos(Alfa)+ro*cos(Alfa))/r
    else
    if not gradient(m,z,x,alfa,ro,ha,e,r,epsil,t2,t21) then
                                                           begin
                                                           ShowMessage('Не сходится попробуйте снизить точность расчетов');
                                                           Exit;
                                                           end;


    t3:= (-(r+c)*tan(Alfa)+sqrt((Ra*Ra)-(r*cos(Alfa)*r*cos(Alfa)))/cos(Alfa)+m*Pi/4-Ha*tan(Alfa)-ro*(1-sin(Alfa))/cos(Alfa)+ro*cos(Alfa))/r;

    t31:=  t3+(t3-t2)*0.2;

    if not FindRadNach(m,alfa,ro,e,z,ds,RadNach) then exit;

    // расчет количества точек:
     nP1:= nPoint div 10;
    if nP1 < 3 then
      nP1:= 3;
    nP2:= nPoint div 5;
    if nP2 < 5 then
      nP2:= 5;
    nP3:= nPoint;
    if nP3 < 10 then
      nP3:= 10;
  SetLength(Data, 0);
    // правый внутренний диаметр:
  delta_t:= t1/nP1/1.0;
  for i:= 0 to nP1-1 do
  begin
    SetLength(Data, Length(Data)+1);
    if not Trough(Rf, delta_t*i, Data[Length(Data)-1].X, Data[Length(Data)-1].Y) then
      Exit;


  end;
  // правая выкружка:

  delta_t:=(abs(t21)+t1)/nP2/1.0;
  for i:= 0   to  nP2-1  do
  begin

    SetLength(Data, Length(Data)+1);
    if not W(isGear, Alfa, m, ro, r, Ha, e,ds, t1-delta_t*i, Data[Length(Data)-1].X, Data[Length(Data)-1].Y) then
    Exit;

  end;
  // правая эвольвента:

  delta_t:= (t31+abs(t2))/nP3/1.0;

  for i:= 0 to nP3-1 do
  begin
{    if (t2+delta_t*i) >= t3
    then
      begin
      SetLength(Data, Length(Data)+1);
      if not Evoliventa(m, Alfa, ro, e, r, Ha,ds, t3, Data[Length(Data)-1].X, Data[Length(Data)-1].Y) then
        Exit;

      end
    else  }
      begin
      SetLength(Data, Length(Data)+1);
      if not Evoliventa(m, Alfa, ro, e, r, Ha,ds, t2+delta_t*i, Data[Length(Data)-1].X, Data[Length(Data)-1].Y) then
      Exit;
      end;

   end;


End1:

  for i:= 0 to Length(Data)-1 do
  begin
    Data[i].X:= Data[i].X*Scale;
    Data[i].Y:= Data[i].Y*Scale;
  end;
  except
    Exit;
  end;
end;

procedure CreateGear(isGear: boolean; m, Alfa, z, x, xtau: double;
							nPoint:word;
							Scale: double;
							zCount:Word;
							rotZ: double;
							var Data: ZUB_POINTS);
var
  i, j: integer;
  dAlfa,
  StartAlfa,
  CurrentAlfa: double;
  a:Array1D;
begin
  dAlfa:= 2.0*Pi/z;
  StartAlfa:= dAlfa*zCount/2.0;
  SetLength(Data.Zubs, zCount);
  CreateZubPoints(isGear, m, Alfa, z, x, xtau, nPoint, Scale, a);
  for i:= 0 to Length(Data.Zubs) -1 do
  begin
    CurrentAlfa:= StartAlfa+rotZ-dAlfa*i-dAlfa/2.0;
    SetLength(Data.Zubs[i].Right, length(a));
    SetLength(Data.Zubs[i].Left, length(a));
    for j:= 0 to  Length(Data.Zubs[i].Right)-1 do
    begin
      Data.Zubs[i].Right[j].X:= a[j].X*cos(CurrentAlfa)-
                                a[j].Y*sin(CurrentAlfa)+
                                Data.Center.X;
      Data.Zubs[i].Right[j].Y:= a[j].X*sin(CurrentAlfa)+
                                a[j].Y*cos(CurrentAlfa)+
                                Data.Center.Y;
      Data.Zubs[i].Left[j].X:=  -a[j].X*cos(CurrentAlfa-dAlfa)-
                                a[j].Y*sin(CurrentAlfa-dAlfa)+
                                Data.Center.X;
      Data.Zubs[i].Left[j].Y:=  -a[j].X*sin(CurrentAlfa-dAlfa)+
                                a[j].Y*cos(CurrentAlfa-dAlfa)+
                                Data.Center.Y;
    end;
  end;
end;
end.

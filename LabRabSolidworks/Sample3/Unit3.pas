unit Unit3;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  ComObj, ActiveX, Project1_TLB, StdVcl;

type
  TTISWDrawer = class(TAutoObject, ITISWDrawer)
  protected
    function Get_Imput: Integer; safecall;
    function Get_MD: IUnknown; safecall;
    function Get_SW: IUnknown; safecall;
    procedure CloseSW; safecall;
    procedure Drawing; safecall;
    procedure OpenSW; safecall;
    procedure Set_Imput(Value: Integer); safecall;
    procedure Set_MD(const Value: IUnknown); safecall;
    procedure Set_SW(const Value: IUnknown); safecall;

  end;

implementation

uses ComServ, SketchCompas, SketchKompas;

function TTISWDrawer.Get_Imput: Integer;
begin

end;

function TTISWDrawer.Get_MD: IUnknown;
begin

end;

function TTISWDrawer.Get_SW: IUnknown;
begin

end;

procedure TTISWDrawer.CloseSW;
begin

end;

procedure TTISWDrawer.Drawing;
begin

end;

procedure TTISWDrawer.OpenSW;
begin

end;

procedure TTISWDrawer.Set_Imput(Value: Integer);
begin

end;

procedure TTISWDrawer.Set_MD(const Value: IUnknown);
begin

end;

procedure TTISWDrawer.Set_SW(const Value: IUnknown);
begin

end;

initialization
  TAutoObjectFactory.Create(ComServer, TTISWDrawer, Class_TISWDrawer,
    ciMultiInstance, tmApartment);
end.

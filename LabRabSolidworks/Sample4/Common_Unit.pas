unit Common_Unit;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SwConst_TLB,Math, ExtCtrls, SldWorks_TLB, ComObj, Chart, TeEngine, TeeProcs, ComCtrls,Menus;

function OpenSW: IModelDoc2;
function FindPlanes(ModelDoc:IModelDoc2): HResult;
function CloseSWSave:string;
function CloseSWShow:Hresult;

var
   xyPlane: IRefPlane;                    // √лавна€ плоскость XY
   xzPlane: IRefPlane;                    // √лавна€ плоскость XZ
   yzPlane: IRefPlane;                    // √лавна€ плоскость YZ
   Razmer, privyaz: boolean;
   hr: Hresult;
   SW: ISldWorks;
   MD: IModelDoc2;
Type
  TmyRecord= Record
end;
  Trec= file of  TmyRecord;

implementation
   uses Unit1  ;
function FindPlanes(ModelDoc:IModelDoc2): HResult;
var
  f: IFeature;
  rp: IRefPlane;
  i: Byte;
  v: Variant;
  hr: HRESULT;
begin
  hr:=S_OK;
  f:= ModelDoc.IFirstFeature;
  if f=nil then
   hr:=S_FALSE;
  i:= 0;
  while (f <> nil) and (i <= 3) do
  begin
    if f.GetTypeName = 'RefPlane' then
    begin
      rp:= f.GetSpecificFeature as IRefPlane;
      v:= rp.GetRefPlaneParams;
      if (v[0] = 0) and (v[1] = 0) and (v[2] = 0) then
      begin
        Inc(i);
        if (v[6] = 0) and (v[7] = 0) and (v[8] <> 0) then
          xyPlane:= rp
        else if (v[6] <> 0) and (v[7] = 0) and (v[8] = 0) then
          yzPlane:= rp
        else if (v[6] = 0) and (v[7] <> 0) and (v[8] = 0) then
          xzPlane:= rp;
       end;
    end;
    f:= f.IGetNextFeature;
  end;
  if (xyPlane = nil) or (yzPlane = nil) or (xzPlane = nil) then
   hr:=S_FALSE;
  Result:=hr;
end;

function OpenSW: IModelDoc2;
begin
{«апуск SW и создание нового документа}
  SW:=CreateOleObject('SldWorks.Application') as ISldWorks;
  if SW= nil  then
      hr:=E_OutOfMemory;
  If Sw.Visible=true then
    Sw.Visible:=false;
  //прив€зки убираем   и размеры убираем

  Result:=SW.NewPart as IModelDoc2;
  md:=result;
  Razmer:=SW.GetUserPreferenceToggle(SWInputDimValOnCreate);
  SW.SetUserPreferenceToggle(SWInputDimValOnCreate, false);
  privyaz:= md.GetInferenceMode;
  md.SetInferenceMode(false);

end;

function CloseSWSave:string;
var   a: Trec;
begin
  //прив€зки и размеры включаем
  md.SetInferenceMode(privyaz);
  SW.SetUserPreferenceToggle(SWInputDimValOnCreate, razmer);
  sw.Visible:=false;

  if Form1.SD1.execute then begin
  md.SaveAs(Form1.SD1.FileName);
  result:= Form1.SD1.FileName;
  end;
  {Case Form1.SD1.FilterIndex of    //использовать дл€ нескольких разных типов
    0:AssignFile(a,Form1.SD1.FileName+'.prt' + ';' + '.SLDPRT');
    1:AssignFile(a,Form1.SD1.FileName+'.SLDPRT');
    end; }

  end;

function CloseSWShow:Hresult;
var   a: Trec;
begin
  //прив€зки и размеры включаем
  md.SetInferenceMode(privyaz);
  SW.SetUserPreferenceToggle(SWInputDimValOnCreate, razmer);
  sw.Visible:=true;
  Result:=S_OK;
  end;
end.

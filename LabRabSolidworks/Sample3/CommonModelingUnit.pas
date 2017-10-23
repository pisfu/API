unit CommonModelingUnit;

interface

uses SldWorks_TLB;

function FindPlanes(ModelDoc:IModelDoc): HResult;

var
   xyPlane: IRefPlane;                    // Главная плоскость XY
   xzPlane: IRefPlane;                    // Главная плоскость XZ
   yzPlane: IRefPlane;                    // Главная плоскость YZ

implementation

function FindPlanes(ModelDoc:IModelDoc): HResult;
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


end.

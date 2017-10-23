unit Kompas6API2D5COM_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// $Rev: 16059 $
// File generated on 24.05.2009 13:49:30 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files\ASCON\KOMPAS-3D V10\Bin\kAPI2D5COM.TLB (1)
// LIBID: {0F4AB6C5-1420-4848-AFCE-18CBE701BE1A}
// LCID: 0
// Helpfile: 
// HelpString: 
// DepndLst:
//   (1) v2.0 stdole, (C:\WINDOWS\system32\stdole2.tlb)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}
interface

uses Windows, ActiveX, Classes, Graphics, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  Kompas6API2D5COMMajorVersion = 1;
  Kompas6API2D5COMMinorVersion = 0;

  LIBID_Kompas6API2D5COM: TGUID = '{0F4AB6C5-1420-4848-AFCE-18CBE701BE1A}';

  IID_IKompasNotify: TGUID = '{C89A8C15-2DE0-408B-8C89-B1CF4EAE1263}';
  IID_IKompasObjectNotify: TGUID = '{EBF88CAE-07D4-4FD3-8069-A0EF15F56672}';
  IID_IDocumentFileNotify: TGUID = '{0C11E121-22C4-40FB-9559-BECB12269DCB}';
  IID_IStampNotify: TGUID = '{704FBFC9-7EDD-42D0-BDB5-C242D06C18F9}';
  IID_IObject2DNotify: TGUID = '{1F02922E-EAF8-4462-AAFB-47273782FD31}';
  IID_IObject2DNotifyResult: TGUID = '{B17BA3C2-9697-493B-BAA5-1712F349EE53}';
  IID_ISelectionMngNotify: TGUID = '{BAF64B25-B405-478D-8019-65102E45E2D5}';
  IID_ISpcObjectNotify: TGUID = '{926B6F36-0BAB-44C3-8CB8-2F89DE9DDCED}';
  IID_ISpcDocumentNotify: TGUID = '{05586FAB-FB5C-4E15-B7C0-6639106A005D}';
  IID_ISpecificationNotify: TGUID = '{46D9F0CA-C094-41C8-B851-F86CF565481E}';
  IID_IDocument2DNotify: TGUID = '{3A1D1701-BA12-4D88-9C29-7C0FAF7A2800}';
  IID_IPropertyManagerNotify: TGUID = '{9AB42E3B-7437-407E-960A-4F509812AB11}';
  IID_IDocumentFrameNotify: TGUID = '{A715A2F6-3210-4890-9EB4-327A06F90EB6}';
  IID_IViewsAndLayersManagerNotify: TGUID = '{341D4571-16F4-4928-903E-6906E56DACD1}';
  IID_ILibraryManagerNotify: TGUID = '{30265782-7631-4957-AF51-458CAA9A76EC}';
  IID_IParametrizationParam: TGUID = '{ABBA6CE0-CB4C-4A32-98B4-B639352C75CC}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IKompasNotify = interface;
  IKompasObjectNotify = interface;
  IDocumentFileNotify = interface;
  IStampNotify = interface;
  IObject2DNotify = interface;
  IObject2DNotifyResult = interface;
  ISelectionMngNotify = interface;
  ISpcObjectNotify = interface;
  ISpcDocumentNotify = interface;
  ISpecificationNotify = interface;
  IDocument2DNotify = interface;
  IPropertyManagerNotify = interface;
  IDocumentFrameNotify = interface;
  IViewsAndLayersManagerNotify = interface;
  ILibraryManagerNotify = interface;
  IParametrizationParam = interface;

// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  PInteger1 = ^Integer; {*}
  PDouble1 = ^Double; {*}
  PWordBool1 = ^WordBool; {*}


// *********************************************************************//
// Interface: IKompasNotify
// Flags:     (16) Hidden
// GUID:      {C89A8C15-2DE0-408B-8C89-B1CF4EAE1263}
// *********************************************************************//
  IKompasNotify = interface(IUnknown)
    ['{C89A8C15-2DE0-408B-8C89-B1CF4EAE1263}']
    function IsNotifyProcess(notifyType: SYSINT): WordBool; stdcall;
  end;

// *********************************************************************//
// Interface: IKompasObjectNotify
// Flags:     (16) Hidden
// GUID:      {EBF88CAE-07D4-4FD3-8069-A0EF15F56672}
// *********************************************************************//
  IKompasObjectNotify = interface(IKompasNotify)
    ['{EBF88CAE-07D4-4FD3-8069-A0EF15F56672}']
    function CreateDocument3(pDoc: Integer; docType: SYSINT): WordBool; stdcall;
    function BeginOpenDocument(docName: PChar): WordBool; stdcall;
    function OpenDocument(pDoc: Integer; docType: SYSINT): WordBool; stdcall;
    function ChangeActiveDocument(pDoc: Integer; docType: SYSINT): WordBool; stdcall;
    function ApplicationDestroy: WordBool; stdcall;
    function BeginCreate(docType: Integer): WordBool; stdcall;
    function BeginOpenFile: WordBool; stdcall;
    function BeginCloseAllDocument: WordBool; stdcall;
    function KeyDown(var key: Integer; flags: Integer; sysKey: WordBool): WordBool; stdcall;
    function KeyUp(var key: Integer; flags: Integer; sysKey: WordBool): WordBool; stdcall;
    function KeyPress(var key: Integer; sysKey: WordBool): WordBool; stdcall;
  end;

// *********************************************************************//
// Interface: IDocumentFileNotify
// Flags:     (16) Hidden
// GUID:      {0C11E121-22C4-40FB-9559-BECB12269DCB}
// *********************************************************************//
  IDocumentFileNotify = interface(IKompasNotify)
    ['{0C11E121-22C4-40FB-9559-BECB12269DCB}']
    function BeginCloseDocument: WordBool; stdcall;
    function CloseDocument: WordBool; stdcall;
    function BeginSaveDocument(docName: PChar): WordBool; stdcall;
    function SaveDocument: WordBool; stdcall;
    function Activate: WordBool; stdcall;
    function Deactivate: WordBool; stdcall;
    function BeginSaveAsDocument: WordBool; stdcall;
    function DocumentFrameOpen(const v: IUnknown): WordBool; stdcall;
    function ProcessActivate(Id: Integer): WordBool; stdcall;
    function ProcessDeactivate(Id: Integer): WordBool; stdcall;
  end;

// *********************************************************************//
// Interface: IStampNotify
// Flags:     (16) Hidden
// GUID:      {704FBFC9-7EDD-42D0-BDB5-C242D06C18F9}
// *********************************************************************//
  IStampNotify = interface(IKompasNotify)
    ['{704FBFC9-7EDD-42D0-BDB5-C242D06C18F9}']
    function BeginEditStamp: WordBool; stdcall;
    function EndEditStamp(editResult: WordBool): WordBool; stdcall;
    function StampCellDblClick(number: Integer): WordBool; stdcall;
    function StampCellBeginEdit(number: Integer): WordBool; stdcall;
  end;

// *********************************************************************//
// Interface: IObject2DNotify
// Flags:     (16) Hidden
// GUID:      {1F02922E-EAF8-4462-AAFB-47273782FD31}
// *********************************************************************//
  IObject2DNotify = interface(IKompasNotify)
    ['{1F02922E-EAF8-4462-AAFB-47273782FD31}']
    function ChangeActive(objRef: Integer): WordBool; stdcall;
    function BeginDelete(objRef: Integer): WordBool; stdcall;
    function Delete(objRef: Integer): WordBool; stdcall;
    function BeginMove(objRef: Integer): WordBool; stdcall;
    function Move(objRef: Integer): WordBool; stdcall;
    function BeginRotate(obgRef: Integer): WordBool; stdcall;
    function Rotate(objRef: Integer): WordBool; stdcall;
    function BeginScale(obgRef: Integer): WordBool; stdcall;
    function Scale(objRef: Integer): WordBool; stdcall;
    function BeginTransform(objRef: Integer): WordBool; stdcall;
    function Transform(objRef: Integer): WordBool; stdcall;
    function BeginCopy(objRef: Integer): WordBool; stdcall;
    function Copy(objRef: Integer): WordBool; stdcall;
    function BeginSymmetry(objRef: Integer): WordBool; stdcall;
    function Symmetry(objRef: Integer): WordBool; stdcall;
    function BeginProcess(pType: Integer; objRef: Integer): WordBool; stdcall;
    function EndProcess(pType: Integer): WordBool; stdcall;
    function CreateObject(objRef: Integer): WordBool; stdcall;
    function UpdateObject(objRef: Integer): WordBool; stdcall;
    function BeginDestroyObject(objRef: Integer): WordBool; stdcall;
    function DestroyObject(objRef: Integer): WordBool; stdcall;
  end;

// *********************************************************************//
// Interface: IObject2DNotifyResult
// Flags:     (16) Hidden
// GUID:      {B17BA3C2-9697-493B-BAA5-1712F349EE53}
// *********************************************************************//
  IObject2DNotifyResult = interface(IUnknown)
    ['{B17BA3C2-9697-493B-BAA5-1712F349EE53}']
    function GetNotifyType: Integer; stdcall;
    function IsCopy: WordBool; stdcall;
    function GetSheetPoint(from: WordBool; var x: Double; var y: Double): WordBool; stdcall;
    function GetCopyObject: Integer; stdcall;
    function GetAngle: Double; stdcall;
    function GetScale(var sx: Double; var sy: Double): WordBool; stdcall;
    function GetProcessType: Integer; stdcall;
  end;

// *********************************************************************//
// Interface: ISelectionMngNotify
// Flags:     (16) Hidden
// GUID:      {BAF64B25-B405-478D-8019-65102E45E2D5}
// *********************************************************************//
  ISelectionMngNotify = interface(IKompasNotify)
    ['{BAF64B25-B405-478D-8019-65102E45E2D5}']
    function Select(obj: OleVariant): WordBool; stdcall;
    function Unselect(obj: OleVariant): WordBool; stdcall;
    function UnselectAll: WordBool; stdcall;
  end;

// *********************************************************************//
// Interface: ISpcObjectNotify
// Flags:     (16) Hidden
// GUID:      {926B6F36-0BAB-44C3-8CB8-2F89DE9DDCED}
// *********************************************************************//
  ISpcObjectNotify = interface(IKompasNotify)
    ['{926B6F36-0BAB-44C3-8CB8-2F89DE9DDCED}']
    function BeginDelete(objRef: Integer): WordBool; stdcall;
    function Delete(objRef: Integer): WordBool; stdcall;
    function CellDblClick(objRef: Integer; number: Integer): WordBool; stdcall;
    function CellBeginEdit(objRef: Integer; number: Integer): WordBool; stdcall;
    function ChangeCurrent(objRef: Integer): WordBool; stdcall;
    function DocumentBeginAdd(objRef: Integer): WordBool; stdcall;
    function DocumentAdd(objRef: Integer; docName: PChar): WordBool; stdcall;
    function DocumentRemove(objRef: Integer; docName: PChar): WordBool; stdcall;
    function BeginGeomChange(objRef: Integer): WordBool; stdcall;
    function GeomChange(objRef: Integer): WordBool; stdcall;
    function BeginProcess(pType: Integer; objRef: Integer): WordBool; stdcall;
    function EndProcess(pType: Integer): WordBool; stdcall;
    function CreateObject(objRef: Integer): WordBool; stdcall;
    function UpdateObject(objRef: Integer): WordBool; stdcall;
    function BeginCopy(objRef: Integer): WordBool; stdcall;
    function Copy(objRef: Integer): WordBool; stdcall;
  end;

// *********************************************************************//
// Interface: ISpcDocumentNotify
// Flags:     (16) Hidden
// GUID:      {05586FAB-FB5C-4E15-B7C0-6639106A005D}
// *********************************************************************//
  ISpcDocumentNotify = interface(IKompasNotify)
    ['{05586FAB-FB5C-4E15-B7C0-6639106A005D}']
    function DocumentBeginAdd: WordBool; stdcall;
    function DocumentAdd(docName: PChar): WordBool; stdcall;
    function DocumentBeginRemove(docName: PChar): WordBool; stdcall;
    function DocumentRemove(docName: PChar): WordBool; stdcall;
    function SpcStyleBeginChange(libName: PChar; numb: Integer): WordBool; stdcall;
    function SpcStyleChange(libName: PChar; numb: Integer): WordBool; stdcall;
  end;

// *********************************************************************//
// Interface: ISpecificationNotify
// Flags:     (16) Hidden
// GUID:      {46D9F0CA-C094-41C8-B851-F86CF565481E}
// *********************************************************************//
  ISpecificationNotify = interface(IKompasNotify)
    ['{46D9F0CA-C094-41C8-B851-F86CF565481E}']
    function TuningSpcStyleBeginChange(libName: PChar; numb: Integer): WordBool; stdcall;
    function TuningSpcStyleChange(libName: PChar; numb: Integer; isOk: WordBool): WordBool; stdcall;
    function ChangeCurrentSpcDescription(libName: PChar; numb: Integer): WordBool; stdcall;
    function SpcDescriptionAdd(libName: PChar; numb: Integer): WordBool; stdcall;
    function SpcDescriptionRemove(libName: PChar; numb: Integer): WordBool; stdcall;
    function SpcDescriptionBeginEdit(libName: PChar; numb: Integer): WordBool; stdcall;
    function SpcDescriptionEdit(libName: PChar; numb: Integer; isOk: WordBool): WordBool; stdcall;
    function SynchronizationBegin: WordBool; stdcall;
    function Synchronization: WordBool; stdcall;
    function BeginCalcPositions: WordBool; stdcall;
    function CalcPositions: WordBool; stdcall;
    function BeginCreateObject(typeObj: Integer): WordBool; stdcall;
  end;

// *********************************************************************//
// Interface: IDocument2DNotify
// Flags:     (16) Hidden
// GUID:      {3A1D1701-BA12-4D88-9C29-7C0FAF7A2800}
// *********************************************************************//
  IDocument2DNotify = interface(IKompasNotify)
    ['{3A1D1701-BA12-4D88-9C29-7C0FAF7A2800}']
    function BeginRebuild: WordBool; stdcall;
    function Rebuild: WordBool; stdcall;
    function BeginChoiceMaterial: WordBool; stdcall;
    function ChoiceMaterial(material: PChar; density: Double): WordBool; stdcall;
    function BeginInsertFragment: WordBool; stdcall;
    function LocalFragmentEdit(pDoc: Integer; newFrw: WordBool): WordBool; stdcall;
  end;

// *********************************************************************//
// Interface: IPropertyManagerNotify
// Flags:     (16) Hidden
// GUID:      {9AB42E3B-7437-407E-960A-4F509812AB11}
// *********************************************************************//
  IPropertyManagerNotify = interface(IKompasNotify)
    ['{9AB42E3B-7437-407E-960A-4F509812AB11}']
    function ButtonClick(buttonID: Integer): WordBool; stdcall;
    function ChangeControlValue(const ctrl: IUnknown): WordBool; stdcall;
    function ControlCommand(const ctrl: IUnknown; buttonID: Integer): WordBool; stdcall;
    function ButtonUpdate(buttonID: Integer; var check: Integer; var _enable: WordBool): WordBool; stdcall;
    function ProcessActivate: WordBool; stdcall;
    function ProcessDeactivate: WordBool; stdcall;
    function CommandHelp(Id: Integer): WordBool; stdcall;
    function SelectItem(const Control: IUnknown; Index: Integer; Select: WordBool): WordBool; stdcall;
    function CheckItem(const Control: IUnknown; Index: Integer; check: WordBool): WordBool; stdcall;
    function ChangeActiveTab(TabIndex: Integer): WordBool; stdcall;
  end;

// *********************************************************************//
// Interface: IDocumentFrameNotify
// Flags:     (16) Hidden
// GUID:      {A715A2F6-3210-4890-9EB4-327A06F90EB6}
// *********************************************************************//
  IDocumentFrameNotify = interface(IKompasNotify)
    ['{A715A2F6-3210-4890-9EB4-327A06F90EB6}']
    function BeginPaint(const paintObj: IUnknown): WordBool; stdcall;
    function ClosePaint(const paintObj: IUnknown): WordBool; stdcall;
    function MouseDown(nButton: Smallint; nShiftState: Smallint; x: Integer; y: Integer): WordBool; stdcall;
    function MouseUp(nButton: Smallint; nShiftState: Smallint; x: Integer; y: Integer): WordBool; stdcall;
    function MouseDblClick(nButton: Smallint; nShiftState: Smallint; x: Integer; y: Integer): WordBool; stdcall;
    function BeginPaintGL(drawMode: Integer): WordBool; stdcall;
    function ClosePaintGL(drawMode: Integer): WordBool; stdcall;
    function AddGabarit(const gabObj: IUnknown): WordBool; stdcall;
    function Activate: WordBool; stdcall;
    function Deactivate: WordBool; stdcall;
    function CloseFrame: WordBool; stdcall;
    function MouseMove(nShiftState: Smallint; x: Integer; y: Integer): WordBool; stdcall;
  end;

// *********************************************************************//
// Interface: IViewsAndLayersManagerNotify
// Flags:     (16) Hidden
// GUID:      {341D4571-16F4-4928-903E-6906E56DACD1}
// *********************************************************************//
  IViewsAndLayersManagerNotify = interface(IKompasNotify)
    ['{341D4571-16F4-4928-903E-6906E56DACD1}']
    function BeginEdit: WordBool; stdcall;
    function EndEdit(isOk: WordBool): WordBool; stdcall;
  end;

// *********************************************************************//
// Interface: ILibraryManagerNotify
// Flags:     (16) Hidden
// GUID:      {30265782-7631-4957-AF51-458CAA9A76EC}
// *********************************************************************//
  ILibraryManagerNotify = interface(IKompasNotify)
    ['{30265782-7631-4957-AF51-458CAA9A76EC}']
    function BeginAttach(const PLibrary: IUnknown): WordBool; stdcall;
    function Attach(const PLibrary: IUnknown): WordBool; stdcall;
    function BeginDetach(const PLibrary: IUnknown): WordBool; stdcall;
    function Detach(const PLibrary: IUnknown): WordBool; stdcall;
    function BeginExecute(const PLibrary: IUnknown): WordBool; stdcall;
    function EndExecute(const PLibrary: IUnknown): WordBool; stdcall;
    function SystemControlStop(const PLibrary: IUnknown): WordBool; stdcall;
    function SystemControlStart(const PLibrary: IUnknown): WordBool; stdcall;
    function AddLibraryDescription(const PLibrary: IUnknown): WordBool; stdcall;
    function DeleteLibraryDescription(const PLibrary: IUnknown): WordBool; stdcall;
    function AddInsert(const PInsert: IUnknown; create: WordBool): WordBool; stdcall;
    function DeleteInsert(const PInsert: IUnknown): WordBool; stdcall;
    function EditInsert(const PLibrary: IUnknown; pDoc: Integer; newFrw: WordBool): WordBool; stdcall;
  end;

// *********************************************************************//
// Interface: IParametrizationParam
// Flags:     (16) Hidden
// GUID:      {ABBA6CE0-CB4C-4A32-98B4-B639352C75CC}
// *********************************************************************//
  IParametrizationParam = interface(IUnknown)
    ['{ABBA6CE0-CB4C-4A32-98B4-B639352C75CC}']
    function GetNearestPoints: WordBool; stdcall;
    function SetNearestPoints(value: WordBool): WordBool; stdcall;
    function GetPointsLimit: Double; stdcall;
    function SetPointsLimit(value: Double): WordBool; stdcall;
    function GetHorizontal: WordBool; stdcall;
    function SetHorizontal(value: WordBool): WordBool; stdcall;
    function GetVertical: WordBool; stdcall;
    function SetVertical(value: WordBool): WordBool; stdcall;
    function GetParallel: WordBool; stdcall;
    function SetParallel(value: WordBool): WordBool; stdcall;
    function GetPerpendicular: WordBool; stdcall;
    function SetPerpendicular(value: WordBool): WordBool; stdcall;
    function GetAngleLimit: Double; stdcall;
    function SetAngleLimit(value: Double): WordBool; stdcall;
    function Init: WordBool; stdcall;
  end;

implementation

uses ComObj;

end.

unit EXTERNDCCREATORLib_TLB;

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
// File generated on 24.05.2009 2:53:50 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files\ASCON\KOMPAS-3D V10\Bin\ExternDCCreator.tlb (1)
// LIBID: {CEF723A8-58E6-47EE-AD07-A368D64E0CBC}
// LCID: 0
// Helpfile: 
// HelpString: ExternDCCreator 1.0 Type Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\WINDOWS\system32\stdole2.tlb)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}
interface

uses Windows, ActiveX, Classes, Graphics, OleServer, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  EXTERNDCCREATORLibMajorVersion = 1;
  EXTERNDCCREATORLibMinorVersion = 0;

  LIBID_EXTERNDCCREATORLib: TGUID = '{CEF723A8-58E6-47EE-AD07-A368D64E0CBC}';

  IID_IExternDCCreatorObject: TGUID = '{3AA952EA-CD01-4CDE-9AFC-F6B8D1325B2F}';
  CLASS_ExternDCCreatorObject: TGUID = '{CF665C4D-35F2-446E-A83C-E69AC714CD32}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IExternDCCreatorObject = interface;
  IExternDCCreatorObjectDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  ExternDCCreatorObject = IExternDCCreatorObject;


// *********************************************************************//
// Interface: IExternDCCreatorObject
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3AA952EA-CD01-4CDE-9AFC-F6B8D1325B2F}
// *********************************************************************//
  IExternDCCreatorObject = interface(IDispatch)
    ['{3AA952EA-CD01-4CDE-9AFC-F6B8D1325B2F}']
    function GetDC(const paintObject: IDispatch): SYSUINT; safecall;
    function ReleaseDC: WordBool; safecall;
  end;

// *********************************************************************//
// DispIntf:  IExternDCCreatorObjectDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3AA952EA-CD01-4CDE-9AFC-F6B8D1325B2F}
// *********************************************************************//
  IExternDCCreatorObjectDisp = dispinterface
    ['{3AA952EA-CD01-4CDE-9AFC-F6B8D1325B2F}']
    function GetDC(const paintObject: IDispatch): SYSUINT; dispid 1;
    function ReleaseDC: WordBool; dispid 2;
  end;

// *********************************************************************//
// The Class CoExternDCCreatorObject provides a Create and CreateRemote method to          
// create instances of the default interface IExternDCCreatorObject exposed by              
// the CoClass ExternDCCreatorObject. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoExternDCCreatorObject = class
    class function Create: IExternDCCreatorObject;
    class function CreateRemote(const MachineName: string): IExternDCCreatorObject;
  end;

implementation

uses ComObj;

class function CoExternDCCreatorObject.Create: IExternDCCreatorObject;
begin
  Result := CreateComObject(CLASS_ExternDCCreatorObject) as IExternDCCreatorObject;
end;

class function CoExternDCCreatorObject.CreateRemote(const MachineName: string): IExternDCCreatorObject;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ExternDCCreatorObject) as IExternDCCreatorObject;
end;

end.

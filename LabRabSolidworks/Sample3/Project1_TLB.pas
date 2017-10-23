unit Project1_TLB;

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
// File generated on 24.05.2009 2:03:35 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Documents and Settings\Admin\Рабочий стол\Курсовой Solid\Project1.tlb (1)
// LIBID: {B4281C04-F17F-4438-983A-F0A1E4E1C994}
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
  Project1MajorVersion = 1;
  Project1MinorVersion = 0;

  LIBID_Project1: TGUID = '{B4281C04-F17F-4438-983A-F0A1E4E1C994}';

  IID_ITISWDrawer: TGUID = '{C5D0202D-2816-44B7-81E8-E5AB2CDA21E9}';
  CLASS_TISWDrawer: TGUID = '{8965158B-773C-47F5-8A4A-10EC33173CBA}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  ITISWDrawer = interface;
  ITISWDrawerDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  TISWDrawer = ITISWDrawer;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  TSWImput = record
    s: Double;
    bh: Double;
    b6: Double;
    bt: Double;
    a: Double;
    c: Double;
    dw1: Double;
    dw2: Double;
    dw3: Double;
    dw4: Double;
    h: Double;
    q: Double;
    Path: WideString;
  end;


// *********************************************************************//
// Interface: ITISWDrawer
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C5D0202D-2816-44B7-81E8-E5AB2CDA21E9}
// *********************************************************************//
  ITISWDrawer = interface(IDispatch)
    ['{C5D0202D-2816-44B7-81E8-E5AB2CDA21E9}']
    procedure OpenSW; safecall;
    procedure Drawing; safecall;
    procedure CloseSW; safecall;
    function Get_MD: IUnknown; safecall;
    procedure Set_MD(const Value: IUnknown); safecall;
    function Get_SW: IUnknown; safecall;
    procedure Set_SW(const Value: IUnknown); safecall;
    function Get_Imput: Integer; safecall;
    procedure Set_Imput(Value: Integer); safecall;
    property MD: IUnknown read Get_MD write Set_MD;
    property SW: IUnknown read Get_SW write Set_SW;
    property Imput: Integer read Get_Imput write Set_Imput;
  end;

// *********************************************************************//
// DispIntf:  ITISWDrawerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C5D0202D-2816-44B7-81E8-E5AB2CDA21E9}
// *********************************************************************//
  ITISWDrawerDisp = dispinterface
    ['{C5D0202D-2816-44B7-81E8-E5AB2CDA21E9}']
    procedure OpenSW; dispid 201;
    procedure Drawing; dispid 202;
    procedure CloseSW; dispid 203;
    property MD: IUnknown dispid 204;
    property SW: IUnknown dispid 205;
    property Imput: Integer dispid 206;
  end;

// *********************************************************************//
// The Class CoTISWDrawer provides a Create and CreateRemote method to          
// create instances of the default interface ITISWDrawer exposed by              
// the CoClass TISWDrawer. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTISWDrawer = class
    class function Create: ITISWDrawer;
    class function CreateRemote(const MachineName: string): ITISWDrawer;
  end;

implementation

uses ComObj;

class function CoTISWDrawer.Create: ITISWDrawer;
begin
  Result := CreateComObject(CLASS_TISWDrawer) as ITISWDrawer;
end;

class function CoTISWDrawer.CreateRemote(const MachineName: string): ITISWDrawer;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TISWDrawer) as ITISWDrawer;
end;

end.

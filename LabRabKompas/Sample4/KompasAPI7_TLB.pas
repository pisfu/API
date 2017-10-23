unit KompasAPI7_TLB;

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
// File generated on 18.05.2009 12:40:00 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files\ASCON\KOMPAS-3D V10\Bin\kAPI7.TLB (1)
// LIBID: {69AC2981-37C0-4379-84FD-5DD2F3C0A520}
// LCID: 0
// Helpfile: C:\Program Files\ASCON\KOMPAS-3D V10\Bin\sdk.hlp
// HelpString: 
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\system32\stdole2.tlb)
//   (2) v1.0 Kompas6Constants, (C:\Program Files\ASCON\KOMPAS-3D V10\Bin\ksConstants.TLB)
//   (3) v1.0 Kompas6Constants3D, (C:\Program Files\ASCON\KOMPAS-3D V10\Bin\ksConstants3D.TLB)
//   (4) v1.0 Kompas6API5, (C:\Program Files\ASCON\KOMPAS-3D V10\Bin\kAPI5.TLB)
// Errors:
//   Hint: TypeInfo 'Procedure' changed to 'Procedure_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Parameter 'Type' of IKompasAPIObject.Type changed to 'Type_'
//   Hint: Parameter 'Library' of IApplication.Converter changed to 'Library_'
//   Hint: Parameter 'Type' of IDocuments.Add changed to 'Type_'
//   Hint: Parameter 'Type' of IKompasDocument.DocumentType changed to 'Type_'
//   Hint: Parameter 'Type' of IDocumentFrame.ZoomPrevNextOrAll changed to 'Type_'
//   Hint: Parameter 'Type' of IDocumentFrame.ConvertCoordinates changed to 'Type_'
//   Hint: Parameter 'Object' of IUserDataStoragesMng.Add changed to 'Object_'
//   Hint: Parameter 'Object' of IUserDataStorage.GetObject changed to 'Object_'
//   Hint: Parameter 'Object' of IUserDataStorage.SetObject changed to 'Object_'
//   Hint: Parameter 'Object' of IUserDataStorage.AddObject changed to 'Object_'
//   Hint: Parameter 'Type' of IPropertyControls.Add changed to 'Type_'
//   Hint: Parameter 'Object' of ICheckSum.AddInterface changed to 'Object_'
//   Hint: Parameter 'Object' of ICheckSum.AddReference changed to 'Object_'
//   Hint: Parameter 'Type' of IDrawingObject.DrawingObjectType changed to 'Type_'
//   Hint: Parameter 'Type' of IDrawingObject.Temp changed to 'Type_'
//   Hint: Parameter 'Type' of IDrawingObject.Valid changed to 'Type_'
//   Hint: Parameter 'Type' of IModelObject.ModelObjectType changed to 'Type_'
//   Hint: Parameter 'Type' of IFeature7.FeatureType changed to 'Type_'
//   Hint: Parameter 'Type' of IPropertySlideBox.SlideType changed to 'Type_'
//   Hint: Parameter 'Type' of IPropertySlideBox.SlideType changed to 'Type_'
//   Hint: Parameter 'Type' of IChooseBodies7.ChooseBodiesType changed to 'Type_'
//   Hint: Parameter 'Type' of IChooseBodies7.ChooseBodiesType changed to 'Type_'
//   Hint: Member 'Object' of 'IPoint3DParamCenter' changed to 'Object_'
//   Hint: Parameter 'Begin' of IMarkOnLeader.AddBranch changed to 'Begin_'
//   Hint: Parameter 'Begin' of IMarkOnLeader.AddBranchByPoint changed to 'Begin_'
//   Hint: Parameter 'Type' of IBuildingAxis.AddNodeByPoint changed to 'Type_'
//   Hint: Parameter 'Type' of IMarkNodes.Add changed to 'Type_'
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}
interface

uses Windows, ActiveX, Classes, Graphics, Kompas6API5_TLB, Kompas6Constants_TLB, Kompas6Constants3D_TLB, OleServer, 
StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  KompasAPI7MajorVersion = 1;
  KompasAPI7MinorVersion = 0;

  LIBID_KompasAPI7: TGUID = '{69AC2981-37C0-4379-84FD-5DD2F3C0A520}';

  IID_IKompasAPIObject: TGUID = '{5C799A83-C0A4-4312-BEB0-21CBD7FF4C13}';
  IID_IApplication: TGUID = '{6A2EFAF7-8254-45A5-9DC8-2213F16AF5D7}';
  IID_IKompasCollection: TGUID = '{901F85DE-FA5A-4314-BD75-066A79AF20A8}';
  IID_IDocuments: TGUID = '{8BF39F08-5537-4910-84CE-B338E55F7BCF}';
  IID_IKompasDocument: TGUID = '{5C6E318D-BD6E-4AFA-8A13-977EAA0845EF}';
  IID_IDocumentFrames: TGUID = '{1D18C466-C085-4D68-A465-A85D0C8E3A0E}';
  IID_IDocumentFrame: TGUID = '{4437FABA-990F-45E2-B1A2-7754FB326B76}';
  IID_IDocumentSettings: TGUID = '{B35FF50E-2991-4630-8AB8-DC3153E7971A}';
  IID_ISpecificationDescriptions: TGUID = '{B9632C5C-86E1-4BC9-83A5-A954E407246A}';
  IID_ISpecificationDescription: TGUID = '{9678959E-166B-45F3-BDE8-88BBF4645F5C}';
  IID_ISpecificationStyle: TGUID = '{F237D2B3-DFEE-4702-B71F-E5F6923F03E6}';
  IID_ISpecificationTuning: TGUID = '{BB719D42-E44C-445B-969A-0E2F63E97FC8}';
  IID_ITextStyle: TGUID = '{7EA65CA0-420D-4E1D-8C19-998495C4DA2F}';
  IID_ITextFont: TGUID = '{A6AD008D-58D1-48B5-BD29-E6795289FE4B}';
  IID_ITabulators: TGUID = '{BB66E097-95C7-49B1-B6FD-3506C7758D09}';
  IID_ITabulator: TGUID = '{2DD73B92-F8C8-49AA-AECD-B75713427FC1}';
  IID_ISpecificationTuningSections: TGUID = '{01B1BF6F-B9E3-4E94-99A0-81394FB99B16}';
  IID_ISpecificationTuningSection: TGUID = '{E68AA413-CC35-450D-BF35-0F294F59B08C}';
  IID_ISpecificationSubsections: TGUID = '{56532CB4-BD3F-442C-AFA4-0E6BEB677E61}';
  IID_ISpecificationSubsection: TGUID = '{7F0E5F63-815C-46E5-B99E-C24244566C00}';
  IID_IAdditionalBlockTunings: TGUID = '{8910CC92-AC76-4837-AB7A-5FD3C7B74728}';
  IID_IAdditionalBlockTuning: TGUID = '{9CD5B016-9CE9-4E0A-8902-196D11360536}';
  IID_IAdditionalBlockSectionTunings: TGUID = '{43EFA203-F956-43D6-B603-87807DDEFD0A}';
  IID_IAdditionalBlockSectionTuning: TGUID = '{E04B8464-C8D6-4BAC-99B5-AE79EBBDB205}';
  IID_ISheetFormat: TGUID = '{B9CDE694-4C33-4375-A6F6-AE94DC759510}';
  IID_ISpecificationColumnStyles: TGUID = '{41529A95-51F0-44B0-9D55-5753BCEB23BC}';
  IID_ISpecificationColumnStyle: TGUID = '{16839CAA-3AFB-49A4-A19A-C61963967649}';
  IID_ISpecificationSectionStyles: TGUID = '{24AE8484-F4F4-4059-AFC7-9492A64C88E8}';
  IID_ISpecificationSectionStyle: TGUID = '{4B61FC7F-4826-4B58-8CCB-7D459AD0BE7B}';
  IID_IAdditionalBlockStyles: TGUID = '{90E2FBEC-A56F-423C-B89F-479673EDD895}';
  IID_IAdditionalBlockStyle: TGUID = '{B2A43FA6-9BCE-4468-9662-811A6255E220}';
  IID_ISpecificationBaseObjects: TGUID = '{B2B97D19-3A0B-4C9F-A6AC-DEFFAFE0D1C2}';
  IID_ISpecificationObject: TGUID = '{72EB4E8E-7952-4B36-852B-4816B7B5AFEE}';
  IID_ISpecificationBaseObject: TGUID = '{49994ED8-96BA-4D9D-B642-5F0F1E3FED16}';
  IID_ISpecificationColumns: TGUID = '{9F44BF03-DE25-4DDE-ADA0-92384199C100}';
  IID_ISpecificationColumn: TGUID = '{3ECFB777-2645-42B5-A6ED-111688433B26}';
  IID_ISpecificationColumnItems: TGUID = '{F4BAB79A-8A35-44D5-BE44-C566E444F342}';
  IID_ISpecificationColumnItem: TGUID = '{2BABDD01-EACA-4137-9749-25B8C5E230EE}';
  IID_IAttachedDocuments: TGUID = '{81FAB1C5-F566-4D06-8D3D-17FF01D3566F}';
  IID_IAttachedDocument: TGUID = '{333E9E11-D161-49AE-9791-8BEDB58B4C78}';
  IID_ISpecificationCommentObjects: TGUID = '{B8BD0FC7-AB2B-4E7A-8EC2-82060D7D29A7}';
  IID_ISpecificationCommentObject: TGUID = '{3B6B80CA-2145-4184-B786-0C571DF5ACD7}';
  IID_ILayoutSheets: TGUID = '{7AB54196-0B76-4B01-B769-7F47637173C4}';
  IID_ILayoutSheet: TGUID = '{D87B5A80-CF52-4510-ADD9-D1344FFFFC07}';
  IID_IUserDataStoragesMng: TGUID = '{77A6D4CA-6418-4DEE-B59C-400BFD052375}';
  IID_IUserDataStorages: TGUID = '{9DBFB4EB-BE9F-46EF-88FF-BB603A9E786B}';
  IID_IUserDataStorage: TGUID = '{DD2AF5C4-D5B9-420D-B658-F935F80A8586}';
  IID_IProcessParam: TGUID = '{CB5FDBC8-4DAE-4C4B-87D5-6FD1F2705C38}';
  IID_IPropertyTabs: TGUID = '{5BA6324E-E555-490F-A0E2-68D3C6C88D92}';
  IID_IPropertyTab: TGUID = '{45DE8E5B-BC2B-4584-8BA7-D3014D3A2397}';
  IID_IPropertyControls: TGUID = '{548241BA-FDA8-4633-981E-94552BE38D6B}';
  IID_IPropertyControl: TGUID = '{E35F8FF8-03C6-460C-A2F1-294A3A29A029}';
  IID_IPropertyManager: TGUID = '{34196EC3-58B2-436C-A353-427703740874}';
  IID_ILibraryManager: TGUID = '{53CDC510-99EA-4736-8542-194F4D8FB32B}';
  IID_IProceduresLibraries: TGUID = '{80F95B5B-DB8A-46B7-8C22-605A0AECD597}';
  IID_ILibrary: TGUID = '{9D6E9AE1-7DDF-4354-B8D0-E12023B186FA}';
  IID_IProceduresLibrary: TGUID = '{1AECE59E-DE4C-4FB9-B62B-7967573AD3B1}';
  IID_IProcedures: TGUID = '{1A77F076-2295-40F9-B1AA-2838C4CA0887}';
  IID_IProcedure: TGUID = '{7BF9DF08-D14D-4DA9-ABC2-FB458E7122D0}';
  IID_IInsertsLibraries: TGUID = '{A6E82D68-69D5-40C0-9A85-275B22219135}';
  IID_IInsertsLibrary: TGUID = '{885CAD68-B42B-45CF-8620-E0138558EFE3}';
  IID_IInserts: TGUID = '{FCBF6340-119D-4736-BB95-F1EAB4BEF1B8}';
  IID_IInsert: TGUID = '{D6A6D305-6B5C-4392-B61D-D669C092EEF2}';
  IID_IKompasError: TGUID = '{0A8B4CD1-7158-4CE6-96E0-885376F5DE1B}';
  IID_IConverter: TGUID = '{642D03AB-4798-48A5-B075-3CD9AFA18554}';
  IID_ICheckSum: TGUID = '{2AA9F713-2328-4E8F-B996-9DFDABC67DC9}';
  IID_IProgressBarIndicator: TGUID = '{BE125ABA-EAB2-4A22-99D7-108C84B6DCC5}';
  IID_ISystemSettings: TGUID = '{FFB66332-17FF-47EB-AC43-32084F8F6077}';
  IID_IKompasDocument2D: TGUID = '{096E62B3-7184-4998-9925-74BB710D8D8E}';
  IID_IViewsAndLayersManager: TGUID = '{A4737593-578B-4187-8CAD-E1056EB5404B}';
  IID_IDrawingObjects: TGUID = '{3DD7F97B-59CB-4297-A1BA-04E5A7FFF448}';
  IID_IViews: TGUID = '{9CD1B5E6-C1A2-4910-8D0C-97080B14AA3D}';
  IID_IDrawingObject: TGUID = '{07EF021F-11C1-4015-8D87-4DC94A2A71B0}';
  IID_IView: TGUID = '{21A7BA87-1C8B-41B4-8247-CDD593546F37}';
  IID_ILayers: TGUID = '{F6DC2898-D596-4418-A21A-D15AE07B9A40}';
  IID_ILayer: TGUID = '{9AD76C38-CC48-4901-AEE5-27B48F51563C}';
  IID_ILayerGroups: TGUID = '{DBFF6D98-8F79-453E-9B8B-81E40A6D8027}';
  IID_ILayerGroup: TGUID = '{265BBB5A-7B8A-4AA5-A0BB-FF64D23BE62B}';
  IID_ILayerFilterConditions: TGUID = '{BCA22E27-AB60-4BA6-87EE-92158AA6D366}';
  IID_ILayerFilterCondition: TGUID = '{D743BC12-82A9-4E8F-85B2-7154A356ACC0}';
  IID_IKompasDocument3D: TGUID = '{7B60E769-06C3-4FDC-9677-7B5EF5180308}';
  IID_IModelObject: TGUID = '{E37256D4-9021-47AC-8FAF-3713FB2A50C3}';
  IID_IPart7: TGUID = '{FA4A5FDE-A08C-4F5A-8C04-98395BA44307}';
  IID_IFeature7: TGUID = '{EF4343FA-985D-4FE9-AD5F-439BC8F92958}';
  IID_IModelObjects: TGUID = '{125CB096-639E-479F-98DE-F27FAB23838A}';
  IID_IParts7: TGUID = '{42F8FCEF-E56F-466C-8814-BEBAC0719AE6}';
  IID_IVariableTable: TGUID = '{2B8B154E-ED76-4FF0-B3E4-FEE691D014A4}';
  IID_IDrawingObject1: TGUID = '{649F0EB2-EBC0-449B-8B61-DC3CF1953BF9}';
  IID_IParametriticConstraint: TGUID = '{131069F4-A4E2-4DB4-A559-85EACCC74CE4}';
  IID_IDrawingDocument: TGUID = '{C2214318-5C89-40F8-A25C-C87D08B490F4}';
  IID_IFragmentDocument: TGUID = '{E19CE626-DF9C-48C4-A83D-3E3BC7F0DACA}';
  IID_ISpecificationDocument: TGUID = '{E3FA8FD0-6187-4625-89B7-3C815651944D}';
  IID_ITextDocument: TGUID = '{71A589EA-D32F-42C4-BBC4-A51611E85E90}';
  IID_IPartDocument: TGUID = '{0075EA2A-5498-4E28-BDF3-0288EB168054}';
  IID_IAssemblyDocument: TGUID = '{F6B3F33A-3273-43EF-9B8A-7C0AF8FAA129}';
  IID_IPropertyEdit: TGUID = '{1D238C4C-AAD7-4374-B372-013CF7FCEDB4}';
  IID_IPropertySeparator: TGUID = '{4504EFA0-D059-4FD4-B725-FA264D190869}';
  IID_IPropertyList: TGUID = '{8F53E9D5-07AD-412E-8C2A-509BC633C4FF}';
  IID_IPropertyCheckBox: TGUID = '{9205277D-B480-4AF7-B660-CCDC653F6453}';
  IID_IPropertyMultiButton: TGUID = '{3920A0BE-0628-47D5-B0F1-1DFEB77964BC}';
  IID_IPropertySlideBox: TGUID = '{E1DB38CD-A6D5-44B8-9AD0-0056B87924DD}';
  IID_IPropertyUserControl: TGUID = '{5A902C6C-A030-4F37-A089-91505BAEE466}';
  IID_IPropertyGrid: TGUID = '{6682B70F-59DB-4BF0-AB01-45B65B1BDED1}';
  IID_IPaintObject: TGUID = '{4D14726D-0EC2-49CE-B02C-FEDAA6D65BBD}';
  IID_IGabaritObject: TGUID = '{B6674824-CD9D-4220-B2CB-9F939A9C35C8}';
  DIID_ksGLObject: TGUID = '{B1C65023-B908-4CAD-9238-C5026520E62C}';
  IID_IPropertyTextButton: TGUID = '{3CDFE85F-643D-4008-AE32-379C0EB3FB7F}';
  IID_IPropertySpinEdit: TGUID = '{F214A46D-2BA9-40AD-A32D-E696EF9C895A}';
  IID_IPropertyFileName: TGUID = '{DB1F3224-837E-437F-8944-6FB9703F528B}';
  IID_IPropertyColor: TGUID = '{FC5CDCFB-3F67-43A1-8FC4-1278B901CE0E}';
  IID_IPropertyEditList: TGUID = '{FDB82760-7EA3-408E-8699-A8392ACFD810}';
  IID_IPropertyToolBar: TGUID = '{C2523B7E-EB4B-45DB-8E3B-9D6CCED99333}';
  IID_IAssociationView: TGUID = '{0825F23C-0A73-48DE-BEAB-DA2FF39962C3}';
  IID_IViewDesignation: TGUID = '{5F9580DA-915C-4C28-991D-5DFFE3BF3B3C}';
  IID_IDocument2DSettings: TGUID = '{B09A64BF-7AA6-4BF6-B8E8-AA8E8EE6E9D6}';
  IID_IDrawingDocumentSettings: TGUID = '{0DC39FC2-4FB1-489E-A76E-E47413199FA3}';
  IID_IFragmentDocumentSettings: TGUID = '{A33D05CF-EFFF-4BBE-9BE0-15D283425828}';
  DIID_ksPropertyManagerNotify: TGUID = '{5A89C538-E0DD-4C21-B3D1-3BF65EEB8C3E}';
  DIID_ksPropertyUserControlNotify: TGUID = '{5A31BB02-026C-4419-A0FF-A93CF58DCA99}';
  DIID_ksDocumentFrameNotify: TGUID = '{6ECBB531-5609-4364-AC92-7A6A21D23313}';
  DIID_ksDrawingObjectNotify: TGUID = '{E335A73F-DF27-4D33-8CBD-E928F797FB94}';
  DIID_ksViewsAndLayersManagerNotify: TGUID = '{FC04C62E-AB0F-4614-B3D9-0EA8671CEB08}';
  DIID_ksLibraryManagerNotify: TGUID = '{9B9CC387-E217-4EED-BCE9-9E1D645B49EE}';
  DIID_ksSpecificationDescriptionNotify: TGUID = '{A0DA14E6-4F92-4D18-8CD1-2BBAB695CE13}';
  DIID_ksSpecificationObjectNotify: TGUID = '{1C4DEC41-A8EA-40EE-9AC8-F807232DB874}';
  DIID_ksLayoutSheetsNotify: TGUID = '{58E30500-6073-4337-BFC1-32A74EA17DE8}';
  DIID_ksModelObjectNotify: TGUID = '{7B8E86E1-4304-449D-9CEC-1B14F74A16FB}';
  DIID_ksDocument3DNotify7: TGUID = '{C784D45B-8C68-4189-8F27-A3B0D6CFAEB2}';
  IID_IModelObjectNotifyResult: TGUID = '{73653933-51B5-49D6-9EF2-6667639283CC}';
  IID_IModelContainer: TGUID = '{2C6E8A0F-EDC8-413C-9304-9278817B915B}';
  IID_ISketchs: TGUID = '{EE562963-395C-4748-9726-FCA9C531B1CA}';
  IID_ISketch: TGUID = '{E6BBF50D-8401-4FB3-A6B6-153D3F447255}';
  IID_IExtrusions: TGUID = '{A160C032-CF96-4467-A682-CE2243DF76BD}';
  IID_IExtrusion: TGUID = '{0D7FFE70-33EB-442C-A9B6-A205EA85A237}';
  IID_IPoints3D: TGUID = '{81EBB128-3963-4759-9D4E-2829C3078B0F}';
  IID_IPoint3D: TGUID = '{D71AEDBE-01D4-4C7D-96DC-94981F2A1C37}';
  IID_IMassInertiaParam7: TGUID = '{666C987F-2700-4C35-B8CE-DB8BFB5AAF02}';
  IID_IThinParameters: TGUID = '{B90D597D-4213-4A59-98D4-0B67E719551B}';
  IID_ICutExtrusion: TGUID = '{D2A01420-9159-48C2-8302-C1B10A13D8F8}';
  IID_IChooseBodies7: TGUID = '{7BF80DAA-25F8-4AFF-AFEA-CAD390D4275D}';
  IID_IBody7: TGUID = '{4F122E22-0AA6-46E1-841F-A2504B145995}';
  IID_ISheetMetalBodies: TGUID = '{F56DBE72-48CC-48AD-9DA4-10D972C903EE}';
  IID_ISheetMetalBody: TGUID = '{2DC533DC-829E-4EFF-A905-541E9220A12D}';
  IID_ISheetMetalContainer: TGUID = '{77A4895D-9B09-4C63-A3FF-6857F4340840}';
  IID_ISheetMetalBends: TGUID = '{6826CFD6-6A48-4EB1-8C89-7DB4E36702B4}';
  IID_ISheetMetalBend: TGUID = '{B631D95F-C487-41D6-9726-C65E9F5A4505}';
  IID_ISheetMetalLineBends: TGUID = '{AF8B8310-AF82-4B02-8733-783FFAFD4DBD}';
  IID_ISheetMetalLineBend: TGUID = '{E13EF07A-B1E8-41FD-9C85-C17F01E52A03}';
  IID_ISheetMetalHoles: TGUID = '{E117BDF9-5133-4672-9B8F-06046F6B9BF3}';
  IID_ISheetMetalHole: TGUID = '{3490B8B8-00D7-4BCF-AAD8-9487BF271084}';
  IID_ISheetMetalCuts: TGUID = '{9515E4BB-7C60-4C3A-AF7A-847861E67B55}';
  IID_ISheetMetalCut: TGUID = '{B50B1730-BACF-46F2-B10A-6CCDF4E4A2B1}';
  IID_IPoint3DParamDisplace: TGUID = '{6D57994F-C170-4CED-968A-6AD69C1A2C7D}';
  IID_IPoint3DParamIntersect: TGUID = '{C009F9ED-ED8A-4B1E-A4CE-156F43C3F6F3}';
  IID_IPoint3DParamCenter: TGUID = '{A92F2938-F1D4-475E-AAB4-962FAA4A4366}';
  IID_IPoint3DParamCurve: TGUID = '{06B6BDA5-1DC6-4321-8B28-AC065D87E060}';
  IID_IPoint3DParamSurface: TGUID = '{18CE6BBE-63FB-4C94-8998-E40BC5B5D1C6}';
  IID_IPoint3DParamProjection: TGUID = '{B5D353DD-5F26-42FD-87D3-01C97C44E1BF}';
  IID_IText: TGUID = '{99B840FC-0150-4DAD-BC0E-AD481BAAB8C2}';
  IID_ITextLine: TGUID = '{AAB72FE2-DEA3-4FB6-B0DD-B926249EF67C}';
  IID_ITextItem: TGUID = '{1DE74AFB-5026-4B85-861F-F0CFDBD443E6}';
  IID_IDrawingText: TGUID = '{E32E5703-0141-41CF-9917-9565648FE331}';
  IID_IDrawingTexts: TGUID = '{C72E0E9D-7078-4AA7-95E4-E8C75CA9BCEC}';
  IID_IDrawingContainer: TGUID = '{D603FEC9-75B7-4FA5-918F-47074C45B848}';
  IID_ILineSegments: TGUID = '{B211C782-A830-468E-9F4F-C499A77078D8}';
  IID_ILineSegment: TGUID = '{64ACC86F-4B10-4897-8552-BC0A556D228B}';
  IID_IArcs: TGUID = '{4FCB4C17-3B9E-45E8-B83C-9284027BAA0D}';
  IID_IArc: TGUID = '{A22DFB7E-21E0-4B28-9CA1-29B7950CF256}';
  IID_IMark: TGUID = '{B5D1A0BE-8F3C-4143-B9C5-66F0CF0FE74D}';
  IID_IMarks: TGUID = '{47585370-56BD-4419-82D9-DB7CBFB1A252}';
  IID_IMarkInsideForm: TGUID = '{E5C5A0FF-6CAB-4179-9BF3-868D96BF6AEA}';
  IID_IMarkOnLine: TGUID = '{5A1540F9-7388-466F-A13C-EB1133423DD9}';
  IID_IMarkOnLeader: TGUID = '{F3D7E6A6-26EA-4D68-AD58-4DE194C47B4E}';
  IID_IBuildingAxis: TGUID = '{123C45BF-14DE-433E-B3B0-2FB642A9A418}';
  IID_IMarkNode: TGUID = '{5AC48E97-80B1-459F-9709-1F3F374559BE}';
  IID_IMarkNodes: TGUID = '{EB8ACD77-8008-4F89-A311-2F4712462F72}';
  IID_IBuildingAxes: TGUID = '{18072E1D-1802-41F5-A434-04BB9D3F157F}';
  IID_IStraightAxis: TGUID = '{7B2820E0-2CB7-4412-9B96-F291DD790448}';
  IID_IAxisJut: TGUID = '{5A22E024-F530-45DB-A3F2-CA0587BDA1B5}';
  IID_IArcAxis: TGUID = '{DAA9755A-3971-4713-B281-15995CBF2E56}';
  IID_ICircleAxis: TGUID = '{D84358FB-674C-4A5D-93BA-EE5D3342097B}';
  IID_ICutUnitMarking: TGUID = '{2EDA58EE-DBDA-44CC-AD10-6895006D498C}';
  IID_ICutUnitMarkings: TGUID = '{23B00F94-98D3-4AD7-8827-F4088F4A9E5C}';
  IID_IUnitMarking: TGUID = '{86F46084-16A8-4B5C-99E9-F848216788F0}';
  IID_IUnitMarkings: TGUID = '{969AD901-FC09-47F5-94F5-1ABEB1A9C85C}';
  IID_IBuildingContainer: TGUID = '{FD1FD236-F5BA-4FB0-A872-21FC13E6895F}';
  IID_IMultiTextLeaders: TGUID = '{233B2298-7A45-4CE1-AEF2-30B063FDB63C}';
  IID_IMultiTextLeader: TGUID = '{1BFC5D3F-1483-4569-B4B5-7A12163A4655}';
  IID_IUnitNumbers: TGUID = '{598E649B-970C-454B-9162-1BB6C9FBFCBF}';
  IID_IUnitNumber: TGUID = '{FABAF607-CB92-47C4-9409-B7678162051D}';
  IID_IBraces: TGUID = '{99F27BD6-6294-45D9-AF78-A9D52E9DD799}';
  IID_IBrace: TGUID = '{7F328D28-76E9-4E04-A35C-AD60339998E4}';
  CLASS_KompasDocument: TGUID = '{DBBB268E-19D3-40DE-B77C-987CA15FE711}';
  CLASS__Application: TGUID = '{8C3719B5-0DF2-4C12-9CA8-3AF4827A3BBB}';
  CLASS_Documents: TGUID = '{385647BD-89B1-4F2D-A06E-4DD829EE096B}';
  CLASS_DocumentFrame: TGUID = '{8BFFC9B4-5FE7-4EC5-8BA5-0FF8520D5FF6}';
  CLASS_DocumentFrames: TGUID = '{CC89942A-6FE5-4808-8DC8-FF46D546A8EB}';
  CLASS_ProcessParam: TGUID = '{4C33DE6E-FEAC-4C28-9EE0-32C37F8E7A48}';
  CLASS_PropertyControls: TGUID = '{74D54FDD-62D0-4544-89C9-999612EF6DEF}';
  CLASS_PropertyTab: TGUID = '{1C2A5766-B80A-4752-8509-217574965BF3}';
  CLASS_PropertyTabs: TGUID = '{52110F5F-7BF2-4079-B3AE-A7B716A7EB1E}';
  CLASS_PropertyEdit: TGUID = '{E4AFCB78-574F-4960-9D92-B23888D700CD}';
  CLASS_PropertySeparator: TGUID = '{59DA09ED-130F-43AF-86B8-EAC8E0C7D0A2}';
  CLASS_PropertyList: TGUID = '{404CF845-9BF6-4AAD-97A1-B9A173ACF96D}';
  CLASS_PropertyCheckBox: TGUID = '{8CF06399-B7EB-46EB-8B08-5603C589FE0F}';
  CLASS_PropertyMultiButton: TGUID = '{B734CA6E-CA21-4CCD-AEE8-94BC8F9D4986}';
  CLASS_PropertySlideBox: TGUID = '{9988AC8D-657B-4B2A-8338-EC315CBBA70E}';
  CLASS_PropertyUserControl: TGUID = '{725A98DC-9987-4A79-BDA2-F5024E2D0FF3}';
  CLASS_PropertyGrid: TGUID = '{F0F9573F-BE07-4251-86E5-2AA24AA3D43A}';
  CLASS_PropertyManager: TGUID = '{1B9CBAB1-99DA-433E-8D4E-6761D1AB9B8A}';
  CLASS_KompasDocument3D: TGUID = '{9237AAFE-992B-4521-BF68-3A0C6D7F7769}';
  CLASS_DrawingDocument: TGUID = '{5414B05F-A731-4369-BBD2-419B5CD9D2A2}';
  CLASS_FragmentDocument: TGUID = '{86CA15DA-A197-4993-AB98-8921D156114E}';
  CLASS_SpecificationDocument: TGUID = '{2D43B764-4F8A-47A6-AAAB-52B59CE5A08D}';
  CLASS_TextDocument: TGUID = '{F5CF81CF-F6C3-4D9C-B393-6DF532BFB45D}';
  CLASS_PartDocument: TGUID = '{427D2E6B-8D4E-4F9F-99AC-F9E0FB22D25C}';
  CLASS_AssemblyDocument: TGUID = '{705B37C7-CA52-4588-980E-1105C919E20C}';
  CLASS_PropertyTextButton: TGUID = '{D4F68E4E-2092-436A-B6FB-B8A335A671FD}';
  CLASS_PropertySpinEdit: TGUID = '{F4710743-A53B-4256-A450-16D0D40C87AA}';
  CLASS_ViewsAndLayersManager: TGUID = '{2E3092B1-3B1A-4060-B202-B0C6F4177973}';
  CLASS_DrawingObject: TGUID = '{3310AC4A-DC93-4AB5-B2CD-5391E6CB370A}';
  CLASS_DrawingObjects: TGUID = '{5F90A46E-EA28-4294-B34F-145C80141517}';
  CLASS_Views: TGUID = '{675CDFC9-4ED8-4689-8A15-BE9CC85CFBDC}';
  CLASS_View: TGUID = '{ADBF03AF-24D4-4CA8-BF0E-7F6E403D4E55}';
  CLASS_AssociationView: TGUID = '{9F144F3A-A296-46C6-99C2-1877B83B0E63}';
  CLASS_LayerGroups: TGUID = '{E53FFD4E-619D-4B9B-9C34-9C23668E6F4A}';
  CLASS_LayerGroup: TGUID = '{5543C50A-B56D-48AF-87C3-09C1B48CBC5A}';
  CLASS_Layers: TGUID = '{C0402ED4-D1AB-4567-BE4F-AFD88AF848EC}';
  CLASS_Layer: TGUID = '{392916B8-171E-4229-9E75-1D514C75FB17}';
  CLASS_LayerFilterCondition: TGUID = '{21D31870-5EBC-42CE-8858-A308E7E4B8A4}';
  CLASS_LayerFilterConditions: TGUID = '{9F90DA69-2CA3-4C2E-AB59-6BB9B0E7DFB8}';
  CLASS_DocumentSettings: TGUID = '{64964B4C-5A02-41D8-B6EC-F7CF627564E6}';
  CLASS_Document2DSettings: TGUID = '{EBB0EE6B-305C-4448-9674-3F5072606D47}';
  CLASS_DrawingDocumentSettings: TGUID = '{AA124C48-7498-4D0C-97BA-1C52B0697288}';
  CLASS_FragmentDocumentSettings: TGUID = '{17306A13-C8C2-4783-B420-96D627E75858}';
  CLASS_LibraryManager: TGUID = '{AACB5896-8918-43CB-A5B4-F3EAF45BCEF7}';
  CLASS_ProceduresLibrary: TGUID = '{E865B51E-8276-4F7E-A20B-509DC25679B1}';
  CLASS_Procedures: TGUID = '{0EA0000E-9328-488D-B611-9F72EECCD92D}';
  CLASS_Procedure_: TGUID = '{5D9929F6-3D65-4DAF-B146-A85FA98F2356}';
  CLASS_InsertsLibrary: TGUID = '{9A06D2A1-BCDE-4C43-88A1-5A491469BE11}';
  CLASS_Inserts: TGUID = '{F8527798-EB6E-43C6-AE05-6FA964CFD96B}';
  CLASS_Insert: TGUID = '{5D1BD639-051F-48C5-BCA7-7698B4D070B4}';
  CLASS_InsertsLibraries: TGUID = '{6C64BD39-1613-4AD4-B5BA-B6F38D32E82C}';
  CLASS_ProceduresLibraries: TGUID = '{DBC3AC55-2823-4661-9740-54843BA72B12}';
  CLASS_SpecificationDescriptions: TGUID = '{77168B66-5A17-4694-ADDF-848E314EE0D1}';
  CLASS_SpecificationDescription: TGUID = '{AD076943-BF97-4802-9D4F-D28C6C41E966}';
  CLASS_SpecificationStyle: TGUID = '{7E9787DC-72ED-452D-8EF5-FD3D21259712}';
  CLASS_SpecificationColumnStyles: TGUID = '{EC3F7C56-6A3B-45AC-BF81-614B7B045BAA}';
  CLASS_SpecificationColumnStyle: TGUID = '{FF5E4685-8914-4382-97C9-C73FFED73449}';
  CLASS_SpecificationSectionStyles: TGUID = '{25B2EDD7-FB95-4FE6-BA9C-B296531EA6C7}';
  CLASS_SpecificationSectionStyle: TGUID = '{A862B550-CAED-48FD-889D-C1507A30D241}';
  CLASS_AdditionalBlockStyles: TGUID = '{2A248D5E-8B8F-4F43-91EC-10C7F02E2064}';
  CLASS_AdditionalBlockStyle: TGUID = '{704BC0BD-189C-4B8B-A97A-AB5F0C6897EF}';
  CLASS_SheetFormat: TGUID = '{B872A3A8-C21F-487B-A44D-B168398E014A}';
  CLASS_SpecificationTuning: TGUID = '{C6410109-2800-476B-82EE-202C766B515D}';
  CLASS_SpecificationTuningSections: TGUID = '{B64E5FBC-99D3-4CBF-989F-0F832F3C7B5F}';
  CLASS_SpecificationTuningSection: TGUID = '{03D146C9-35D2-4FBF-B051-053711FCA51B}';
  CLASS_SpecificationSubsections: TGUID = '{79130306-1FB8-49FD-85D2-A6C235B91638}';
  CLASS_SpecificationSubsection: TGUID = '{C82A6A36-CF62-43CE-A180-FA1268AE0116}';
  CLASS_AdditionalBlockTunings: TGUID = '{B6CC6F97-B1F1-42CF-ADC7-7875B06A7089}';
  CLASS_AdditionalBlockTuning: TGUID = '{D62780C1-EDD6-49B6-B619-04E22189D288}';
  CLASS_AdditionalBlockSectionTunings: TGUID = '{821A5929-98F3-4C67-BC2C-D3A8A1442086}';
  CLASS_AdditionalBlockSectionTuning: TGUID = '{39BDE053-03AA-4B95-8E25-5B8041C7BE12}';
  CLASS_TextFont: TGUID = '{7F52DDDE-FD30-40DF-97E9-B606A005FD14}';
  CLASS_TextStyle: TGUID = '{92523524-1E11-4193-AD5F-E2381555DCC6}';
  CLASS_Tabulators: TGUID = '{C0D50C82-511E-4554-8296-EDFF2AE66C4C}';
  CLASS_Tabulator: TGUID = '{D65E21E0-4B98-401D-86B5-712E0AA56CEC}';
  CLASS_KompasError: TGUID = '{A5B4DB5F-0554-4D75-915B-3F838F18C809}';
  CLASS_SpecificationBaseObjects: TGUID = '{E2FD0C57-3E8A-4EC2-A1E9-7BEB75E3AB7C}';
  CLASS_SpecificationCommentObjects: TGUID = '{77CFDEBF-2DF0-4B67-8825-78DF712A0497}';
  CLASS_SpecificationObject: TGUID = '{77A64147-06A5-4843-8C6F-F0E35F0ED951}';
  CLASS_SpecificationBaseObject: TGUID = '{41FCDD59-6012-4E46-84DC-04934683B098}';
  CLASS_SpecificationCommentObject: TGUID = '{6F0354E0-9AB0-47AC-80E8-10FB48C59340}';
  CLASS_SpecificationColumns: TGUID = '{A641E019-073F-49F5-97BC-A9D5FFB063D8}';
  CLASS_SpecificationColumn: TGUID = '{B5216B74-0577-41D5-9B62-C71674EC9330}';
  CLASS_SpecificationColumnItems: TGUID = '{86172CF0-0BED-46E0-B2E1-DD43ABF09290}';
  CLASS_SpecificationColumnItem: TGUID = '{D1A46669-AF0C-43EE-ACB6-E765D06BED4A}';
  CLASS_AttachedDocuments: TGUID = '{7E97523D-C412-4DA4-9FEC-E4769E88B340}';
  CLASS_AttachedDocument: TGUID = '{30251A40-34EA-4DA6-A0B0-66E7A556A813}';
  CLASS_PropertyFileName: TGUID = '{BBB62BA6-AC05-4D05-BFF2-BC8579A2C5FC}';
  CLASS_PropertyColor: TGUID = '{77E6E019-A5A1-4318-B98E-CD970D248EA0}';
  CLASS_LayoutSheets: TGUID = '{1EF17E36-3C4D-4C86-AD1B-17E744075DF8}';
  CLASS_LayoutSheet: TGUID = '{5331E747-7833-4988-92CA-90283160DDF6}';
  CLASS_Converter: TGUID = '{A496A838-57F7-4BEC-99FF-51D4782C60AE}';
  CLASS_CheckSum: TGUID = '{D3154740-6BF5-47F6-9A02-486F78190791}';
  CLASS_ModelObject: TGUID = '{DB0070F0-C367-4DB5-B722-9CFE69895657}';
  CLASS_ModelObjects: TGUID = '{B0223EED-4659-4EAC-BDA2-20B0FDD4E7B7}';
  CLASS_Parts7: TGUID = '{CB826C3D-9968-4546-BCD7-BA65F6B84902}';
  CLASS_Part7: TGUID = '{314057D1-5EFD-4980-8AB8-4E0CC3F7E756}';
  CLASS_Sketchs: TGUID = '{6F94D909-E9C7-4496-8F5B-01F0B03FF409}';
  CLASS_Extrusions: TGUID = '{2B4C99E4-FB5D-4D7D-A44D-5B898E1F5E9E}';
  CLASS_VariableTable: TGUID = '{B49FD0E4-26AC-48DE-AD0E-7DFA902DF2B7}';
  CLASS_ProgressBarIndicator: TGUID = '{9361276C-70A0-4000-82D2-90FB546C98D4}';
  CLASS_Text: TGUID = '{393AB030-F683-470C-8F4E-AA93BF3162CC}';
  CLASS_TextLine: TGUID = '{FDFD93BC-11C4-42A9-9C8F-A4FB206274B6}';
  CLASS_TextItem: TGUID = '{58CED17B-2AA8-4DF8-B215-811DDE72DF3C}';
  CLASS_DrawingText: TGUID = '{2E194B4E-F08D-4D62-A9B8-849004D8D923}';
  CLASS_DrawingTexts: TGUID = '{5F4C3AA0-4B59-4EEE-AB00-53CEA8909F66}';
  CLASS_Marks: TGUID = '{C0DEA6BF-0AD5-4C55-AD3D-A3F145943E47}';
  CLASS_MarkInsideForm: TGUID = '{CDABB418-649A-4AB9-8A92-C51789075912}';
  CLASS_MarkOnLine: TGUID = '{84CAA3BB-3E7A-4185-82BC-85D4102D5DEF}';
  CLASS_MarkOnLeader: TGUID = '{CF195C37-A915-48CA-9F6B-6B3845FED05B}';
  CLASS_UserDataStoragesMng: TGUID = '{13BCC1C9-C582-4616-89EE-4CD250595CC4}';
  CLASS_UserDataStorages: TGUID = '{1B57D1CF-CBEA-4DBC-9452-50E367784958}';
  CLASS_UserDataStorage: TGUID = '{4C7C5A7E-AD2C-4B1F-82B9-73476837E020}';
  CLASS_BuildingAxes: TGUID = '{B879C6F6-5AB0-4BEE-8872-FE87C621F15B}';
  CLASS_StraightAxis: TGUID = '{04728D73-A533-4C98-B0BF-92A8A02E6F4C}';
  CLASS_ArcAxis: TGUID = '{AE2C24D6-17E4-4E5F-BA2B-ED62AC2323EC}';
  CLASS_CircleAxis: TGUID = '{8A706E75-73FF-4FBF-8D3F-61A13513C7EB}';
  CLASS_AxisJut: TGUID = '{97559604-8CCC-44E4-B332-7E16C34522D5}';
  CLASS_MarkNodes: TGUID = '{6681105E-35E0-4E76-9E64-0AB8B50E6149}';
  CLASS_MarkNode: TGUID = '{B98EA663-66BC-46C0-A86C-1FE40AF8A3D8}';
  CLASS_LineSegments: TGUID = '{B7B673AF-5E78-45AA-8C78-894D1F4F77AC}';
  CLASS_LineSegment: TGUID = '{EE1993AD-CAC2-421C-B9B1-131BA16466CF}';
  CLASS_SystemSettings: TGUID = '{31C4845E-508F-43F0-A57F-E7602A0E45E6}';
  CLASS_CutUnitMarking: TGUID = '{BE66B386-7D76-4AFC-AC47-521B6648CB8F}';
  CLASS_CutUnitMarkings: TGUID = '{DDEFF219-E3BC-457F-87FF-3C3ADCFA720E}';
  CLASS_UnitMarking: TGUID = '{82BE653C-832A-4611-941F-D27BE733530B}';
  CLASS_UnitMarkings: TGUID = '{2156B173-A854-4714-BE90-6F9ADE48E2AF}';
  CLASS_Arcs: TGUID = '{307690EF-0E80-4CD1-93E1-49288C5697A7}';
  CLASS__Arc: TGUID = '{6BA18A3D-28A8-47C3-A97C-E324282F93FD}';
  CLASS_MultiTextLeader: TGUID = '{123D60BB-0331-4726-9707-777615E9D354}';
  CLASS_MultiTextLeaders: TGUID = '{AF30B851-0AE8-4F62-B7DB-1DF52D9316F2}';
  CLASS_Brace: TGUID = '{2DF7A8F9-CB3B-499E-867F-81BA5B41ED57}';
  CLASS_Braces: TGUID = '{82CD752F-BC4F-45A2-9FE9-8AB01FDAF6C9}';
  CLASS_UnitNumber: TGUID = '{515C7A0D-0120-4CC4-A5F0-67473D7D95D3}';
  CLASS_UnitNumbers: TGUID = '{624E4C7C-156C-4FD9-8DA8-CEB9750860D1}';
  CLASS_Sketch: TGUID = '{FC43EA04-ADED-4D42-883A-11073E2E68EC}';
  CLASS_Extrusion: TGUID = '{9D3CAF4C-4D9D-40EC-BE5A-12A3AC595007}';
  CLASS_ParametriticConstraint: TGUID = '{7536F0BF-2857-4A01-ACFA-5DDF1C9840A8}';
  CLASS_CutExtrusion: TGUID = '{B60B0F24-9069-4AB4-B0E4-DC558A6BF4A3}';
  CLASS_Body7: TGUID = '{29E7E8D5-7988-408F-A02B-7C0871221C9C}';
  CLASS_SheetMetalBodies: TGUID = '{DC4C565F-935D-4F7A-97A5-DB4D252F6B91}';
  CLASS_SheetMetalBody: TGUID = '{1301DC0F-CDF1-4EB1-90B4-D06EA2610F0B}';
  CLASS_Points3D: TGUID = '{2B0C2912-59D7-4976-9E57-20D83CDA9038}';
  CLASS_Point3D: TGUID = '{A4CA403F-B960-4E41-A350-C07D15115DC2}';
  CLASS_Point3DParamDisplace: TGUID = '{7E00821A-E79B-412B-9A51-ADB9664C23A0}';
  CLASS_Point3DParamIntersect: TGUID = '{DE8A8774-6705-4971-BA1F-F889E7E3752C}';
  CLASS_Point3DParamCenter: TGUID = '{02DA512F-097F-4911-8E27-8C546ED4B22A}';
  CLASS_Point3DParamCurve: TGUID = '{AAC9EE7F-C69F-48DD-9A38-8E38C38BAB28}';
  CLASS_Point3DParamSurface: TGUID = '{E5490B1D-49E8-4042-BEAA-C666952D3B1B}';
  CLASS_Point3DParamProjection: TGUID = '{BD60E7D5-0E9E-4E00-A27B-08C11CFD41BD}';
  CLASS_SheetMetalBends: TGUID = '{E82B9381-1BA1-4CD8-8F0A-0F7AAB0777CE}';
  CLASS_SheetMetalBend: TGUID = '{C84C5989-2AE1-4E61-9C29-88028C8873A2}';
  CLASS_SheetMetalLineBends: TGUID = '{C7DF1AFE-A3EF-427A-B732-70DEFDDB351D}';
  CLASS_SheetMetalLineBend: TGUID = '{DCA09F8B-187B-400B-AFFA-D1EC84251EC2}';
  IID_ISourcePart7Params: TGUID = '{C9E03A9B-0A54-49AC-9397-8DE4465A8D1D}';
  CLASS_SheetMetalHole: TGUID = '{6D725058-9A30-49B2-8BA6-466F2807E232}';
  CLASS_SheetMetalHoles: TGUID = '{D11BBACB-3A8A-4B3F-9DEC-C17CC9989083}';
  CLASS_SheetMetalCut: TGUID = '{17CDFC21-A515-4011-BCC6-A3420219E19D}';
  CLASS_SheetMetalCuts: TGUID = '{A0C32567-9107-4695-A9B0-4D991B58689E}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IKompasAPIObject = interface;
  IKompasAPIObjectDisp = dispinterface;
  IApplication = interface;
  IApplicationDisp = dispinterface;
  IKompasCollection = interface;
  IKompasCollectionDisp = dispinterface;
  IDocuments = interface;
  IDocumentsDisp = dispinterface;
  IKompasDocument = interface;
  IKompasDocumentDisp = dispinterface;
  IDocumentFrames = interface;
  IDocumentFramesDisp = dispinterface;
  IDocumentFrame = interface;
  IDocumentFrameDisp = dispinterface;
  IDocumentSettings = interface;
  IDocumentSettingsDisp = dispinterface;
  ISpecificationDescriptions = interface;
  ISpecificationDescriptionsDisp = dispinterface;
  ISpecificationDescription = interface;
  ISpecificationDescriptionDisp = dispinterface;
  ISpecificationStyle = interface;
  ISpecificationStyleDisp = dispinterface;
  ISpecificationTuning = interface;
  ISpecificationTuningDisp = dispinterface;
  ITextStyle = interface;
  ITextStyleDisp = dispinterface;
  ITextFont = interface;
  ITextFontDisp = dispinterface;
  ITabulators = interface;
  ITabulatorsDisp = dispinterface;
  ITabulator = interface;
  ITabulatorDisp = dispinterface;
  ISpecificationTuningSections = interface;
  ISpecificationTuningSectionsDisp = dispinterface;
  ISpecificationTuningSection = interface;
  ISpecificationTuningSectionDisp = dispinterface;
  ISpecificationSubsections = interface;
  ISpecificationSubsectionsDisp = dispinterface;
  ISpecificationSubsection = interface;
  ISpecificationSubsectionDisp = dispinterface;
  IAdditionalBlockTunings = interface;
  IAdditionalBlockTuningsDisp = dispinterface;
  IAdditionalBlockTuning = interface;
  IAdditionalBlockTuningDisp = dispinterface;
  IAdditionalBlockSectionTunings = interface;
  IAdditionalBlockSectionTuningsDisp = dispinterface;
  IAdditionalBlockSectionTuning = interface;
  IAdditionalBlockSectionTuningDisp = dispinterface;
  ISheetFormat = interface;
  ISheetFormatDisp = dispinterface;
  ISpecificationColumnStyles = interface;
  ISpecificationColumnStylesDisp = dispinterface;
  ISpecificationColumnStyle = interface;
  ISpecificationColumnStyleDisp = dispinterface;
  ISpecificationSectionStyles = interface;
  ISpecificationSectionStylesDisp = dispinterface;
  ISpecificationSectionStyle = interface;
  ISpecificationSectionStyleDisp = dispinterface;
  IAdditionalBlockStyles = interface;
  IAdditionalBlockStylesDisp = dispinterface;
  IAdditionalBlockStyle = interface;
  IAdditionalBlockStyleDisp = dispinterface;
  ISpecificationBaseObjects = interface;
  ISpecificationBaseObjectsDisp = dispinterface;
  ISpecificationObject = interface;
  ISpecificationObjectDisp = dispinterface;
  ISpecificationBaseObject = interface;
  ISpecificationBaseObjectDisp = dispinterface;
  ISpecificationColumns = interface;
  ISpecificationColumnsDisp = dispinterface;
  ISpecificationColumn = interface;
  ISpecificationColumnDisp = dispinterface;
  ISpecificationColumnItems = interface;
  ISpecificationColumnItemsDisp = dispinterface;
  ISpecificationColumnItem = interface;
  ISpecificationColumnItemDisp = dispinterface;
  IAttachedDocuments = interface;
  IAttachedDocumentsDisp = dispinterface;
  IAttachedDocument = interface;
  IAttachedDocumentDisp = dispinterface;
  ISpecificationCommentObjects = interface;
  ISpecificationCommentObjectsDisp = dispinterface;
  ISpecificationCommentObject = interface;
  ISpecificationCommentObjectDisp = dispinterface;
  ILayoutSheets = interface;
  ILayoutSheetsDisp = dispinterface;
  ILayoutSheet = interface;
  ILayoutSheetDisp = dispinterface;
  IUserDataStoragesMng = interface;
  IUserDataStoragesMngDisp = dispinterface;
  IUserDataStorages = interface;
  IUserDataStoragesDisp = dispinterface;
  IUserDataStorage = interface;
  IUserDataStorageDisp = dispinterface;
  IProcessParam = interface;
  IProcessParamDisp = dispinterface;
  IPropertyTabs = interface;
  IPropertyTabsDisp = dispinterface;
  IPropertyTab = interface;
  IPropertyTabDisp = dispinterface;
  IPropertyControls = interface;
  IPropertyControlsDisp = dispinterface;
  IPropertyControl = interface;
  IPropertyControlDisp = dispinterface;
  IPropertyManager = interface;
  IPropertyManagerDisp = dispinterface;
  ILibraryManager = interface;
  ILibraryManagerDisp = dispinterface;
  IProceduresLibraries = interface;
  IProceduresLibrariesDisp = dispinterface;
  ILibrary = interface;
  ILibraryDisp = dispinterface;
  IProceduresLibrary = interface;
  IProceduresLibraryDisp = dispinterface;
  IProcedures = interface;
  IProceduresDisp = dispinterface;
  IProcedure = interface;
  IProcedureDisp = dispinterface;
  IInsertsLibraries = interface;
  IInsertsLibrariesDisp = dispinterface;
  IInsertsLibrary = interface;
  IInsertsLibraryDisp = dispinterface;
  IInserts = interface;
  IInsertsDisp = dispinterface;
  IInsert = interface;
  IInsertDisp = dispinterface;
  IKompasError = interface;
  IKompasErrorDisp = dispinterface;
  IConverter = interface;
  IConverterDisp = dispinterface;
  ICheckSum = interface;
  ICheckSumDisp = dispinterface;
  IProgressBarIndicator = interface;
  IProgressBarIndicatorDisp = dispinterface;
  ISystemSettings = interface;
  ISystemSettingsDisp = dispinterface;
  IKompasDocument2D = interface;
  IKompasDocument2DDisp = dispinterface;
  IViewsAndLayersManager = interface;
  IViewsAndLayersManagerDisp = dispinterface;
  IDrawingObjects = interface;
  IDrawingObjectsDisp = dispinterface;
  IViews = interface;
  IViewsDisp = dispinterface;
  IDrawingObject = interface;
  IDrawingObjectDisp = dispinterface;
  IView = interface;
  IViewDisp = dispinterface;
  ILayers = interface;
  ILayersDisp = dispinterface;
  ILayer = interface;
  ILayerDisp = dispinterface;
  ILayerGroups = interface;
  ILayerGroupsDisp = dispinterface;
  ILayerGroup = interface;
  ILayerGroupDisp = dispinterface;
  ILayerFilterConditions = interface;
  ILayerFilterConditionsDisp = dispinterface;
  ILayerFilterCondition = interface;
  ILayerFilterConditionDisp = dispinterface;
  IKompasDocument3D = interface;
  IKompasDocument3DDisp = dispinterface;
  IModelObject = interface;
  IModelObjectDisp = dispinterface;
  IPart7 = interface;
  IPart7Disp = dispinterface;
  IFeature7 = interface;
  IFeature7Disp = dispinterface;
  IModelObjects = interface;
  IModelObjectsDisp = dispinterface;
  IParts7 = interface;
  IParts7Disp = dispinterface;
  IVariableTable = interface;
  IVariableTableDisp = dispinterface;
  IDrawingObject1 = interface;
  IDrawingObject1Disp = dispinterface;
  IParametriticConstraint = interface;
  IParametriticConstraintDisp = dispinterface;
  IDrawingDocument = interface;
  IDrawingDocumentDisp = dispinterface;
  IFragmentDocument = interface;
  IFragmentDocumentDisp = dispinterface;
  ISpecificationDocument = interface;
  ISpecificationDocumentDisp = dispinterface;
  ITextDocument = interface;
  ITextDocumentDisp = dispinterface;
  IPartDocument = interface;
  IPartDocumentDisp = dispinterface;
  IAssemblyDocument = interface;
  IAssemblyDocumentDisp = dispinterface;
  IPropertyEdit = interface;
  IPropertyEditDisp = dispinterface;
  IPropertySeparator = interface;
  IPropertySeparatorDisp = dispinterface;
  IPropertyList = interface;
  IPropertyListDisp = dispinterface;
  IPropertyCheckBox = interface;
  IPropertyCheckBoxDisp = dispinterface;
  IPropertyMultiButton = interface;
  IPropertyMultiButtonDisp = dispinterface;
  IPropertySlideBox = interface;
  IPropertySlideBoxDisp = dispinterface;
  IPropertyUserControl = interface;
  IPropertyUserControlDisp = dispinterface;
  IPropertyGrid = interface;
  IPropertyGridDisp = dispinterface;
  IPaintObject = interface;
  IPaintObjectDisp = dispinterface;
  IGabaritObject = interface;
  IGabaritObjectDisp = dispinterface;
  ksGLObject = dispinterface;
  IPropertyTextButton = interface;
  IPropertyTextButtonDisp = dispinterface;
  IPropertySpinEdit = interface;
  IPropertySpinEditDisp = dispinterface;
  IPropertyFileName = interface;
  IPropertyFileNameDisp = dispinterface;
  IPropertyColor = interface;
  IPropertyColorDisp = dispinterface;
  IPropertyEditList = interface;
  IPropertyEditListDisp = dispinterface;
  IPropertyToolBar = interface;
  IPropertyToolBarDisp = dispinterface;
  IAssociationView = interface;
  IAssociationViewDisp = dispinterface;
  IViewDesignation = interface;
  IViewDesignationDisp = dispinterface;
  IDocument2DSettings = interface;
  IDocument2DSettingsDisp = dispinterface;
  IDrawingDocumentSettings = interface;
  IDrawingDocumentSettingsDisp = dispinterface;
  IFragmentDocumentSettings = interface;
  IFragmentDocumentSettingsDisp = dispinterface;
  ksPropertyManagerNotify = dispinterface;
  ksPropertyUserControlNotify = dispinterface;
  ksDocumentFrameNotify = dispinterface;
  ksDrawingObjectNotify = dispinterface;
  ksViewsAndLayersManagerNotify = dispinterface;
  ksLibraryManagerNotify = dispinterface;
  ksSpecificationDescriptionNotify = dispinterface;
  ksSpecificationObjectNotify = dispinterface;
  ksLayoutSheetsNotify = dispinterface;
  ksModelObjectNotify = dispinterface;
  ksDocument3DNotify7 = dispinterface;
  IModelObjectNotifyResult = interface;
  IModelObjectNotifyResultDisp = dispinterface;
  IModelContainer = interface;
  IModelContainerDisp = dispinterface;
  ISketchs = interface;
  ISketchsDisp = dispinterface;
  ISketch = interface;
  ISketchDisp = dispinterface;
  IExtrusions = interface;
  IExtrusionsDisp = dispinterface;
  IExtrusion = interface;
  IExtrusionDisp = dispinterface;
  IPoints3D = interface;
  IPoints3DDisp = dispinterface;
  IPoint3D = interface;
  IPoint3DDisp = dispinterface;
  IMassInertiaParam7 = interface;
  IMassInertiaParam7Disp = dispinterface;
  IThinParameters = interface;
  IThinParametersDisp = dispinterface;
  ICutExtrusion = interface;
  ICutExtrusionDisp = dispinterface;
  IChooseBodies7 = interface;
  IChooseBodies7Disp = dispinterface;
  IBody7 = interface;
  IBody7Disp = dispinterface;
  ISheetMetalBodies = interface;
  ISheetMetalBodiesDisp = dispinterface;
  ISheetMetalBody = interface;
  ISheetMetalBodyDisp = dispinterface;
  ISheetMetalContainer = interface;
  ISheetMetalContainerDisp = dispinterface;
  ISheetMetalBends = interface;
  ISheetMetalBendsDisp = dispinterface;
  ISheetMetalBend = interface;
  ISheetMetalBendDisp = dispinterface;
  ISheetMetalLineBends = interface;
  ISheetMetalLineBendsDisp = dispinterface;
  ISheetMetalLineBend = interface;
  ISheetMetalLineBendDisp = dispinterface;
  ISheetMetalHoles = interface;
  ISheetMetalHolesDisp = dispinterface;
  ISheetMetalHole = interface;
  ISheetMetalHoleDisp = dispinterface;
  ISheetMetalCuts = interface;
  ISheetMetalCutsDisp = dispinterface;
  ISheetMetalCut = interface;
  ISheetMetalCutDisp = dispinterface;
  IPoint3DParamDisplace = interface;
  IPoint3DParamDisplaceDisp = dispinterface;
  IPoint3DParamIntersect = interface;
  IPoint3DParamIntersectDisp = dispinterface;
  IPoint3DParamCenter = interface;
  IPoint3DParamCenterDisp = dispinterface;
  IPoint3DParamCurve = interface;
  IPoint3DParamCurveDisp = dispinterface;
  IPoint3DParamSurface = interface;
  IPoint3DParamSurfaceDisp = dispinterface;
  IPoint3DParamProjection = interface;
  IPoint3DParamProjectionDisp = dispinterface;
  IText = interface;
  ITextDisp = dispinterface;
  ITextLine = interface;
  ITextLineDisp = dispinterface;
  ITextItem = interface;
  ITextItemDisp = dispinterface;
  IDrawingText = interface;
  IDrawingTextDisp = dispinterface;
  IDrawingTexts = interface;
  IDrawingTextsDisp = dispinterface;
  IDrawingContainer = interface;
  IDrawingContainerDisp = dispinterface;
  ILineSegments = interface;
  ILineSegmentsDisp = dispinterface;
  ILineSegment = interface;
  ILineSegmentDisp = dispinterface;
  IArcs = interface;
  IArcsDisp = dispinterface;
  IArc = interface;
  IArcDisp = dispinterface;
  IMark = interface;
  IMarkDisp = dispinterface;
  IMarks = interface;
  IMarksDisp = dispinterface;
  IMarkInsideForm = interface;
  IMarkInsideFormDisp = dispinterface;
  IMarkOnLine = interface;
  IMarkOnLineDisp = dispinterface;
  IMarkOnLeader = interface;
  IMarkOnLeaderDisp = dispinterface;
  IBuildingAxis = interface;
  IBuildingAxisDisp = dispinterface;
  IMarkNode = interface;
  IMarkNodeDisp = dispinterface;
  IMarkNodes = interface;
  IMarkNodesDisp = dispinterface;
  IBuildingAxes = interface;
  IBuildingAxesDisp = dispinterface;
  IStraightAxis = interface;
  IStraightAxisDisp = dispinterface;
  IAxisJut = interface;
  IAxisJutDisp = dispinterface;
  IArcAxis = interface;
  IArcAxisDisp = dispinterface;
  ICircleAxis = interface;
  ICircleAxisDisp = dispinterface;
  ICutUnitMarking = interface;
  ICutUnitMarkingDisp = dispinterface;
  ICutUnitMarkings = interface;
  ICutUnitMarkingsDisp = dispinterface;
  IUnitMarking = interface;
  IUnitMarkingDisp = dispinterface;
  IUnitMarkings = interface;
  IUnitMarkingsDisp = dispinterface;
  IBuildingContainer = interface;
  IBuildingContainerDisp = dispinterface;
  IMultiTextLeaders = interface;
  IMultiTextLeadersDisp = dispinterface;
  IMultiTextLeader = interface;
  IMultiTextLeaderDisp = dispinterface;
  IUnitNumbers = interface;
  IUnitNumbersDisp = dispinterface;
  IUnitNumber = interface;
  IUnitNumberDisp = dispinterface;
  IBraces = interface;
  IBracesDisp = dispinterface;
  IBrace = interface;
  IBraceDisp = dispinterface;
  ISourcePart7Params = interface;
  ISourcePart7ParamsDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  KompasDocument = IKompasDocument;
  _Application = IApplication;
  Documents = IDocuments;
  DocumentFrame = IDocumentFrame;
  DocumentFrames = IDocumentFrames;
  ProcessParam = IProcessParam;
  PropertyControls = IPropertyControls;
  PropertyTab = IPropertyTab;
  PropertyTabs = IPropertyTabs;
  PropertyEdit = IPropertyEdit;
  PropertySeparator = IPropertySeparator;
  PropertyList = IPropertyList;
  PropertyCheckBox = IPropertyCheckBox;
  PropertyMultiButton = IPropertyMultiButton;
  PropertySlideBox = IPropertySlideBox;
  PropertyUserControl = IPropertyUserControl;
  PropertyGrid = IPropertyGrid;
  PropertyManager = IPropertyManager;
  KompasDocument3D = IKompasDocument3D;
  DrawingDocument = IDrawingDocument;
  FragmentDocument = IFragmentDocument;
  SpecificationDocument = ISpecificationDocument;
  TextDocument = ITextDocument;
  PartDocument = IPartDocument;
  AssemblyDocument = IAssemblyDocument;
  PropertyTextButton = IPropertyTextButton;
  PropertySpinEdit = IPropertySpinEdit;
  ViewsAndLayersManager = IViewsAndLayersManager;
  DrawingObject = IDrawingObject;
  DrawingObjects = IDrawingObjects;
  Views = IViews;
  View = IView;
  AssociationView = IAssociationView;
  LayerGroups = ILayerGroups;
  LayerGroup = ILayerGroup;
  Layers = ILayers;
  Layer = ILayer;
  LayerFilterCondition = ILayerFilterCondition;
  LayerFilterConditions = ILayerFilterConditions;
  DocumentSettings = IDocumentSettings;
  Document2DSettings = IDocument2DSettings;
  DrawingDocumentSettings = IDrawingDocumentSettings;
  FragmentDocumentSettings = IFragmentDocumentSettings;
  LibraryManager = ILibraryManager;
  ProceduresLibrary = IProceduresLibrary;
  Procedures = IProcedures;
  Procedure_ = IProcedure;
  InsertsLibrary = IInsertsLibrary;
  Inserts = IInserts;
  Insert = IInsert;
  InsertsLibraries = IInsertsLibraries;
  ProceduresLibraries = IProceduresLibraries;
  SpecificationDescriptions = ISpecificationDescriptions;
  SpecificationDescription = ISpecificationDescription;
  SpecificationStyle = ISpecificationStyle;
  SpecificationColumnStyles = ISpecificationColumnStyles;
  SpecificationColumnStyle = ISpecificationColumnStyle;
  SpecificationSectionStyles = ISpecificationSectionStyles;
  SpecificationSectionStyle = ISpecificationSectionStyle;
  AdditionalBlockStyles = IAdditionalBlockStyles;
  AdditionalBlockStyle = IAdditionalBlockStyle;
  SheetFormat = ISheetFormat;
  SpecificationTuning = ISpecificationTuning;
  SpecificationTuningSections = ISpecificationTuningSections;
  SpecificationTuningSection = ISpecificationTuningSection;
  SpecificationSubsections = ISpecificationSubsections;
  SpecificationSubsection = ISpecificationSubsection;
  AdditionalBlockTunings = IAdditionalBlockTunings;
  AdditionalBlockTuning = IAdditionalBlockTuning;
  AdditionalBlockSectionTunings = IAdditionalBlockSectionTunings;
  AdditionalBlockSectionTuning = IAdditionalBlockSectionTuning;
  TextFont = ITextFont;
  TextStyle = ITextStyle;
  Tabulators = ITabulators;
  Tabulator = ITabulator;
  KompasError = IKompasError;
  SpecificationBaseObjects = ISpecificationBaseObjects;
  SpecificationCommentObjects = ISpecificationCommentObjects;
  SpecificationObject = ISpecificationObject;
  SpecificationBaseObject = ISpecificationBaseObject;
  SpecificationCommentObject = ISpecificationCommentObject;
  SpecificationColumns = ISpecificationColumns;
  SpecificationColumn = ISpecificationColumn;
  SpecificationColumnItems = ISpecificationColumnItems;
  SpecificationColumnItem = ISpecificationColumnItem;
  AttachedDocuments = IAttachedDocuments;
  AttachedDocument = IAttachedDocument;
  PropertyFileName = IPropertyFileName;
  PropertyColor = IPropertyColor;
  LayoutSheets = ILayoutSheets;
  LayoutSheet = ILayoutSheet;
  Converter = IConverter;
  CheckSum = ICheckSum;
  ModelObject = IModelObject;
  ModelObjects = IModelObjects;
  Parts7 = IParts7;
  Part7 = IPart7;
  Sketchs = ISketchs;
  Extrusions = IExtrusions;
  VariableTable = IVariableTable;
  ProgressBarIndicator = IProgressBarIndicator;
  Text = IText;
  TextLine = ITextLine;
  TextItem = ITextItem;
  DrawingText = IDrawingText;
  DrawingTexts = IDrawingTexts;
  Marks = IMarks;
  MarkInsideForm = IMarkInsideForm;
  MarkOnLine = IMarkOnLine;
  MarkOnLeader = IMarkOnLeader;
  UserDataStoragesMng = IUserDataStoragesMng;
  UserDataStorages = IUserDataStorages;
  UserDataStorage = IUserDataStorage;
  BuildingAxes = IBuildingAxes;
  StraightAxis = IStraightAxis;
  ArcAxis = IArcAxis;
  CircleAxis = ICircleAxis;
  AxisJut = IAxisJut;
  MarkNodes = IMarkNodes;
  MarkNode = IMarkNode;
  LineSegments = ILineSegments;
  LineSegment = ILineSegment;
  SystemSettings = ISystemSettings;
  CutUnitMarking = ICutUnitMarking;
  CutUnitMarkings = ICutUnitMarkings;
  UnitMarking = IUnitMarking;
  UnitMarkings = IUnitMarkings;
  Arcs = IArcs;
  _Arc = IArc;
  MultiTextLeader = IMultiTextLeader;
  MultiTextLeaders = IMultiTextLeaders;
  Brace = IBrace;
  Braces = IBraces;
  UnitNumber = IUnitNumber;
  UnitNumbers = IUnitNumbers;
  Sketch = ISketch;
  Extrusion = IExtrusion;
  ParametriticConstraint = IParametriticConstraint;
  CutExtrusion = ICutExtrusion;
  Body7 = IBody7;
  SheetMetalBodies = ISheetMetalBodies;
  SheetMetalBody = ISheetMetalBody;
  Points3D = IPoints3D;
  Point3D = IPoint3D;
  Point3DParamDisplace = IPoint3DParamDisplace;
  Point3DParamIntersect = IPoint3DParamIntersect;
  Point3DParamCenter = IPoint3DParamCenter;
  Point3DParamCurve = IPoint3DParamCurve;
  Point3DParamSurface = IPoint3DParamSurface;
  Point3DParamProjection = IPoint3DParamProjection;
  SheetMetalBends = ISheetMetalBends;
  SheetMetalBend = ISheetMetalBend;
  SheetMetalLineBends = ISheetMetalLineBends;
  SheetMetalLineBend = ISheetMetalLineBend;
  SheetMetalHole = ISheetMetalHole;
  SheetMetalHoles = ISheetMetalHoles;
  SheetMetalCut = ISheetMetalCut;
  SheetMetalCuts = ISheetMetalCuts;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  PDouble1 = ^Double; {*}
  PInteger1 = ^Integer; {*}
  PWordBool1 = ^WordBool; {*}


// *********************************************************************//
// Interface: IKompasAPIObject
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {5C799A83-C0A4-4312-BEB0-21CBD7FF4C13}
// *********************************************************************//
  IKompasAPIObject = interface(IDispatch)
    ['{5C799A83-C0A4-4312-BEB0-21CBD7FF4C13}']
    function Get_Parent: IKompasAPIObject; safecall;
    function Get_Application: IApplication; safecall;
    function Get_type_: KompasAPIObjectTypeEnum; safecall;
    function Get_Reference: Integer; safecall;
    property Parent: IKompasAPIObject read Get_Parent;
    property Application: IApplication read Get_Application;
    property type_: KompasAPIObjectTypeEnum read Get_type_;
    property Reference: Integer read Get_Reference;
  end;

// *********************************************************************//
// DispIntf:  IKompasAPIObjectDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {5C799A83-C0A4-4312-BEB0-21CBD7FF4C13}
// *********************************************************************//
  IKompasAPIObjectDisp = dispinterface
    ['{5C799A83-C0A4-4312-BEB0-21CBD7FF4C13}']
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IApplication
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {6A2EFAF7-8254-45A5-9DC8-2213F16AF5D7}
// *********************************************************************//
  IApplication = interface(IKompasAPIObject)
    ['{6A2EFAF7-8254-45A5-9DC8-2213F16AF5D7}']
    procedure Set_Visible(PVal: WordBool); safecall;
    function Get_Visible: WordBool; safecall;
    function Get_Documents: IDocuments; safecall;
    procedure Quit; safecall;
    function CreateProcessParam: IProcessParam; safecall;
    procedure StopCurrentProcess(PostMessage: WordBool; const PDoc: IKompasDocument); safecall;
    function CreatePropertyManager(NewManager: WordBool): IPropertyManager; safecall;
    procedure Set_ActiveDocument(const PDoc: IKompasDocument); safecall;
    function Get_ActiveDocument: IKompasDocument; safecall;
    function Get_LibraryManager: ILibraryManager; safecall;
    function Get_KompasError: IKompasError; safecall;
    function Get_Converter(Library_: OleVariant): IConverter; safecall;
    function Get_CheckSum: ICheckSum; safecall;
    function Get_ProgressBarIndicator: IProgressBarIndicator; safecall;
    procedure Set_HideMessage(PVal: ksHideMessageEnum); safecall;
    function Get_HideMessage: ksHideMessageEnum; safecall;
    function ExecuteKompasCommand(CommandID: Integer; PostMessage: WordBool): WordBool; safecall;
    function IsKompasCommandEnable(CommandID: Integer): WordBool; safecall;
    function IsKompasCommandCheck(CommandID: Integer): Integer; safecall;
    function Get_SystemSettings: ISystemSettings; safecall;
    function Get_ApplicationName(FullName: WordBool): WideString; safecall;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property Documents: IDocuments read Get_Documents;
    property ActiveDocument: IKompasDocument read Get_ActiveDocument write Set_ActiveDocument;
    property LibraryManager: ILibraryManager read Get_LibraryManager;
    property KompasError: IKompasError read Get_KompasError;
    property Converter[Library_: OleVariant]: IConverter read Get_Converter;
    property CheckSum: ICheckSum read Get_CheckSum;
    property ProgressBarIndicator: IProgressBarIndicator read Get_ProgressBarIndicator;
    property HideMessage: ksHideMessageEnum read Get_HideMessage write Set_HideMessage;
    property SystemSettings: ISystemSettings read Get_SystemSettings;
    property ApplicationName[FullName: WordBool]: WideString read Get_ApplicationName;
  end;

// *********************************************************************//
// DispIntf:  IApplicationDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {6A2EFAF7-8254-45A5-9DC8-2213F16AF5D7}
// *********************************************************************//
  IApplicationDisp = dispinterface
    ['{6A2EFAF7-8254-45A5-9DC8-2213F16AF5D7}']
    property Visible: WordBool dispid 1;
    property Documents: IDocuments readonly dispid 2;
    procedure Quit; dispid 3;
    function CreateProcessParam: IProcessParam; dispid 4;
    procedure StopCurrentProcess(PostMessage: WordBool; const PDoc: IKompasDocument); dispid 5;
    function CreatePropertyManager(NewManager: WordBool): IPropertyManager; dispid 6;
    property ActiveDocument: IKompasDocument dispid 7;
    property LibraryManager: ILibraryManager readonly dispid 8;
    property KompasError: IKompasError readonly dispid 9;
    property Converter[Library_: OleVariant]: IConverter readonly dispid 10;
    property CheckSum: ICheckSum readonly dispid 11;
    property ProgressBarIndicator: IProgressBarIndicator readonly dispid 12;
    property HideMessage: ksHideMessageEnum dispid 13;
    function ExecuteKompasCommand(CommandID: Integer; PostMessage: WordBool): WordBool; dispid 14;
    function IsKompasCommandEnable(CommandID: Integer): WordBool; dispid 15;
    function IsKompasCommandCheck(CommandID: Integer): Integer; dispid 16;
    property SystemSettings: ISystemSettings readonly dispid 17;
    property ApplicationName[FullName: WordBool]: WideString readonly dispid 18;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IKompasCollection
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {901F85DE-FA5A-4314-BD75-066A79AF20A8}
// *********************************************************************//
  IKompasCollection = interface(IKompasAPIObject)
    ['{901F85DE-FA5A-4314-BD75-066A79AF20A8}']
    function Get__NewEnum: IUnknown; safecall;
    function Get_Count: Integer; safecall;
    property _NewEnum: IUnknown read Get__NewEnum;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IKompasCollectionDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {901F85DE-FA5A-4314-BD75-066A79AF20A8}
// *********************************************************************//
  IKompasCollectionDisp = dispinterface
    ['{901F85DE-FA5A-4314-BD75-066A79AF20A8}']
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IDocuments
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {8BF39F08-5537-4910-84CE-B338E55F7BCF}
// *********************************************************************//
  IDocuments = interface(IKompasCollection)
    ['{8BF39F08-5537-4910-84CE-B338E55F7BCF}']
    function Get_Item(Index: OleVariant): IKompasDocument; safecall;
    function Add(Type_: DocumentTypeEnum; Visible: WordBool): IKompasDocument; safecall;
    function Open(const PathName: WideString; Visible: WordBool; ReadOnly: WordBool): IKompasDocument; safecall;
    property Item[Index: OleVariant]: IKompasDocument read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  IDocumentsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {8BF39F08-5537-4910-84CE-B338E55F7BCF}
// *********************************************************************//
  IDocumentsDisp = dispinterface
    ['{8BF39F08-5537-4910-84CE-B338E55F7BCF}']
    property Item[Index: OleVariant]: IKompasDocument readonly dispid 0; default;
    function Add(Type_: DocumentTypeEnum; Visible: WordBool): IKompasDocument; dispid 1;
    function Open(const PathName: WideString; Visible: WordBool; ReadOnly: WordBool): IKompasDocument; dispid 2;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IKompasDocument
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {5C6E318D-BD6E-4AFA-8A13-977EAA0845EF}
// *********************************************************************//
  IKompasDocument = interface(IKompasAPIObject)
    ['{5C6E318D-BD6E-4AFA-8A13-977EAA0845EF}']
    function Get_DocumentType: DocumentTypeEnum; safecall;
    function Get_DocumentFrames: IDocumentFrames; safecall;
    function Close(closeOptions: DocumentCloseOptions): WordBool; safecall;
    procedure Save; safecall;
    procedure SaveAs(const PathName: WideString); safecall;
    function Get_Name: WideString; safecall;
    function Get_PathName: WideString; safecall;
    function Get_Path: WideString; safecall;
    function Get_Visible: WordBool; safecall;
    function Get_Active: WordBool; safecall;
    procedure Set_Active(PVal: WordBool); safecall;
    function Get_ReadOnly: WordBool; safecall;
    procedure Set_ReadOnly(PVal: WordBool); safecall;
    function Get_Changed: WordBool; safecall;
    function Get_DocumentSettings: IDocumentSettings; safecall;
    function Get_SpecificationDescriptions: ISpecificationDescriptions; safecall;
    function Get_LayoutSheets: ILayoutSheets; safecall;
    function Get_UserDataStoragesMng: IUserDataStoragesMng; safecall;
    property DocumentType: DocumentTypeEnum read Get_DocumentType;
    property DocumentFrames: IDocumentFrames read Get_DocumentFrames;
    property Name: WideString read Get_Name;
    property PathName: WideString read Get_PathName;
    property Path: WideString read Get_Path;
    property Visible: WordBool read Get_Visible;
    property Active: WordBool read Get_Active write Set_Active;
    property ReadOnly: WordBool read Get_ReadOnly write Set_ReadOnly;
    property Changed: WordBool read Get_Changed;
    property DocumentSettings: IDocumentSettings read Get_DocumentSettings;
    property SpecificationDescriptions: ISpecificationDescriptions read Get_SpecificationDescriptions;
    property LayoutSheets: ILayoutSheets read Get_LayoutSheets;
    property UserDataStoragesMng: IUserDataStoragesMng read Get_UserDataStoragesMng;
  end;

// *********************************************************************//
// DispIntf:  IKompasDocumentDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {5C6E318D-BD6E-4AFA-8A13-977EAA0845EF}
// *********************************************************************//
  IKompasDocumentDisp = dispinterface
    ['{5C6E318D-BD6E-4AFA-8A13-977EAA0845EF}']
    property DocumentType: DocumentTypeEnum readonly dispid 3000;
    property DocumentFrames: IDocumentFrames readonly dispid 3001;
    function Close(closeOptions: DocumentCloseOptions): WordBool; dispid 3002;
    procedure Save; dispid 3003;
    procedure SaveAs(const PathName: WideString); dispid 3004;
    property Name: WideString readonly dispid 3005;
    property PathName: WideString readonly dispid 3006;
    property Path: WideString readonly dispid 3007;
    property Visible: WordBool readonly dispid 3008;
    property Active: WordBool dispid 3009;
    property ReadOnly: WordBool dispid 3010;
    property Changed: WordBool readonly dispid 3011;
    property DocumentSettings: IDocumentSettings readonly dispid 3012;
    property SpecificationDescriptions: ISpecificationDescriptions readonly dispid 3013;
    property LayoutSheets: ILayoutSheets readonly dispid 3014;
    property UserDataStoragesMng: IUserDataStoragesMng readonly dispid 3015;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IDocumentFrames
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {1D18C466-C085-4D68-A465-A85D0C8E3A0E}
// *********************************************************************//
  IDocumentFrames = interface(IKompasCollection)
    ['{1D18C466-C085-4D68-A465-A85D0C8E3A0E}']
    function Get_Item(Index: OleVariant): IDocumentFrame; safecall;
    property Item[Index: OleVariant]: IDocumentFrame read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  IDocumentFramesDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {1D18C466-C085-4D68-A465-A85D0C8E3A0E}
// *********************************************************************//
  IDocumentFramesDisp = dispinterface
    ['{1D18C466-C085-4D68-A465-A85D0C8E3A0E}']
    property Item[Index: OleVariant]: IDocumentFrame readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IDocumentFrame
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {4437FABA-990F-45E2-B1A2-7754FB326B76}
// *********************************************************************//
  IDocumentFrame = interface(IKompasAPIObject)
    ['{4437FABA-990F-45E2-B1A2-7754FB326B76}']
    procedure Set_Regime(PVal: FrameRegimeEnum); safecall;
    function Get_Regime: FrameRegimeEnum; safecall;
    procedure Set_Active(PVal: WordBool); safecall;
    function Get_Active: WordBool; safecall;
    function Get_Caption: WideString; safecall;
    procedure Zoom(X1: Double; Y1: Double; X2: Double; Y2: Double); safecall;
    procedure ZoomPrevNextOrAll(Type_: ZoomTypeEnum); safecall;
    procedure ZoomScale(X: Double; Y: Double; Scale: Double); safecall;
    procedure GetZoomScale(out X: Double; out Y: Double; out Scale: Double); safecall;
    function GetHWND: OLE_HANDLE; safecall;
    procedure SetGabaritModifying; safecall;
    procedure RefreshWindow; safecall;
    function ConvertCoordinates(Type_: ConvertCoordTypeEnum; LX: Integer; LY: Integer; 
                                out X: Double; out Y: Double; out Z: Double): WordBool; safecall;
    function ExecuteKompasCommand(CommandID: Integer; PostMessage: WordBool): WordBool; safecall;
    function IsKompasCommandEnable(CommandID: Integer): WordBool; safecall;
    function IsKompasCommandCheck(CommandID: Integer): Integer; safecall;
    property Regime: FrameRegimeEnum read Get_Regime write Set_Regime;
    property Active: WordBool read Get_Active write Set_Active;
    property Caption: WideString read Get_Caption;
  end;

// *********************************************************************//
// DispIntf:  IDocumentFrameDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {4437FABA-990F-45E2-B1A2-7754FB326B76}
// *********************************************************************//
  IDocumentFrameDisp = dispinterface
    ['{4437FABA-990F-45E2-B1A2-7754FB326B76}']
    property Regime: FrameRegimeEnum dispid 1;
    property Active: WordBool dispid 2;
    property Caption: WideString readonly dispid 3;
    procedure Zoom(X1: Double; Y1: Double; X2: Double; Y2: Double); dispid 4;
    procedure ZoomPrevNextOrAll(Type_: ZoomTypeEnum); dispid 5;
    procedure ZoomScale(X: Double; Y: Double; Scale: Double); dispid 6;
    procedure GetZoomScale(out X: Double; out Y: Double; out Scale: Double); dispid 7;
    function GetHWND: OLE_HANDLE; dispid 8;
    procedure SetGabaritModifying; dispid 9;
    procedure RefreshWindow; dispid 10;
    function ConvertCoordinates(Type_: ConvertCoordTypeEnum; LX: Integer; LY: Integer; 
                                out X: Double; out Y: Double; out Z: Double): WordBool; dispid 11;
    function ExecuteKompasCommand(CommandID: Integer; PostMessage: WordBool): WordBool; dispid 12;
    function IsKompasCommandEnable(CommandID: Integer): WordBool; dispid 13;
    function IsKompasCommandCheck(CommandID: Integer): Integer; dispid 14;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IDocumentSettings
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {B35FF50E-2991-4630-8AB8-DC3153E7971A}
// *********************************************************************//
  IDocumentSettings = interface(IKompasAPIObject)
    ['{B35FF50E-2991-4630-8AB8-DC3153E7971A}']
  end;

// *********************************************************************//
// DispIntf:  IDocumentSettingsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {B35FF50E-2991-4630-8AB8-DC3153E7971A}
// *********************************************************************//
  IDocumentSettingsDisp = dispinterface
    ['{B35FF50E-2991-4630-8AB8-DC3153E7971A}']
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ISpecificationDescriptions
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {B9632C5C-86E1-4BC9-83A5-A954E407246A}
// *********************************************************************//
  ISpecificationDescriptions = interface(IKompasCollection)
    ['{B9632C5C-86E1-4BC9-83A5-A954E407246A}']
    function Get_Item(Index: OleVariant): ISpecificationDescription; safecall;
    function Add(const LayoutName: WideString; StyleID: Integer; const SpcName: WideString): ISpecificationDescription; safecall;
    function Get_Description(const LayoutName: WideString; StyleID: Integer): ISpecificationDescription; safecall;
    function Get_Active: ISpecificationDescription; safecall;
    property Item[Index: OleVariant]: ISpecificationDescription read Get_Item; default;
    property Description[const LayoutName: WideString; StyleID: Integer]: ISpecificationDescription read Get_Description;
    property Active: ISpecificationDescription read Get_Active;
  end;

// *********************************************************************//
// DispIntf:  ISpecificationDescriptionsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {B9632C5C-86E1-4BC9-83A5-A954E407246A}
// *********************************************************************//
  ISpecificationDescriptionsDisp = dispinterface
    ['{B9632C5C-86E1-4BC9-83A5-A954E407246A}']
    property Item[Index: OleVariant]: ISpecificationDescription readonly dispid 0; default;
    function Add(const LayoutName: WideString; StyleID: Integer; const SpcName: WideString): ISpecificationDescription; dispid 1;
    property Description[const LayoutName: WideString; StyleID: Integer]: ISpecificationDescription readonly dispid 2;
    property Active: ISpecificationDescription readonly dispid 3;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ISpecificationDescription
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9678959E-166B-45F3-BDE8-88BBF4645F5C}
// *********************************************************************//
  ISpecificationDescription = interface(IKompasAPIObject)
    ['{9678959E-166B-45F3-BDE8-88BBF4645F5C}']
    function Get_LayoutName: WideString; safecall;
    procedure Set_LayoutName(const PVal: WideString); safecall;
    function Get_StyleID: Integer; safecall;
    procedure Set_StyleID(PVal: Integer); safecall;
    function Get_SpecificationDocumentName: WideString; safecall;
    procedure Set_SpecificationDocumentName(const PVal: WideString); safecall;
    function Get_Active: WordBool; safecall;
    procedure Set_Active(PVal: WordBool); safecall;
    function Update: WordBool; safecall;
    function Delete: WordBool; safecall;
    function Get_SpecificationStyle: ISpecificationStyle; safecall;
    function Get_SpecificationTuning: ISpecificationTuning; safecall;
    function Get_Objects: OleVariant; safecall;
    function Get_BaseObjects: ISpecificationBaseObjects; safecall;
    function Get_CommentObjects: ISpecificationCommentObjects; safecall;
    function Get_ShowOnSheet: WordBool; safecall;
    procedure Set_ShowOnSheet(PVal: WordBool); safecall;
    function Get_CurrentObject: ISpecificationObject; safecall;
    procedure Set_CurrentObject(const Result: ISpecificationObject); safecall;
    function Get_ShowAllObjects: WordBool; safecall;
    procedure Set_ShowAllObjects(PVal: WordBool); safecall;
    property LayoutName: WideString read Get_LayoutName write Set_LayoutName;
    property StyleID: Integer read Get_StyleID write Set_StyleID;
    property SpecificationDocumentName: WideString read Get_SpecificationDocumentName write Set_SpecificationDocumentName;
    property Active: WordBool read Get_Active write Set_Active;
    property SpecificationStyle: ISpecificationStyle read Get_SpecificationStyle;
    property SpecificationTuning: ISpecificationTuning read Get_SpecificationTuning;
    property Objects: OleVariant read Get_Objects;
    property BaseObjects: ISpecificationBaseObjects read Get_BaseObjects;
    property CommentObjects: ISpecificationCommentObjects read Get_CommentObjects;
    property ShowOnSheet: WordBool read Get_ShowOnSheet write Set_ShowOnSheet;
    property CurrentObject: ISpecificationObject read Get_CurrentObject write Set_CurrentObject;
    property ShowAllObjects: WordBool read Get_ShowAllObjects write Set_ShowAllObjects;
  end;

// *********************************************************************//
// DispIntf:  ISpecificationDescriptionDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9678959E-166B-45F3-BDE8-88BBF4645F5C}
// *********************************************************************//
  ISpecificationDescriptionDisp = dispinterface
    ['{9678959E-166B-45F3-BDE8-88BBF4645F5C}']
    property LayoutName: WideString dispid 1;
    property StyleID: Integer dispid 2;
    property SpecificationDocumentName: WideString dispid 3;
    property Active: WordBool dispid 4;
    function Update: WordBool; dispid 5;
    function Delete: WordBool; dispid 6;
    property SpecificationStyle: ISpecificationStyle readonly dispid 7;
    property SpecificationTuning: ISpecificationTuning readonly dispid 8;
    property Objects: OleVariant readonly dispid 9;
    property BaseObjects: ISpecificationBaseObjects readonly dispid 10;
    property CommentObjects: ISpecificationCommentObjects readonly dispid 11;
    property ShowOnSheet: WordBool dispid 12;
    property CurrentObject: ISpecificationObject dispid 13;
    property ShowAllObjects: WordBool dispid 14;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ISpecificationStyle
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F237D2B3-DFEE-4702-B71F-E5F6923F03E6}
// *********************************************************************//
  ISpecificationStyle = interface(IKompasAPIObject)
    ['{F237D2B3-DFEE-4702-B71F-E5F6923F03E6}']
    function Get_LayoutName1: WideString; safecall;
    function Get_StyleID1: Integer; safecall;
    function Get_LayoutName2: WideString; safecall;
    function Get_StyleID2: Integer; safecall;
    function Get_Variant: ksSpecificationVariantEnum; safecall;
    function Get_SectionOn: WordBool; safecall;
    function Get_SpecificationTuning: ISpecificationTuning; safecall;
    function Get_Format: ISheetFormat; safecall;
    function Get_Columns: ISpecificationColumnStyles; safecall;
    function Get_AdditionalColumns: ISpecificationColumnStyles; safecall;
    function Get_Sections: ISpecificationSectionStyles; safecall;
    function Get_AdditionalBlocks: IAdditionalBlockStyles; safecall;
    function Get_SortSectionDown: WordBool; safecall;
    property LayoutName1: WideString read Get_LayoutName1;
    property StyleID1: Integer read Get_StyleID1;
    property LayoutName2: WideString read Get_LayoutName2;
    property StyleID2: Integer read Get_StyleID2;
    property Variant: ksSpecificationVariantEnum read Get_Variant;
    property SectionOn: WordBool read Get_SectionOn;
    property SpecificationTuning: ISpecificationTuning read Get_SpecificationTuning;
    property Format: ISheetFormat read Get_Format;
    property Columns: ISpecificationColumnStyles read Get_Columns;
    property AdditionalColumns: ISpecificationColumnStyles read Get_AdditionalColumns;
    property Sections: ISpecificationSectionStyles read Get_Sections;
    property AdditionalBlocks: IAdditionalBlockStyles read Get_AdditionalBlocks;
    property SortSectionDown: WordBool read Get_SortSectionDown;
  end;

// *********************************************************************//
// DispIntf:  ISpecificationStyleDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F237D2B3-DFEE-4702-B71F-E5F6923F03E6}
// *********************************************************************//
  ISpecificationStyleDisp = dispinterface
    ['{F237D2B3-DFEE-4702-B71F-E5F6923F03E6}']
    property LayoutName1: WideString readonly dispid 1;
    property StyleID1: Integer readonly dispid 2;
    property LayoutName2: WideString readonly dispid 3;
    property StyleID2: Integer readonly dispid 4;
    property Variant: ksSpecificationVariantEnum readonly dispid 5;
    property SectionOn: WordBool readonly dispid 6;
    property SpecificationTuning: ISpecificationTuning readonly dispid 7;
    property Format: ISheetFormat readonly dispid 8;
    property Columns: ISpecificationColumnStyles readonly dispid 9;
    property AdditionalColumns: ISpecificationColumnStyles readonly dispid 10;
    property Sections: ISpecificationSectionStyles readonly dispid 11;
    property AdditionalBlocks: IAdditionalBlockStyles readonly dispid 12;
    property SortSectionDown: WordBool readonly dispid 13;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ISpecificationTuning
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {BB719D42-E44C-445B-969A-0E2F63E97FC8}
// *********************************************************************//
  ISpecificationTuning = interface(IKompasAPIObject)
    ['{BB719D42-E44C-445B-969A-0E2F63E97FC8}']
    function Get_LinkType: ksSpecificationLinkTypeEnum; safecall;
    procedure Set_LinkType(PVal: ksSpecificationLinkTypeEnum); safecall;
    function Get_CalculateZone: WordBool; safecall;
    procedure Set_CalculateZone(PVal: WordBool); safecall;
    function Get_CalculatePosition: WordBool; safecall;
    procedure Set_CalculatePosition(PVal: WordBool); safecall;
    function Get_ShowSectionName: WordBool; safecall;
    procedure Set_ShowSectionName(PVal: WordBool); safecall;
    function Get_DeleteGeometry: WordBool; safecall;
    procedure Set_DeleteGeometry(PVal: WordBool); safecall;
    function Get_DisableEmptyString: WordBool; safecall;
    procedure Set_DisableEmptyString(PVal: WordBool); safecall;
    function Get_DisableEmptyBlockString: WordBool; safecall;
    procedure Set_DisableEmptyBlockString(PVal: WordBool); safecall;
    function Get_InsertNull: WordBool; safecall;
    procedure Set_InsertNull(PVal: WordBool); safecall;
    function Get_InsertDash: WordBool; safecall;
    procedure Set_InsertDash(PVal: WordBool); safecall;
    function Get_ShowInfoByObjects: WordBool; safecall;
    procedure Set_ShowInfoByObjects(PVal: WordBool); safecall;
    function Get_SupportPerformance: WordBool; safecall;
    procedure Set_SupportPerformance(PVal: WordBool); safecall;
    function Get_ShowPerformanceFull: WordBool; safecall;
    procedure Set_ShowPerformanceFull(PVal: WordBool); safecall;
    function Get_BlockOnNewPage: WordBool; safecall;
    procedure Set_BlockOnNewPage(PVal: WordBool); safecall;
    function Get_PositionUp: WordBool; safecall;
    procedure Set_PositionUp(PVal: WordBool); safecall;
    function Get_DrawBottomUp: WordBool; safecall;
    procedure Set_DrawBottomUp(PVal: WordBool); safecall;
    function Get_UserTextStyle: WordBool; safecall;
    procedure Set_UserTextStyle(PVal: WordBool); safecall;
    function Get_PerformanceCount: Integer; safecall;
    procedure Set_PerformanceCount(PVal: Integer); safecall;
    function Get_BlockCount: Integer; safecall;
    function Get_InitialPosition: Integer; safecall;
    procedure Set_InitialPosition(PVal: Integer); safecall;
    function Get_PredefinedTextFileName: WideString; safecall;
    procedure Set_PredefinedTextFileName(const PVal: WideString); safecall;
    function Get_SectionTextStyleFirst: ITextStyle; safecall;
    function Get_SectionTextStyleNext: ITextStyle; safecall;
    function Get_ObjectTextStyle: ITextStyle; safecall;
    function Get_Sections: ISpecificationTuningSections; safecall;
    function Get_UseAdditionalBlocks: WordBool; safecall;
    procedure Set_UseAdditionalBlocks(PVal: WordBool); safecall;
    function Get_AdditionalBlocks: IAdditionalBlockTunings; safecall;
    function Get_ShowAdditionalBlockName: WordBool; safecall;
    procedure Set_ShowAdditionalBlockName(PVal: WordBool); safecall;
    function Get_ShowNestingBlockName: WordBool; safecall;
    procedure Set_ShowNestingBlockName(PVal: WordBool); safecall;
    function Get_ShowPerformanceBlockName: WordBool; safecall;
    procedure Set_ShowPerformanceBlockName(PVal: WordBool); safecall;
    function Get_PerformanceBlockTextStyleFirst: ITextStyle; safecall;
    function Get_PerformanceBlockTextStyleNext: ITextStyle; safecall;
    function Get_AdditionalBlockTextStyleFirst: ITextStyle; safecall;
    function Get_AdditionalBlockTextStyleNext: ITextStyle; safecall;
    function Get_NestingBlockTextStyleFirst: ITextStyle; safecall;
    function Get_NestingBlockTextStyleNext: ITextStyle; safecall;
    function Get_DisableNestingBlockEmptyStrings: WordBool; safecall;
    procedure Set_DisableNestingBlockEmptyStrings(PVal: WordBool); safecall;
    function Get_DisableAdditionalBlockEmptyStrings: WordBool; safecall;
    procedure Set_DisableAdditionalBlockEmptyStrings(PVal: WordBool); safecall;
    function Update: WordBool; safecall;
    function Get_DeleteSpcObjectOnDeleteGeometry: WordBool; safecall;
    procedure Set_DeleteSpcObjectOnDeleteGeometry(PVal: WordBool); safecall;
    function Get_CopySpcObjectOnCopyGeometry: WordBool; safecall;
    procedure Set_CopySpcObjectOnCopyGeometry(PVal: WordBool); safecall;
    property LinkType: ksSpecificationLinkTypeEnum read Get_LinkType write Set_LinkType;
    property CalculateZone: WordBool read Get_CalculateZone write Set_CalculateZone;
    property CalculatePosition: WordBool read Get_CalculatePosition write Set_CalculatePosition;
    property ShowSectionName: WordBool read Get_ShowSectionName write Set_ShowSectionName;
    property DeleteGeometry: WordBool read Get_DeleteGeometry write Set_DeleteGeometry;
    property DisableEmptyString: WordBool read Get_DisableEmptyString write Set_DisableEmptyString;
    property DisableEmptyBlockString: WordBool read Get_DisableEmptyBlockString write Set_DisableEmptyBlockString;
    property InsertNull: WordBool read Get_InsertNull write Set_InsertNull;
    property InsertDash: WordBool read Get_InsertDash write Set_InsertDash;
    property ShowInfoByObjects: WordBool read Get_ShowInfoByObjects write Set_ShowInfoByObjects;
    property SupportPerformance: WordBool read Get_SupportPerformance write Set_SupportPerformance;
    property ShowPerformanceFull: WordBool read Get_ShowPerformanceFull write Set_ShowPerformanceFull;
    property BlockOnNewPage: WordBool read Get_BlockOnNewPage write Set_BlockOnNewPage;
    property PositionUp: WordBool read Get_PositionUp write Set_PositionUp;
    property DrawBottomUp: WordBool read Get_DrawBottomUp write Set_DrawBottomUp;
    property UserTextStyle: WordBool read Get_UserTextStyle write Set_UserTextStyle;
    property PerformanceCount: Integer read Get_PerformanceCount write Set_PerformanceCount;
    property BlockCount: Integer read Get_BlockCount;
    property InitialPosition: Integer read Get_InitialPosition write Set_InitialPosition;
    property PredefinedTextFileName: WideString read Get_PredefinedTextFileName write Set_PredefinedTextFileName;
    property SectionTextStyleFirst: ITextStyle read Get_SectionTextStyleFirst;
    property SectionTextStyleNext: ITextStyle read Get_SectionTextStyleNext;
    property ObjectTextStyle: ITextStyle read Get_ObjectTextStyle;
    property Sections: ISpecificationTuningSections read Get_Sections;
    property UseAdditionalBlocks: WordBool read Get_UseAdditionalBlocks write Set_UseAdditionalBlocks;
    property AdditionalBlocks: IAdditionalBlockTunings read Get_AdditionalBlocks;
    property ShowAdditionalBlockName: WordBool read Get_ShowAdditionalBlockName write Set_ShowAdditionalBlockName;
    property ShowNestingBlockName: WordBool read Get_ShowNestingBlockName write Set_ShowNestingBlockName;
    property ShowPerformanceBlockName: WordBool read Get_ShowPerformanceBlockName write Set_ShowPerformanceBlockName;
    property PerformanceBlockTextStyleFirst: ITextStyle read Get_PerformanceBlockTextStyleFirst;
    property PerformanceBlockTextStyleNext: ITextStyle read Get_PerformanceBlockTextStyleNext;
    property AdditionalBlockTextStyleFirst: ITextStyle read Get_AdditionalBlockTextStyleFirst;
    property AdditionalBlockTextStyleNext: ITextStyle read Get_AdditionalBlockTextStyleNext;
    property NestingBlockTextStyleFirst: ITextStyle read Get_NestingBlockTextStyleFirst;
    property NestingBlockTextStyleNext: ITextStyle read Get_NestingBlockTextStyleNext;
    property DisableNestingBlockEmptyStrings: WordBool read Get_DisableNestingBlockEmptyStrings write Set_DisableNestingBlockEmptyStrings;
    property DisableAdditionalBlockEmptyStrings: WordBool read Get_DisableAdditionalBlockEmptyStrings write Set_DisableAdditionalBlockEmptyStrings;
    property DeleteSpcObjectOnDeleteGeometry: WordBool read Get_DeleteSpcObjectOnDeleteGeometry write Set_DeleteSpcObjectOnDeleteGeometry;
    property CopySpcObjectOnCopyGeometry: WordBool read Get_CopySpcObjectOnCopyGeometry write Set_CopySpcObjectOnCopyGeometry;
  end;

// *********************************************************************//
// DispIntf:  ISpecificationTuningDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {BB719D42-E44C-445B-969A-0E2F63E97FC8}
// *********************************************************************//
  ISpecificationTuningDisp = dispinterface
    ['{BB719D42-E44C-445B-969A-0E2F63E97FC8}']
    property LinkType: ksSpecificationLinkTypeEnum dispid 1;
    property CalculateZone: WordBool dispid 2;
    property CalculatePosition: WordBool dispid 3;
    property ShowSectionName: WordBool dispid 4;
    property DeleteGeometry: WordBool dispid 5;
    property DisableEmptyString: WordBool dispid 6;
    property DisableEmptyBlockString: WordBool dispid 7;
    property InsertNull: WordBool dispid 8;
    property InsertDash: WordBool dispid 9;
    property ShowInfoByObjects: WordBool dispid 10;
    property SupportPerformance: WordBool dispid 11;
    property ShowPerformanceFull: WordBool dispid 12;
    property BlockOnNewPage: WordBool dispid 13;
    property PositionUp: WordBool dispid 14;
    property DrawBottomUp: WordBool dispid 15;
    property UserTextStyle: WordBool dispid 16;
    property PerformanceCount: Integer dispid 17;
    property BlockCount: Integer readonly dispid 18;
    property InitialPosition: Integer dispid 19;
    property PredefinedTextFileName: WideString dispid 20;
    property SectionTextStyleFirst: ITextStyle readonly dispid 21;
    property SectionTextStyleNext: ITextStyle readonly dispid 22;
    property ObjectTextStyle: ITextStyle readonly dispid 23;
    property Sections: ISpecificationTuningSections readonly dispid 24;
    property UseAdditionalBlocks: WordBool dispid 25;
    property AdditionalBlocks: IAdditionalBlockTunings readonly dispid 26;
    property ShowAdditionalBlockName: WordBool dispid 27;
    property ShowNestingBlockName: WordBool dispid 28;
    property ShowPerformanceBlockName: WordBool dispid 29;
    property PerformanceBlockTextStyleFirst: ITextStyle readonly dispid 30;
    property PerformanceBlockTextStyleNext: ITextStyle readonly dispid 31;
    property AdditionalBlockTextStyleFirst: ITextStyle readonly dispid 32;
    property AdditionalBlockTextStyleNext: ITextStyle readonly dispid 33;
    property NestingBlockTextStyleFirst: ITextStyle readonly dispid 34;
    property NestingBlockTextStyleNext: ITextStyle readonly dispid 35;
    property DisableNestingBlockEmptyStrings: WordBool dispid 36;
    property DisableAdditionalBlockEmptyStrings: WordBool dispid 37;
    function Update: WordBool; dispid 38;
    property DeleteSpcObjectOnDeleteGeometry: WordBool dispid 39;
    property CopySpcObjectOnCopyGeometry: WordBool dispid 40;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ITextStyle
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {7EA65CA0-420D-4E1D-8C19-998495C4DA2F}
// *********************************************************************//
  ITextStyle = interface(IKompasAPIObject)
    ['{7EA65CA0-420D-4E1D-8C19-998495C4DA2F}']
    function Get_Name: WideString; safecall;
    procedure Set_Name(const PVal: WideString); safecall;
    function Get_Number: Integer; safecall;
    procedure Set_Number(PVal: Integer); safecall;
    function Get_Step: Double; safecall;
    procedure Set_Step(PVal: Double); safecall;
    function Get_Align: ksAlignEnum; safecall;
    procedure Set_Align(PVal: ksAlignEnum); safecall;
    function Get_IndentedLine: Double; safecall;
    procedure Set_IndentedLine(PVal: Double); safecall;
    function Get_StepBeforeParagraph: Double; safecall;
    procedure Set_StepBeforeParagraph(PVal: Double); safecall;
    function Get_StepAfterParagraph: Double; safecall;
    procedure Set_StepAfterParagraph(PVal: Double); safecall;
    function Get_LeftEdge: Double; safecall;
    procedure Set_LeftEdge(PVal: Double); safecall;
    function Get_RightEdge: Double; safecall;
    procedure Set_RightEdge(PVal: Double); safecall;
    function Get_Extended: WordBool; safecall;
    procedure Set_Extended(PVal: WordBool); safecall;
    function Get_LinesCount: Integer; safecall;
    procedure Set_LinesCount(PVal: Integer); safecall;
    function Get_EnableLine1: WordBool; safecall;
    procedure Set_EnableLine1(PVal: WordBool); safecall;
    function Get_Height1: Double; safecall;
    procedure Set_Height1(PVal: Double); safecall;
    function Get_WidthFactor1: Double; safecall;
    procedure Set_WidthFactor1(PVal: Double); safecall;
    function Get_Step1: Double; safecall;
    procedure Set_Step1(PVal: Double); safecall;
    function Get_EnableLine2: WordBool; safecall;
    procedure Set_EnableLine2(PVal: WordBool); safecall;
    function Get_Height2: Double; safecall;
    procedure Set_Height2(PVal: Double); safecall;
    function Get_WidthFactor2: Double; safecall;
    procedure Set_WidthFactor2(PVal: Double); safecall;
    function Get_Step2: Double; safecall;
    procedure Set_Step2(PVal: Double); safecall;
    function Get_EnableLine3: WordBool; safecall;
    procedure Set_EnableLine3(PVal: WordBool); safecall;
    function Get_Height3: Double; safecall;
    procedure Set_Height3(PVal: Double); safecall;
    function Get_WidthFactor3: Double; safecall;
    procedure Set_WidthFactor3(PVal: Double); safecall;
    function Get_Step3: Double; safecall;
    procedure Set_Step3(PVal: Double); safecall;
    function Get_Font: ITextFont; safecall;
    function Get_Tabulators: ITabulators; safecall;
    property Name: WideString read Get_Name write Set_Name;
    property Number: Integer read Get_Number write Set_Number;
    property Step: Double read Get_Step write Set_Step;
    property Align: ksAlignEnum read Get_Align write Set_Align;
    property IndentedLine: Double read Get_IndentedLine write Set_IndentedLine;
    property StepBeforeParagraph: Double read Get_StepBeforeParagraph write Set_StepBeforeParagraph;
    property StepAfterParagraph: Double read Get_StepAfterParagraph write Set_StepAfterParagraph;
    property LeftEdge: Double read Get_LeftEdge write Set_LeftEdge;
    property RightEdge: Double read Get_RightEdge write Set_RightEdge;
    property Extended: WordBool read Get_Extended write Set_Extended;
    property LinesCount: Integer read Get_LinesCount write Set_LinesCount;
    property EnableLine1: WordBool read Get_EnableLine1 write Set_EnableLine1;
    property Height1: Double read Get_Height1 write Set_Height1;
    property WidthFactor1: Double read Get_WidthFactor1 write Set_WidthFactor1;
    property Step1: Double read Get_Step1 write Set_Step1;
    property EnableLine2: WordBool read Get_EnableLine2 write Set_EnableLine2;
    property Height2: Double read Get_Height2 write Set_Height2;
    property WidthFactor2: Double read Get_WidthFactor2 write Set_WidthFactor2;
    property Step2: Double read Get_Step2 write Set_Step2;
    property EnableLine3: WordBool read Get_EnableLine3 write Set_EnableLine3;
    property Height3: Double read Get_Height3 write Set_Height3;
    property WidthFactor3: Double read Get_WidthFactor3 write Set_WidthFactor3;
    property Step3: Double read Get_Step3 write Set_Step3;
    property Font: ITextFont read Get_Font;
    property Tabulators: ITabulators read Get_Tabulators;
  end;

// *********************************************************************//
// DispIntf:  ITextStyleDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {7EA65CA0-420D-4E1D-8C19-998495C4DA2F}
// *********************************************************************//
  ITextStyleDisp = dispinterface
    ['{7EA65CA0-420D-4E1D-8C19-998495C4DA2F}']
    property Name: WideString dispid 1;
    property Number: Integer dispid 2;
    property Step: Double dispid 3;
    property Align: ksAlignEnum dispid 4;
    property IndentedLine: Double dispid 5;
    property StepBeforeParagraph: Double dispid 6;
    property StepAfterParagraph: Double dispid 7;
    property LeftEdge: Double dispid 8;
    property RightEdge: Double dispid 9;
    property Extended: WordBool dispid 10;
    property LinesCount: Integer dispid 11;
    property EnableLine1: WordBool dispid 12;
    property Height1: Double dispid 13;
    property WidthFactor1: Double dispid 14;
    property Step1: Double dispid 15;
    property EnableLine2: WordBool dispid 16;
    property Height2: Double dispid 17;
    property WidthFactor2: Double dispid 18;
    property Step2: Double dispid 19;
    property EnableLine3: WordBool dispid 20;
    property Height3: Double dispid 21;
    property WidthFactor3: Double dispid 22;
    property Step3: Double dispid 23;
    property Font: ITextFont readonly dispid 24;
    property Tabulators: ITabulators readonly dispid 25;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ITextFont
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {A6AD008D-58D1-48B5-BD29-E6795289FE4B}
// *********************************************************************//
  ITextFont = interface(IKompasAPIObject)
    ['{A6AD008D-58D1-48B5-BD29-E6795289FE4B}']
    function Get_FontName: WideString; safecall;
    procedure Set_FontName(const PVal: WideString); safecall;
    function Get_Height: Double; safecall;
    procedure Set_Height(PVal: Double); safecall;
    function Get_WidthFactor: Double; safecall;
    procedure Set_WidthFactor(PVal: Double); safecall;
    function Get_Color: Integer; safecall;
    procedure Set_Color(PVal: Integer); safecall;
    function Get_Bold: WordBool; safecall;
    procedure Set_Bold(PVal: WordBool); safecall;
    function Get_Italic: WordBool; safecall;
    procedure Set_Italic(PVal: WordBool); safecall;
    function Get_Underline: WordBool; safecall;
    procedure Set_Underline(PVal: WordBool); safecall;
    function Get_TextLineStep: WordBool; safecall;
    procedure Set_TextLineStep(PVal: WordBool); safecall;
    property FontName: WideString read Get_FontName write Set_FontName;
    property Height: Double read Get_Height write Set_Height;
    property WidthFactor: Double read Get_WidthFactor write Set_WidthFactor;
    property Color: Integer read Get_Color write Set_Color;
    property Bold: WordBool read Get_Bold write Set_Bold;
    property Italic: WordBool read Get_Italic write Set_Italic;
    property Underline: WordBool read Get_Underline write Set_Underline;
    property TextLineStep: WordBool read Get_TextLineStep write Set_TextLineStep;
  end;

// *********************************************************************//
// DispIntf:  ITextFontDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {A6AD008D-58D1-48B5-BD29-E6795289FE4B}
// *********************************************************************//
  ITextFontDisp = dispinterface
    ['{A6AD008D-58D1-48B5-BD29-E6795289FE4B}']
    property FontName: WideString dispid 1;
    property Height: Double dispid 2;
    property WidthFactor: Double dispid 3;
    property Color: Integer dispid 4;
    property Bold: WordBool dispid 5;
    property Italic: WordBool dispid 6;
    property Underline: WordBool dispid 7;
    property TextLineStep: WordBool dispid 8;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ITabulators
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {BB66E097-95C7-49B1-B6FD-3506C7758D09}
// *********************************************************************//
  ITabulators = interface(IKompasCollection)
    ['{BB66E097-95C7-49B1-B6FD-3506C7758D09}']
    function Get_Item(Index: OleVariant): ITabulator; safecall;
    function Add(Position: Integer): ITabulator; safecall;
    function Clear: WordBool; safecall;
    property Item[Index: OleVariant]: ITabulator read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  ITabulatorsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {BB66E097-95C7-49B1-B6FD-3506C7758D09}
// *********************************************************************//
  ITabulatorsDisp = dispinterface
    ['{BB66E097-95C7-49B1-B6FD-3506C7758D09}']
    property Item[Index: OleVariant]: ITabulator readonly dispid 0; default;
    function Add(Position: Integer): ITabulator; dispid 1;
    function Clear: WordBool; dispid 2;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ITabulator
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {2DD73B92-F8C8-49AA-AECD-B75713427FC1}
// *********************************************************************//
  ITabulator = interface(IKompasAPIObject)
    ['{2DD73B92-F8C8-49AA-AECD-B75713427FC1}']
    function Get_Position: Integer; safecall;
    procedure Set_Position(PVal: Integer); safecall;
    function Get_Align: ksAlignEnum; safecall;
    procedure Set_Align(PVal: ksAlignEnum); safecall;
    function Get_Filling: ksTabulatorFillingEnum; safecall;
    procedure Set_Filling(PVal: ksTabulatorFillingEnum); safecall;
    property Position: Integer read Get_Position write Set_Position;
    property Align: ksAlignEnum read Get_Align write Set_Align;
    property Filling: ksTabulatorFillingEnum read Get_Filling write Set_Filling;
  end;

// *********************************************************************//
// DispIntf:  ITabulatorDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {2DD73B92-F8C8-49AA-AECD-B75713427FC1}
// *********************************************************************//
  ITabulatorDisp = dispinterface
    ['{2DD73B92-F8C8-49AA-AECD-B75713427FC1}']
    property Position: Integer dispid 1;
    property Align: ksAlignEnum dispid 2;
    property Filling: ksTabulatorFillingEnum dispid 3;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ISpecificationTuningSections
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {01B1BF6F-B9E3-4E94-99A0-81394FB99B16}
// *********************************************************************//
  ISpecificationTuningSections = interface(IKompasCollection)
    ['{01B1BF6F-B9E3-4E94-99A0-81394FB99B16}']
    function Get_Item(Index: OleVariant): ISpecificationTuningSection; safecall;
    property Item[Index: OleVariant]: ISpecificationTuningSection read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  ISpecificationTuningSectionsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {01B1BF6F-B9E3-4E94-99A0-81394FB99B16}
// *********************************************************************//
  ISpecificationTuningSectionsDisp = dispinterface
    ['{01B1BF6F-B9E3-4E94-99A0-81394FB99B16}']
    property Item[Index: OleVariant]: ISpecificationTuningSection readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ISpecificationTuningSection
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {E68AA413-CC35-450D-BF35-0F294F59B08C}
// *********************************************************************//
  ISpecificationTuningSection = interface(IKompasAPIObject)
    ['{E68AA413-CC35-450D-BF35-0F294F59B08C}']
    function Get_Number: Integer; safecall;
    function Get_SubsectionOn: WordBool; safecall;
    procedure Set_SubsectionOn(PVal: WordBool); safecall;
    function Get_AttachGeometry: WordBool; safecall;
    procedure Set_AttachGeometry(PVal: WordBool); safecall;
    function Get_PutPosition: WordBool; safecall;
    procedure Set_PutPosition(PVal: WordBool); safecall;
    function Get_SortObjects: WordBool; safecall;
    procedure Set_SortObjects(PVal: WordBool); safecall;
    function Get_FirstOnSheet: WordBool; safecall;
    procedure Set_FirstOnSheet(PVal: WordBool); safecall;
    function Get_ReserveStringCount: Smallint; safecall;
    procedure Set_ReserveStringCount(PVal: Smallint); safecall;
    function Get_Subsections: ISpecificationSubsections; safecall;
    function Get_UseAdditionalBlocks: WordBool; safecall;
    procedure Set_UseAdditionalBlocks(PVal: WordBool); safecall;
    function Get_AdditionalBlocks: IAdditionalBlockTunings; safecall;
    property Number: Integer read Get_Number;
    property SubsectionOn: WordBool read Get_SubsectionOn write Set_SubsectionOn;
    property AttachGeometry: WordBool read Get_AttachGeometry write Set_AttachGeometry;
    property PutPosition: WordBool read Get_PutPosition write Set_PutPosition;
    property SortObjects: WordBool read Get_SortObjects write Set_SortObjects;
    property FirstOnSheet: WordBool read Get_FirstOnSheet write Set_FirstOnSheet;
    property ReserveStringCount: Smallint read Get_ReserveStringCount write Set_ReserveStringCount;
    property Subsections: ISpecificationSubsections read Get_Subsections;
    property UseAdditionalBlocks: WordBool read Get_UseAdditionalBlocks write Set_UseAdditionalBlocks;
    property AdditionalBlocks: IAdditionalBlockTunings read Get_AdditionalBlocks;
  end;

// *********************************************************************//
// DispIntf:  ISpecificationTuningSectionDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {E68AA413-CC35-450D-BF35-0F294F59B08C}
// *********************************************************************//
  ISpecificationTuningSectionDisp = dispinterface
    ['{E68AA413-CC35-450D-BF35-0F294F59B08C}']
    property Number: Integer readonly dispid 1;
    property SubsectionOn: WordBool dispid 2;
    property AttachGeometry: WordBool dispid 3;
    property PutPosition: WordBool dispid 4;
    property SortObjects: WordBool dispid 5;
    property FirstOnSheet: WordBool dispid 6;
    property ReserveStringCount: Smallint dispid 7;
    property Subsections: ISpecificationSubsections readonly dispid 8;
    property UseAdditionalBlocks: WordBool dispid 9;
    property AdditionalBlocks: IAdditionalBlockTunings readonly dispid 10;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ISpecificationSubsections
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {56532CB4-BD3F-442C-AFA4-0E6BEB677E61}
// *********************************************************************//
  ISpecificationSubsections = interface(IKompasCollection)
    ['{56532CB4-BD3F-442C-AFA4-0E6BEB677E61}']
    function Get_Item(Index: OleVariant): ISpecificationSubsection; safecall;
    function Add(const Name: WideString; Number: Smallint): ISpecificationSubsection; safecall;
    property Item[Index: OleVariant]: ISpecificationSubsection read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  ISpecificationSubsectionsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {56532CB4-BD3F-442C-AFA4-0E6BEB677E61}
// *********************************************************************//
  ISpecificationSubsectionsDisp = dispinterface
    ['{56532CB4-BD3F-442C-AFA4-0E6BEB677E61}']
    property Item[Index: OleVariant]: ISpecificationSubsection readonly dispid 0; default;
    function Add(const Name: WideString; Number: Smallint): ISpecificationSubsection; dispid 1;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ISpecificationSubsection
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {7F0E5F63-815C-46E5-B99E-C24244566C00}
// *********************************************************************//
  ISpecificationSubsection = interface(IKompasAPIObject)
    ['{7F0E5F63-815C-46E5-B99E-C24244566C00}']
    function Get_Name: WideString; safecall;
    function Get_Number: Smallint; safecall;
    function Change(const Name: WideString; Number: Smallint): WordBool; safecall;
    function Delete: WordBool; safecall;
    property Name: WideString read Get_Name;
    property Number: Smallint read Get_Number;
  end;

// *********************************************************************//
// DispIntf:  ISpecificationSubsectionDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {7F0E5F63-815C-46E5-B99E-C24244566C00}
// *********************************************************************//
  ISpecificationSubsectionDisp = dispinterface
    ['{7F0E5F63-815C-46E5-B99E-C24244566C00}']
    property Name: WideString readonly dispid 1;
    property Number: Smallint readonly dispid 2;
    function Change(const Name: WideString; Number: Smallint): WordBool; dispid 3;
    function Delete: WordBool; dispid 4;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IAdditionalBlockTunings
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {8910CC92-AC76-4837-AB7A-5FD3C7B74728}
// *********************************************************************//
  IAdditionalBlockTunings = interface(IKompasCollection)
    ['{8910CC92-AC76-4837-AB7A-5FD3C7B74728}']
    function Get_Item(Index: OleVariant): IAdditionalBlockTuning; safecall;
    property Item[Index: OleVariant]: IAdditionalBlockTuning read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  IAdditionalBlockTuningsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {8910CC92-AC76-4837-AB7A-5FD3C7B74728}
// *********************************************************************//
  IAdditionalBlockTuningsDisp = dispinterface
    ['{8910CC92-AC76-4837-AB7A-5FD3C7B74728}']
    property Item[Index: OleVariant]: IAdditionalBlockTuning readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IAdditionalBlockTuning
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9CD5B016-9CE9-4E0A-8902-196D11360536}
// *********************************************************************//
  IAdditionalBlockTuning = interface(IKompasAPIObject)
    ['{9CD5B016-9CE9-4E0A-8902-196D11360536}']
    function Get_Number: Integer; safecall;
    function Get_DocumentName: WideString; safecall;
    procedure Set_DocumentName(const PVal: WideString); safecall;
    function Get_Use: WordBool; safecall;
    procedure Set_Use(PVal: WordBool); safecall;
    function Get_FirstOnSheet: WordBool; safecall;
    procedure Set_FirstOnSheet(PVal: WordBool); safecall;
    function Get_Sections: IAdditionalBlockSectionTunings; safecall;
    property Number: Integer read Get_Number;
    property DocumentName: WideString read Get_DocumentName write Set_DocumentName;
    property Use: WordBool read Get_Use write Set_Use;
    property FirstOnSheet: WordBool read Get_FirstOnSheet write Set_FirstOnSheet;
    property Sections: IAdditionalBlockSectionTunings read Get_Sections;
  end;

// *********************************************************************//
// DispIntf:  IAdditionalBlockTuningDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9CD5B016-9CE9-4E0A-8902-196D11360536}
// *********************************************************************//
  IAdditionalBlockTuningDisp = dispinterface
    ['{9CD5B016-9CE9-4E0A-8902-196D11360536}']
    property Number: Integer readonly dispid 1;
    property DocumentName: WideString dispid 2;
    property Use: WordBool dispid 3;
    property FirstOnSheet: WordBool dispid 4;
    property Sections: IAdditionalBlockSectionTunings readonly dispid 5;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IAdditionalBlockSectionTunings
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {43EFA203-F956-43D6-B603-87807DDEFD0A}
// *********************************************************************//
  IAdditionalBlockSectionTunings = interface(IKompasCollection)
    ['{43EFA203-F956-43D6-B603-87807DDEFD0A}']
    function Get_Item(Index: OleVariant): IAdditionalBlockSectionTuning; safecall;
    property Item[Index: OleVariant]: IAdditionalBlockSectionTuning read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  IAdditionalBlockSectionTuningsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {43EFA203-F956-43D6-B603-87807DDEFD0A}
// *********************************************************************//
  IAdditionalBlockSectionTuningsDisp = dispinterface
    ['{43EFA203-F956-43D6-B603-87807DDEFD0A}']
    property Item[Index: OleVariant]: IAdditionalBlockSectionTuning readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IAdditionalBlockSectionTuning
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {E04B8464-C8D6-4BAC-99B5-AE79EBBDB205}
// *********************************************************************//
  IAdditionalBlockSectionTuning = interface(IKompasAPIObject)
    ['{E04B8464-C8D6-4BAC-99B5-AE79EBBDB205}']
    function Get_Number: Integer; safecall;
    function Get_Use: WordBool; safecall;
    procedure Set_Use(PVal: WordBool); safecall;
    property Number: Integer read Get_Number;
    property Use: WordBool read Get_Use write Set_Use;
  end;

// *********************************************************************//
// DispIntf:  IAdditionalBlockSectionTuningDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {E04B8464-C8D6-4BAC-99B5-AE79EBBDB205}
// *********************************************************************//
  IAdditionalBlockSectionTuningDisp = dispinterface
    ['{E04B8464-C8D6-4BAC-99B5-AE79EBBDB205}']
    property Number: Integer readonly dispid 1;
    property Use: WordBool dispid 2;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ISheetFormat
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {B9CDE694-4C33-4375-A6F6-AE94DC759510}
// *********************************************************************//
  ISheetFormat = interface(IKompasAPIObject)
    ['{B9CDE694-4C33-4375-A6F6-AE94DC759510}']
    function Get_Format: ksDocumentFormatEnum; safecall;
    procedure Set_Format(PVal: ksDocumentFormatEnum); safecall;
    function Get_FormatMultiplicity: Integer; safecall;
    procedure Set_FormatMultiplicity(PVal: Integer); safecall;
    function Get_VerticalOrientation: WordBool; safecall;
    procedure Set_VerticalOrientation(PVal: WordBool); safecall;
    function Get_FormatWidth: Double; safecall;
    procedure Set_FormatWidth(PVal: Double); safecall;
    function Get_FormatHeight: Double; safecall;
    procedure Set_FormatHeight(PVal: Double); safecall;
    property Format: ksDocumentFormatEnum read Get_Format write Set_Format;
    property FormatMultiplicity: Integer read Get_FormatMultiplicity write Set_FormatMultiplicity;
    property VerticalOrientation: WordBool read Get_VerticalOrientation write Set_VerticalOrientation;
    property FormatWidth: Double read Get_FormatWidth write Set_FormatWidth;
    property FormatHeight: Double read Get_FormatHeight write Set_FormatHeight;
  end;

// *********************************************************************//
// DispIntf:  ISheetFormatDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {B9CDE694-4C33-4375-A6F6-AE94DC759510}
// *********************************************************************//
  ISheetFormatDisp = dispinterface
    ['{B9CDE694-4C33-4375-A6F6-AE94DC759510}']
    property Format: ksDocumentFormatEnum dispid 1;
    property FormatMultiplicity: Integer dispid 2;
    property VerticalOrientation: WordBool dispid 3;
    property FormatWidth: Double dispid 4;
    property FormatHeight: Double dispid 5;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ISpecificationColumnStyles
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {41529A95-51F0-44B0-9D55-5753BCEB23BC}
// *********************************************************************//
  ISpecificationColumnStyles = interface(IKompasCollection)
    ['{41529A95-51F0-44B0-9D55-5753BCEB23BC}']
    function Get_Item(Index: OleVariant): ISpecificationColumnStyle; safecall;
    property Item[Index: OleVariant]: ISpecificationColumnStyle read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  ISpecificationColumnStylesDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {41529A95-51F0-44B0-9D55-5753BCEB23BC}
// *********************************************************************//
  ISpecificationColumnStylesDisp = dispinterface
    ['{41529A95-51F0-44B0-9D55-5753BCEB23BC}']
    property Item[Index: OleVariant]: ISpecificationColumnStyle readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ISpecificationColumnStyle
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {16839CAA-3AFB-49A4-A19A-C61963967649}
// *********************************************************************//
  ISpecificationColumnStyle = interface(IKompasAPIObject)
    ['{16839CAA-3AFB-49A4-A19A-C61963967649}']
    function Get_Name: WideString; safecall;
    function Get_ColumnType: ksSpecificationColumnTypeEnum; safecall;
    function Get_Number: Integer; safecall;
    function Get_Edit: WordBool; safecall;
    function Get_CalculateSum: WordBool; safecall;
    function Get_MultiplyToCount: WordBool; safecall;
    function Get_UseForSectionTitle: WordBool; safecall;
    function Get_TextDown: WordBool; safecall;
    function Get_StampLinkID: Integer; safecall;
    function Get_ValueType: ksValueTypeEnum; safecall;
    function Get_AttributeLibraryName: WideString; safecall;
    function Get_AttributeKey1: Integer; safecall;
    function Get_AttributeKey2: Integer; safecall;
    function Get_AttributeKey3: Integer; safecall;
    function Get_AttributeKey4: Integer; safecall;
    function Get_MinValue: Double; safecall;
    function Get_MaxValue: Double; safecall;
    function Get_UseIn3D: WordBool; safecall;
    property Name: WideString read Get_Name;
    property ColumnType: ksSpecificationColumnTypeEnum read Get_ColumnType;
    property Number: Integer read Get_Number;
    property Edit: WordBool read Get_Edit;
    property CalculateSum: WordBool read Get_CalculateSum;
    property MultiplyToCount: WordBool read Get_MultiplyToCount;
    property UseForSectionTitle: WordBool read Get_UseForSectionTitle;
    property TextDown: WordBool read Get_TextDown;
    property StampLinkID: Integer read Get_StampLinkID;
    property ValueType: ksValueTypeEnum read Get_ValueType;
    property AttributeLibraryName: WideString read Get_AttributeLibraryName;
    property AttributeKey1: Integer read Get_AttributeKey1;
    property AttributeKey2: Integer read Get_AttributeKey2;
    property AttributeKey3: Integer read Get_AttributeKey3;
    property AttributeKey4: Integer read Get_AttributeKey4;
    property MinValue: Double read Get_MinValue;
    property MaxValue: Double read Get_MaxValue;
    property UseIn3D: WordBool read Get_UseIn3D;
  end;

// *********************************************************************//
// DispIntf:  ISpecificationColumnStyleDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {16839CAA-3AFB-49A4-A19A-C61963967649}
// *********************************************************************//
  ISpecificationColumnStyleDisp = dispinterface
    ['{16839CAA-3AFB-49A4-A19A-C61963967649}']
    property Name: WideString readonly dispid 1;
    property ColumnType: ksSpecificationColumnTypeEnum readonly dispid 2;
    property Number: Integer readonly dispid 3;
    property Edit: WordBool readonly dispid 4;
    property CalculateSum: WordBool readonly dispid 5;
    property MultiplyToCount: WordBool readonly dispid 6;
    property UseForSectionTitle: WordBool readonly dispid 7;
    property TextDown: WordBool readonly dispid 8;
    property StampLinkID: Integer readonly dispid 9;
    property ValueType: ksValueTypeEnum readonly dispid 10;
    property AttributeLibraryName: WideString readonly dispid 11;
    property AttributeKey1: Integer readonly dispid 12;
    property AttributeKey2: Integer readonly dispid 13;
    property AttributeKey3: Integer readonly dispid 14;
    property AttributeKey4: Integer readonly dispid 15;
    property MinValue: Double readonly dispid 16;
    property MaxValue: Double readonly dispid 17;
    property UseIn3D: WordBool readonly dispid 18;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ISpecificationSectionStyles
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {24AE8484-F4F4-4059-AFC7-9492A64C88E8}
// *********************************************************************//
  ISpecificationSectionStyles = interface(IKompasCollection)
    ['{24AE8484-F4F4-4059-AFC7-9492A64C88E8}']
    function Get_Item(Index: OleVariant): ISpecificationSectionStyle; safecall;
    property Item[Index: OleVariant]: ISpecificationSectionStyle read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  ISpecificationSectionStylesDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {24AE8484-F4F4-4059-AFC7-9492A64C88E8}
// *********************************************************************//
  ISpecificationSectionStylesDisp = dispinterface
    ['{24AE8484-F4F4-4059-AFC7-9492A64C88E8}']
    property Item[Index: OleVariant]: ISpecificationSectionStyle readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ISpecificationSectionStyle
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {4B61FC7F-4826-4B58-8CCB-7D459AD0BE7B}
// *********************************************************************//
  ISpecificationSectionStyle = interface(IKompasAPIObject)
    ['{4B61FC7F-4826-4B58-8CCB-7D459AD0BE7B}']
    function Get_Name: WideString; safecall;
    function Get_Number: Integer; safecall;
    function Get_SortColumnType: ksSpecificationColumnTypeEnum; safecall;
    function Get_SortColumnNumber: Integer; safecall;
    function Get_FillDataFromStamp: WordBool; safecall;
    function Get_SortType: ksSortTypeEnum; safecall;
    function Get_Columns: ISpecificationColumnStyles; safecall;
    function Get_AdditionalColumns: ISpecificationColumnStyles; safecall;
    function Get_AdditionalBlocks: IAdditionalBlockStyles; safecall;
    property Name: WideString read Get_Name;
    property Number: Integer read Get_Number;
    property SortColumnType: ksSpecificationColumnTypeEnum read Get_SortColumnType;
    property SortColumnNumber: Integer read Get_SortColumnNumber;
    property FillDataFromStamp: WordBool read Get_FillDataFromStamp;
    property SortType: ksSortTypeEnum read Get_SortType;
    property Columns: ISpecificationColumnStyles read Get_Columns;
    property AdditionalColumns: ISpecificationColumnStyles read Get_AdditionalColumns;
    property AdditionalBlocks: IAdditionalBlockStyles read Get_AdditionalBlocks;
  end;

// *********************************************************************//
// DispIntf:  ISpecificationSectionStyleDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {4B61FC7F-4826-4B58-8CCB-7D459AD0BE7B}
// *********************************************************************//
  ISpecificationSectionStyleDisp = dispinterface
    ['{4B61FC7F-4826-4B58-8CCB-7D459AD0BE7B}']
    property Name: WideString readonly dispid 1;
    property Number: Integer readonly dispid 2;
    property SortColumnType: ksSpecificationColumnTypeEnum readonly dispid 3;
    property SortColumnNumber: Integer readonly dispid 4;
    property FillDataFromStamp: WordBool readonly dispid 5;
    property SortType: ksSortTypeEnum readonly dispid 6;
    property Columns: ISpecificationColumnStyles readonly dispid 7;
    property AdditionalColumns: ISpecificationColumnStyles readonly dispid 8;
    property AdditionalBlocks: IAdditionalBlockStyles readonly dispid 9;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IAdditionalBlockStyles
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {90E2FBEC-A56F-423C-B89F-479673EDD895}
// *********************************************************************//
  IAdditionalBlockStyles = interface(IKompasCollection)
    ['{90E2FBEC-A56F-423C-B89F-479673EDD895}']
    function Get_Item(Index: OleVariant): IAdditionalBlockStyle; safecall;
    property Item[Index: OleVariant]: IAdditionalBlockStyle read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  IAdditionalBlockStylesDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {90E2FBEC-A56F-423C-B89F-479673EDD895}
// *********************************************************************//
  IAdditionalBlockStylesDisp = dispinterface
    ['{90E2FBEC-A56F-423C-B89F-479673EDD895}']
    property Item[Index: OleVariant]: IAdditionalBlockStyle readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IAdditionalBlockStyle
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {B2A43FA6-9BCE-4468-9662-811A6255E220}
// *********************************************************************//
  IAdditionalBlockStyle = interface(IKompasAPIObject)
    ['{B2A43FA6-9BCE-4468-9662-811A6255E220}']
    function Get_Name: WideString; safecall;
    function Get_Number: Integer; safecall;
    property Name: WideString read Get_Name;
    property Number: Integer read Get_Number;
  end;

// *********************************************************************//
// DispIntf:  IAdditionalBlockStyleDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {B2A43FA6-9BCE-4468-9662-811A6255E220}
// *********************************************************************//
  IAdditionalBlockStyleDisp = dispinterface
    ['{B2A43FA6-9BCE-4468-9662-811A6255E220}']
    property Name: WideString readonly dispid 1;
    property Number: Integer readonly dispid 2;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ISpecificationBaseObjects
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {B2B97D19-3A0B-4C9F-A6AC-DEFFAFE0D1C2}
// *********************************************************************//
  ISpecificationBaseObjects = interface(IKompasCollection)
    ['{B2B97D19-3A0B-4C9F-A6AC-DEFFAFE0D1C2}']
    function Get_Item(Index: OleVariant): ISpecificationBaseObject; safecall;
    function Add(SectionNamb: Integer; AttrNumb: Double): ISpecificationBaseObject; safecall;
    property Item[Index: OleVariant]: ISpecificationBaseObject read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  ISpecificationBaseObjectsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {B2B97D19-3A0B-4C9F-A6AC-DEFFAFE0D1C2}
// *********************************************************************//
  ISpecificationBaseObjectsDisp = dispinterface
    ['{B2B97D19-3A0B-4C9F-A6AC-DEFFAFE0D1C2}']
    property Item[Index: OleVariant]: ISpecificationBaseObject readonly dispid 0; default;
    function Add(SectionNamb: Integer; AttrNumb: Double): ISpecificationBaseObject; dispid 1;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ISpecificationObject
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {72EB4E8E-7952-4B36-852B-4816B7B5AFEE}
// *********************************************************************//
  ISpecificationObject = interface(IKompasAPIObject)
    ['{72EB4E8E-7952-4B36-852B-4816B7B5AFEE}']
    function Get_ObjectType: ksSpecificationObjectTypeEnum; safecall;
    function Get_Section: Integer; safecall;
    function Get_Subsection: Integer; safecall;
    procedure Set_Subsection(PVal: Integer); safecall;
    function Get_AdditionalSection: Integer; safecall;
    procedure Set_AdditionalSection(PVal: Integer); safecall;
    function Get_AdditionalBlock: Integer; safecall;
    procedure Set_AdditionalBlock(PVal: Integer); safecall;
    function Get_NestedSection: Integer; safecall;
    procedure Set_NestedSection(PVal: Integer); safecall;
    function Get_NestedBlock: Integer; safecall;
    procedure Set_NestedBlock(PVal: Integer); safecall;
    function Get_BlockNumberByIndex(Val: Integer): Integer; safecall;
    function Get_UniqueNumber: Double; safecall;
    function Get_State: ksSpecificationObjectStateEnum; safecall;
    function Get_FirstOnSheet: WordBool; safecall;
    procedure Set_FirstOnSheet(PVal: WordBool); safecall;
    function Get_IncrementPosition: WordBool; safecall;
    procedure Set_IncrementPosition(PVal: WordBool); safecall;
    function Get_Columns: ISpecificationColumns; safecall;
    function Get_AdditionalColumns: ISpecificationColumns; safecall;
    function Get_AttachedDocuments: IAttachedDocuments; safecall;
    function Update: WordBool; safecall;
    function Delete: WordBool; safecall;
    function Edit: WordBool; safecall;
    property ObjectType: ksSpecificationObjectTypeEnum read Get_ObjectType;
    property Section: Integer read Get_Section;
    property Subsection: Integer read Get_Subsection write Set_Subsection;
    property AdditionalSection: Integer read Get_AdditionalSection write Set_AdditionalSection;
    property AdditionalBlock: Integer read Get_AdditionalBlock write Set_AdditionalBlock;
    property NestedSection: Integer read Get_NestedSection write Set_NestedSection;
    property NestedBlock: Integer read Get_NestedBlock write Set_NestedBlock;
    property BlockNumberByIndex[Val: Integer]: Integer read Get_BlockNumberByIndex;
    property UniqueNumber: Double read Get_UniqueNumber;
    property State: ksSpecificationObjectStateEnum read Get_State;
    property FirstOnSheet: WordBool read Get_FirstOnSheet write Set_FirstOnSheet;
    property IncrementPosition: WordBool read Get_IncrementPosition write Set_IncrementPosition;
    property Columns: ISpecificationColumns read Get_Columns;
    property AdditionalColumns: ISpecificationColumns read Get_AdditionalColumns;
    property AttachedDocuments: IAttachedDocuments read Get_AttachedDocuments;
  end;

// *********************************************************************//
// DispIntf:  ISpecificationObjectDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {72EB4E8E-7952-4B36-852B-4816B7B5AFEE}
// *********************************************************************//
  ISpecificationObjectDisp = dispinterface
    ['{72EB4E8E-7952-4B36-852B-4816B7B5AFEE}']
    property ObjectType: ksSpecificationObjectTypeEnum readonly dispid 100;
    property Section: Integer readonly dispid 101;
    property Subsection: Integer dispid 102;
    property AdditionalSection: Integer dispid 103;
    property AdditionalBlock: Integer dispid 104;
    property NestedSection: Integer dispid 105;
    property NestedBlock: Integer dispid 106;
    property BlockNumberByIndex[Val: Integer]: Integer readonly dispid 107;
    property UniqueNumber: Double readonly dispid 108;
    property State: ksSpecificationObjectStateEnum readonly dispid 109;
    property FirstOnSheet: WordBool dispid 110;
    property IncrementPosition: WordBool dispid 111;
    property Columns: ISpecificationColumns readonly dispid 112;
    property AdditionalColumns: ISpecificationColumns readonly dispid 113;
    property AttachedDocuments: IAttachedDocuments readonly dispid 114;
    function Update: WordBool; dispid 115;
    function Delete: WordBool; dispid 116;
    function Edit: WordBool; dispid 117;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ISpecificationBaseObject
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {49994ED8-96BA-4D9D-B642-5F0F1E3FED16}
// *********************************************************************//
  ISpecificationBaseObject = interface(ISpecificationObject)
    ['{49994ED8-96BA-4D9D-B642-5F0F1E3FED16}']
    function Get_Draw: WordBool; safecall;
    procedure Set_Draw(PVal: WordBool); safecall;
    function Get_DrawPosition: WordBool; safecall;
    procedure Set_DrawPosition(PVal: WordBool); safecall;
    function Get_Performance: WordBool; safecall;
    procedure Set_Performance(PVal: WordBool); safecall;
    function Get_CommentObjects: ISpecificationCommentObjects; safecall;
    function Get_Documents: OleVariant; safecall;
    function Get_AttributeNumber: Double; safecall;
    procedure Set_AttributeNumber(PVal: Double); safecall;
    function Get_SummaryCount(ColumnTypeNumber: Integer; BlockNumber: Integer): Double; safecall;
    function SetMaterial(const Material: WideString; Density: Double): WordBool; safecall;
    property Draw: WordBool read Get_Draw write Set_Draw;
    property DrawPosition: WordBool read Get_DrawPosition write Set_DrawPosition;
    property Performance: WordBool read Get_Performance write Set_Performance;
    property CommentObjects: ISpecificationCommentObjects read Get_CommentObjects;
    property Documents: OleVariant read Get_Documents;
    property AttributeNumber: Double read Get_AttributeNumber write Set_AttributeNumber;
    property SummaryCount[ColumnTypeNumber: Integer; BlockNumber: Integer]: Double read Get_SummaryCount;
  end;

// *********************************************************************//
// DispIntf:  ISpecificationBaseObjectDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {49994ED8-96BA-4D9D-B642-5F0F1E3FED16}
// *********************************************************************//
  ISpecificationBaseObjectDisp = dispinterface
    ['{49994ED8-96BA-4D9D-B642-5F0F1E3FED16}']
    property Draw: WordBool dispid 1;
    property DrawPosition: WordBool dispid 2;
    property Performance: WordBool dispid 3;
    property CommentObjects: ISpecificationCommentObjects readonly dispid 4;
    property Documents: OleVariant readonly dispid 5;
    property AttributeNumber: Double dispid 6;
    property SummaryCount[ColumnTypeNumber: Integer; BlockNumber: Integer]: Double readonly dispid 7;
    function SetMaterial(const Material: WideString; Density: Double): WordBool; dispid 8;
    property ObjectType: ksSpecificationObjectTypeEnum readonly dispid 100;
    property Section: Integer readonly dispid 101;
    property Subsection: Integer dispid 102;
    property AdditionalSection: Integer dispid 103;
    property AdditionalBlock: Integer dispid 104;
    property NestedSection: Integer dispid 105;
    property NestedBlock: Integer dispid 106;
    property BlockNumberByIndex[Val: Integer]: Integer readonly dispid 107;
    property UniqueNumber: Double readonly dispid 108;
    property State: ksSpecificationObjectStateEnum readonly dispid 109;
    property FirstOnSheet: WordBool dispid 110;
    property IncrementPosition: WordBool dispid 111;
    property Columns: ISpecificationColumns readonly dispid 112;
    property AdditionalColumns: ISpecificationColumns readonly dispid 113;
    property AttachedDocuments: IAttachedDocuments readonly dispid 114;
    function Update: WordBool; dispid 115;
    function Delete: WordBool; dispid 116;
    function Edit: WordBool; dispid 117;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ISpecificationColumns
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9F44BF03-DE25-4DDE-ADA0-92384199C100}
// *********************************************************************//
  ISpecificationColumns = interface(IKompasCollection)
    ['{9F44BF03-DE25-4DDE-ADA0-92384199C100}']
    function Get_Item(Index: OleVariant): ISpecificationColumn; safecall;
    function Get_Column(ColumnType: ksSpecificationColumnTypeEnum; ColumnNumber: Integer; 
                        BlockNumber: Integer): ISpecificationColumn; safecall;
    property Item[Index: OleVariant]: ISpecificationColumn read Get_Item; default;
    property Column[ColumnType: ksSpecificationColumnTypeEnum; ColumnNumber: Integer; 
                    BlockNumber: Integer]: ISpecificationColumn read Get_Column;
  end;

// *********************************************************************//
// DispIntf:  ISpecificationColumnsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9F44BF03-DE25-4DDE-ADA0-92384199C100}
// *********************************************************************//
  ISpecificationColumnsDisp = dispinterface
    ['{9F44BF03-DE25-4DDE-ADA0-92384199C100}']
    property Item[Index: OleVariant]: ISpecificationColumn readonly dispid 0; default;
    property Column[ColumnType: ksSpecificationColumnTypeEnum; ColumnNumber: Integer; 
                    BlockNumber: Integer]: ISpecificationColumn readonly dispid 1;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ISpecificationColumn
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {3ECFB777-2645-42B5-A6ED-111688433B26}
// *********************************************************************//
  ISpecificationColumn = interface(IKompasAPIObject)
    ['{3ECFB777-2645-42B5-A6ED-111688433B26}']
    function Get_ColumnType: ksSpecificationColumnTypeEnum; safecall;
    function Get_ColumnTypeNumber: Integer; safecall;
    function Get_BlockNumber: Integer; safecall;
    function Get_Number: Integer; safecall;
    function Get_ValueType: ksValueTypeEnum; safecall;
    function Get_ColumnItems: ISpecificationColumnItems; safecall;
    function Get_AttributeNumber: Double; safecall;
    procedure Set_AttributeNumber(PVal: Double); safecall;
    property ColumnType: ksSpecificationColumnTypeEnum read Get_ColumnType;
    property ColumnTypeNumber: Integer read Get_ColumnTypeNumber;
    property BlockNumber: Integer read Get_BlockNumber;
    property Number: Integer read Get_Number;
    property ValueType: ksValueTypeEnum read Get_ValueType;
    property ColumnItems: ISpecificationColumnItems read Get_ColumnItems;
    property AttributeNumber: Double read Get_AttributeNumber write Set_AttributeNumber;
  end;

// *********************************************************************//
// DispIntf:  ISpecificationColumnDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {3ECFB777-2645-42B5-A6ED-111688433B26}
// *********************************************************************//
  ISpecificationColumnDisp = dispinterface
    ['{3ECFB777-2645-42B5-A6ED-111688433B26}']
    property ColumnType: ksSpecificationColumnTypeEnum readonly dispid 1;
    property ColumnTypeNumber: Integer readonly dispid 2;
    property BlockNumber: Integer readonly dispid 3;
    property Number: Integer readonly dispid 4;
    property ValueType: ksValueTypeEnum readonly dispid 5;
    property ColumnItems: ISpecificationColumnItems readonly dispid 6;
    property AttributeNumber: Double dispid 7;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ISpecificationColumnItems
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F4BAB79A-8A35-44D5-BE44-C566E444F342}
// *********************************************************************//
  ISpecificationColumnItems = interface(IKompasCollection)
    ['{F4BAB79A-8A35-44D5-BE44-C566E444F342}']
    function Get_Item(Index: OleVariant): ISpecificationColumnItem; safecall;
    property Item[Index: OleVariant]: ISpecificationColumnItem read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  ISpecificationColumnItemsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F4BAB79A-8A35-44D5-BE44-C566E444F342}
// *********************************************************************//
  ISpecificationColumnItemsDisp = dispinterface
    ['{F4BAB79A-8A35-44D5-BE44-C566E444F342}']
    property Item[Index: OleVariant]: ISpecificationColumnItem readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ISpecificationColumnItem
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {2BABDD01-EACA-4137-9749-25B8C5E230EE}
// *********************************************************************//
  ISpecificationColumnItem = interface(IKompasAPIObject)
    ['{2BABDD01-EACA-4137-9749-25B8C5E230EE}']
    function Get_ValueType: ksValueTypeEnum; safecall;
    function Get_Key: Smallint; safecall;
    procedure Set_Key(PVal: Smallint); safecall;
    function Get_Visible: WordBool; safecall;
    procedure Set_Visible(PVal: WordBool); safecall;
    function Get_Value: OleVariant; safecall;
    procedure Set_Value(PVal: OleVariant); safecall;
    property ValueType: ksValueTypeEnum read Get_ValueType;
    property Key: Smallint read Get_Key write Set_Key;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property Value: OleVariant read Get_Value write Set_Value;
  end;

// *********************************************************************//
// DispIntf:  ISpecificationColumnItemDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {2BABDD01-EACA-4137-9749-25B8C5E230EE}
// *********************************************************************//
  ISpecificationColumnItemDisp = dispinterface
    ['{2BABDD01-EACA-4137-9749-25B8C5E230EE}']
    property ValueType: ksValueTypeEnum readonly dispid 1;
    property Key: Smallint dispid 2;
    property Visible: WordBool dispid 3;
    property Value: OleVariant dispid 4;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IAttachedDocuments
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {81FAB1C5-F566-4D06-8D3D-17FF01D3566F}
// *********************************************************************//
  IAttachedDocuments = interface(IKompasCollection)
    ['{81FAB1C5-F566-4D06-8D3D-17FF01D3566F}']
    function Get_Item(Index: OleVariant): IAttachedDocument; safecall;
    function Add(const Name: WideString; Transmit: WordBool): IAttachedDocument; safecall;
    property Item[Index: OleVariant]: IAttachedDocument read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  IAttachedDocumentsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {81FAB1C5-F566-4D06-8D3D-17FF01D3566F}
// *********************************************************************//
  IAttachedDocumentsDisp = dispinterface
    ['{81FAB1C5-F566-4D06-8D3D-17FF01D3566F}']
    property Item[Index: OleVariant]: IAttachedDocument readonly dispid 0; default;
    function Add(const Name: WideString; Transmit: WordBool): IAttachedDocument; dispid 1;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IAttachedDocument
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {333E9E11-D161-49AE-9791-8BEDB58B4C78}
// *********************************************************************//
  IAttachedDocument = interface(IKompasAPIObject)
    ['{333E9E11-D161-49AE-9791-8BEDB58B4C78}']
    function Get_Name: WideString; safecall;
    function Get_Transmit: WordBool; safecall;
    procedure Set_Transmit(PVal: WordBool); safecall;
    function Get_Comment: WideString; safecall;
    procedure Set_Comment(const PVal: WideString); safecall;
    function Delete: WordBool; safecall;
    property Name: WideString read Get_Name;
    property Transmit: WordBool read Get_Transmit write Set_Transmit;
    property Comment: WideString read Get_Comment write Set_Comment;
  end;

// *********************************************************************//
// DispIntf:  IAttachedDocumentDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {333E9E11-D161-49AE-9791-8BEDB58B4C78}
// *********************************************************************//
  IAttachedDocumentDisp = dispinterface
    ['{333E9E11-D161-49AE-9791-8BEDB58B4C78}']
    property Name: WideString readonly dispid 1;
    property Transmit: WordBool dispid 2;
    property Comment: WideString dispid 3;
    function Delete: WordBool; dispid 4;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ISpecificationCommentObjects
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {B8BD0FC7-AB2B-4E7A-8EC2-82060D7D29A7}
// *********************************************************************//
  ISpecificationCommentObjects = interface(IKompasCollection)
    ['{B8BD0FC7-AB2B-4E7A-8EC2-82060D7D29A7}']
    function Get_Item(Index: OleVariant): ISpecificationCommentObject; safecall;
    function Add(SectionNamb: Integer): ISpecificationCommentObject; safecall;
    function Attach(const PVal: ISpecificationCommentObject): WordBool; safecall;
    function Detach(const PVal: ISpecificationCommentObject): WordBool; safecall;
    property Item[Index: OleVariant]: ISpecificationCommentObject read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  ISpecificationCommentObjectsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {B8BD0FC7-AB2B-4E7A-8EC2-82060D7D29A7}
// *********************************************************************//
  ISpecificationCommentObjectsDisp = dispinterface
    ['{B8BD0FC7-AB2B-4E7A-8EC2-82060D7D29A7}']
    property Item[Index: OleVariant]: ISpecificationCommentObject readonly dispid 0; default;
    function Add(SectionNamb: Integer): ISpecificationCommentObject; dispid 1;
    function Attach(const PVal: ISpecificationCommentObject): WordBool; dispid 2;
    function Detach(const PVal: ISpecificationCommentObject): WordBool; dispid 3;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ISpecificationCommentObject
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {3B6B80CA-2145-4184-B786-0C571DF5ACD7}
// *********************************************************************//
  ISpecificationCommentObject = interface(ISpecificationObject)
    ['{3B6B80CA-2145-4184-B786-0C571DF5ACD7}']
    function Get_BaseObject: ISpecificationBaseObject; safecall;
    function Get_BlockNumber: Integer; safecall;
    procedure Set_BlockNumber(PVal: Integer); safecall;
    property BaseObject: ISpecificationBaseObject read Get_BaseObject;
    property BlockNumber: Integer read Get_BlockNumber write Set_BlockNumber;
  end;

// *********************************************************************//
// DispIntf:  ISpecificationCommentObjectDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {3B6B80CA-2145-4184-B786-0C571DF5ACD7}
// *********************************************************************//
  ISpecificationCommentObjectDisp = dispinterface
    ['{3B6B80CA-2145-4184-B786-0C571DF5ACD7}']
    property BaseObject: ISpecificationBaseObject readonly dispid 1;
    property BlockNumber: Integer dispid 2;
    property ObjectType: ksSpecificationObjectTypeEnum readonly dispid 100;
    property Section: Integer readonly dispid 101;
    property Subsection: Integer dispid 102;
    property AdditionalSection: Integer dispid 103;
    property AdditionalBlock: Integer dispid 104;
    property NestedSection: Integer dispid 105;
    property NestedBlock: Integer dispid 106;
    property BlockNumberByIndex[Val: Integer]: Integer readonly dispid 107;
    property UniqueNumber: Double readonly dispid 108;
    property State: ksSpecificationObjectStateEnum readonly dispid 109;
    property FirstOnSheet: WordBool dispid 110;
    property IncrementPosition: WordBool dispid 111;
    property Columns: ISpecificationColumns readonly dispid 112;
    property AdditionalColumns: ISpecificationColumns readonly dispid 113;
    property AttachedDocuments: IAttachedDocuments readonly dispid 114;
    function Update: WordBool; dispid 115;
    function Delete: WordBool; dispid 116;
    function Edit: WordBool; dispid 117;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ILayoutSheets
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {7AB54196-0B76-4B01-B769-7F47637173C4}
// *********************************************************************//
  ILayoutSheets = interface(IKompasCollection)
    ['{7AB54196-0B76-4B01-B769-7F47637173C4}']
    function Get_Item(Index: OleVariant): ILayoutSheet; safecall;
    function Get_ItemByNumber(Number: Integer): ILayoutSheet; safecall;
    function Add: ILayoutSheet; safecall;
    property Item[Index: OleVariant]: ILayoutSheet read Get_Item; default;
    property ItemByNumber[Number: Integer]: ILayoutSheet read Get_ItemByNumber;
  end;

// *********************************************************************//
// DispIntf:  ILayoutSheetsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {7AB54196-0B76-4B01-B769-7F47637173C4}
// *********************************************************************//
  ILayoutSheetsDisp = dispinterface
    ['{7AB54196-0B76-4B01-B769-7F47637173C4}']
    property Item[Index: OleVariant]: ILayoutSheet readonly dispid 0; default;
    property ItemByNumber[Number: Integer]: ILayoutSheet readonly dispid 1;
    function Add: ILayoutSheet; dispid 2;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ILayoutSheet
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {D87B5A80-CF52-4510-ADD9-D1344FFFFC07}
// *********************************************************************//
  ILayoutSheet = interface(IKompasAPIObject)
    ['{D87B5A80-CF52-4510-ADD9-D1344FFFFC07}']
    function Get_Format: ISheetFormat; safecall;
    function Get_LayoutLibraryFileName: WideString; safecall;
    procedure Set_LayoutLibraryFileName(const PVal: WideString); safecall;
    function Get_LayoutStyleNumber: Double; safecall;
    procedure Set_LayoutStyleNumber(PVal: Double); safecall;
    function Update: WordBool; safecall;
    function Delete: WordBool; safecall;
    property Format: ISheetFormat read Get_Format;
    property LayoutLibraryFileName: WideString read Get_LayoutLibraryFileName write Set_LayoutLibraryFileName;
    property LayoutStyleNumber: Double read Get_LayoutStyleNumber write Set_LayoutStyleNumber;
  end;

// *********************************************************************//
// DispIntf:  ILayoutSheetDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {D87B5A80-CF52-4510-ADD9-D1344FFFFC07}
// *********************************************************************//
  ILayoutSheetDisp = dispinterface
    ['{D87B5A80-CF52-4510-ADD9-D1344FFFFC07}']
    property Format: ISheetFormat readonly dispid 1;
    property LayoutLibraryFileName: WideString dispid 2;
    property LayoutStyleNumber: Double dispid 3;
    function Update: WordBool; dispid 4;
    function Delete: WordBool; dispid 5;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IUserDataStoragesMng
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {77A6D4CA-6418-4DEE-B59C-400BFD052375}
// *********************************************************************//
  IUserDataStoragesMng = interface(IKompasCollection)
    ['{77A6D4CA-6418-4DEE-B59C-400BFD052375}']
    function Get_Item(Index: OleVariant): IUserDataStorages; safecall;
    function Add(const Object_: IKompasAPIObject): IUserDataStorages; safecall;
    function Delete(Index: OleVariant): WordBool; safecall;
    function Clear: WordBool; safecall;
    property Item[Index: OleVariant]: IUserDataStorages read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  IUserDataStoragesMngDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {77A6D4CA-6418-4DEE-B59C-400BFD052375}
// *********************************************************************//
  IUserDataStoragesMngDisp = dispinterface
    ['{77A6D4CA-6418-4DEE-B59C-400BFD052375}']
    property Item[Index: OleVariant]: IUserDataStorages readonly dispid 0; default;
    function Add(const Object_: IKompasAPIObject): IUserDataStorages; dispid 1;
    function Delete(Index: OleVariant): WordBool; dispid 2;
    function Clear: WordBool; dispid 3;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IUserDataStorages
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9DBFB4EB-BE9F-46EF-88FF-BB603A9E786B}
// *********************************************************************//
  IUserDataStorages = interface(IKompasCollection)
    ['{9DBFB4EB-BE9F-46EF-88FF-BB603A9E786B}']
    function Get_Item(Index: OleVariant): IUserDataStorage; safecall;
    function Add(const StorageName: WideString): IUserDataStorage; safecall;
    function Delete(const password: WideString; Index: OleVariant): WordBool; safecall;
    property Item[Index: OleVariant]: IUserDataStorage read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  IUserDataStoragesDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9DBFB4EB-BE9F-46EF-88FF-BB603A9E786B}
// *********************************************************************//
  IUserDataStoragesDisp = dispinterface
    ['{9DBFB4EB-BE9F-46EF-88FF-BB603A9E786B}']
    property Item[Index: OleVariant]: IUserDataStorage readonly dispid 0; default;
    function Add(const StorageName: WideString): IUserDataStorage; dispid 1;
    function Delete(const password: WideString; Index: OleVariant): WordBool; dispid 2;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IUserDataStorage
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {DD2AF5C4-D5B9-420D-B658-F935F80A8586}
// *********************************************************************//
  IUserDataStorage = interface(IKompasAPIObject)
    ['{DD2AF5C4-D5B9-420D-B658-F935F80A8586}']
    function Get_Name(const Pass: WideString): WideString; safecall;
    procedure Set_Name(const Pass: WideString; const PVal: WideString); safecall;
    function SetPassword(const OldPass: WideString; const NewPass: WideString): WordBool; safecall;
    function Get_Version(const Pass: WideString): Integer; safecall;
    procedure Set_Version(const Pass: WideString; PVal: Integer); safecall;
    function GetObject(Index: OleVariant; out Object_: OleVariant; out Numb: Integer): WideString; safecall;
    function SetObject(const Pass: WideString; Index: OleVariant; Object_: OleVariant; 
                       const Comment: WideString): Integer; safecall;
    function AddObject(const Pass: WideString; Object_: OleVariant; const Comment: WideString): Integer; safecall;
    function Delete(const Pass: WideString; Index: OleVariant): WordBool; safecall;
    function Clear(const Pass: WideString): WordBool; safecall;
    property Name[const Pass: WideString]: WideString read Get_Name write Set_Name;
    property Version[const Pass: WideString]: Integer read Get_Version write Set_Version;
  end;

// *********************************************************************//
// DispIntf:  IUserDataStorageDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {DD2AF5C4-D5B9-420D-B658-F935F80A8586}
// *********************************************************************//
  IUserDataStorageDisp = dispinterface
    ['{DD2AF5C4-D5B9-420D-B658-F935F80A8586}']
    property Name[const Pass: WideString]: WideString dispid 1;
    function SetPassword(const OldPass: WideString; const NewPass: WideString): WordBool; dispid 2;
    property Version[const Pass: WideString]: Integer dispid 3;
    function GetObject(Index: OleVariant; out Object_: OleVariant; out Numb: Integer): WideString; dispid 4;
    function SetObject(const Pass: WideString; Index: OleVariant; Object_: OleVariant; 
                       const Comment: WideString): Integer; dispid 5;
    function AddObject(const Pass: WideString; Object_: OleVariant; const Comment: WideString): Integer; dispid 6;
    function Delete(const Pass: WideString; Index: OleVariant): WordBool; dispid 7;
    function Clear(const Pass: WideString): WordBool; dispid 8;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IProcessParam
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {CB5FDBC8-4DAE-4C4B-87D5-6FD1F2705C38}
// *********************************************************************//
  IProcessParam = interface(IKompasAPIObject)
    ['{CB5FDBC8-4DAE-4C4B-87D5-6FD1F2705C38}']
    procedure Set_Caption(const PVal: WideString); safecall;
    function Get_Caption: WideString; safecall;
    function Get_PropertyTabs: IPropertyTabs; safecall;
    procedure Set_SpecToolbar(PVal: SpecPropertyToolBarEnum); safecall;
    function Get_SpecToolbar: SpecPropertyToolBarEnum; safecall;
    procedure Set_AutoReduce(PVal: WordBool); safecall;
    function Get_AutoReduce: WordBool; safecall;
    procedure Set_DefaultControlFix(PVal: DefaultFixTypeEnum); safecall;
    function Get_DefaultControlFix: DefaultFixTypeEnum; safecall;
    property Caption: WideString read Get_Caption write Set_Caption;
    property PropertyTabs: IPropertyTabs read Get_PropertyTabs;
    property SpecToolbar: SpecPropertyToolBarEnum read Get_SpecToolbar write Set_SpecToolbar;
    property AutoReduce: WordBool read Get_AutoReduce write Set_AutoReduce;
    property DefaultControlFix: DefaultFixTypeEnum read Get_DefaultControlFix write Set_DefaultControlFix;
  end;

// *********************************************************************//
// DispIntf:  IProcessParamDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {CB5FDBC8-4DAE-4C4B-87D5-6FD1F2705C38}
// *********************************************************************//
  IProcessParamDisp = dispinterface
    ['{CB5FDBC8-4DAE-4C4B-87D5-6FD1F2705C38}']
    property Caption: WideString dispid 1;
    property PropertyTabs: IPropertyTabs readonly dispid 2;
    property SpecToolbar: SpecPropertyToolBarEnum dispid 3;
    property AutoReduce: WordBool dispid 4;
    property DefaultControlFix: DefaultFixTypeEnum dispid 5;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IPropertyTabs
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {5BA6324E-E555-490F-A0E2-68D3C6C88D92}
// *********************************************************************//
  IPropertyTabs = interface(IKompasCollection)
    ['{5BA6324E-E555-490F-A0E2-68D3C6C88D92}']
    function Get_Item(Index: OleVariant): IPropertyTab; safecall;
    function Add(const Caption: WideString): IPropertyTab; safecall;
    function Delete(Index: OleVariant): WordBool; safecall;
    function Get_Active: IPropertyTab; safecall;
    property Item[Index: OleVariant]: IPropertyTab read Get_Item; default;
    property Active: IPropertyTab read Get_Active;
  end;

// *********************************************************************//
// DispIntf:  IPropertyTabsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {5BA6324E-E555-490F-A0E2-68D3C6C88D92}
// *********************************************************************//
  IPropertyTabsDisp = dispinterface
    ['{5BA6324E-E555-490F-A0E2-68D3C6C88D92}']
    property Item[Index: OleVariant]: IPropertyTab readonly dispid 0; default;
    function Add(const Caption: WideString): IPropertyTab; dispid 2;
    function Delete(Index: OleVariant): WordBool; dispid 3;
    property Active: IPropertyTab readonly dispid 4;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IPropertyTab
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {45DE8E5B-BC2B-4584-8BA7-D3014D3A2397}
// *********************************************************************//
  IPropertyTab = interface(IKompasAPIObject)
    ['{45DE8E5B-BC2B-4584-8BA7-D3014D3A2397}']
    procedure Set_Visible(PVal: WordBool); safecall;
    function Get_Visible: WordBool; safecall;
    procedure Set_Caption(const PVal: WideString); safecall;
    function Get_Caption: WideString; safecall;
    procedure Set_Active(PVal: WordBool); safecall;
    function Get_Active: WordBool; safecall;
    function Get_PropertyControls: IPropertyControls; safecall;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property Caption: WideString read Get_Caption write Set_Caption;
    property Active: WordBool read Get_Active write Set_Active;
    property PropertyControls: IPropertyControls read Get_PropertyControls;
  end;

// *********************************************************************//
// DispIntf:  IPropertyTabDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {45DE8E5B-BC2B-4584-8BA7-D3014D3A2397}
// *********************************************************************//
  IPropertyTabDisp = dispinterface
    ['{45DE8E5B-BC2B-4584-8BA7-D3014D3A2397}']
    property Visible: WordBool dispid 1;
    property Caption: WideString dispid 2;
    property Active: WordBool dispid 3;
    property PropertyControls: IPropertyControls readonly dispid 4;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IPropertyControls
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {548241BA-FDA8-4633-981E-94552BE38D6B}
// *********************************************************************//
  IPropertyControls = interface(IKompasCollection)
    ['{548241BA-FDA8-4633-981E-94552BE38D6B}']
    function Get_Item(Index: OleVariant): IPropertyControl; safecall;
    function Add(Type_: ControlTypeEnum): IPropertyControl; safecall;
    function Delete(Index: OleVariant): WordBool; safecall;
    property Item[Index: OleVariant]: IPropertyControl read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  IPropertyControlsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {548241BA-FDA8-4633-981E-94552BE38D6B}
// *********************************************************************//
  IPropertyControlsDisp = dispinterface
    ['{548241BA-FDA8-4633-981E-94552BE38D6B}']
    property Item[Index: OleVariant]: IPropertyControl readonly dispid 0; default;
    function Add(Type_: ControlTypeEnum): IPropertyControl; dispid 2;
    function Delete(Index: OleVariant): WordBool; dispid 3;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IPropertyControl
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {E35F8FF8-03C6-460C-A2F1-294A3A29A029}
// *********************************************************************//
  IPropertyControl = interface(IKompasAPIObject)
    ['{E35F8FF8-03C6-460C-A2F1-294A3A29A029}']
    procedure Set_Visible(PVal: WordBool); safecall;
    function Get_Visible: WordBool; safecall;
    procedure Set_Name(const PVal: WideString); safecall;
    function Get_Name: WideString; safecall;
    function Get_ControlType: ControlTypeEnum; safecall;
    procedure Set_Id(PVal: Integer); safecall;
    function Get_Id: Integer; safecall;
    procedure Set_Enable(PVal: WordBool); safecall;
    function Get_Enable: WordBool; safecall;
    procedure Set_Value(PVal: OleVariant); safecall;
    function Get_Value: OleVariant; safecall;
    procedure Set_NameVisibility(PVal: PropertyControlNameVisibility); safecall;
    function Get_NameVisibility: PropertyControlNameVisibility; safecall;
    procedure Set_Hint(const PVal: WideString); safecall;
    function Get_Hint: WideString; safecall;
    procedure Set_Tips(const PVal: WideString); safecall;
    function Get_Tips: WideString; safecall;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property Name: WideString read Get_Name write Set_Name;
    property ControlType: ControlTypeEnum read Get_ControlType;
    property Id: Integer read Get_Id write Set_Id;
    property Enable: WordBool read Get_Enable write Set_Enable;
    property Value: OleVariant read Get_Value write Set_Value;
    property NameVisibility: PropertyControlNameVisibility read Get_NameVisibility write Set_NameVisibility;
    property Hint: WideString read Get_Hint write Set_Hint;
    property Tips: WideString read Get_Tips write Set_Tips;
  end;

// *********************************************************************//
// DispIntf:  IPropertyControlDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {E35F8FF8-03C6-460C-A2F1-294A3A29A029}
// *********************************************************************//
  IPropertyControlDisp = dispinterface
    ['{E35F8FF8-03C6-460C-A2F1-294A3A29A029}']
    property Visible: WordBool dispid 1;
    property Name: WideString dispid 2;
    property ControlType: ControlTypeEnum readonly dispid 3;
    property Id: Integer dispid 4;
    property Enable: WordBool dispid 5;
    property Value: OleVariant dispid 6;
    property NameVisibility: PropertyControlNameVisibility dispid 7;
    property Hint: WideString dispid 8;
    property Tips: WideString dispid 9;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IPropertyManager
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {34196EC3-58B2-436C-A353-427703740874}
// *********************************************************************//
  IPropertyManager = interface(IKompasAPIObject)
    ['{34196EC3-58B2-436C-A353-427703740874}']
    procedure Set_Visible(PVal: WordBool); safecall;
    function Get_Visible: WordBool; safecall;
    procedure Set_Caption(const PVal: WideString); safecall;
    function Get_Caption: WideString; safecall;
    procedure Set_Layout(PVal: PropertyManagerLayout); safecall;
    function Get_Layout: PropertyManagerLayout; safecall;
    function Get_PropertyTabs: IPropertyTabs; safecall;
    procedure SetGabaritRect(Left: Integer; Top: Integer; Right: Integer; Bottom: Integer); safecall;
    procedure GetGabaritRect(out Left: Integer; out Top: Integer; out Right: Integer; 
                             out Bottom: Integer); safecall;
    function ShowTabs: WordBool; safecall;
    function UpdateTabs: WordBool; safecall;
    function HideTabs: WordBool; safecall;
    procedure Set_SpecToolbar(PVal: SpecPropertyToolBarEnum); safecall;
    function Get_SpecToolbar: SpecPropertyToolBarEnum; safecall;
    function RepeatCommand: WordBool; safecall;
    procedure Set_AutoHideMode(PVal: WordBool); safecall;
    function Get_AutoHideMode: WordBool; safecall;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property Caption: WideString read Get_Caption write Set_Caption;
    property Layout: PropertyManagerLayout read Get_Layout write Set_Layout;
    property PropertyTabs: IPropertyTabs read Get_PropertyTabs;
    property SpecToolbar: SpecPropertyToolBarEnum read Get_SpecToolbar write Set_SpecToolbar;
    property AutoHideMode: WordBool read Get_AutoHideMode write Set_AutoHideMode;
  end;

// *********************************************************************//
// DispIntf:  IPropertyManagerDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {34196EC3-58B2-436C-A353-427703740874}
// *********************************************************************//
  IPropertyManagerDisp = dispinterface
    ['{34196EC3-58B2-436C-A353-427703740874}']
    property Visible: WordBool dispid 1;
    property Caption: WideString dispid 2;
    property Layout: PropertyManagerLayout dispid 3;
    property PropertyTabs: IPropertyTabs readonly dispid 4;
    procedure SetGabaritRect(Left: Integer; Top: Integer; Right: Integer; Bottom: Integer); dispid 5;
    procedure GetGabaritRect(out Left: Integer; out Top: Integer; out Right: Integer; 
                             out Bottom: Integer); dispid 6;
    function ShowTabs: WordBool; dispid 7;
    function UpdateTabs: WordBool; dispid 8;
    function HideTabs: WordBool; dispid 9;
    property SpecToolbar: SpecPropertyToolBarEnum dispid 10;
    function RepeatCommand: WordBool; dispid 11;
    property AutoHideMode: WordBool dispid 12;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ILibraryManager
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {53CDC510-99EA-4736-8542-194F4D8FB32B}
// *********************************************************************//
  ILibraryManager = interface(IKompasAPIObject)
    ['{53CDC510-99EA-4736-8542-194F4D8FB32B}']
    function Get_ProceduresLibraries: IProceduresLibraries; safecall;
    function Get_FragmentsLibraries: IInsertsLibraries; safecall;
    function Get_ModelsLibraries: IInsertsLibraries; safecall;
    function Get_Visible: WordBool; safecall;
    procedure Set_Visible(PVal: WordBool); safecall;
    function Get_Layout: PropertyManagerLayout; safecall;
    function Get_ActiveFolder: WideString; safecall;
    procedure Set_ActiveFolder(const PVal: WideString); safecall;
    function Get_ActiveFolderComment: OleVariant; safecall;
    procedure Set_ActiveFolderComment(PVal: OleVariant); safecall;
    procedure AddFolder(const PathFolder: WideString); safecall;
    procedure RemoveFolder(const PathFolder: WideString); safecall;
    function Get_SystemControlStartLibrary: IProceduresLibrary; safecall;
    function Get_CurrentLibrary: IProceduresLibrary; safecall;
    function SetCurrentLibrary(const PVal: IProceduresLibrary): WordBool; safecall;
    function Get_SystemControlStartResult: ksSystemControlStartEnum; safecall;
    property ProceduresLibraries: IProceduresLibraries read Get_ProceduresLibraries;
    property FragmentsLibraries: IInsertsLibraries read Get_FragmentsLibraries;
    property ModelsLibraries: IInsertsLibraries read Get_ModelsLibraries;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property Layout: PropertyManagerLayout read Get_Layout;
    property ActiveFolder: WideString read Get_ActiveFolder write Set_ActiveFolder;
    property ActiveFolderComment: OleVariant read Get_ActiveFolderComment write Set_ActiveFolderComment;
    property SystemControlStartLibrary: IProceduresLibrary read Get_SystemControlStartLibrary;
    property CurrentLibrary: IProceduresLibrary read Get_CurrentLibrary;
    property SystemControlStartResult: ksSystemControlStartEnum read Get_SystemControlStartResult;
  end;

// *********************************************************************//
// DispIntf:  ILibraryManagerDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {53CDC510-99EA-4736-8542-194F4D8FB32B}
// *********************************************************************//
  ILibraryManagerDisp = dispinterface
    ['{53CDC510-99EA-4736-8542-194F4D8FB32B}']
    property ProceduresLibraries: IProceduresLibraries readonly dispid 1;
    property FragmentsLibraries: IInsertsLibraries readonly dispid 2;
    property ModelsLibraries: IInsertsLibraries readonly dispid 3;
    property Visible: WordBool dispid 4;
    property Layout: PropertyManagerLayout readonly dispid 5;
    property ActiveFolder: WideString dispid 6;
    property ActiveFolderComment: OleVariant dispid 7;
    procedure AddFolder(const PathFolder: WideString); dispid 8;
    procedure RemoveFolder(const PathFolder: WideString); dispid 9;
    property SystemControlStartLibrary: IProceduresLibrary readonly dispid 10;
    property CurrentLibrary: IProceduresLibrary readonly dispid 11;
    function SetCurrentLibrary(const PVal: IProceduresLibrary): WordBool; dispid 12;
    property SystemControlStartResult: ksSystemControlStartEnum readonly dispid 13;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IProceduresLibraries
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {80F95B5B-DB8A-46B7-8C22-605A0AECD597}
// *********************************************************************//
  IProceduresLibraries = interface(IKompasCollection)
    ['{80F95B5B-DB8A-46B7-8C22-605A0AECD597}']
    function Get_Item(Index: OleVariant): IProceduresLibrary; safecall;
    property Item[Index: OleVariant]: IProceduresLibrary read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  IProceduresLibrariesDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {80F95B5B-DB8A-46B7-8C22-605A0AECD597}
// *********************************************************************//
  IProceduresLibrariesDisp = dispinterface
    ['{80F95B5B-DB8A-46B7-8C22-605A0AECD597}']
    property Item[Index: OleVariant]: IProceduresLibrary readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ILibrary
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9D6E9AE1-7DDF-4354-B8D0-E12023B186FA}
// *********************************************************************//
  ILibrary = interface(IKompasAPIObject)
    ['{9D6E9AE1-7DDF-4354-B8D0-E12023B186FA}']
    function Get_LibraryManagerFolder: WideString; safecall;
    function Get_Attach: WordBool; safecall;
    procedure Set_Attach(PVal: WordBool); safecall;
    function Get_LibraryType: ksLibraryTypeEnum; safecall;
    function Get_Name: WideString; safecall;
    function Get_PathName: WideString; safecall;
    function Get_Enable: WordBool; safecall;
    function Execute(command: Integer; const external: IDispatch; post: WordBool): WordBool; safecall;
    property LibraryManagerFolder: WideString read Get_LibraryManagerFolder;
    property Attach: WordBool read Get_Attach write Set_Attach;
    property LibraryType: ksLibraryTypeEnum read Get_LibraryType;
    property Name: WideString read Get_Name;
    property PathName: WideString read Get_PathName;
    property Enable: WordBool read Get_Enable;
  end;

// *********************************************************************//
// DispIntf:  ILibraryDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9D6E9AE1-7DDF-4354-B8D0-E12023B186FA}
// *********************************************************************//
  ILibraryDisp = dispinterface
    ['{9D6E9AE1-7DDF-4354-B8D0-E12023B186FA}']
    property LibraryManagerFolder: WideString readonly dispid 2001;
    property Attach: WordBool dispid 2002;
    property LibraryType: ksLibraryTypeEnum readonly dispid 2003;
    property Name: WideString readonly dispid 2004;
    property PathName: WideString readonly dispid 2005;
    property Enable: WordBool readonly dispid 2006;
    function Execute(command: Integer; const external: IDispatch; post: WordBool): WordBool; dispid 2007;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IProceduresLibrary
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {1AECE59E-DE4C-4FB9-B62B-7967573AD3B1}
// *********************************************************************//
  IProceduresLibrary = interface(ILibrary)
    ['{1AECE59E-DE4C-4FB9-B62B-7967573AD3B1}']
    function Get_Style: ksLibraryStyleEnum; safecall;
    procedure Set_Style(PVal: ksLibraryStyleEnum); safecall;
    function Get_Procedures: IProcedures; safecall;
    function Get_CurrentCommand: Integer; safecall;
    function SystemControlStop: WordBool; safecall;
    function SystemControlStart(const menuCommand: WideString): ksSystemControlStartEnum; safecall;
    function Get_UniqueId: Integer; safecall;
    function Get_Executable: WordBool; safecall;
    function Get_AddIns: WordBool; safecall;
    function Get_ExternalInterface: IDispatch; safecall;
    property Style: ksLibraryStyleEnum read Get_Style write Set_Style;
    property Procedures: IProcedures read Get_Procedures;
    property CurrentCommand: Integer read Get_CurrentCommand;
    property UniqueId: Integer read Get_UniqueId;
    property Executable: WordBool read Get_Executable;
    property AddIns: WordBool read Get_AddIns;
    property ExternalInterface: IDispatch read Get_ExternalInterface;
  end;

// *********************************************************************//
// DispIntf:  IProceduresLibraryDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {1AECE59E-DE4C-4FB9-B62B-7967573AD3B1}
// *********************************************************************//
  IProceduresLibraryDisp = dispinterface
    ['{1AECE59E-DE4C-4FB9-B62B-7967573AD3B1}']
    property Style: ksLibraryStyleEnum dispid 1;
    property Procedures: IProcedures readonly dispid 2;
    property CurrentCommand: Integer readonly dispid 3;
    function SystemControlStop: WordBool; dispid 4;
    function SystemControlStart(const menuCommand: WideString): ksSystemControlStartEnum; dispid 5;
    property UniqueId: Integer readonly dispid 6;
    property Executable: WordBool readonly dispid 7;
    property AddIns: WordBool readonly dispid 8;
    property ExternalInterface: IDispatch readonly dispid 9;
    property LibraryManagerFolder: WideString readonly dispid 2001;
    property Attach: WordBool dispid 2002;
    property LibraryType: ksLibraryTypeEnum readonly dispid 2003;
    property Name: WideString readonly dispid 2004;
    property PathName: WideString readonly dispid 2005;
    property Enable: WordBool readonly dispid 2006;
    function Execute(command: Integer; const external: IDispatch; post: WordBool): WordBool; dispid 2007;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IProcedures
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {1A77F076-2295-40F9-B1AA-2838C4CA0887}
// *********************************************************************//
  IProcedures = interface(IKompasCollection)
    ['{1A77F076-2295-40F9-B1AA-2838C4CA0887}']
    function Get_Item(Index: OleVariant): IProcedure; safecall;
    function Get_ItemByID(Id: Integer): IProcedure; safecall;
    property Item[Index: OleVariant]: IProcedure read Get_Item; default;
    property ItemByID[Id: Integer]: IProcedure read Get_ItemByID;
  end;

// *********************************************************************//
// DispIntf:  IProceduresDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {1A77F076-2295-40F9-B1AA-2838C4CA0887}
// *********************************************************************//
  IProceduresDisp = dispinterface
    ['{1A77F076-2295-40F9-B1AA-2838C4CA0887}']
    property Item[Index: OleVariant]: IProcedure readonly dispid 0; default;
    property ItemByID[Id: Integer]: IProcedure readonly dispid 1;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IProcedure
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {7BF9DF08-D14D-4DA9-ABC2-FB458E7122D0}
// *********************************************************************//
  IProcedure = interface(IKompasAPIObject)
    ['{7BF9DF08-D14D-4DA9-ABC2-FB458E7122D0}']
    function Get_Name: WideString; safecall;
    function Get_LibraryFolder: WideString; safecall;
    function Get_Id: Integer; safecall;
    function Execute(const external: IDispatch; post: WordBool): WordBool; safecall;
    property Name: WideString read Get_Name;
    property LibraryFolder: WideString read Get_LibraryFolder;
    property Id: Integer read Get_Id;
  end;

// *********************************************************************//
// DispIntf:  IProcedureDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {7BF9DF08-D14D-4DA9-ABC2-FB458E7122D0}
// *********************************************************************//
  IProcedureDisp = dispinterface
    ['{7BF9DF08-D14D-4DA9-ABC2-FB458E7122D0}']
    property Name: WideString readonly dispid 1;
    property LibraryFolder: WideString readonly dispid 2;
    property Id: Integer readonly dispid 3;
    function Execute(const external: IDispatch; post: WordBool): WordBool; dispid 4;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IInsertsLibraries
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {A6E82D68-69D5-40C0-9A85-275B22219135}
// *********************************************************************//
  IInsertsLibraries = interface(IKompasCollection)
    ['{A6E82D68-69D5-40C0-9A85-275B22219135}']
    function Get_Item(Index: OleVariant): IInsertsLibrary; safecall;
    property Item[Index: OleVariant]: IInsertsLibrary read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  IInsertsLibrariesDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {A6E82D68-69D5-40C0-9A85-275B22219135}
// *********************************************************************//
  IInsertsLibrariesDisp = dispinterface
    ['{A6E82D68-69D5-40C0-9A85-275B22219135}']
    property Item[Index: OleVariant]: IInsertsLibrary readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IInsertsLibrary
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {885CAD68-B42B-45CF-8620-E0138558EFE3}
// *********************************************************************//
  IInsertsLibrary = interface(ILibrary)
    ['{885CAD68-B42B-45CF-8620-E0138558EFE3}']
    function Get_ActiveFolder: WideString; safecall;
    function SetActiveFolder(const PathFolder: WideString; LastIsFile: WordBool; 
                             HaveLibName: WordBool): WordBool; safecall;
    function Get_Inserts: IInserts; safecall;
    function AddFolder(const PathFolder: WideString): WordBool; safecall;
    function RemoveFolder(const PathFolder: WideString): WordBool; safecall;
    property ActiveFolder: WideString read Get_ActiveFolder;
    property Inserts: IInserts read Get_Inserts;
  end;

// *********************************************************************//
// DispIntf:  IInsertsLibraryDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {885CAD68-B42B-45CF-8620-E0138558EFE3}
// *********************************************************************//
  IInsertsLibraryDisp = dispinterface
    ['{885CAD68-B42B-45CF-8620-E0138558EFE3}']
    property ActiveFolder: WideString readonly dispid 1;
    function SetActiveFolder(const PathFolder: WideString; LastIsFile: WordBool; 
                             HaveLibName: WordBool): WordBool; dispid 2;
    property Inserts: IInserts readonly dispid 3;
    function AddFolder(const PathFolder: WideString): WordBool; dispid 4;
    function RemoveFolder(const PathFolder: WideString): WordBool; dispid 5;
    property LibraryManagerFolder: WideString readonly dispid 2001;
    property Attach: WordBool dispid 2002;
    property LibraryType: ksLibraryTypeEnum readonly dispid 2003;
    property Name: WideString readonly dispid 2004;
    property PathName: WideString readonly dispid 2005;
    property Enable: WordBool readonly dispid 2006;
    function Execute(command: Integer; const external: IDispatch; post: WordBool): WordBool; dispid 2007;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IInserts
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {FCBF6340-119D-4736-BB95-F1EAB4BEF1B8}
// *********************************************************************//
  IInserts = interface(IKompasCollection)
    ['{FCBF6340-119D-4736-BB95-F1EAB4BEF1B8}']
    function Get_Item(Index: OleVariant): IInsert; safecall;
    function Add(const Name: WideString; docType: DocumentTypeEnum): IInsert; safecall;
    property Item[Index: OleVariant]: IInsert read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  IInsertsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {FCBF6340-119D-4736-BB95-F1EAB4BEF1B8}
// *********************************************************************//
  IInsertsDisp = dispinterface
    ['{FCBF6340-119D-4736-BB95-F1EAB4BEF1B8}']
    property Item[Index: OleVariant]: IInsert readonly dispid 0; default;
    function Add(const Name: WideString; docType: DocumentTypeEnum): IInsert; dispid 1;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IInsert
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {D6A6D305-6B5C-4392-B61D-D669C092EEF2}
// *********************************************************************//
  IInsert = interface(IKompasAPIObject)
    ['{D6A6D305-6B5C-4392-B61D-D669C092EEF2}']
    function Get_Name: WideString; safecall;
    procedure Set_Name(const PVal: WideString); safecall;
    function Get_Comment: OleVariant; safecall;
    procedure Set_Comment(PVal: OleVariant); safecall;
    function Get_LibraryFolder: WideString; safecall;
    function Get_PathName: WideString; safecall;
    function Edit: IKompasDocument; safecall;
    function Delete: WordBool; safecall;
    property Name: WideString read Get_Name write Set_Name;
    property Comment: OleVariant read Get_Comment write Set_Comment;
    property LibraryFolder: WideString read Get_LibraryFolder;
    property PathName: WideString read Get_PathName;
  end;

// *********************************************************************//
// DispIntf:  IInsertDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {D6A6D305-6B5C-4392-B61D-D669C092EEF2}
// *********************************************************************//
  IInsertDisp = dispinterface
    ['{D6A6D305-6B5C-4392-B61D-D669C092EEF2}']
    property Name: WideString dispid 1;
    property Comment: OleVariant dispid 2;
    property LibraryFolder: WideString readonly dispid 3;
    property PathName: WideString readonly dispid 4;
    function Edit: IKompasDocument; dispid 5;
    function Delete: WordBool; dispid 6;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IKompasError
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {0A8B4CD1-7158-4CE6-96E0-885376F5DE1B}
// *********************************************************************//
  IKompasError = interface(IKompasAPIObject)
    ['{0A8B4CD1-7158-4CE6-96E0-885376F5DE1B}']
    function Get_Code: Integer; safecall;
    function Get_Description: WideString; safecall;
    function Get_Error3D: WordBool; safecall;
    procedure Report; safecall;
    procedure Clear; safecall;
    property Code: Integer read Get_Code;
    property Description: WideString read Get_Description;
    property Error3D: WordBool read Get_Error3D;
  end;

// *********************************************************************//
// DispIntf:  IKompasErrorDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {0A8B4CD1-7158-4CE6-96E0-885376F5DE1B}
// *********************************************************************//
  IKompasErrorDisp = dispinterface
    ['{0A8B4CD1-7158-4CE6-96E0-885376F5DE1B}']
    property Code: Integer readonly dispid 1;
    property Description: WideString readonly dispid 2;
    property Error3D: WordBool readonly dispid 3;
    procedure Report; dispid 4;
    procedure Clear; dispid 5;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IConverter
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {642D03AB-4798-48A5-B075-3CD9AFA18554}
// *********************************************************************//
  IConverter = interface(IKompasAPIObject)
    ['{642D03AB-4798-48A5-B075-3CD9AFA18554}']
    function ConverterParameters(command: Integer): IUnknown; safecall;
    function GetFilter(docType: Integer; SaveAs: WordBool; out command: Integer): WideString; safecall;
    function Convert(const inputFile: WideString; const outfile: WideString; command: Integer; 
                     showParam: WordBool): Integer; safecall;
    function VisualEditConvertParam(parentHwnd: OLE_HANDLE; command: Integer): WordBool; safecall;
  end;

// *********************************************************************//
// DispIntf:  IConverterDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {642D03AB-4798-48A5-B075-3CD9AFA18554}
// *********************************************************************//
  IConverterDisp = dispinterface
    ['{642D03AB-4798-48A5-B075-3CD9AFA18554}']
    function ConverterParameters(command: Integer): IUnknown; dispid 1;
    function GetFilter(docType: Integer; SaveAs: WordBool; out command: Integer): WideString; dispid 2;
    function Convert(const inputFile: WideString; const outfile: WideString; command: Integer; 
                     showParam: WordBool): Integer; dispid 3;
    function VisualEditConvertParam(parentHwnd: OLE_HANDLE; command: Integer): WordBool; dispid 4;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ICheckSum
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {2AA9F713-2328-4E8F-B996-9DFDABC67DC9}
// *********************************************************************//
  ICheckSum = interface(IKompasAPIObject)
    ['{2AA9F713-2328-4E8F-B996-9DFDABC67DC9}']
    procedure Add(Value: OleVariant; Com: WordBool); safecall;
    function Get_Result: OleVariant; safecall;
    function Get_StrResult: WideString; safecall;
    function AddInterface(const Object_: IUnknown; Com: WordBool): WordBool; safecall;
    function AddReference(Object_: Integer; Doc: Integer; Com: WordBool): WordBool; safecall;
    procedure Clear; safecall;
    property Result: OleVariant read Get_Result;
    property StrResult: WideString read Get_StrResult;
  end;

// *********************************************************************//
// DispIntf:  ICheckSumDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {2AA9F713-2328-4E8F-B996-9DFDABC67DC9}
// *********************************************************************//
  ICheckSumDisp = dispinterface
    ['{2AA9F713-2328-4E8F-B996-9DFDABC67DC9}']
    procedure Add(Value: OleVariant; Com: WordBool); dispid 1;
    property Result: OleVariant readonly dispid 2;
    property StrResult: WideString readonly dispid 3;
    function AddInterface(const Object_: IUnknown; Com: WordBool): WordBool; dispid 4;
    function AddReference(Object_: Integer; Doc: Integer; Com: WordBool): WordBool; dispid 5;
    procedure Clear; dispid 6;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IProgressBarIndicator
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {BE125ABA-EAB2-4A22-99D7-108C84B6DCC5}
// *********************************************************************//
  IProgressBarIndicator = interface(IKompasAPIObject)
    ['{BE125ABA-EAB2-4A22-99D7-108C84B6DCC5}']
    procedure Start(MinVal: Integer; MaxVal: Integer; const TextVal: WideString; ResetVal: WordBool); safecall;
    procedure SetProgress(CurrentVal: Integer; const TextVal: WideString; ResetVal: WordBool); safecall;
    procedure SetText(const TextVal: WideString); safecall;
    procedure Stop(const TextVal: WideString; ResetVal: WordBool); safecall;
  end;

// *********************************************************************//
// DispIntf:  IProgressBarIndicatorDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {BE125ABA-EAB2-4A22-99D7-108C84B6DCC5}
// *********************************************************************//
  IProgressBarIndicatorDisp = dispinterface
    ['{BE125ABA-EAB2-4A22-99D7-108C84B6DCC5}']
    procedure Start(MinVal: Integer; MaxVal: Integer; const TextVal: WideString; ResetVal: WordBool); dispid 8001;
    procedure SetProgress(CurrentVal: Integer; const TextVal: WideString; ResetVal: WordBool); dispid 8002;
    procedure SetText(const TextVal: WideString); dispid 8003;
    procedure Stop(const TextVal: WideString; ResetVal: WordBool); dispid 8004;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ISystemSettings
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {FFB66332-17FF-47EB-AC43-32084F8F6077}
// *********************************************************************//
  ISystemSettings = interface(IKompasAPIObject)
    ['{FFB66332-17FF-47EB-AC43-32084F8F6077}']
    procedure Set_FilesAutoSaveSwitchOn(PVal: WordBool); safecall;
    function Get_FilesAutoSaveSwitchOn: WordBool; safecall;
    procedure Set_FilesBackupPrevCopySwitchOn(PVal: WordBool); safecall;
    function Get_FilesBackupPrevCopySwitchOn: WordBool; safecall;
    property FilesAutoSaveSwitchOn: WordBool read Get_FilesAutoSaveSwitchOn write Set_FilesAutoSaveSwitchOn;
    property FilesBackupPrevCopySwitchOn: WordBool read Get_FilesBackupPrevCopySwitchOn write Set_FilesBackupPrevCopySwitchOn;
  end;

// *********************************************************************//
// DispIntf:  ISystemSettingsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {FFB66332-17FF-47EB-AC43-32084F8F6077}
// *********************************************************************//
  ISystemSettingsDisp = dispinterface
    ['{FFB66332-17FF-47EB-AC43-32084F8F6077}']
    property FilesAutoSaveSwitchOn: WordBool dispid 1;
    property FilesBackupPrevCopySwitchOn: WordBool dispid 2;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IKompasDocument2D
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {096E62B3-7184-4998-9925-74BB710D8D8E}
// *********************************************************************//
  IKompasDocument2D = interface(IKompasDocument)
    ['{096E62B3-7184-4998-9925-74BB710D8D8E}']
    function Get_ViewsAndLayersManager: IViewsAndLayersManager; safecall;
    function GetDrawingObjectNotifyResult: IDispatch; safecall;
    property ViewsAndLayersManager: IViewsAndLayersManager read Get_ViewsAndLayersManager;
  end;

// *********************************************************************//
// DispIntf:  IKompasDocument2DDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {096E62B3-7184-4998-9925-74BB710D8D8E}
// *********************************************************************//
  IKompasDocument2DDisp = dispinterface
    ['{096E62B3-7184-4998-9925-74BB710D8D8E}']
    property ViewsAndLayersManager: IViewsAndLayersManager readonly dispid 1;
    function GetDrawingObjectNotifyResult: IDispatch; dispid 2;
    property DocumentType: DocumentTypeEnum readonly dispid 3000;
    property DocumentFrames: IDocumentFrames readonly dispid 3001;
    function Close(closeOptions: DocumentCloseOptions): WordBool; dispid 3002;
    procedure Save; dispid 3003;
    procedure SaveAs(const PathName: WideString); dispid 3004;
    property Name: WideString readonly dispid 3005;
    property PathName: WideString readonly dispid 3006;
    property Path: WideString readonly dispid 3007;
    property Visible: WordBool readonly dispid 3008;
    property Active: WordBool dispid 3009;
    property ReadOnly: WordBool dispid 3010;
    property Changed: WordBool readonly dispid 3011;
    property DocumentSettings: IDocumentSettings readonly dispid 3012;
    property SpecificationDescriptions: ISpecificationDescriptions readonly dispid 3013;
    property LayoutSheets: ILayoutSheets readonly dispid 3014;
    property UserDataStoragesMng: IUserDataStoragesMng readonly dispid 3015;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IViewsAndLayersManager
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {A4737593-578B-4187-8CAD-E1056EB5404B}
// *********************************************************************//
  IViewsAndLayersManager = interface(IKompasAPIObject)
    ['{A4737593-578B-4187-8CAD-E1056EB5404B}']
    function Get_Views: IViews; safecall;
    function Get_LayerGroups: ILayerGroups; safecall;
    property Views: IViews read Get_Views;
    property LayerGroups: ILayerGroups read Get_LayerGroups;
  end;

// *********************************************************************//
// DispIntf:  IViewsAndLayersManagerDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {A4737593-578B-4187-8CAD-E1056EB5404B}
// *********************************************************************//
  IViewsAndLayersManagerDisp = dispinterface
    ['{A4737593-578B-4187-8CAD-E1056EB5404B}']
    property Views: IViews readonly dispid 1;
    property LayerGroups: ILayerGroups readonly dispid 2;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IDrawingObjects
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {3DD7F97B-59CB-4297-A1BA-04E5A7FFF448}
// *********************************************************************//
  IDrawingObjects = interface(IKompasCollection)
    ['{3DD7F97B-59CB-4297-A1BA-04E5A7FFF448}']
    function Get_Item(Index: OleVariant): IDrawingObject; safecall;
    property Item[Index: OleVariant]: IDrawingObject read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  IDrawingObjectsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {3DD7F97B-59CB-4297-A1BA-04E5A7FFF448}
// *********************************************************************//
  IDrawingObjectsDisp = dispinterface
    ['{3DD7F97B-59CB-4297-A1BA-04E5A7FFF448}']
    property Item[Index: OleVariant]: IDrawingObject readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IViews
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9CD1B5E6-C1A2-4910-8D0C-97080B14AA3D}
// *********************************************************************//
  IViews = interface(IDrawingObjects)
    ['{9CD1B5E6-C1A2-4910-8D0C-97080B14AA3D}']
    function Get_View(Index: OleVariant): IView; safecall;
    function Get_ViewByNumber(Numb: Integer): IView; safecall;
    function Add(ViewType: LtViewType): IView; safecall;
    function Get_ActiveView: IView; safecall;
    property View[Index: OleVariant]: IView read Get_View;
    property ViewByNumber[Numb: Integer]: IView read Get_ViewByNumber;
    property ActiveView: IView read Get_ActiveView;
  end;

// *********************************************************************//
// DispIntf:  IViewsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9CD1B5E6-C1A2-4910-8D0C-97080B14AA3D}
// *********************************************************************//
  IViewsDisp = dispinterface
    ['{9CD1B5E6-C1A2-4910-8D0C-97080B14AA3D}']
    property View[Index: OleVariant]: IView readonly dispid 1;
    property ViewByNumber[Numb: Integer]: IView readonly dispid 2;
    function Add(ViewType: LtViewType): IView; dispid 3;
    property ActiveView: IView readonly dispid 4;
    property Item[Index: OleVariant]: IDrawingObject readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IDrawingObject
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {07EF021F-11C1-4015-8D87-4DC94A2A71B0}
// *********************************************************************//
  IDrawingObject = interface(IKompasAPIObject)
    ['{07EF021F-11C1-4015-8D87-4DC94A2A71B0}']
    function Get_DrawingObjectType: DrawingObjectTypeEnum; safecall;
    function Get_LayerNumber: Integer; safecall;
    procedure Set_LayerNumber(PVal: Integer); safecall;
    function Get_Temp: WordBool; safecall;
    function Get_Valid: WordBool; safecall;
    function Update: WordBool; safecall;
    function Delete: WordBool; safecall;
    function Get_DrawingObjectParamType: ksDrawingObjectParamTypeEnum; safecall;
    procedure Set_DrawingObjectParamType(PVal: ksDrawingObjectParamTypeEnum); safecall;
    property DrawingObjectType: DrawingObjectTypeEnum read Get_DrawingObjectType;
    property LayerNumber: Integer read Get_LayerNumber write Set_LayerNumber;
    property Temp: WordBool read Get_Temp;
    property Valid: WordBool read Get_Valid;
    property DrawingObjectParamType: ksDrawingObjectParamTypeEnum read Get_DrawingObjectParamType write Set_DrawingObjectParamType;
  end;

// *********************************************************************//
// DispIntf:  IDrawingObjectDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {07EF021F-11C1-4015-8D87-4DC94A2A71B0}
// *********************************************************************//
  IDrawingObjectDisp = dispinterface
    ['{07EF021F-11C1-4015-8D87-4DC94A2A71B0}']
    property DrawingObjectType: DrawingObjectTypeEnum readonly dispid 3000;
    property LayerNumber: Integer dispid 3001;
    property Temp: WordBool readonly dispid 3002;
    property Valid: WordBool readonly dispid 3003;
    function Update: WordBool; dispid 3004;
    function Delete: WordBool; dispid 3005;
    property DrawingObjectParamType: ksDrawingObjectParamTypeEnum dispid 3006;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IView
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {21A7BA87-1C8B-41B4-8247-CDD593546F37}
// *********************************************************************//
  IView = interface(IDrawingObject)
    ['{21A7BA87-1C8B-41B4-8247-CDD593546F37}']
    procedure Set_Number(PVal: Integer); safecall;
    function Get_Number: Integer; safecall;
    procedure Set_Name(const PVal: WideString); safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Background(PVal: WordBool); safecall;
    function Get_Background: WordBool; safecall;
    procedure Set_Visible(PVal: WordBool); safecall;
    function Get_Visible: WordBool; safecall;
    procedure Set_Current(PVal: WordBool); safecall;
    function Get_Current: WordBool; safecall;
    procedure Set_Color(PVal: Integer); safecall;
    function Get_Color: Integer; safecall;
    procedure Set_Comment(const PVal: WideString); safecall;
    function Get_Comment: WideString; safecall;
    function Get_ObjectCount: Integer; safecall;
    procedure Set_X(PVal: Double); safecall;
    function Get_X: Double; safecall;
    procedure Set_Y(PVal: Double); safecall;
    function Get_Y: Double; safecall;
    procedure Set_Scale(PVal: Double); safecall;
    function Get_Scale: Double; safecall;
    procedure Set_Angle(PVal: Double); safecall;
    function Get_Angle: Double; safecall;
    function Get_ViewType: LtViewType; safecall;
    function Get_Layers: ILayers; safecall;
    property Number: Integer read Get_Number write Set_Number;
    property Name: WideString read Get_Name write Set_Name;
    property Background: WordBool read Get_Background write Set_Background;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property Current: WordBool read Get_Current write Set_Current;
    property Color: Integer read Get_Color write Set_Color;
    property Comment: WideString read Get_Comment write Set_Comment;
    property ObjectCount: Integer read Get_ObjectCount;
    property X: Double read Get_X write Set_X;
    property Y: Double read Get_Y write Set_Y;
    property Scale: Double read Get_Scale write Set_Scale;
    property Angle: Double read Get_Angle write Set_Angle;
    property ViewType: LtViewType read Get_ViewType;
    property Layers: ILayers read Get_Layers;
  end;

// *********************************************************************//
// DispIntf:  IViewDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {21A7BA87-1C8B-41B4-8247-CDD593546F37}
// *********************************************************************//
  IViewDisp = dispinterface
    ['{21A7BA87-1C8B-41B4-8247-CDD593546F37}']
    property Number: Integer dispid 1;
    property Name: WideString dispid 2;
    property Background: WordBool dispid 3;
    property Visible: WordBool dispid 4;
    property Current: WordBool dispid 5;
    property Color: Integer dispid 6;
    property Comment: WideString dispid 7;
    property ObjectCount: Integer readonly dispid 8;
    property X: Double dispid 9;
    property Y: Double dispid 10;
    property Scale: Double dispid 11;
    property Angle: Double dispid 12;
    property ViewType: LtViewType readonly dispid 13;
    property Layers: ILayers readonly dispid 14;
    property DrawingObjectType: DrawingObjectTypeEnum readonly dispid 3000;
    property LayerNumber: Integer dispid 3001;
    property Temp: WordBool readonly dispid 3002;
    property Valid: WordBool readonly dispid 3003;
    function Update: WordBool; dispid 3004;
    function Delete: WordBool; dispid 3005;
    property DrawingObjectParamType: ksDrawingObjectParamTypeEnum dispid 3006;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ILayers
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F6DC2898-D596-4418-A21A-D15AE07B9A40}
// *********************************************************************//
  ILayers = interface(IDrawingObjects)
    ['{F6DC2898-D596-4418-A21A-D15AE07B9A40}']
    function Get_Layer(Index: OleVariant): ILayer; safecall;
    function Get_LayerByNumber(Number: Integer): ILayer; safecall;
    function Add: ILayer; safecall;
    function Attach(const PVal: ILayer): WordBool; safecall;
    function Detach(const PVal: ILayer): WordBool; safecall;
    property Layer[Index: OleVariant]: ILayer read Get_Layer;
    property LayerByNumber[Number: Integer]: ILayer read Get_LayerByNumber;
  end;

// *********************************************************************//
// DispIntf:  ILayersDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F6DC2898-D596-4418-A21A-D15AE07B9A40}
// *********************************************************************//
  ILayersDisp = dispinterface
    ['{F6DC2898-D596-4418-A21A-D15AE07B9A40}']
    property Layer[Index: OleVariant]: ILayer readonly dispid 1;
    property LayerByNumber[Number: Integer]: ILayer readonly dispid 2;
    function Add: ILayer; dispid 3;
    function Attach(const PVal: ILayer): WordBool; dispid 4;
    function Detach(const PVal: ILayer): WordBool; dispid 5;
    property Item[Index: OleVariant]: IDrawingObject readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ILayer
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9AD76C38-CC48-4901-AEE5-27B48F51563C}
// *********************************************************************//
  ILayer = interface(IDrawingObject)
    ['{9AD76C38-CC48-4901-AEE5-27B48F51563C}']
    procedure Set_Name(const PVal: WideString); safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Background(PVal: WordBool); safecall;
    function Get_Background: WordBool; safecall;
    procedure Set_Visible(PVal: WordBool); safecall;
    function Get_Visible: WordBool; safecall;
    procedure Set_Current(PVal: WordBool); safecall;
    function Get_Current: WordBool; safecall;
    procedure Set_Color(PVal: Integer); safecall;
    function Get_Color: Integer; safecall;
    procedure Set_Comment(const PVal: WideString); safecall;
    function Get_Comment: WideString; safecall;
    function Get_ObjectCount: Integer; safecall;
    property Name: WideString read Get_Name write Set_Name;
    property Background: WordBool read Get_Background write Set_Background;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property Current: WordBool read Get_Current write Set_Current;
    property Color: Integer read Get_Color write Set_Color;
    property Comment: WideString read Get_Comment write Set_Comment;
    property ObjectCount: Integer read Get_ObjectCount;
  end;

// *********************************************************************//
// DispIntf:  ILayerDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9AD76C38-CC48-4901-AEE5-27B48F51563C}
// *********************************************************************//
  ILayerDisp = dispinterface
    ['{9AD76C38-CC48-4901-AEE5-27B48F51563C}']
    property Name: WideString dispid 1;
    property Background: WordBool dispid 2;
    property Visible: WordBool dispid 3;
    property Current: WordBool dispid 4;
    property Color: Integer dispid 5;
    property Comment: WideString dispid 6;
    property ObjectCount: Integer readonly dispid 7;
    property DrawingObjectType: DrawingObjectTypeEnum readonly dispid 3000;
    property LayerNumber: Integer dispid 3001;
    property Temp: WordBool readonly dispid 3002;
    property Valid: WordBool readonly dispid 3003;
    function Update: WordBool; dispid 3004;
    function Delete: WordBool; dispid 3005;
    property DrawingObjectParamType: ksDrawingObjectParamTypeEnum dispid 3006;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ILayerGroups
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {DBFF6D98-8F79-453E-9B8B-81E40A6D8027}
// *********************************************************************//
  ILayerGroups = interface(IKompasCollection)
    ['{DBFF6D98-8F79-453E-9B8B-81E40A6D8027}']
    function Get_Item(Index: OleVariant): ILayerGroup; safecall;
    function Add(const Owner: IView; Dinamic: WordBool): ILayerGroup; safecall;
    function Attach(const PGroup: ILayerGroup): WordBool; safecall;
    function Detach(const PGroup: ILayerGroup): WordBool; safecall;
    property Item[Index: OleVariant]: ILayerGroup read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  ILayerGroupsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {DBFF6D98-8F79-453E-9B8B-81E40A6D8027}
// *********************************************************************//
  ILayerGroupsDisp = dispinterface
    ['{DBFF6D98-8F79-453E-9B8B-81E40A6D8027}']
    property Item[Index: OleVariant]: ILayerGroup readonly dispid 0; default;
    function Add(const Owner: IView; Dinamic: WordBool): ILayerGroup; dispid 1;
    function Attach(const PGroup: ILayerGroup): WordBool; dispid 2;
    function Detach(const PGroup: ILayerGroup): WordBool; dispid 3;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ILayerGroup
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {265BBB5A-7B8A-4AA5-A0BB-FF64D23BE62B}
// *********************************************************************//
  ILayerGroup = interface(IKompasAPIObject)
    ['{265BBB5A-7B8A-4AA5-A0BB-FF64D23BE62B}']
    function Get_OwnerGroup: ILayerGroup; safecall;
    function Get_LayerGroups: ILayerGroups; safecall;
    function Get_Layers: ILayers; safecall;
    procedure Set_Name(const PVal: WideString); safecall;
    function Get_Name: WideString; safecall;
    function Get_LayerFilterConditions: ILayerFilterConditions; safecall;
    function GetLayerStates(LayerIndex: OleVariant; out Visible: WordBool; 
                            out Background: WordBool; out Curent: WordBool; out Color: Integer): WordBool; safecall;
    function SetLayerStates(LayerIndex: OleVariant; Visible: WordBool; Background: WordBool; 
                            Curent: WordBool; Color: Integer): WordBool; safecall;
    procedure Set_Current(PVal: WordBool); safecall;
    function Get_Current: WordBool; safecall;
    function Delete: WordBool; safecall;
    function Get_OwnerView: IView; safecall;
    procedure Set_OwnerView(const PVal: IView); safecall;
    function Get_UniqueId: Double; safecall;
    property OwnerGroup: ILayerGroup read Get_OwnerGroup;
    property LayerGroups: ILayerGroups read Get_LayerGroups;
    property Layers: ILayers read Get_Layers;
    property Name: WideString read Get_Name write Set_Name;
    property LayerFilterConditions: ILayerFilterConditions read Get_LayerFilterConditions;
    property Current: WordBool read Get_Current write Set_Current;
    property OwnerView: IView read Get_OwnerView write Set_OwnerView;
    property UniqueId: Double read Get_UniqueId;
  end;

// *********************************************************************//
// DispIntf:  ILayerGroupDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {265BBB5A-7B8A-4AA5-A0BB-FF64D23BE62B}
// *********************************************************************//
  ILayerGroupDisp = dispinterface
    ['{265BBB5A-7B8A-4AA5-A0BB-FF64D23BE62B}']
    property OwnerGroup: ILayerGroup readonly dispid 1;
    property LayerGroups: ILayerGroups readonly dispid 2;
    property Layers: ILayers readonly dispid 3;
    property Name: WideString dispid 4;
    property LayerFilterConditions: ILayerFilterConditions readonly dispid 5;
    function GetLayerStates(LayerIndex: OleVariant; out Visible: WordBool; 
                            out Background: WordBool; out Curent: WordBool; out Color: Integer): WordBool; dispid 6;
    function SetLayerStates(LayerIndex: OleVariant; Visible: WordBool; Background: WordBool; 
                            Curent: WordBool; Color: Integer): WordBool; dispid 7;
    property Current: WordBool dispid 8;
    function Delete: WordBool; dispid 9;
    property OwnerView: IView dispid 10;
    property UniqueId: Double readonly dispid 11;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ILayerFilterConditions
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {BCA22E27-AB60-4BA6-87EE-92158AA6D366}
// *********************************************************************//
  ILayerFilterConditions = interface(IKompasCollection)
    ['{BCA22E27-AB60-4BA6-87EE-92158AA6D366}']
    function Get_Item(Index: OleVariant): ILayerFilterCondition; safecall;
    function Add: ILayerFilterCondition; safecall;
    property Item[Index: OleVariant]: ILayerFilterCondition read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  ILayerFilterConditionsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {BCA22E27-AB60-4BA6-87EE-92158AA6D366}
// *********************************************************************//
  ILayerFilterConditionsDisp = dispinterface
    ['{BCA22E27-AB60-4BA6-87EE-92158AA6D366}']
    property Item[Index: OleVariant]: ILayerFilterCondition readonly dispid 0; default;
    function Add: ILayerFilterCondition; dispid 2;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ILayerFilterCondition
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {D743BC12-82A9-4E8F-85B2-7154A356ACC0}
// *********************************************************************//
  ILayerFilterCondition = interface(IKompasAPIObject)
    ['{D743BC12-82A9-4E8F-85B2-7154A356ACC0}']
    procedure Set_Number(const PVal: WideString); safecall;
    function Get_Number: WideString; safecall;
    procedure Set_Name(const PVal: WideString); safecall;
    function Get_Name: WideString; safecall;
    procedure Set_Background(PVal: FilterCondotionStateEnum); safecall;
    function Get_Background: FilterCondotionStateEnum; safecall;
    procedure Set_Visible(PVal: FilterCondotionStateEnum); safecall;
    function Get_Visible: FilterCondotionStateEnum; safecall;
    procedure Set_HaveObjects(PVal: FilterCondotionStateEnum); safecall;
    function Get_HaveObjects: FilterCondotionStateEnum; safecall;
    procedure Set_Color(PVal: Integer); safecall;
    function Get_Color: Integer; safecall;
    procedure Set_Comment(const PVal: WideString); safecall;
    function Get_Comment: WideString; safecall;
    property Number: WideString read Get_Number write Set_Number;
    property Name: WideString read Get_Name write Set_Name;
    property Background: FilterCondotionStateEnum read Get_Background write Set_Background;
    property Visible: FilterCondotionStateEnum read Get_Visible write Set_Visible;
    property HaveObjects: FilterCondotionStateEnum read Get_HaveObjects write Set_HaveObjects;
    property Color: Integer read Get_Color write Set_Color;
    property Comment: WideString read Get_Comment write Set_Comment;
  end;

// *********************************************************************//
// DispIntf:  ILayerFilterConditionDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {D743BC12-82A9-4E8F-85B2-7154A356ACC0}
// *********************************************************************//
  ILayerFilterConditionDisp = dispinterface
    ['{D743BC12-82A9-4E8F-85B2-7154A356ACC0}']
    property Number: WideString dispid 1;
    property Name: WideString dispid 2;
    property Background: FilterCondotionStateEnum dispid 3;
    property Visible: FilterCondotionStateEnum dispid 4;
    property HaveObjects: FilterCondotionStateEnum dispid 5;
    property Color: Integer dispid 6;
    property Comment: WideString dispid 7;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IKompasDocument3D
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {7B60E769-06C3-4FDC-9677-7B5EF5180308}
// *********************************************************************//
  IKompasDocument3D = interface(IKompasDocument)
    ['{7B60E769-06C3-4FDC-9677-7B5EF5180308}']
    function Get_TopPart: IPart7; safecall;
    procedure Set_HideAllPlanes(PVal: WordBool); safecall;
    function Get_HideAllPlanes: WordBool; safecall;
    procedure Set_HideAllAxis(PVal: WordBool); safecall;
    function Get_HideAllAxis: WordBool; safecall;
    procedure Set_HideAllSketches(PVal: WordBool); safecall;
    function Get_HideAllSketches: WordBool; safecall;
    procedure Set_HideAllPlaces(PVal: WordBool); safecall;
    function Get_HideAllPlaces: WordBool; safecall;
    procedure Set_HideAllSurfaces(PVal: WordBool); safecall;
    function Get_HideAllSurfaces: WordBool; safecall;
    procedure Set_HideAllThreads(PVal: WordBool); safecall;
    function Get_HideAllThreads: WordBool; safecall;
    procedure Set_HideAllCurves(PVal: WordBool); safecall;
    function Get_HideAllCurves: WordBool; safecall;
    procedure Set_HideAllControlPoints(PVal: WordBool); safecall;
    function Get_HideAllControlPoints: WordBool; safecall;
    procedure Set_Perspective(PVal: WordBool); safecall;
    function Get_Perspective: WordBool; safecall;
    procedure Set_DrawMode(PVal: Integer); safecall;
    function Get_DrawMode: Integer; safecall;
    procedure Set_ShadedWireframe(PVal: WordBool); safecall;
    function Get_ShadedWireframe: WordBool; safecall;
    property TopPart: IPart7 read Get_TopPart;
    property HideAllPlanes: WordBool read Get_HideAllPlanes write Set_HideAllPlanes;
    property HideAllAxis: WordBool read Get_HideAllAxis write Set_HideAllAxis;
    property HideAllSketches: WordBool read Get_HideAllSketches write Set_HideAllSketches;
    property HideAllPlaces: WordBool read Get_HideAllPlaces write Set_HideAllPlaces;
    property HideAllSurfaces: WordBool read Get_HideAllSurfaces write Set_HideAllSurfaces;
    property HideAllThreads: WordBool read Get_HideAllThreads write Set_HideAllThreads;
    property HideAllCurves: WordBool read Get_HideAllCurves write Set_HideAllCurves;
    property HideAllControlPoints: WordBool read Get_HideAllControlPoints write Set_HideAllControlPoints;
    property Perspective: WordBool read Get_Perspective write Set_Perspective;
    property DrawMode: Integer read Get_DrawMode write Set_DrawMode;
    property ShadedWireframe: WordBool read Get_ShadedWireframe write Set_ShadedWireframe;
  end;

// *********************************************************************//
// DispIntf:  IKompasDocument3DDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {7B60E769-06C3-4FDC-9677-7B5EF5180308}
// *********************************************************************//
  IKompasDocument3DDisp = dispinterface
    ['{7B60E769-06C3-4FDC-9677-7B5EF5180308}']
    property TopPart: IPart7 readonly dispid 5002;
    property HideAllPlanes: WordBool dispid 5003;
    property HideAllAxis: WordBool dispid 5004;
    property HideAllSketches: WordBool dispid 5005;
    property HideAllPlaces: WordBool dispid 5006;
    property HideAllSurfaces: WordBool dispid 5007;
    property HideAllThreads: WordBool dispid 5008;
    property HideAllCurves: WordBool dispid 5009;
    property HideAllControlPoints: WordBool dispid 5010;
    property Perspective: WordBool dispid 5011;
    property DrawMode: Integer dispid 5012;
    property ShadedWireframe: WordBool dispid 5013;
    property DocumentType: DocumentTypeEnum readonly dispid 3000;
    property DocumentFrames: IDocumentFrames readonly dispid 3001;
    function Close(closeOptions: DocumentCloseOptions): WordBool; dispid 3002;
    procedure Save; dispid 3003;
    procedure SaveAs(const PathName: WideString); dispid 3004;
    property Name: WideString readonly dispid 3005;
    property PathName: WideString readonly dispid 3006;
    property Path: WideString readonly dispid 3007;
    property Visible: WordBool readonly dispid 3008;
    property Active: WordBool dispid 3009;
    property ReadOnly: WordBool dispid 3010;
    property Changed: WordBool readonly dispid 3011;
    property DocumentSettings: IDocumentSettings readonly dispid 3012;
    property SpecificationDescriptions: ISpecificationDescriptions readonly dispid 3013;
    property LayoutSheets: ILayoutSheets readonly dispid 3014;
    property UserDataStoragesMng: IUserDataStoragesMng readonly dispid 3015;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IModelObject
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {E37256D4-9021-47AC-8FAF-3713FB2A50C3}
// *********************************************************************//
  IModelObject = interface(IKompasAPIObject)
    ['{E37256D4-9021-47AC-8FAF-3713FB2A50C3}']
    function Get_Name: WideString; safecall;
    procedure Set_Name(const PVal: WideString); safecall;
    procedure Set_Hidden(PVal: WordBool); safecall;
    function Get_Hidden: WordBool; safecall;
    function Update: WordBool; safecall;
    function Get_Valid: WordBool; safecall;
    function Get_Part: IPart7; safecall;
    function Get_ModelObjectType: ksObj3dTypeEnum; safecall;
    function Get_Owner: IFeature7; safecall;
    property Name: WideString read Get_Name write Set_Name;
    property Hidden: WordBool read Get_Hidden write Set_Hidden;
    property Valid: WordBool read Get_Valid;
    property Part: IPart7 read Get_Part;
    property ModelObjectType: ksObj3dTypeEnum read Get_ModelObjectType;
    property Owner: IFeature7 read Get_Owner;
  end;

// *********************************************************************//
// DispIntf:  IModelObjectDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {E37256D4-9021-47AC-8FAF-3713FB2A50C3}
// *********************************************************************//
  IModelObjectDisp = dispinterface
    ['{E37256D4-9021-47AC-8FAF-3713FB2A50C3}']
    property Name: WideString dispid 501;
    property Hidden: WordBool dispid 502;
    function Update: WordBool; dispid 503;
    property Valid: WordBool readonly dispid 504;
    property Part: IPart7 readonly dispid 505;
    property ModelObjectType: ksObj3dTypeEnum readonly dispid 506;
    property Owner: IFeature7 readonly dispid 507;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IPart7
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {FA4A5FDE-A08C-4F5A-8C04-98395BA44307}
// *********************************************************************//
  IPart7 = interface(IModelObject)
    ['{FA4A5FDE-A08C-4F5A-8C04-98395BA44307}']
    function Get_Marking: WideString; safecall;
    procedure Set_Marking(const PVal: WideString); safecall;
    function Get_FileName: WideString; safecall;
    procedure Set_FileName(const PVal: WideString); safecall;
    procedure Set_Standard(PVal: WordBool); safecall;
    function Get_Standard: WordBool; safecall;
    procedure Set_Fixed(PVal: WordBool); safecall;
    function Get_Fixed: WordBool; safecall;
    function Get_Detail: WordBool; safecall;
    function Get_Mass: Double; safecall;
    function Get_Density: Double; safecall;
    function Get_Material: WideString; safecall;
    function SetMaterial(const Name: WideString; Density: Double): WordBool; safecall;
    function Get_Parts: IParts7; safecall;
    function Get_VariableTable: IVariableTable; safecall;
    function Get_PartsEx(PartCollectionType: OleVariant): OleVariant; safecall;
    function Get_InstanceCount(const Part: IPart7): Integer; safecall;
    function SelectByPoint(Objects: OleVariant; X: Double; Y: Double; Z: Double): OleVariant; safecall;
    property Marking: WideString read Get_Marking write Set_Marking;
    property FileName: WideString read Get_FileName write Set_FileName;
    property Standard: WordBool read Get_Standard write Set_Standard;
    property Fixed: WordBool read Get_Fixed write Set_Fixed;
    property Detail: WordBool read Get_Detail;
    property Mass: Double read Get_Mass;
    property Density: Double read Get_Density;
    property Material: WideString read Get_Material;
    property Parts: IParts7 read Get_Parts;
    property VariableTable: IVariableTable read Get_VariableTable;
    property PartsEx[PartCollectionType: OleVariant]: OleVariant read Get_PartsEx;
    property InstanceCount[const Part: IPart7]: Integer read Get_InstanceCount;
  end;

// *********************************************************************//
// DispIntf:  IPart7Disp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {FA4A5FDE-A08C-4F5A-8C04-98395BA44307}
// *********************************************************************//
  IPart7Disp = dispinterface
    ['{FA4A5FDE-A08C-4F5A-8C04-98395BA44307}']
    property Marking: WideString dispid 1;
    property FileName: WideString dispid 2;
    property Standard: WordBool dispid 3;
    property Fixed: WordBool dispid 4;
    property Detail: WordBool readonly dispid 5;
    property Mass: Double readonly dispid 6;
    property Density: Double readonly dispid 7;
    property Material: WideString readonly dispid 8;
    function SetMaterial(const Name: WideString; Density: Double): WordBool; dispid 9;
    property Parts: IParts7 readonly dispid 10;
    property VariableTable: IVariableTable readonly dispid 11;
    property PartsEx[PartCollectionType: OleVariant]: OleVariant readonly dispid 12;
    property InstanceCount[const Part: IPart7]: Integer readonly dispid 13;
    function SelectByPoint(Objects: OleVariant; X: Double; Y: Double; Z: Double): OleVariant; dispid 14;
    property Name: WideString dispid 501;
    property Hidden: WordBool dispid 502;
    function Update: WordBool; dispid 503;
    property Valid: WordBool readonly dispid 504;
    property Part: IPart7 readonly dispid 505;
    property ModelObjectType: ksObj3dTypeEnum readonly dispid 506;
    property Owner: IFeature7 readonly dispid 507;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IFeature7
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {EF4343FA-985D-4FE9-AD5F-439BC8F92958}
// *********************************************************************//
  IFeature7 = interface(IDispatch)
    ['{EF4343FA-985D-4FE9-AD5F-439BC8F92958}']
    function Get_Name: WideString; safecall;
    function Get_UpdateStamp: Integer; safecall;
    function Get_OwnerFeature: IFeature7; safecall;
    function Get_Valid: WordBool; safecall;
    procedure Set_Excluded(PVal: WordBool); safecall;
    function Get_Excluded: WordBool; safecall;
    function Get_ModelObjects(ObjType: OleVariant): OleVariant; safecall;
    function Get_FeatureType: ksObj3dTypeEnum; safecall;
    function Delete: WordBool; safecall;
    function Get_SubFeatures(TreeType: ksTreeTypeEnum; Through: WordBool; LibObject: WordBool): OleVariant; safecall;
    property Name: WideString read Get_Name;
    property UpdateStamp: Integer read Get_UpdateStamp;
    property OwnerFeature: IFeature7 read Get_OwnerFeature;
    property Valid: WordBool read Get_Valid;
    property Excluded: WordBool read Get_Excluded write Set_Excluded;
    property ModelObjects[ObjType: OleVariant]: OleVariant read Get_ModelObjects;
    property FeatureType: ksObj3dTypeEnum read Get_FeatureType;
    property SubFeatures[TreeType: ksTreeTypeEnum; Through: WordBool; LibObject: WordBool]: OleVariant read Get_SubFeatures;
  end;

// *********************************************************************//
// DispIntf:  IFeature7Disp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {EF4343FA-985D-4FE9-AD5F-439BC8F92958}
// *********************************************************************//
  IFeature7Disp = dispinterface
    ['{EF4343FA-985D-4FE9-AD5F-439BC8F92958}']
    property Name: WideString readonly dispid 2001;
    property UpdateStamp: Integer readonly dispid 2002;
    property OwnerFeature: IFeature7 readonly dispid 2003;
    property Valid: WordBool readonly dispid 2004;
    property Excluded: WordBool dispid 2005;
    property ModelObjects[ObjType: OleVariant]: OleVariant readonly dispid 2006;
    property FeatureType: ksObj3dTypeEnum readonly dispid 2007;
    function Delete: WordBool; dispid 2008;
    property SubFeatures[TreeType: ksTreeTypeEnum; Through: WordBool; LibObject: WordBool]: OleVariant readonly dispid 2009;
  end;

// *********************************************************************//
// Interface: IModelObjects
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {125CB096-639E-479F-98DE-F27FAB23838A}
// *********************************************************************//
  IModelObjects = interface(IKompasCollection)
    ['{125CB096-639E-479F-98DE-F27FAB23838A}']
    function Get_Item(Index: OleVariant): IModelObject; safecall;
    property Item[Index: OleVariant]: IModelObject read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  IModelObjectsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {125CB096-639E-479F-98DE-F27FAB23838A}
// *********************************************************************//
  IModelObjectsDisp = dispinterface
    ['{125CB096-639E-479F-98DE-F27FAB23838A}']
    property Item[Index: OleVariant]: IModelObject readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IParts7
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {42F8FCEF-E56F-466C-8814-BEBAC0719AE6}
// *********************************************************************//
  IParts7 = interface(IModelObjects)
    ['{42F8FCEF-E56F-466C-8814-BEBAC0719AE6}']
    function Get_Part(Index: OleVariant): IPart7; safecall;
    function AddFromFile(const FileName: WideString; ExternalFile: WordBool; Redraw: WordBool): IPart7; safecall;
    function Add(const FileName: WideString; const Plane: IModelObject): IPart7; safecall;
    property Part[Index: OleVariant]: IPart7 read Get_Part;
  end;

// *********************************************************************//
// DispIntf:  IParts7Disp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {42F8FCEF-E56F-466C-8814-BEBAC0719AE6}
// *********************************************************************//
  IParts7Disp = dispinterface
    ['{42F8FCEF-E56F-466C-8814-BEBAC0719AE6}']
    property Part[Index: OleVariant]: IPart7 readonly dispid 1;
    function AddFromFile(const FileName: WideString; ExternalFile: WordBool; Redraw: WordBool): IPart7; dispid 2;
    function Add(const FileName: WideString; const Plane: IModelObject): IPart7; dispid 3;
    property Item[Index: OleVariant]: IModelObject readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IVariableTable
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {2B8B154E-ED76-4FF0-B3E4-FEE691D014A4}
// *********************************************************************//
  IVariableTable = interface(IKompasAPIObject)
    ['{2B8B154E-ED76-4FF0-B3E4-FEE691D014A4}']
    function Get_RowsCount: Integer; safecall;
    function Get_ColumnsCount: Integer; safecall;
    function Get_VarName(Column: Integer): WideString; safecall;
    procedure Set_VarName(Column: Integer; const Val: WideString); safecall;
    function Get_VarNames: OleVariant; safecall;
    procedure Set_VarNames(Val: OleVariant); safecall;
    function Get_Comment(Val: Integer): WideString; safecall;
    procedure Set_Comment(Val: Integer; const BstrVal: WideString); safecall;
    function Get_TableRow(Index: OleVariant): OleVariant; safecall;
    procedure Set_TableRow(Index: OleVariant; Val: OleVariant); safecall;
    function Get_Cell(RowIndexVal: Integer; ColIndex: Integer): Double; safecall;
    procedure Set_Cell(RowIndexVal: Integer; ColIndex: Integer; Val: Double); safecall;
    function ApplyVars(Index: OleVariant): WordBool; safecall;
    function Get_VisualTable(WinVal: OLE_HANDLE; Select: WordBool): Integer; safecall;
    function AddColumn(const Val: WideString): Integer; safecall;
    function DeleteColumn(ColVal: OleVariant): WordBool; safecall;
    function AddRow(const Val: WideString): Integer; safecall;
    function DeleteRow(RowVal: OleVariant): WordBool; safecall;
    function Clear: WordBool; safecall;
    function FindColumnIndex(const Val: WideString): Integer; safecall;
    property RowsCount: Integer read Get_RowsCount;
    property ColumnsCount: Integer read Get_ColumnsCount;
    property VarName[Column: Integer]: WideString read Get_VarName write Set_VarName;
    property VarNames: OleVariant read Get_VarNames write Set_VarNames;
    property Comment[Val: Integer]: WideString read Get_Comment write Set_Comment;
    property TableRow[Index: OleVariant]: OleVariant read Get_TableRow write Set_TableRow;
    property Cell[RowIndexVal: Integer; ColIndex: Integer]: Double read Get_Cell write Set_Cell;
    property VisualTable[WinVal: OLE_HANDLE; Select: WordBool]: Integer read Get_VisualTable;
  end;

// *********************************************************************//
// DispIntf:  IVariableTableDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {2B8B154E-ED76-4FF0-B3E4-FEE691D014A4}
// *********************************************************************//
  IVariableTableDisp = dispinterface
    ['{2B8B154E-ED76-4FF0-B3E4-FEE691D014A4}']
    property RowsCount: Integer readonly dispid 7001;
    property ColumnsCount: Integer readonly dispid 7002;
    property VarName[Column: Integer]: WideString dispid 7003;
    property VarNames: OleVariant dispid 7004;
    property Comment[Val: Integer]: WideString dispid 7005;
    property TableRow[Index: OleVariant]: OleVariant dispid 7006;
    property Cell[RowIndexVal: Integer; ColIndex: Integer]: Double dispid 7007;
    function ApplyVars(Index: OleVariant): WordBool; dispid 7008;
    property VisualTable[WinVal: OLE_HANDLE; Select: WordBool]: Integer readonly dispid 7009;
    function AddColumn(const Val: WideString): Integer; dispid 7010;
    function DeleteColumn(ColVal: OleVariant): WordBool; dispid 7011;
    function AddRow(const Val: WideString): Integer; dispid 7012;
    function DeleteRow(RowVal: OleVariant): WordBool; dispid 7013;
    function Clear: WordBool; dispid 7014;
    function FindColumnIndex(const Val: WideString): Integer; dispid 7015;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IDrawingObject1
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {649F0EB2-EBC0-449B-8B61-DC3CF1953BF9}
// *********************************************************************//
  IDrawingObject1 = interface(IDispatch)
    ['{649F0EB2-EBC0-449B-8B61-DC3CF1953BF9}']
    function Get_Constraints: OleVariant; safecall;
    function NewConstraint: IParametriticConstraint; safecall;
    function Associate: WordBool; safecall;
    function DeleteConstraints: WordBool; safecall;
    property Constraints: OleVariant read Get_Constraints;
  end;

// *********************************************************************//
// DispIntf:  IDrawingObject1Disp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {649F0EB2-EBC0-449B-8B61-DC3CF1953BF9}
// *********************************************************************//
  IDrawingObject1Disp = dispinterface
    ['{649F0EB2-EBC0-449B-8B61-DC3CF1953BF9}']
    property Constraints: OleVariant readonly dispid 6001;
    function NewConstraint: IParametriticConstraint; dispid 6002;
    function Associate: WordBool; dispid 6003;
    function DeleteConstraints: WordBool; dispid 6004;
  end;

// *********************************************************************//
// Interface: IParametriticConstraint
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {131069F4-A4E2-4DB4-A559-85EACCC74CE4}
// *********************************************************************//
  IParametriticConstraint = interface(IKompasAPIObject)
    ['{131069F4-A4E2-4DB4-A559-85EACCC74CE4}']
    procedure Set_ConstraintType(PVal: ksConstraintTypeEnum); safecall;
    function Get_ConstraintType: ksConstraintTypeEnum; safecall;
    procedure Set_Index(PVal: Integer); safecall;
    function Get_Index: Integer; safecall;
    procedure Set_Partner(PVal: OleVariant); safecall;
    function Get_Partner: OleVariant; safecall;
    procedure Set_PartnerIndex(PVal: Integer); safecall;
    function Get_PartnerIndex: Integer; safecall;
    procedure Set_Value(PVal: Double); safecall;
    function Get_Value: Double; safecall;
    procedure Set_Expression(const PVal: WideString); safecall;
    function Get_Expression: WideString; safecall;
    procedure Set_Comment(const PVal: WideString); safecall;
    function Get_Comment: WideString; safecall;
    procedure Set_Variable(const PVal: WideString); safecall;
    function Get_Variable: WideString; safecall;
    procedure Set_Degrees(PVal: Integer); safecall;
    function Get_Degrees: Integer; safecall;
    procedure Set_Minutes(PVal: Integer); safecall;
    function Get_Minutes: Integer; safecall;
    procedure Set_Seconds(PVal: Double); safecall;
    function Get_Seconds: Double; safecall;
    function Delete: WordBool; safecall;
    function Create: WordBool; safecall;
    function Get_Valid: WordBool; safecall;
    property ConstraintType: ksConstraintTypeEnum read Get_ConstraintType write Set_ConstraintType;
    property Index: Integer read Get_Index write Set_Index;
    property Partner: OleVariant read Get_Partner write Set_Partner;
    property PartnerIndex: Integer read Get_PartnerIndex write Set_PartnerIndex;
    property Value: Double read Get_Value write Set_Value;
    property Expression: WideString read Get_Expression write Set_Expression;
    property Comment: WideString read Get_Comment write Set_Comment;
    property Variable: WideString read Get_Variable write Set_Variable;
    property Degrees: Integer read Get_Degrees write Set_Degrees;
    property Minutes: Integer read Get_Minutes write Set_Minutes;
    property Seconds: Double read Get_Seconds write Set_Seconds;
    property Valid: WordBool read Get_Valid;
  end;

// *********************************************************************//
// DispIntf:  IParametriticConstraintDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {131069F4-A4E2-4DB4-A559-85EACCC74CE4}
// *********************************************************************//
  IParametriticConstraintDisp = dispinterface
    ['{131069F4-A4E2-4DB4-A559-85EACCC74CE4}']
    property ConstraintType: ksConstraintTypeEnum dispid 1;
    property Index: Integer dispid 2;
    property Partner: OleVariant dispid 3;
    property PartnerIndex: Integer dispid 4;
    property Value: Double dispid 5;
    property Expression: WideString dispid 6;
    property Comment: WideString dispid 7;
    property Variable: WideString dispid 8;
    property Degrees: Integer dispid 9;
    property Minutes: Integer dispid 10;
    property Seconds: Double dispid 11;
    function Delete: WordBool; dispid 12;
    function Create: WordBool; dispid 13;
    property Valid: WordBool readonly dispid 14;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IDrawingDocument
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {C2214318-5C89-40F8-A25C-C87D08B490F4}
// *********************************************************************//
  IDrawingDocument = interface(IKompasDocument2D)
    ['{C2214318-5C89-40F8-A25C-C87D08B490F4}']
  end;

// *********************************************************************//
// DispIntf:  IDrawingDocumentDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {C2214318-5C89-40F8-A25C-C87D08B490F4}
// *********************************************************************//
  IDrawingDocumentDisp = dispinterface
    ['{C2214318-5C89-40F8-A25C-C87D08B490F4}']
    property ViewsAndLayersManager: IViewsAndLayersManager readonly dispid 1;
    function GetDrawingObjectNotifyResult: IDispatch; dispid 2;
    property DocumentType: DocumentTypeEnum readonly dispid 3000;
    property DocumentFrames: IDocumentFrames readonly dispid 3001;
    function Close(closeOptions: DocumentCloseOptions): WordBool; dispid 3002;
    procedure Save; dispid 3003;
    procedure SaveAs(const PathName: WideString); dispid 3004;
    property Name: WideString readonly dispid 3005;
    property PathName: WideString readonly dispid 3006;
    property Path: WideString readonly dispid 3007;
    property Visible: WordBool readonly dispid 3008;
    property Active: WordBool dispid 3009;
    property ReadOnly: WordBool dispid 3010;
    property Changed: WordBool readonly dispid 3011;
    property DocumentSettings: IDocumentSettings readonly dispid 3012;
    property SpecificationDescriptions: ISpecificationDescriptions readonly dispid 3013;
    property LayoutSheets: ILayoutSheets readonly dispid 3014;
    property UserDataStoragesMng: IUserDataStoragesMng readonly dispid 3015;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IFragmentDocument
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {E19CE626-DF9C-48C4-A83D-3E3BC7F0DACA}
// *********************************************************************//
  IFragmentDocument = interface(IKompasDocument2D)
    ['{E19CE626-DF9C-48C4-A83D-3E3BC7F0DACA}']
  end;

// *********************************************************************//
// DispIntf:  IFragmentDocumentDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {E19CE626-DF9C-48C4-A83D-3E3BC7F0DACA}
// *********************************************************************//
  IFragmentDocumentDisp = dispinterface
    ['{E19CE626-DF9C-48C4-A83D-3E3BC7F0DACA}']
    property ViewsAndLayersManager: IViewsAndLayersManager readonly dispid 1;
    function GetDrawingObjectNotifyResult: IDispatch; dispid 2;
    property DocumentType: DocumentTypeEnum readonly dispid 3000;
    property DocumentFrames: IDocumentFrames readonly dispid 3001;
    function Close(closeOptions: DocumentCloseOptions): WordBool; dispid 3002;
    procedure Save; dispid 3003;
    procedure SaveAs(const PathName: WideString); dispid 3004;
    property Name: WideString readonly dispid 3005;
    property PathName: WideString readonly dispid 3006;
    property Path: WideString readonly dispid 3007;
    property Visible: WordBool readonly dispid 3008;
    property Active: WordBool dispid 3009;
    property ReadOnly: WordBool dispid 3010;
    property Changed: WordBool readonly dispid 3011;
    property DocumentSettings: IDocumentSettings readonly dispid 3012;
    property SpecificationDescriptions: ISpecificationDescriptions readonly dispid 3013;
    property LayoutSheets: ILayoutSheets readonly dispid 3014;
    property UserDataStoragesMng: IUserDataStoragesMng readonly dispid 3015;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ISpecificationDocument
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {E3FA8FD0-6187-4625-89B7-3C815651944D}
// *********************************************************************//
  ISpecificationDocument = interface(IKompasDocument)
    ['{E3FA8FD0-6187-4625-89B7-3C815651944D}']
  end;

// *********************************************************************//
// DispIntf:  ISpecificationDocumentDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {E3FA8FD0-6187-4625-89B7-3C815651944D}
// *********************************************************************//
  ISpecificationDocumentDisp = dispinterface
    ['{E3FA8FD0-6187-4625-89B7-3C815651944D}']
    property DocumentType: DocumentTypeEnum readonly dispid 3000;
    property DocumentFrames: IDocumentFrames readonly dispid 3001;
    function Close(closeOptions: DocumentCloseOptions): WordBool; dispid 3002;
    procedure Save; dispid 3003;
    procedure SaveAs(const PathName: WideString); dispid 3004;
    property Name: WideString readonly dispid 3005;
    property PathName: WideString readonly dispid 3006;
    property Path: WideString readonly dispid 3007;
    property Visible: WordBool readonly dispid 3008;
    property Active: WordBool dispid 3009;
    property ReadOnly: WordBool dispid 3010;
    property Changed: WordBool readonly dispid 3011;
    property DocumentSettings: IDocumentSettings readonly dispid 3012;
    property SpecificationDescriptions: ISpecificationDescriptions readonly dispid 3013;
    property LayoutSheets: ILayoutSheets readonly dispid 3014;
    property UserDataStoragesMng: IUserDataStoragesMng readonly dispid 3015;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ITextDocument
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {71A589EA-D32F-42C4-BBC4-A51611E85E90}
// *********************************************************************//
  ITextDocument = interface(IKompasDocument)
    ['{71A589EA-D32F-42C4-BBC4-A51611E85E90}']
  end;

// *********************************************************************//
// DispIntf:  ITextDocumentDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {71A589EA-D32F-42C4-BBC4-A51611E85E90}
// *********************************************************************//
  ITextDocumentDisp = dispinterface
    ['{71A589EA-D32F-42C4-BBC4-A51611E85E90}']
    property DocumentType: DocumentTypeEnum readonly dispid 3000;
    property DocumentFrames: IDocumentFrames readonly dispid 3001;
    function Close(closeOptions: DocumentCloseOptions): WordBool; dispid 3002;
    procedure Save; dispid 3003;
    procedure SaveAs(const PathName: WideString); dispid 3004;
    property Name: WideString readonly dispid 3005;
    property PathName: WideString readonly dispid 3006;
    property Path: WideString readonly dispid 3007;
    property Visible: WordBool readonly dispid 3008;
    property Active: WordBool dispid 3009;
    property ReadOnly: WordBool dispid 3010;
    property Changed: WordBool readonly dispid 3011;
    property DocumentSettings: IDocumentSettings readonly dispid 3012;
    property SpecificationDescriptions: ISpecificationDescriptions readonly dispid 3013;
    property LayoutSheets: ILayoutSheets readonly dispid 3014;
    property UserDataStoragesMng: IUserDataStoragesMng readonly dispid 3015;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IPartDocument
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {0075EA2A-5498-4E28-BDF3-0288EB168054}
// *********************************************************************//
  IPartDocument = interface(IKompasDocument3D)
    ['{0075EA2A-5498-4E28-BDF3-0288EB168054}']
  end;

// *********************************************************************//
// DispIntf:  IPartDocumentDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {0075EA2A-5498-4E28-BDF3-0288EB168054}
// *********************************************************************//
  IPartDocumentDisp = dispinterface
    ['{0075EA2A-5498-4E28-BDF3-0288EB168054}']
    property TopPart: IPart7 readonly dispid 5002;
    property HideAllPlanes: WordBool dispid 5003;
    property HideAllAxis: WordBool dispid 5004;
    property HideAllSketches: WordBool dispid 5005;
    property HideAllPlaces: WordBool dispid 5006;
    property HideAllSurfaces: WordBool dispid 5007;
    property HideAllThreads: WordBool dispid 5008;
    property HideAllCurves: WordBool dispid 5009;
    property HideAllControlPoints: WordBool dispid 5010;
    property Perspective: WordBool dispid 5011;
    property DrawMode: Integer dispid 5012;
    property ShadedWireframe: WordBool dispid 5013;
    property DocumentType: DocumentTypeEnum readonly dispid 3000;
    property DocumentFrames: IDocumentFrames readonly dispid 3001;
    function Close(closeOptions: DocumentCloseOptions): WordBool; dispid 3002;
    procedure Save; dispid 3003;
    procedure SaveAs(const PathName: WideString); dispid 3004;
    property Name: WideString readonly dispid 3005;
    property PathName: WideString readonly dispid 3006;
    property Path: WideString readonly dispid 3007;
    property Visible: WordBool readonly dispid 3008;
    property Active: WordBool dispid 3009;
    property ReadOnly: WordBool dispid 3010;
    property Changed: WordBool readonly dispid 3011;
    property DocumentSettings: IDocumentSettings readonly dispid 3012;
    property SpecificationDescriptions: ISpecificationDescriptions readonly dispid 3013;
    property LayoutSheets: ILayoutSheets readonly dispid 3014;
    property UserDataStoragesMng: IUserDataStoragesMng readonly dispid 3015;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IAssemblyDocument
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F6B3F33A-3273-43EF-9B8A-7C0AF8FAA129}
// *********************************************************************//
  IAssemblyDocument = interface(IKompasDocument3D)
    ['{F6B3F33A-3273-43EF-9B8A-7C0AF8FAA129}']
  end;

// *********************************************************************//
// DispIntf:  IAssemblyDocumentDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F6B3F33A-3273-43EF-9B8A-7C0AF8FAA129}
// *********************************************************************//
  IAssemblyDocumentDisp = dispinterface
    ['{F6B3F33A-3273-43EF-9B8A-7C0AF8FAA129}']
    property TopPart: IPart7 readonly dispid 5002;
    property HideAllPlanes: WordBool dispid 5003;
    property HideAllAxis: WordBool dispid 5004;
    property HideAllSketches: WordBool dispid 5005;
    property HideAllPlaces: WordBool dispid 5006;
    property HideAllSurfaces: WordBool dispid 5007;
    property HideAllThreads: WordBool dispid 5008;
    property HideAllCurves: WordBool dispid 5009;
    property HideAllControlPoints: WordBool dispid 5010;
    property Perspective: WordBool dispid 5011;
    property DrawMode: Integer dispid 5012;
    property ShadedWireframe: WordBool dispid 5013;
    property DocumentType: DocumentTypeEnum readonly dispid 3000;
    property DocumentFrames: IDocumentFrames readonly dispid 3001;
    function Close(closeOptions: DocumentCloseOptions): WordBool; dispid 3002;
    procedure Save; dispid 3003;
    procedure SaveAs(const PathName: WideString); dispid 3004;
    property Name: WideString readonly dispid 3005;
    property PathName: WideString readonly dispid 3006;
    property Path: WideString readonly dispid 3007;
    property Visible: WordBool readonly dispid 3008;
    property Active: WordBool dispid 3009;
    property ReadOnly: WordBool dispid 3010;
    property Changed: WordBool readonly dispid 3011;
    property DocumentSettings: IDocumentSettings readonly dispid 3012;
    property SpecificationDescriptions: ISpecificationDescriptions readonly dispid 3013;
    property LayoutSheets: ILayoutSheets readonly dispid 3014;
    property UserDataStoragesMng: IUserDataStoragesMng readonly dispid 3015;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IPropertyEdit
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {1D238C4C-AAD7-4374-B372-013CF7FCEDB4}
// *********************************************************************//
  IPropertyEdit = interface(IPropertyControl)
    ['{1D238C4C-AAD7-4374-B372-013CF7FCEDB4}']
    function Get_MinValue: OleVariant; safecall;
    function Get_MaxValue: OleVariant; safecall;
    function SetValueRange(MinVal: OleVariant; MaxVal: OleVariant): WordBool; safecall;
    procedure Set_WithCheck(PVal: WordBool); safecall;
    function Get_WithCheck: WordBool; safecall;
    procedure Set_CheckState(PVal: CheckStateEnum); safecall;
    function Get_CheckState: CheckStateEnum; safecall;
    procedure Set_ReadOnly(PVal: WordBool); safecall;
    function Get_ReadOnly: WordBool; safecall;
    procedure Set_Width(PVal: Integer); safecall;
    function Get_Width: Integer; safecall;
    property MinValue: OleVariant read Get_MinValue;
    property MaxValue: OleVariant read Get_MaxValue;
    property WithCheck: WordBool read Get_WithCheck write Set_WithCheck;
    property CheckState: CheckStateEnum read Get_CheckState write Set_CheckState;
    property ReadOnly: WordBool read Get_ReadOnly write Set_ReadOnly;
    property Width: Integer read Get_Width write Set_Width;
  end;

// *********************************************************************//
// DispIntf:  IPropertyEditDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {1D238C4C-AAD7-4374-B372-013CF7FCEDB4}
// *********************************************************************//
  IPropertyEditDisp = dispinterface
    ['{1D238C4C-AAD7-4374-B372-013CF7FCEDB4}']
    property MinValue: OleVariant readonly dispid 101;
    property MaxValue: OleVariant readonly dispid 102;
    function SetValueRange(MinVal: OleVariant; MaxVal: OleVariant): WordBool; dispid 103;
    property WithCheck: WordBool dispid 104;
    property CheckState: CheckStateEnum dispid 105;
    property ReadOnly: WordBool dispid 106;
    property Width: Integer dispid 107;
    property Visible: WordBool dispid 1;
    property Name: WideString dispid 2;
    property ControlType: ControlTypeEnum readonly dispid 3;
    property Id: Integer dispid 4;
    property Enable: WordBool dispid 5;
    property Value: OleVariant dispid 6;
    property NameVisibility: PropertyControlNameVisibility dispid 7;
    property Hint: WideString dispid 8;
    property Tips: WideString dispid 9;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IPropertySeparator
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {4504EFA0-D059-4FD4-B725-FA264D190869}
// *********************************************************************//
  IPropertySeparator = interface(IPropertyControl)
    ['{4504EFA0-D059-4FD4-B725-FA264D190869}']
    procedure Set_SeparatorType(PVal: SeparatorTypeEnum); safecall;
    function Get_SeparatorType: SeparatorTypeEnum; safecall;
    function SetImage(IdBmp: OleVariant; HInstance: OleVariant): WordBool; safecall;
    property SeparatorType: SeparatorTypeEnum read Get_SeparatorType write Set_SeparatorType;
  end;

// *********************************************************************//
// DispIntf:  IPropertySeparatorDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {4504EFA0-D059-4FD4-B725-FA264D190869}
// *********************************************************************//
  IPropertySeparatorDisp = dispinterface
    ['{4504EFA0-D059-4FD4-B725-FA264D190869}']
    property SeparatorType: SeparatorTypeEnum dispid 101;
    function SetImage(IdBmp: OleVariant; HInstance: OleVariant): WordBool; dispid 102;
    property Visible: WordBool dispid 1;
    property Name: WideString dispid 2;
    property ControlType: ControlTypeEnum readonly dispid 3;
    property Id: Integer dispid 4;
    property Enable: WordBool dispid 5;
    property Value: OleVariant dispid 6;
    property NameVisibility: PropertyControlNameVisibility dispid 7;
    property Hint: WideString dispid 8;
    property Tips: WideString dispid 9;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IPropertyList
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {8F53E9D5-07AD-412E-8C2A-509BC633C4FF}
// *********************************************************************//
  IPropertyList = interface(IPropertyControl)
    ['{8F53E9D5-07AD-412E-8C2A-509BC633C4FF}']
    function Get_MinValue: OleVariant; safecall;
    function Get_MaxValue: OleVariant; safecall;
    function SetValueRange(MinVal: OleVariant; MaxVal: OleVariant): WordBool; safecall;
    procedure Set_WithCheck(PVal: WordBool); safecall;
    function Get_WithCheck: WordBool; safecall;
    procedure Set_CheckState(PVal: CheckStateEnum); safecall;
    function Get_CheckState: CheckStateEnum; safecall;
    procedure Set_ReadOnly(PVal: WordBool); safecall;
    function Get_ReadOnly: WordBool; safecall;
    procedure Set_Width(PVal: Integer); safecall;
    function Get_Width: Integer; safecall;
    procedure ClearList; safecall;
    procedure Add(NewVal: OleVariant); safecall;
    procedure Set_Sort(PVal: WordBool); safecall;
    function Get_Sort: WordBool; safecall;
    function Find(Val: OleVariant): Integer; safecall;
    function SetCurrentByIndex(Val: Integer): WordBool; safecall;
    property MinValue: OleVariant read Get_MinValue;
    property MaxValue: OleVariant read Get_MaxValue;
    property WithCheck: WordBool read Get_WithCheck write Set_WithCheck;
    property CheckState: CheckStateEnum read Get_CheckState write Set_CheckState;
    property ReadOnly: WordBool read Get_ReadOnly write Set_ReadOnly;
    property Width: Integer read Get_Width write Set_Width;
    property Sort: WordBool read Get_Sort write Set_Sort;
  end;

// *********************************************************************//
// DispIntf:  IPropertyListDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {8F53E9D5-07AD-412E-8C2A-509BC633C4FF}
// *********************************************************************//
  IPropertyListDisp = dispinterface
    ['{8F53E9D5-07AD-412E-8C2A-509BC633C4FF}']
    property MinValue: OleVariant readonly dispid 101;
    property MaxValue: OleVariant readonly dispid 102;
    function SetValueRange(MinVal: OleVariant; MaxVal: OleVariant): WordBool; dispid 103;
    property WithCheck: WordBool dispid 104;
    property CheckState: CheckStateEnum dispid 105;
    property ReadOnly: WordBool dispid 106;
    property Width: Integer dispid 107;
    procedure ClearList; dispid 108;
    procedure Add(NewVal: OleVariant); dispid 109;
    property Sort: WordBool dispid 110;
    function Find(Val: OleVariant): Integer; dispid 111;
    function SetCurrentByIndex(Val: Integer): WordBool; dispid 112;
    property Visible: WordBool dispid 1;
    property Name: WideString dispid 2;
    property ControlType: ControlTypeEnum readonly dispid 3;
    property Id: Integer dispid 4;
    property Enable: WordBool dispid 5;
    property Value: OleVariant dispid 6;
    property NameVisibility: PropertyControlNameVisibility dispid 7;
    property Hint: WideString dispid 8;
    property Tips: WideString dispid 9;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IPropertyCheckBox
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9205277D-B480-4AF7-B660-CCDC653F6453}
// *********************************************************************//
  IPropertyCheckBox = interface(IPropertyControl)
    ['{9205277D-B480-4AF7-B660-CCDC653F6453}']
    procedure SetCustomBitmaps(IdUnchecked: OleVariant; IdChecked: OleVariant; 
                               IdIndeterminate: OleVariant; HInstance: OleVariant); safecall;
  end;

// *********************************************************************//
// DispIntf:  IPropertyCheckBoxDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9205277D-B480-4AF7-B660-CCDC653F6453}
// *********************************************************************//
  IPropertyCheckBoxDisp = dispinterface
    ['{9205277D-B480-4AF7-B660-CCDC653F6453}']
    procedure SetCustomBitmaps(IdUnchecked: OleVariant; IdChecked: OleVariant; 
                               IdIndeterminate: OleVariant; HInstance: OleVariant); dispid 101;
    property Visible: WordBool dispid 1;
    property Name: WideString dispid 2;
    property ControlType: ControlTypeEnum readonly dispid 3;
    property Id: Integer dispid 4;
    property Enable: WordBool dispid 5;
    property Value: OleVariant dispid 6;
    property NameVisibility: PropertyControlNameVisibility dispid 7;
    property Hint: WideString dispid 8;
    property Tips: WideString dispid 9;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IPropertyMultiButton
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {3920A0BE-0628-47D5-B0F1-1DFEB77964BC}
// *********************************************************************//
  IPropertyMultiButton = interface(IPropertyControl)
    ['{3920A0BE-0628-47D5-B0F1-1DFEB77964BC}']
    procedure Set_ButtonsType(PVal: ButtonTypeEnum); safecall;
    function Get_ButtonsType: ButtonTypeEnum; safecall;
    procedure Set_ButtonChecked(BtnID: Integer; PVal: WordBool); safecall;
    function Get_ButtonChecked(BtnID: Integer): WordBool; safecall;
    procedure Set_ButtonEnable(BtnID: Integer; PVal: WordBool); safecall;
    function Get_ButtonEnable(BtnID: Integer): WordBool; safecall;
    procedure AddButton(BtnID: Integer; Bmp: OleVariant; InsertAt: Integer); safecall;
    procedure Set_ResModule(HInstance: OleVariant); safecall;
    function Get_ResModule: OleVariant; safecall;
    procedure Set_ButtonTips(BtnID: Integer; const PVal: WideString); safecall;
    function Get_ButtonTips(BtnID: Integer): WideString; safecall;
    procedure Set_ButtonHint(BtnID: Integer; const PVal: WideString); safecall;
    function Get_ButtonHint(BtnID: Integer): WideString; safecall;
    procedure Set_NextCommand(PVal: WordBool); safecall;
    function Get_NextCommand: WordBool; safecall;
    property ButtonsType: ButtonTypeEnum read Get_ButtonsType write Set_ButtonsType;
    property ButtonChecked[BtnID: Integer]: WordBool read Get_ButtonChecked write Set_ButtonChecked;
    property ButtonEnable[BtnID: Integer]: WordBool read Get_ButtonEnable write Set_ButtonEnable;
    property ResModule: OleVariant read Get_ResModule write Set_ResModule;
    property ButtonTips[BtnID: Integer]: WideString read Get_ButtonTips write Set_ButtonTips;
    property ButtonHint[BtnID: Integer]: WideString read Get_ButtonHint write Set_ButtonHint;
    property NextCommand: WordBool read Get_NextCommand write Set_NextCommand;
  end;

// *********************************************************************//
// DispIntf:  IPropertyMultiButtonDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {3920A0BE-0628-47D5-B0F1-1DFEB77964BC}
// *********************************************************************//
  IPropertyMultiButtonDisp = dispinterface
    ['{3920A0BE-0628-47D5-B0F1-1DFEB77964BC}']
    property ButtonsType: ButtonTypeEnum dispid 101;
    property ButtonChecked[BtnID: Integer]: WordBool dispid 102;
    property ButtonEnable[BtnID: Integer]: WordBool dispid 103;
    procedure AddButton(BtnID: Integer; Bmp: OleVariant; InsertAt: Integer); dispid 104;
    property ResModule: OleVariant dispid 105;
    property ButtonTips[BtnID: Integer]: WideString dispid 106;
    property ButtonHint[BtnID: Integer]: WideString dispid 107;
    property NextCommand: WordBool dispid 108;
    property Visible: WordBool dispid 1;
    property Name: WideString dispid 2;
    property ControlType: ControlTypeEnum readonly dispid 3;
    property Id: Integer dispid 4;
    property Enable: WordBool dispid 5;
    property Value: OleVariant dispid 6;
    property NameVisibility: PropertyControlNameVisibility dispid 7;
    property Hint: WideString dispid 8;
    property Tips: WideString dispid 9;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IPropertySlideBox
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {E1DB38CD-A6D5-44B8-9AD0-0056B87924DD}
// *********************************************************************//
  IPropertySlideBox = interface(IPropertyControl)
    ['{E1DB38CD-A6D5-44B8-9AD0-0056B87924DD}']
    procedure Set_ResModule(HInstance: OleVariant); safecall;
    function Get_ResModule: OleVariant; safecall;
    procedure Set_SlideType(Type_: SlideTypeEnum); safecall;
    function Get_SlideType: SlideTypeEnum; safecall;
    procedure Set_DrawingSlide(Slide: OleVariant); safecall;
    function Get_DrawingSlide: OleVariant; safecall;
    procedure Set_Width(Width: Integer); safecall;
    function Get_Width: Integer; safecall;
    procedure Set_Height(Height: Integer); safecall;
    function Get_Height: Integer; safecall;
    procedure Set_CheckBoxVisibility(PVal: WordBool); safecall;
    function Get_CheckBoxVisibility: WordBool; safecall;
    procedure UpdateParam; safecall;
    property ResModule: OleVariant read Get_ResModule write Set_ResModule;
    property SlideType: SlideTypeEnum read Get_SlideType write Set_SlideType;
    property DrawingSlide: OleVariant read Get_DrawingSlide write Set_DrawingSlide;
    property Width: Integer read Get_Width write Set_Width;
    property Height: Integer read Get_Height write Set_Height;
    property CheckBoxVisibility: WordBool read Get_CheckBoxVisibility write Set_CheckBoxVisibility;
  end;

// *********************************************************************//
// DispIntf:  IPropertySlideBoxDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {E1DB38CD-A6D5-44B8-9AD0-0056B87924DD}
// *********************************************************************//
  IPropertySlideBoxDisp = dispinterface
    ['{E1DB38CD-A6D5-44B8-9AD0-0056B87924DD}']
    property ResModule: OleVariant dispid 101;
    property SlideType: SlideTypeEnum dispid 102;
    property DrawingSlide: OleVariant dispid 103;
    property Width: Integer dispid 104;
    property Height: Integer dispid 105;
    property CheckBoxVisibility: WordBool dispid 106;
    procedure UpdateParam; dispid 107;
    property Visible: WordBool dispid 1;
    property Name: WideString dispid 2;
    property ControlType: ControlTypeEnum readonly dispid 3;
    property Id: Integer dispid 4;
    property Enable: WordBool dispid 5;
    property Value: OleVariant dispid 6;
    property NameVisibility: PropertyControlNameVisibility dispid 7;
    property Hint: WideString dispid 8;
    property Tips: WideString dispid 9;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IPropertyUserControl
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {5A902C6C-A030-4F37-A089-91505BAEE466}
// *********************************************************************//
  IPropertyUserControl = interface(IPropertyControl)
    ['{5A902C6C-A030-4F37-A089-91505BAEE466}']
    procedure Set_Width(Width: Integer); safecall;
    function Get_Width: Integer; safecall;
    procedure Set_Height(Height: Integer); safecall;
    function Get_Height: Integer; safecall;
    procedure SetOCXControl(const ProgID: WideString); safecall;
    property Width: Integer read Get_Width write Set_Width;
    property Height: Integer read Get_Height write Set_Height;
  end;

// *********************************************************************//
// DispIntf:  IPropertyUserControlDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {5A902C6C-A030-4F37-A089-91505BAEE466}
// *********************************************************************//
  IPropertyUserControlDisp = dispinterface
    ['{5A902C6C-A030-4F37-A089-91505BAEE466}']
    property Width: Integer dispid 101;
    property Height: Integer dispid 102;
    procedure SetOCXControl(const ProgID: WideString); dispid 103;
    property Visible: WordBool dispid 1;
    property Name: WideString dispid 2;
    property ControlType: ControlTypeEnum readonly dispid 3;
    property Id: Integer dispid 4;
    property Enable: WordBool dispid 5;
    property Value: OleVariant dispid 6;
    property NameVisibility: PropertyControlNameVisibility dispid 7;
    property Hint: WideString dispid 8;
    property Tips: WideString dispid 9;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IPropertyGrid
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {6682B70F-59DB-4BF0-AB01-45B65B1BDED1}
// *********************************************************************//
  IPropertyGrid = interface(IPropertyControl)
    ['{6682B70F-59DB-4BF0-AB01-45B65B1BDED1}']
    procedure Set_ColumnCount(Count: Integer); safecall;
    function Get_ColumnCount: Integer; safecall;
    procedure Set_RowCount(Count: Integer); safecall;
    function Get_RowCount: Integer; safecall;
    procedure Set_FixedColumnCount(Count: Integer); safecall;
    function Get_FixedColumnCount: Integer; safecall;
    procedure Set_FixedRowCount(Count: Integer); safecall;
    function Get_FixedRowCount: Integer; safecall;
    procedure Set_ColumnWidth(Index: Integer; Width: Integer); safecall;
    function Get_ColumnWidth(Index: Integer): Integer; safecall;
    procedure Set_RowHeight(Index: Integer; Height: Integer); safecall;
    function Get_RowHeight(Index: Integer): Integer; safecall;
    procedure Set_EnableEdit(NRow: Integer; NCol: Integer; PVal: WordBool); safecall;
    function Get_EnableEdit(NRow: Integer; NCol: Integer): WordBool; safecall;
    procedure Set_CellText(NRow: Integer; NCol: Integer; const Text: WideString); safecall;
    function Get_CellText(NRow: Integer; NCol: Integer): WideString; safecall;
    procedure Set_CellFormat(NRow: Integer; NCol: Integer; Format: Integer); safecall;
    function Get_CellFormat(NRow: Integer; NCol: Integer): Integer; safecall;
    procedure Set_Width(Width: Integer); safecall;
    function Get_Width: Integer; safecall;
    procedure Set_Height(Height: Integer); safecall;
    function Get_Height: Integer; safecall;
    procedure Set_ReadOnly(PVal: WordBool); safecall;
    function Get_ReadOnly: WordBool; safecall;
    procedure Set_AutoSizeColumns(PVal: WordBool); safecall;
    function Get_AutoSizeColumns: WordBool; safecall;
    procedure UpdateParam; safecall;
    property ColumnCount: Integer read Get_ColumnCount write Set_ColumnCount;
    property RowCount: Integer read Get_RowCount write Set_RowCount;
    property FixedColumnCount: Integer read Get_FixedColumnCount write Set_FixedColumnCount;
    property FixedRowCount: Integer read Get_FixedRowCount write Set_FixedRowCount;
    property ColumnWidth[Index: Integer]: Integer read Get_ColumnWidth write Set_ColumnWidth;
    property RowHeight[Index: Integer]: Integer read Get_RowHeight write Set_RowHeight;
    property EnableEdit[NRow: Integer; NCol: Integer]: WordBool read Get_EnableEdit write Set_EnableEdit;
    property CellText[NRow: Integer; NCol: Integer]: WideString read Get_CellText write Set_CellText;
    property CellFormat[NRow: Integer; NCol: Integer]: Integer read Get_CellFormat write Set_CellFormat;
    property Width: Integer read Get_Width write Set_Width;
    property Height: Integer read Get_Height write Set_Height;
    property ReadOnly: WordBool read Get_ReadOnly write Set_ReadOnly;
    property AutoSizeColumns: WordBool read Get_AutoSizeColumns write Set_AutoSizeColumns;
  end;

// *********************************************************************//
// DispIntf:  IPropertyGridDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {6682B70F-59DB-4BF0-AB01-45B65B1BDED1}
// *********************************************************************//
  IPropertyGridDisp = dispinterface
    ['{6682B70F-59DB-4BF0-AB01-45B65B1BDED1}']
    property ColumnCount: Integer dispid 101;
    property RowCount: Integer dispid 102;
    property FixedColumnCount: Integer dispid 103;
    property FixedRowCount: Integer dispid 104;
    property ColumnWidth[Index: Integer]: Integer dispid 105;
    property RowHeight[Index: Integer]: Integer dispid 106;
    property EnableEdit[NRow: Integer; NCol: Integer]: WordBool dispid 107;
    property CellText[NRow: Integer; NCol: Integer]: WideString dispid 108;
    property CellFormat[NRow: Integer; NCol: Integer]: Integer dispid 109;
    property Width: Integer dispid 110;
    property Height: Integer dispid 111;
    property ReadOnly: WordBool dispid 112;
    property AutoSizeColumns: WordBool dispid 113;
    procedure UpdateParam; dispid 114;
    property Visible: WordBool dispid 1;
    property Name: WideString dispid 2;
    property ControlType: ControlTypeEnum readonly dispid 3;
    property Id: Integer dispid 4;
    property Enable: WordBool dispid 5;
    property Value: OleVariant dispid 6;
    property NameVisibility: PropertyControlNameVisibility dispid 7;
    property Hint: WideString dispid 8;
    property Tips: WideString dispid 9;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IPaintObject
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {4D14726D-0EC2-49CE-B02C-FEDAA6D65BBD}
// *********************************************************************//
  IPaintObject = interface(IDispatch)
    ['{4D14726D-0EC2-49CE-B02C-FEDAA6D65BBD}']
    function GetHWND: OLE_HANDLE; safecall;
    procedure GetTransformMatrix(out A11: Double; out A12: Double; out A13: Double; 
                                 out A14: Double; out A21: Double; out A22: Double; 
                                 out A23: Double; out A24: Double); safecall;
    function GetDIBForOutput: WideString; safecall;
  end;

// *********************************************************************//
// DispIntf:  IPaintObjectDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {4D14726D-0EC2-49CE-B02C-FEDAA6D65BBD}
// *********************************************************************//
  IPaintObjectDisp = dispinterface
    ['{4D14726D-0EC2-49CE-B02C-FEDAA6D65BBD}']
    function GetHWND: OLE_HANDLE; dispid 1;
    procedure GetTransformMatrix(out A11: Double; out A12: Double; out A13: Double; 
                                 out A14: Double; out A21: Double; out A22: Double; 
                                 out A23: Double; out A24: Double); dispid 2;
    function GetDIBForOutput: WideString; dispid 3;
  end;

// *********************************************************************//
// Interface: IGabaritObject
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {B6674824-CD9D-4220-B2CB-9F939A9C35C8}
// *********************************************************************//
  IGabaritObject = interface(IDispatch)
    ['{B6674824-CD9D-4220-B2CB-9F939A9C35C8}']
    function GetCurrentGabarit(NPage: Integer; out P1X: Double; out P1Y: Double; out P1Z: Double; 
                               out P2X: Double; out P2Y: Double; out P2Z: Double): WordBool; safecall;
    function AddGabarit(X1: Double; Y1: Double; Z1: Double; X2: Double; Y2: Double; Z2: Double): WordBool; safecall;
    function GetGabaritModifying: WordBool; safecall;
  end;

// *********************************************************************//
// DispIntf:  IGabaritObjectDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {B6674824-CD9D-4220-B2CB-9F939A9C35C8}
// *********************************************************************//
  IGabaritObjectDisp = dispinterface
    ['{B6674824-CD9D-4220-B2CB-9F939A9C35C8}']
    function GetCurrentGabarit(NPage: Integer; out P1X: Double; out P1Y: Double; out P1Z: Double; 
                               out P2X: Double; out P2Y: Double; out P2Z: Double): WordBool; dispid 1;
    function AddGabarit(X1: Double; Y1: Double; Z1: Double; X2: Double; Y2: Double; Z2: Double): WordBool; dispid 2;
    function GetGabaritModifying: WordBool; dispid 3;
  end;

// *********************************************************************//
// DispIntf:  ksGLObject
// Flags:     (4096) Dispatchable
// GUID:      {B1C65023-B908-4CAD-9238-C5026520E62C}
// *********************************************************************//
  ksGLObject = dispinterface
    ['{B1C65023-B908-4CAD-9238-C5026520E62C}']
    function glBegin(Mode: Integer): WordBool; dispid 1;
    function glEnd: WordBool; dispid 2;
    function glEnable(Cap: Integer): WordBool; dispid 3;
    function glDisable(Cap: Integer): WordBool; dispid 4;
    function glColor3d(R: Double; G: Double; B: Double): WordBool; dispid 20;
    function glLineWidth(W: Double): WordBool; dispid 21;
    function glLineStipple(Factor: Integer; Pattern: Smallint): WordBool; dispid 22;
    function glPointSize(W: Double): WordBool; dispid 23;
    function glPolygonMode(Face: Integer; Mode: Integer): WordBool; dispid 24;
    function glVertex2d(X: Double; Y: Double): WordBool; dispid 40;
    function glVertex2dv(var PData: Double; CountDouble: Integer): WordBool; dispid 41;
    function glVertex3d(X: Double; Y: Double; Z: Double): WordBool; dispid 42;
    function glVertex3dv(var PData: Double; CountDouble: Integer): WordBool; dispid 43;
    function glVertex4d(X: Double; Y: Double; Z: Double; W: Double): WordBool; dispid 44;
    function glVertex4dv(var PData: Double; CountDouble: Integer): WordBool; dispid 45;
  end;

// *********************************************************************//
// Interface: IPropertyTextButton
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {3CDFE85F-643D-4008-AE32-379C0EB3FB7F}
// *********************************************************************//
  IPropertyTextButton = interface(IPropertyControl)
    ['{3CDFE85F-643D-4008-AE32-379C0EB3FB7F}']
  end;

// *********************************************************************//
// DispIntf:  IPropertyTextButtonDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {3CDFE85F-643D-4008-AE32-379C0EB3FB7F}
// *********************************************************************//
  IPropertyTextButtonDisp = dispinterface
    ['{3CDFE85F-643D-4008-AE32-379C0EB3FB7F}']
    property Visible: WordBool dispid 1;
    property Name: WideString dispid 2;
    property ControlType: ControlTypeEnum readonly dispid 3;
    property Id: Integer dispid 4;
    property Enable: WordBool dispid 5;
    property Value: OleVariant dispid 6;
    property NameVisibility: PropertyControlNameVisibility dispid 7;
    property Hint: WideString dispid 8;
    property Tips: WideString dispid 9;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IPropertySpinEdit
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F214A46D-2BA9-40AD-A32D-E696EF9C895A}
// *********************************************************************//
  IPropertySpinEdit = interface(IPropertyControl)
    ['{F214A46D-2BA9-40AD-A32D-E696EF9C895A}']
    function Get_MinValue: OleVariant; safecall;
    function Get_MaxValue: OleVariant; safecall;
    function SetValueRange(MinVal: OleVariant; MaxVal: OleVariant): WordBool; safecall;
    procedure Set_WithCheck(PVal: WordBool); safecall;
    function Get_WithCheck: WordBool; safecall;
    procedure Set_CheckState(PVal: CheckStateEnum); safecall;
    function Get_CheckState: CheckStateEnum; safecall;
    procedure Set_ReadOnly(PVal: WordBool); safecall;
    function Get_ReadOnly: WordBool; safecall;
    procedure Set_Width(PVal: Integer); safecall;
    function Get_Width: Integer; safecall;
    property MinValue: OleVariant read Get_MinValue;
    property MaxValue: OleVariant read Get_MaxValue;
    property WithCheck: WordBool read Get_WithCheck write Set_WithCheck;
    property CheckState: CheckStateEnum read Get_CheckState write Set_CheckState;
    property ReadOnly: WordBool read Get_ReadOnly write Set_ReadOnly;
    property Width: Integer read Get_Width write Set_Width;
  end;

// *********************************************************************//
// DispIntf:  IPropertySpinEditDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F214A46D-2BA9-40AD-A32D-E696EF9C895A}
// *********************************************************************//
  IPropertySpinEditDisp = dispinterface
    ['{F214A46D-2BA9-40AD-A32D-E696EF9C895A}']
    property MinValue: OleVariant readonly dispid 101;
    property MaxValue: OleVariant readonly dispid 102;
    function SetValueRange(MinVal: OleVariant; MaxVal: OleVariant): WordBool; dispid 103;
    property WithCheck: WordBool dispid 104;
    property CheckState: CheckStateEnum dispid 105;
    property ReadOnly: WordBool dispid 106;
    property Width: Integer dispid 107;
    property Visible: WordBool dispid 1;
    property Name: WideString dispid 2;
    property ControlType: ControlTypeEnum readonly dispid 3;
    property Id: Integer dispid 4;
    property Enable: WordBool dispid 5;
    property Value: OleVariant dispid 6;
    property NameVisibility: PropertyControlNameVisibility dispid 7;
    property Hint: WideString dispid 8;
    property Tips: WideString dispid 9;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IPropertyFileName
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {DB1F3224-837E-437F-8944-6FB9703F528B}
// *********************************************************************//
  IPropertyFileName = interface(IPropertyControl)
    ['{DB1F3224-837E-437F-8944-6FB9703F528B}']
    procedure Set_CreateOpenButton(PVal: WordBool); safecall;
    function Get_CreateOpenButton: WordBool; safecall;
    procedure Set_Bitmap(Param1: OleVariant); safecall;
    procedure Set_Extension(const PVal: WideString); safecall;
    function Get_Extension: WideString; safecall;
    procedure Set_Filter(const PVal: WideString); safecall;
    function Get_Filter: WideString; safecall;
    procedure Set_ResModule(HInstance: OleVariant); safecall;
    function Get_ResModule: OleVariant; safecall;
    procedure Set_ReadOnly(PVal: WordBool); safecall;
    function Get_ReadOnly: WordBool; safecall;
    procedure Set_Width(PVal: Integer); safecall;
    function Get_Width: Integer; safecall;
    property CreateOpenButton: WordBool read Get_CreateOpenButton write Set_CreateOpenButton;
    property Bitmap: OleVariant write Set_Bitmap;
    property Extension: WideString read Get_Extension write Set_Extension;
    property Filter: WideString read Get_Filter write Set_Filter;
    property ResModule: OleVariant read Get_ResModule write Set_ResModule;
    property ReadOnly: WordBool read Get_ReadOnly write Set_ReadOnly;
    property Width: Integer read Get_Width write Set_Width;
  end;

// *********************************************************************//
// DispIntf:  IPropertyFileNameDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {DB1F3224-837E-437F-8944-6FB9703F528B}
// *********************************************************************//
  IPropertyFileNameDisp = dispinterface
    ['{DB1F3224-837E-437F-8944-6FB9703F528B}']
    property CreateOpenButton: WordBool dispid 101;
    property Bitmap: OleVariant writeonly dispid 102;
    property Extension: WideString dispid 103;
    property Filter: WideString dispid 104;
    property ResModule: OleVariant dispid 105;
    property ReadOnly: WordBool dispid 106;
    property Width: Integer dispid 107;
    property Visible: WordBool dispid 1;
    property Name: WideString dispid 2;
    property ControlType: ControlTypeEnum readonly dispid 3;
    property Id: Integer dispid 4;
    property Enable: WordBool dispid 5;
    property Value: OleVariant dispid 6;
    property NameVisibility: PropertyControlNameVisibility dispid 7;
    property Hint: WideString dispid 8;
    property Tips: WideString dispid 9;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IPropertyColor
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {FC5CDCFB-3F67-43A1-8FC4-1278B901CE0E}
// *********************************************************************//
  IPropertyColor = interface(IPropertyControl)
    ['{FC5CDCFB-3F67-43A1-8FC4-1278B901CE0E}']
    procedure Set_Width(PVal: Integer); safecall;
    function Get_Width: Integer; safecall;
    procedure Set_EnableDefaultButton(PVal: WordBool); safecall;
    function Get_EnableDefaultButton: WordBool; safecall;
    procedure Set_DefaultColor(PVal: Integer); safecall;
    function Get_DefaultColor: Integer; safecall;
    procedure Set_DefaultButtonName(const PVal: WideString); safecall;
    function Get_DefaultButtonName: WideString; safecall;
    property Width: Integer read Get_Width write Set_Width;
    property EnableDefaultButton: WordBool read Get_EnableDefaultButton write Set_EnableDefaultButton;
    property DefaultColor: Integer read Get_DefaultColor write Set_DefaultColor;
    property DefaultButtonName: WideString read Get_DefaultButtonName write Set_DefaultButtonName;
  end;

// *********************************************************************//
// DispIntf:  IPropertyColorDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {FC5CDCFB-3F67-43A1-8FC4-1278B901CE0E}
// *********************************************************************//
  IPropertyColorDisp = dispinterface
    ['{FC5CDCFB-3F67-43A1-8FC4-1278B901CE0E}']
    property Width: Integer dispid 101;
    property EnableDefaultButton: WordBool dispid 102;
    property DefaultColor: Integer dispid 103;
    property DefaultButtonName: WideString dispid 104;
    property Visible: WordBool dispid 1;
    property Name: WideString dispid 2;
    property ControlType: ControlTypeEnum readonly dispid 3;
    property Id: Integer dispid 4;
    property Enable: WordBool dispid 5;
    property Value: OleVariant dispid 6;
    property NameVisibility: PropertyControlNameVisibility dispid 7;
    property Hint: WideString dispid 8;
    property Tips: WideString dispid 9;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IPropertyEditList
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {FDB82760-7EA3-408E-8699-A8392ACFD810}
// *********************************************************************//
  IPropertyEditList = interface(IPropertyControl)
    ['{FDB82760-7EA3-408E-8699-A8392ACFD810}']
    function Get_ListType: ksEditListTypeEnum; safecall;
    procedure Set_ListType(PVal: ksEditListTypeEnum); safecall;
    function Get_ItemChecked(Index: Integer): WordBool; safecall;
    procedure Set_ItemChecked(Index: Integer; PVal: WordBool); safecall;
    function Get_MultySelect: WordBool; safecall;
    procedure Set_MultySelect(PVal: WordBool); safecall;
    function Get_ItemSelected(Index: Integer): WordBool; safecall;
    procedure Set_ItemSelected(Index: Integer; PVal: WordBool); safecall;
    function Get_Sort: WordBool; safecall;
    procedure Set_Sort(PVal: WordBool); safecall;
    procedure ClearList; safecall;
    procedure Add(const NewVal: WideString); safecall;
    procedure Delete(Index: OleVariant); safecall;
    function Get_ItemsCount: Integer; safecall;
    procedure Set_ItemValue(Index: OleVariant; const PVal: WideString); safecall;
    function Get_ItemValue(Index: OleVariant): WideString; safecall;
    function Find(Val: OleVariant): Integer; safecall;
    property ListType: ksEditListTypeEnum read Get_ListType write Set_ListType;
    property ItemChecked[Index: Integer]: WordBool read Get_ItemChecked write Set_ItemChecked;
    property MultySelect: WordBool read Get_MultySelect write Set_MultySelect;
    property ItemSelected[Index: Integer]: WordBool read Get_ItemSelected write Set_ItemSelected;
    property Sort: WordBool read Get_Sort write Set_Sort;
    property ItemsCount: Integer read Get_ItemsCount;
    property ItemValue[Index: OleVariant]: WideString read Get_ItemValue write Set_ItemValue;
  end;

// *********************************************************************//
// DispIntf:  IPropertyEditListDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {FDB82760-7EA3-408E-8699-A8392ACFD810}
// *********************************************************************//
  IPropertyEditListDisp = dispinterface
    ['{FDB82760-7EA3-408E-8699-A8392ACFD810}']
    property ListType: ksEditListTypeEnum dispid 101;
    property ItemChecked[Index: Integer]: WordBool dispid 102;
    property MultySelect: WordBool dispid 103;
    property ItemSelected[Index: Integer]: WordBool dispid 104;
    property Sort: WordBool dispid 105;
    procedure ClearList; dispid 106;
    procedure Add(const NewVal: WideString); dispid 107;
    procedure Delete(Index: OleVariant); dispid 108;
    property ItemsCount: Integer readonly dispid 109;
    property ItemValue[Index: OleVariant]: WideString dispid 110;
    function Find(Val: OleVariant): Integer; dispid 111;
    property Visible: WordBool dispid 1;
    property Name: WideString dispid 2;
    property ControlType: ControlTypeEnum readonly dispid 3;
    property Id: Integer dispid 4;
    property Enable: WordBool dispid 5;
    property Value: OleVariant dispid 6;
    property NameVisibility: PropertyControlNameVisibility dispid 7;
    property Hint: WideString dispid 8;
    property Tips: WideString dispid 9;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IPropertyToolBar
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {C2523B7E-EB4B-45DB-8E3B-9D6CCED99333}
// *********************************************************************//
  IPropertyToolBar = interface(IDispatch)
    ['{C2523B7E-EB4B-45DB-8E3B-9D6CCED99333}']
    procedure Set_ButtonChecked(BtnID: Integer; PVal: WordBool); safecall;
    function Get_ButtonChecked(BtnID: Integer): WordBool; safecall;
    procedure Set_ButtonEnable(BtnID: Integer; PVal: WordBool); safecall;
    function Get_ButtonEnable(BtnID: Integer): WordBool; safecall;
    procedure AddButton(BtnID: Integer; Bmp: OleVariant; InsertAt: Integer); safecall;
    procedure Set_ResModule(HInstance: OleVariant); safecall;
    function Get_ResModule: OleVariant; safecall;
    procedure Set_ButtonTips(BtnID: Integer; const PVal: WideString); safecall;
    function Get_ButtonTips(BtnID: Integer): WideString; safecall;
    procedure Set_ButtonHint(BtnID: Integer; const PVal: WideString); safecall;
    function Get_ButtonHint(BtnID: Integer): WideString; safecall;
    property ButtonChecked[BtnID: Integer]: WordBool read Get_ButtonChecked write Set_ButtonChecked;
    property ButtonEnable[BtnID: Integer]: WordBool read Get_ButtonEnable write Set_ButtonEnable;
    property ResModule: OleVariant read Get_ResModule write Set_ResModule;
    property ButtonTips[BtnID: Integer]: WideString read Get_ButtonTips write Set_ButtonTips;
    property ButtonHint[BtnID: Integer]: WideString read Get_ButtonHint write Set_ButtonHint;
  end;

// *********************************************************************//
// DispIntf:  IPropertyToolBarDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {C2523B7E-EB4B-45DB-8E3B-9D6CCED99333}
// *********************************************************************//
  IPropertyToolBarDisp = dispinterface
    ['{C2523B7E-EB4B-45DB-8E3B-9D6CCED99333}']
    property ButtonChecked[BtnID: Integer]: WordBool dispid 501;
    property ButtonEnable[BtnID: Integer]: WordBool dispid 502;
    procedure AddButton(BtnID: Integer; Bmp: OleVariant; InsertAt: Integer); dispid 503;
    property ResModule: OleVariant dispid 504;
    property ButtonTips[BtnID: Integer]: WideString dispid 505;
    property ButtonHint[BtnID: Integer]: WideString dispid 506;
  end;

// *********************************************************************//
// Interface: IAssociationView
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {0825F23C-0A73-48DE-BEAB-DA2FF39962C3}
// *********************************************************************//
  IAssociationView = interface(IView)
    ['{0825F23C-0A73-48DE-BEAB-DA2FF39962C3}']
  end;

// *********************************************************************//
// DispIntf:  IAssociationViewDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {0825F23C-0A73-48DE-BEAB-DA2FF39962C3}
// *********************************************************************//
  IAssociationViewDisp = dispinterface
    ['{0825F23C-0A73-48DE-BEAB-DA2FF39962C3}']
    property Number: Integer dispid 1;
    property Name: WideString dispid 2;
    property Background: WordBool dispid 3;
    property Visible: WordBool dispid 4;
    property Current: WordBool dispid 5;
    property Color: Integer dispid 6;
    property Comment: WideString dispid 7;
    property ObjectCount: Integer readonly dispid 8;
    property X: Double dispid 9;
    property Y: Double dispid 10;
    property Scale: Double dispid 11;
    property Angle: Double dispid 12;
    property ViewType: LtViewType readonly dispid 13;
    property Layers: ILayers readonly dispid 14;
    property DrawingObjectType: DrawingObjectTypeEnum readonly dispid 3000;
    property LayerNumber: Integer dispid 3001;
    property Temp: WordBool readonly dispid 3002;
    property Valid: WordBool readonly dispid 3003;
    function Update: WordBool; dispid 3004;
    function Delete: WordBool; dispid 3005;
    property DrawingObjectParamType: ksDrawingObjectParamTypeEnum dispid 3006;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IViewDesignation
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {5F9580DA-915C-4C28-991D-5DFFE3BF3B3C}
// *********************************************************************//
  IViewDesignation = interface(IDispatch)
    ['{5F9580DA-915C-4C28-991D-5DFFE3BF3B3C}']
    function Get_ShowName: WordBool; safecall;
    procedure Set_ShowName(PVal: WordBool); safecall;
    function Get_ShowUnfold: WordBool; safecall;
    procedure Set_ShowUnfold(PVal: WordBool); safecall;
    function Get_ShowScale: WordBool; safecall;
    procedure Set_ShowScale(PVal: WordBool); safecall;
    function Get_ShowTurn: WordBool; safecall;
    procedure Set_ShowTurn(PVal: WordBool); safecall;
    function Get_ShowAngle: WordBool; safecall;
    procedure Set_ShowAngle(PVal: WordBool); safecall;
    function Get_ShowPage: WordBool; safecall;
    procedure Set_ShowPage(PVal: WordBool); safecall;
    function Get_ShowZone: WordBool; safecall;
    procedure Set_ShowZone(PVal: WordBool); safecall;
    function Get_Designation: WideString; safecall;
    function Get_RefObject: OleVariant; safecall;
    procedure Set_RefObject(PVal: OleVariant); safecall;
    property ShowName: WordBool read Get_ShowName write Set_ShowName;
    property ShowUnfold: WordBool read Get_ShowUnfold write Set_ShowUnfold;
    property ShowScale: WordBool read Get_ShowScale write Set_ShowScale;
    property ShowTurn: WordBool read Get_ShowTurn write Set_ShowTurn;
    property ShowAngle: WordBool read Get_ShowAngle write Set_ShowAngle;
    property ShowPage: WordBool read Get_ShowPage write Set_ShowPage;
    property ShowZone: WordBool read Get_ShowZone write Set_ShowZone;
    property Designation: WideString read Get_Designation;
    property RefObject: OleVariant read Get_RefObject write Set_RefObject;
  end;

// *********************************************************************//
// DispIntf:  IViewDesignationDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {5F9580DA-915C-4C28-991D-5DFFE3BF3B3C}
// *********************************************************************//
  IViewDesignationDisp = dispinterface
    ['{5F9580DA-915C-4C28-991D-5DFFE3BF3B3C}']
    property ShowName: WordBool dispid 4001;
    property ShowUnfold: WordBool dispid 4002;
    property ShowScale: WordBool dispid 4003;
    property ShowTurn: WordBool dispid 4004;
    property ShowAngle: WordBool dispid 4005;
    property ShowPage: WordBool dispid 4006;
    property ShowZone: WordBool dispid 4007;
    property Designation: WideString readonly dispid 4008;
    property RefObject: OleVariant dispid 4009;
  end;

// *********************************************************************//
// Interface: IDocument2DSettings
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {B09A64BF-7AA6-4BF6-B8E8-AA8E8EE6E9D6}
// *********************************************************************//
  IDocument2DSettings = interface(IDocumentSettings)
    ['{B09A64BF-7AA6-4BF6-B8E8-AA8E8EE6E9D6}']
    procedure Set_LayersGroupWay(PVal: LayersGroupWayEnum); safecall;
    function Get_LayersGroupWay: LayersGroupWayEnum; safecall;
    procedure Set_CompositionInherit(PVal: WordBool); safecall;
    function Get_CompositionInherit: WordBool; safecall;
    property LayersGroupWay: LayersGroupWayEnum read Get_LayersGroupWay write Set_LayersGroupWay;
    property CompositionInherit: WordBool read Get_CompositionInherit write Set_CompositionInherit;
  end;

// *********************************************************************//
// DispIntf:  IDocument2DSettingsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {B09A64BF-7AA6-4BF6-B8E8-AA8E8EE6E9D6}
// *********************************************************************//
  IDocument2DSettingsDisp = dispinterface
    ['{B09A64BF-7AA6-4BF6-B8E8-AA8E8EE6E9D6}']
    property LayersGroupWay: LayersGroupWayEnum dispid 101;
    property CompositionInherit: WordBool dispid 102;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IDrawingDocumentSettings
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {0DC39FC2-4FB1-489E-A76E-E47413199FA3}
// *********************************************************************//
  IDrawingDocumentSettings = interface(IDocument2DSettings)
    ['{0DC39FC2-4FB1-489E-A76E-E47413199FA3}']
  end;

// *********************************************************************//
// DispIntf:  IDrawingDocumentSettingsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {0DC39FC2-4FB1-489E-A76E-E47413199FA3}
// *********************************************************************//
  IDrawingDocumentSettingsDisp = dispinterface
    ['{0DC39FC2-4FB1-489E-A76E-E47413199FA3}']
    property LayersGroupWay: LayersGroupWayEnum dispid 101;
    property CompositionInherit: WordBool dispid 102;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IFragmentDocumentSettings
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {A33D05CF-EFFF-4BBE-9BE0-15D283425828}
// *********************************************************************//
  IFragmentDocumentSettings = interface(IDocument2DSettings)
    ['{A33D05CF-EFFF-4BBE-9BE0-15D283425828}']
  end;

// *********************************************************************//
// DispIntf:  IFragmentDocumentSettingsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {A33D05CF-EFFF-4BBE-9BE0-15D283425828}
// *********************************************************************//
  IFragmentDocumentSettingsDisp = dispinterface
    ['{A33D05CF-EFFF-4BBE-9BE0-15D283425828}']
    property LayersGroupWay: LayersGroupWayEnum dispid 101;
    property CompositionInherit: WordBool dispid 102;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// DispIntf:  ksPropertyManagerNotify
// Flags:     (4096) Dispatchable
// GUID:      {5A89C538-E0DD-4C21-B3D1-3BF65EEB8C3E}
// *********************************************************************//
  ksPropertyManagerNotify = dispinterface
    ['{5A89C538-E0DD-4C21-B3D1-3BF65EEB8C3E}']
    function ButtonClick(ButtonID: Integer): WordBool; dispid 1;
    function ChangeControlValue(const Control: IPropertyControl): WordBool; dispid 2;
    function ControlCommand(const Control: IPropertyControl; ButtonID: Integer): WordBool; dispid 3;
    function ButtonUpdate(ButtonID: Integer; var Check: Integer; var Enable: WordBool): WordBool; dispid 4;
    function ProcessActivate: WordBool; dispid 5;
    function ProcessDeactivate: WordBool; dispid 6;
    function CommandHelp(Id: Integer): WordBool; dispid 7;
    function SelectItem(const Control: IPropertyControl; Index: Integer; Select: WordBool): WordBool; dispid 8;
    function CheckItem(const Control: IPropertyControl; Index: Integer; Check: WordBool): WordBool; dispid 9;
    function ChangeActiveTab(TabIndex: Integer): WordBool; dispid 10;
  end;

// *********************************************************************//
// DispIntf:  ksPropertyUserControlNotify
// Flags:     (4096) Dispatchable
// GUID:      {5A31BB02-026C-4419-A0FF-A93CF58DCA99}
// *********************************************************************//
  ksPropertyUserControlNotify = dispinterface
    ['{5A31BB02-026C-4419-A0FF-A93CF58DCA99}']
    function CreateOCX(const IOcx: IDispatch): WordBool; dispid 1;
    function DestroyOCX: WordBool; dispid 2;
  end;

// *********************************************************************//
// DispIntf:  ksDocumentFrameNotify
// Flags:     (4096) Dispatchable
// GUID:      {6ECBB531-5609-4364-AC92-7A6A21D23313}
// *********************************************************************//
  ksDocumentFrameNotify = dispinterface
    ['{6ECBB531-5609-4364-AC92-7A6A21D23313}']
    function BeginPaint(const PaintObj: IPaintObject): WordBool; dispid 1;
    function ClosePaint(const PaintObj: IPaintObject): WordBool; dispid 2;
    function MouseDown(NButton: Smallint; NShiftState: Smallint; X: Integer; Y: Integer): WordBool; dispid 3;
    function MouseUp(NButton: Smallint; NShiftState: Smallint; X: Integer; Y: Integer): WordBool; dispid 4;
    function MouseDblClick(NButton: Smallint; NShiftState: Smallint; X: Integer; Y: Integer): WordBool; dispid 5;
    function BeginPaintGL(const GlObj: ksGLObject; DrawMode: Integer): WordBool; dispid 6;
    function ClosePaintGL(const GlObj: ksGLObject; DrawMode: Integer): WordBool; dispid 7;
    function AddGabarit(const GabObj: IGabaritObject): WordBool; dispid 8;
    function Activate: WordBool; dispid 9;
    function Deactivate: WordBool; dispid 10;
    function CloseFrame: WordBool; dispid 11;
    function MouseMove(NShiftState: Smallint; X: Integer; Y: Integer): WordBool; dispid 12;
  end;

// *********************************************************************//
// DispIntf:  ksDrawingObjectNotify
// Flags:     (4096) Dispatchable
// GUID:      {E335A73F-DF27-4D33-8CBD-E928F797FB94}
// *********************************************************************//
  ksDrawingObjectNotify = dispinterface
    ['{E335A73F-DF27-4D33-8CBD-E928F797FB94}']
    function ChangeActive(Obj: OleVariant): WordBool; dispid 1;
    function BeginDelete(Objects: OleVariant): WordBool; dispid 2;
    function Delete(Objects: OleVariant): WordBool; dispid 3;
    function BeginMove(Objects: OleVariant): WordBool; dispid 4;
    function Move(Objects: OleVariant): WordBool; dispid 5;
    function BeginRotate(Objects: OleVariant): WordBool; dispid 6;
    function Rotate(Objects: OleVariant): WordBool; dispid 7;
    function BeginScale(Objects: OleVariant): WordBool; dispid 8;
    function Scale(Objects: OleVariant): WordBool; dispid 9;
    function BeginTransform(Objects: OleVariant): WordBool; dispid 10;
    function Transform(Objects: OleVariant): WordBool; dispid 11;
    function BeginCopy(Objects: OleVariant): WordBool; dispid 12;
    function Copy(Objects: OleVariant): WordBool; dispid 13;
    function BeginSymmetry(Objects: OleVariant): WordBool; dispid 14;
    function Symmetry(Objects: OleVariant): WordBool; dispid 15;
    function BeginProcess(PType: Integer; ObjRef: OleVariant): WordBool; dispid 16;
    function EndProcess(PType: Integer): WordBool; dispid 17;
    function CreateObject(Objects: OleVariant): WordBool; dispid 18;
    function UpdateObject(Objects: OleVariant): WordBool; dispid 19;
    function BeginDestroyObject(Objects: OleVariant): WordBool; dispid 20;
    function DestroyObject(Objects: OleVariant): WordBool; dispid 21;
  end;

// *********************************************************************//
// DispIntf:  ksViewsAndLayersManagerNotify
// Flags:     (4096) Dispatchable
// GUID:      {FC04C62E-AB0F-4614-B3D9-0EA8671CEB08}
// *********************************************************************//
  ksViewsAndLayersManagerNotify = dispinterface
    ['{FC04C62E-AB0F-4614-B3D9-0EA8671CEB08}']
    function BeginEdit: WordBool; dispid 1;
    function EndEdit(IsOk: WordBool): WordBool; dispid 2;
  end;

// *********************************************************************//
// DispIntf:  ksLibraryManagerNotify
// Flags:     (4096) Dispatchable
// GUID:      {9B9CC387-E217-4EED-BCE9-9E1D645B49EE}
// *********************************************************************//
  ksLibraryManagerNotify = dispinterface
    ['{9B9CC387-E217-4EED-BCE9-9E1D645B49EE}']
    function BeginAttach(const PLibrary: ILibrary): WordBool; dispid 1;
    function Attach(const PLibrary: ILibrary): WordBool; dispid 2;
    function BeginDetach(const PLibrary: ILibrary): WordBool; dispid 3;
    function Detach(const PLibrary: ILibrary): WordBool; dispid 4;
    function BeginExecute(const PLibrary: ILibrary): WordBool; dispid 5;
    function EndExecute(const PLibrary: ILibrary): WordBool; dispid 6;
    function SystemControlStop(const PLibrary: ILibrary): WordBool; dispid 7;
    function SystemControlStart(const PLibrary: ILibrary): WordBool; dispid 8;
    function AddLibraryDescription(const PLibrary: ILibrary): WordBool; dispid 9;
    function DeleteLibraryDescription(const PLibrary: ILibrary): WordBool; dispid 10;
    function AddInsert(const PInsert: IInsert; Create: WordBool): WordBool; dispid 11;
    function DeleteInsert(const PInsert: IInsert): WordBool; dispid 12;
    function EditInsert(const PLibrary: ILibrary; const PDoc: IKompasDocument; newFrw: WordBool): WordBool; dispid 13;
  end;

// *********************************************************************//
// DispIntf:  ksSpecificationDescriptionNotify
// Flags:     (4096) Dispatchable
// GUID:      {A0DA14E6-4F92-4D18-8CD1-2BBAB695CE13}
// *********************************************************************//
  ksSpecificationDescriptionNotify = dispinterface
    ['{A0DA14E6-4F92-4D18-8CD1-2BBAB695CE13}']
    function TuningSpcStyleBeginChange(const Descr: ISpecificationDescription): WordBool; dispid 1;
    function TuningSpcStyleChange(const Descr: ISpecificationDescription; IsOk: WordBool): WordBool; dispid 2;
    function ChangeCurrentSpcDescription(const Descr: ISpecificationDescription): WordBool; dispid 3;
    function SpcDescriptionAdd(const Descr: ISpecificationDescription): WordBool; dispid 4;
    function SpcDescriptionRemove(const Descr: ISpecificationDescription): WordBool; dispid 5;
    function SpcDescriptionBeginEdit(const Descr: ISpecificationDescription): WordBool; dispid 6;
    function SpcDescriptionEdit(const Descr: ISpecificationDescription; IsOk: WordBool): WordBool; dispid 7;
    function SynchronizationBegin: WordBool; dispid 8;
    function Synchronization: WordBool; dispid 9;
    function BeginCalcPositions: WordBool; dispid 10;
    function CalcPositions: WordBool; dispid 11;
    function BeginCreateObject(typeObj: Integer): WordBool; dispid 12;
  end;

// *********************************************************************//
// DispIntf:  ksSpecificationObjectNotify
// Flags:     (4096) Dispatchable
// GUID:      {1C4DEC41-A8EA-40EE-9AC8-F807232DB874}
// *********************************************************************//
  ksSpecificationObjectNotify = dispinterface
    ['{1C4DEC41-A8EA-40EE-9AC8-F807232DB874}']
    function BeginDelete(const Obj: ISpecificationObject): WordBool; dispid 1;
    function Delete(const Obj: ISpecificationObject): WordBool; dispid 2;
    function CellDblClick(const Obj: ISpecificationObject; Number: Integer): WordBool; dispid 3;
    function CellBeginEdit(const Obj: ISpecificationObject; Number: Integer): WordBool; dispid 4;
    function ChangeCurrent(const Obj: ISpecificationObject): WordBool; dispid 5;
    function DocumentBeginAdd(const Obj: ISpecificationObject): WordBool; dispid 6;
    function DocumentAdd(const Obj: ISpecificationObject; const docName: WideString): WordBool; dispid 7;
    function DocumentRemove(const Obj: ISpecificationObject; const docName: WideString): WordBool; dispid 8;
    function BeginGeomChange(const Obj: ISpecificationObject): WordBool; dispid 9;
    function GeomChange(const Obj: ISpecificationObject): WordBool; dispid 10;
    function BeginProcess(PType: Integer; const Obj: ISpecificationObject): WordBool; dispid 11;
    function EndProcess(PType: Integer): WordBool; dispid 12;
    function CreateObject(const Obj: ISpecificationObject): WordBool; dispid 13;
    function UpdateObject(const Obj: ISpecificationObject): WordBool; dispid 14;
  end;

// *********************************************************************//
// DispIntf:  ksLayoutSheetsNotify
// Flags:     (4096) Dispatchable
// GUID:      {58E30500-6073-4337-BFC1-32A74EA17DE8}
// *********************************************************************//
  ksLayoutSheetsNotify = dispinterface
    ['{58E30500-6073-4337-BFC1-32A74EA17DE8}']
    function Add(const PSheet: ILayoutSheet): WordBool; dispid 1;
    function Delete(const PSheet: ILayoutSheet): WordBool; dispid 2;
    function Update(const PSheet: ILayoutSheet): WordBool; dispid 3;
  end;

// *********************************************************************//
// DispIntf:  ksModelObjectNotify
// Flags:     (4096) Dispatchable
// GUID:      {7B8E86E1-4304-449D-9CEC-1B14F74A16FB}
// *********************************************************************//
  ksModelObjectNotify = dispinterface
    ['{7B8E86E1-4304-449D-9CEC-1B14F74A16FB}']
    function BeginDelete(Obj: OleVariant): WordBool; dispid 1;
    function Delete(Obj: OleVariant): WordBool; dispid 2;
    function Excluded(Obj: OleVariant; Excluded: WordBool): WordBool; dispid 3;
    function Hidden(Obj: OleVariant; _hidden: WordBool): WordBool; dispid 4;
    function BeginPropertyChanged(Obj: OleVariant): WordBool; dispid 5;
    function PropertyChanged(Obj: OleVariant): WordBool; dispid 6;
    function BeginPlacementChanged(Obj: OleVariant): WordBool; dispid 7;
    function PlacementChanged(Obj: OleVariant): WordBool; dispid 8;
    function BeginProcess(PType: Integer; Obj: OleVariant): WordBool; dispid 9;
    function EndProcess(PType: Integer): WordBool; dispid 10;
    function CreateObject(Obj: OleVariant): WordBool; dispid 11;
    function UpdateObject(Obj: OleVariant): WordBool; dispid 12;
  end;

// *********************************************************************//
// DispIntf:  ksDocument3DNotify7
// Flags:     (4096) Dispatchable
// GUID:      {C784D45B-8C68-4189-8F27-A3B0D6CFAEB2}
// *********************************************************************//
  ksDocument3DNotify7 = dispinterface
    ['{C784D45B-8C68-4189-8F27-A3B0D6CFAEB2}']
    function BeginRebuild: WordBool; dispid 1;
    function Rebuild: WordBool; dispid 2;
    function BeginChoiceMaterial: WordBool; dispid 3;
    function ChoiceMaterial(const Material: WideString; Density: Double): WordBool; dispid 4;
    function BeginChoiceMarking: WordBool; dispid 5;
    function ChoiceMarking(const Marking: WideString): WordBool; dispid 6;
    function BeginSetPartFromFile: WordBool; dispid 7;
    function BeginCreatePartFromFile(typeDoc: WordBool; const Plane: IModelObject): WordBool; dispid 8;
  end;

// *********************************************************************//
// Interface: IModelObjectNotifyResult
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {73653933-51B5-49D6-9EF2-6667639283CC}
// *********************************************************************//
  IModelObjectNotifyResult = interface(IDispatch)
    ['{73653933-51B5-49D6-9EF2-6667639283CC}']
    function Get_NotifyType: ksObject3DNotifyEnum; safecall;
    function Get_NotifyObjects: OleVariant; safecall;
    function Get_ProcessType: ProcessTypeEnum; safecall;
    property NotifyType: ksObject3DNotifyEnum read Get_NotifyType;
    property NotifyObjects: OleVariant read Get_NotifyObjects;
    property ProcessType: ProcessTypeEnum read Get_ProcessType;
  end;

// *********************************************************************//
// DispIntf:  IModelObjectNotifyResultDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {73653933-51B5-49D6-9EF2-6667639283CC}
// *********************************************************************//
  IModelObjectNotifyResultDisp = dispinterface
    ['{73653933-51B5-49D6-9EF2-6667639283CC}']
    property NotifyType: ksObject3DNotifyEnum readonly dispid 4001;
    property NotifyObjects: OleVariant readonly dispid 4002;
    property ProcessType: ProcessTypeEnum readonly dispid 4003;
  end;

// *********************************************************************//
// Interface: IModelContainer
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {2C6E8A0F-EDC8-413C-9304-9278817B915B}
// *********************************************************************//
  IModelContainer = interface(IDispatch)
    ['{2C6E8A0F-EDC8-413C-9304-9278817B915B}']
    function Get_Objects(ObjType: OleVariant): OleVariant; safecall;
    function Get_Sketchs: ISketchs; safecall;
    function Get_Extrusions: IExtrusions; safecall;
    function Get_Points3D: IPoints3D; safecall;
    property Objects[ObjType: OleVariant]: OleVariant read Get_Objects;
    property Sketchs: ISketchs read Get_Sketchs;
    property Extrusions: IExtrusions read Get_Extrusions;
    property Points3D: IPoints3D read Get_Points3D;
  end;

// *********************************************************************//
// DispIntf:  IModelContainerDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {2C6E8A0F-EDC8-413C-9304-9278817B915B}
// *********************************************************************//
  IModelContainerDisp = dispinterface
    ['{2C6E8A0F-EDC8-413C-9304-9278817B915B}']
    property Objects[ObjType: OleVariant]: OleVariant readonly dispid 10001;
    property Sketchs: ISketchs readonly dispid 10002;
    property Extrusions: IExtrusions readonly dispid 10003;
    property Points3D: IPoints3D readonly dispid 10004;
  end;

// *********************************************************************//
// Interface: ISketchs
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {EE562963-395C-4748-9726-FCA9C531B1CA}
// *********************************************************************//
  ISketchs = interface(IModelObjects)
    ['{EE562963-395C-4748-9726-FCA9C531B1CA}']
    function Get_Sketch(Index: OleVariant): ISketch; safecall;
    function Add: ISketch; safecall;
    property Sketch[Index: OleVariant]: ISketch read Get_Sketch;
  end;

// *********************************************************************//
// DispIntf:  ISketchsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {EE562963-395C-4748-9726-FCA9C531B1CA}
// *********************************************************************//
  ISketchsDisp = dispinterface
    ['{EE562963-395C-4748-9726-FCA9C531B1CA}']
    property Sketch[Index: OleVariant]: ISketch readonly dispid 1;
    function Add: ISketch; dispid 2;
    property Item[Index: OleVariant]: IModelObject readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ISketch
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {E6BBF50D-8401-4FB3-A6B6-153D3F447255}
// *********************************************************************//
  ISketch = interface(IModelObject)
    ['{E6BBF50D-8401-4FB3-A6B6-153D3F447255}']
    procedure Set_Plane(const Result: IModelObject); safecall;
    function Get_Plane: IModelObject; safecall;
    procedure Set_Angle(PVal: Double); safecall;
    function Get_Angle: Double; safecall;
    function GetLocation(out X: Double; out Y: Double): WordBool; safecall;
    function SetLocation(X: Double; Y: Double): WordBool; safecall;
    function GetLoftPoint(out X: Double; out Y: Double): WordBool; safecall;
    function SetLoftPoint(X: Double; Y: Double): WordBool; safecall;
    function BeginEdit: IFragmentDocument; safecall;
    function EndEdit: WordBool; safecall;
    property Plane: IModelObject read Get_Plane write Set_Plane;
    property Angle: Double read Get_Angle write Set_Angle;
  end;

// *********************************************************************//
// DispIntf:  ISketchDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {E6BBF50D-8401-4FB3-A6B6-153D3F447255}
// *********************************************************************//
  ISketchDisp = dispinterface
    ['{E6BBF50D-8401-4FB3-A6B6-153D3F447255}']
    property Plane: IModelObject dispid 1;
    property Angle: Double dispid 2;
    function GetLocation(out X: Double; out Y: Double): WordBool; dispid 3;
    function SetLocation(X: Double; Y: Double): WordBool; dispid 4;
    function GetLoftPoint(out X: Double; out Y: Double): WordBool; dispid 5;
    function SetLoftPoint(X: Double; Y: Double): WordBool; dispid 6;
    function BeginEdit: IFragmentDocument; dispid 7;
    function EndEdit: WordBool; dispid 8;
    property Name: WideString dispid 501;
    property Hidden: WordBool dispid 502;
    function Update: WordBool; dispid 503;
    property Valid: WordBool readonly dispid 504;
    property Part: IPart7 readonly dispid 505;
    property ModelObjectType: ksObj3dTypeEnum readonly dispid 506;
    property Owner: IFeature7 readonly dispid 507;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IExtrusions
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {A160C032-CF96-4467-A682-CE2243DF76BD}
// *********************************************************************//
  IExtrusions = interface(IModelObjects)
    ['{A160C032-CF96-4467-A682-CE2243DF76BD}']
    function Get_Extrusion(Index: OleVariant): IExtrusion; safecall;
    function Add(ExtrusionType: ksObj3dTypeEnum): IExtrusion; safecall;
    property Extrusion[Index: OleVariant]: IExtrusion read Get_Extrusion;
  end;

// *********************************************************************//
// DispIntf:  IExtrusionsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {A160C032-CF96-4467-A682-CE2243DF76BD}
// *********************************************************************//
  IExtrusionsDisp = dispinterface
    ['{A160C032-CF96-4467-A682-CE2243DF76BD}']
    property Extrusion[Index: OleVariant]: IExtrusion readonly dispid 1;
    function Add(ExtrusionType: ksObj3dTypeEnum): IExtrusion; dispid 2;
    property Item[Index: OleVariant]: IModelObject readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IExtrusion
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {0D7FFE70-33EB-442C-A9B6-A205EA85A237}
// *********************************************************************//
  IExtrusion = interface(IModelObject)
    ['{0D7FFE70-33EB-442C-A9B6-A205EA85A237}']
    procedure Set_Sketch(const Result: ISketch); safecall;
    function Get_Sketch: ISketch; safecall;
    procedure Set_Direction(PVal: ksDirectionTypeEnum); safecall;
    function Get_Direction: ksDirectionTypeEnum; safecall;
    procedure Set_ExtrusionType(Normal: WordBool; PVal: ksEndTypeEnum); safecall;
    function Get_ExtrusionType(Normal: WordBool): ksEndTypeEnum; safecall;
    procedure Set_Depth(Normal: WordBool; PVal: Double); safecall;
    function Get_Depth(Normal: WordBool): Double; safecall;
    procedure Set_DraftValue(Normal: WordBool; PVal: Double); safecall;
    function Get_DraftValue(Normal: WordBool): Double; safecall;
    procedure Set_DraftOutward(Normal: WordBool; PVal: WordBool); safecall;
    function Get_DraftOutward(Normal: WordBool): WordBool; safecall;
    procedure Set_DepthObject(Normal: WordBool; const PVal: IModelObject); safecall;
    function Get_DepthObject(Normal: WordBool): IModelObject; safecall;
    function GetSideParameters(Normal: WordBool; out ExtrusionType: ksEndTypeEnum; 
                               out Depth: Double; out DraftValue: Double; 
                               out DraftOutward: WordBool; out DepthObject: IModelObject): WordBool; safecall;
    function SetSideParameters(Normal: WordBool; ExtrusionType: ksEndTypeEnum; Depth: Double; 
                               DraftValue: Double; DraftOutward: WordBool; 
                               const DepthObject: IModelObject): WordBool; safecall;
    property Sketch: ISketch read Get_Sketch write Set_Sketch;
    property Direction: ksDirectionTypeEnum read Get_Direction write Set_Direction;
    property ExtrusionType[Normal: WordBool]: ksEndTypeEnum read Get_ExtrusionType write Set_ExtrusionType;
    property Depth[Normal: WordBool]: Double read Get_Depth write Set_Depth;
    property DraftValue[Normal: WordBool]: Double read Get_DraftValue write Set_DraftValue;
    property DraftOutward[Normal: WordBool]: WordBool read Get_DraftOutward write Set_DraftOutward;
    property DepthObject[Normal: WordBool]: IModelObject read Get_DepthObject write Set_DepthObject;
  end;

// *********************************************************************//
// DispIntf:  IExtrusionDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {0D7FFE70-33EB-442C-A9B6-A205EA85A237}
// *********************************************************************//
  IExtrusionDisp = dispinterface
    ['{0D7FFE70-33EB-442C-A9B6-A205EA85A237}']
    property Sketch: ISketch dispid 1;
    property Direction: ksDirectionTypeEnum dispid 2;
    property ExtrusionType[Normal: WordBool]: ksEndTypeEnum dispid 3;
    property Depth[Normal: WordBool]: Double dispid 4;
    property DraftValue[Normal: WordBool]: Double dispid 5;
    property DraftOutward[Normal: WordBool]: WordBool dispid 6;
    property DepthObject[Normal: WordBool]: IModelObject dispid 7;
    function GetSideParameters(Normal: WordBool; out ExtrusionType: ksEndTypeEnum; 
                               out Depth: Double; out DraftValue: Double; 
                               out DraftOutward: WordBool; out DepthObject: IModelObject): WordBool; dispid 8;
    function SetSideParameters(Normal: WordBool; ExtrusionType: ksEndTypeEnum; Depth: Double; 
                               DraftValue: Double; DraftOutward: WordBool; 
                               const DepthObject: IModelObject): WordBool; dispid 9;
    property Name: WideString dispid 501;
    property Hidden: WordBool dispid 502;
    function Update: WordBool; dispid 503;
    property Valid: WordBool readonly dispid 504;
    property Part: IPart7 readonly dispid 505;
    property ModelObjectType: ksObj3dTypeEnum readonly dispid 506;
    property Owner: IFeature7 readonly dispid 507;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IPoints3D
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {81EBB128-3963-4759-9D4E-2829C3078B0F}
// *********************************************************************//
  IPoints3D = interface(IModelObjects)
    ['{81EBB128-3963-4759-9D4E-2829C3078B0F}']
    function Get_Point3D(Index: OleVariant): IPoint3D; safecall;
    function Add: IPoint3D; safecall;
    property Point3D[Index: OleVariant]: IPoint3D read Get_Point3D;
  end;

// *********************************************************************//
// DispIntf:  IPoints3DDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {81EBB128-3963-4759-9D4E-2829C3078B0F}
// *********************************************************************//
  IPoints3DDisp = dispinterface
    ['{81EBB128-3963-4759-9D4E-2829C3078B0F}']
    property Point3D[Index: OleVariant]: IPoint3D readonly dispid 1;
    function Add: IPoint3D; dispid 2;
    property Item[Index: OleVariant]: IModelObject readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IPoint3D
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {D71AEDBE-01D4-4C7D-96DC-94981F2A1C37}
// *********************************************************************//
  IPoint3D = interface(IModelObject)
    ['{D71AEDBE-01D4-4C7D-96DC-94981F2A1C37}']
    procedure Set_X(PVal: Double); safecall;
    function Get_X: Double; safecall;
    procedure Set_Y(PVal: Double); safecall;
    function Get_Y: Double; safecall;
    procedure Set_Z(PVal: Double); safecall;
    function Get_Z: Double; safecall;
    function SetAssociationObject(const NewVal: IModelObject): WordBool; safecall;
    function Get_AssociationObject: IModelObject; safecall;
    procedure Set_Symbol(PVal: ksAnnotationSymbolEnum); safecall;
    function Get_Symbol: ksAnnotationSymbolEnum; safecall;
    procedure Set_ParameterType(PVal: ksPoint3DTypeEnum); safecall;
    function Get_ParameterType: ksPoint3DTypeEnum; safecall;
    function Get_Parameters: IKompasAPIObject; safecall;
    property X: Double read Get_X write Set_X;
    property Y: Double read Get_Y write Set_Y;
    property Z: Double read Get_Z write Set_Z;
    property AssociationObject: IModelObject read Get_AssociationObject;
    property Symbol: ksAnnotationSymbolEnum read Get_Symbol write Set_Symbol;
    property ParameterType: ksPoint3DTypeEnum read Get_ParameterType write Set_ParameterType;
    property Parameters: IKompasAPIObject read Get_Parameters;
  end;

// *********************************************************************//
// DispIntf:  IPoint3DDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {D71AEDBE-01D4-4C7D-96DC-94981F2A1C37}
// *********************************************************************//
  IPoint3DDisp = dispinterface
    ['{D71AEDBE-01D4-4C7D-96DC-94981F2A1C37}']
    property X: Double dispid 1;
    property Y: Double dispid 2;
    property Z: Double dispid 3;
    function SetAssociationObject(const NewVal: IModelObject): WordBool; dispid 4;
    property AssociationObject: IModelObject readonly dispid 5;
    property Symbol: ksAnnotationSymbolEnum dispid 6;
    property ParameterType: ksPoint3DTypeEnum dispid 7;
    property Parameters: IKompasAPIObject readonly dispid 8;
    property Name: WideString dispid 501;
    property Hidden: WordBool dispid 502;
    function Update: WordBool; dispid 503;
    property Valid: WordBool readonly dispid 504;
    property Part: IPart7 readonly dispid 505;
    property ModelObjectType: ksObj3dTypeEnum readonly dispid 506;
    property Owner: IFeature7 readonly dispid 507;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IMassInertiaParam7
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {666C987F-2700-4C35-B8CE-DB8BFB5AAF02}
// *********************************************************************//
  IMassInertiaParam7 = interface(IDispatch)
    ['{666C987F-2700-4C35-B8CE-DB8BFB5AAF02}']
    procedure Set_Xc(PVal: Double); safecall;
    function Get_Xc: Double; safecall;
    procedure Set_Yc(PVal: Double); safecall;
    function Get_Yc: Double; safecall;
    procedure Set_Zc(PVal: Double); safecall;
    function Get_Zc: Double; safecall;
    procedure Set_ManualMassCentre(PVal: WordBool); safecall;
    function Get_ManualMassCentre: WordBool; safecall;
    procedure Set_LengthUnits(PVal: ksLengthUnitsEnum); safecall;
    function Get_LengthUnits: ksLengthUnitsEnum; safecall;
    procedure Set_MassUnits(PVal: ksMassUnitsEnum); safecall;
    function Get_MassUnits: ksMassUnitsEnum; safecall;
    procedure Set_ManualMass(Param1: Double); safecall;
    function Get_CalculateMass: Double; safecall;
    procedure Set_MassSettingMode(PVal: ksMassSettingModeEnum); safecall;
    function Get_MassSettingMode: ksMassSettingModeEnum; safecall;
    procedure Set_ManualDensity(Param1: Double); safecall;
    function Get_HandBookDensity: Double; safecall;
    procedure Set_DensityMode(PVal: WordBool); safecall;
    function Get_DensityMode: WordBool; safecall;
    function Get_Volume: Double; safecall;
    function Get_Area: Double; safecall;
    procedure Set_SourceData(PVal: WordBool); safecall;
    function Get_SourceData: WordBool; safecall;
    function Get_Actual: WordBool; safecall;
    function Calculate: WordBool; safecall;
    function Get_LX: Double; safecall;
    function Get_LY: Double; safecall;
    function Get_Lz: Double; safecall;
    function Get_Lxy: Double; safecall;
    function Get_Lxz: Double; safecall;
    function Get_Lyz: Double; safecall;
    function Get_Jx: Double; safecall;
    function Get_Jy: Double; safecall;
    function Get_Jz: Double; safecall;
    function Get_Jxy: Double; safecall;
    function Get_Jxz: Double; safecall;
    function Get_Jyz: Double; safecall;
    function Get_Jx0: Double; safecall;
    function Get_Jy0: Double; safecall;
    function Get_Jz0: Double; safecall;
    function GetAxisX(out X: Double; out Y: Double; out Z: Double): WordBool; safecall;
    function GetAxisY(out X: Double; out Y: Double; out Z: Double): WordBool; safecall;
    function GetAxisZ(out X: Double; out Y: Double; out Z: Double): WordBool; safecall;
    property Xc: Double read Get_Xc write Set_Xc;
    property Yc: Double read Get_Yc write Set_Yc;
    property Zc: Double read Get_Zc write Set_Zc;
    property ManualMassCentre: WordBool read Get_ManualMassCentre write Set_ManualMassCentre;
    property LengthUnits: ksLengthUnitsEnum read Get_LengthUnits write Set_LengthUnits;
    property MassUnits: ksMassUnitsEnum read Get_MassUnits write Set_MassUnits;
    property ManualMass: Double write Set_ManualMass;
    property CalculateMass: Double read Get_CalculateMass;
    property MassSettingMode: ksMassSettingModeEnum read Get_MassSettingMode write Set_MassSettingMode;
    property ManualDensity: Double write Set_ManualDensity;
    property HandBookDensity: Double read Get_HandBookDensity;
    property DensityMode: WordBool read Get_DensityMode write Set_DensityMode;
    property Volume: Double read Get_Volume;
    property Area: Double read Get_Area;
    property SourceData: WordBool read Get_SourceData write Set_SourceData;
    property Actual: WordBool read Get_Actual;
    property LX: Double read Get_LX;
    property LY: Double read Get_LY;
    property Lz: Double read Get_Lz;
    property Lxy: Double read Get_Lxy;
    property Lxz: Double read Get_Lxz;
    property Lyz: Double read Get_Lyz;
    property Jx: Double read Get_Jx;
    property Jy: Double read Get_Jy;
    property Jz: Double read Get_Jz;
    property Jxy: Double read Get_Jxy;
    property Jxz: Double read Get_Jxz;
    property Jyz: Double read Get_Jyz;
    property Jx0: Double read Get_Jx0;
    property Jy0: Double read Get_Jy0;
    property Jz0: Double read Get_Jz0;
  end;

// *********************************************************************//
// DispIntf:  IMassInertiaParam7Disp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {666C987F-2700-4C35-B8CE-DB8BFB5AAF02}
// *********************************************************************//
  IMassInertiaParam7Disp = dispinterface
    ['{666C987F-2700-4C35-B8CE-DB8BFB5AAF02}']
    property Xc: Double dispid 3001;
    property Yc: Double dispid 3002;
    property Zc: Double dispid 3003;
    property ManualMassCentre: WordBool dispid 3004;
    property LengthUnits: ksLengthUnitsEnum dispid 3005;
    property MassUnits: ksMassUnitsEnum dispid 3006;
    property ManualMass: Double writeonly dispid 3007;
    property CalculateMass: Double readonly dispid 3008;
    property MassSettingMode: ksMassSettingModeEnum dispid 3009;
    property ManualDensity: Double writeonly dispid 3010;
    property HandBookDensity: Double readonly dispid 3011;
    property DensityMode: WordBool dispid 3012;
    property Volume: Double readonly dispid 3013;
    property Area: Double readonly dispid 3014;
    property SourceData: WordBool dispid 3015;
    property Actual: WordBool readonly dispid 3016;
    function Calculate: WordBool; dispid 3017;
    property LX: Double readonly dispid 3018;
    property LY: Double readonly dispid 3019;
    property Lz: Double readonly dispid 3020;
    property Lxy: Double readonly dispid 3021;
    property Lxz: Double readonly dispid 3022;
    property Lyz: Double readonly dispid 3023;
    property Jx: Double readonly dispid 3024;
    property Jy: Double readonly dispid 3025;
    property Jz: Double readonly dispid 3026;
    property Jxy: Double readonly dispid 3027;
    property Jxz: Double readonly dispid 3028;
    property Jyz: Double readonly dispid 3029;
    property Jx0: Double readonly dispid 3030;
    property Jy0: Double readonly dispid 3031;
    property Jz0: Double readonly dispid 3032;
    function GetAxisX(out X: Double; out Y: Double; out Z: Double): WordBool; dispid 3033;
    function GetAxisY(out X: Double; out Y: Double; out Z: Double): WordBool; dispid 3034;
    function GetAxisZ(out X: Double; out Y: Double; out Z: Double): WordBool; dispid 3035;
  end;

// *********************************************************************//
// Interface: IThinParameters
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {B90D597D-4213-4A59-98D4-0B67E719551B}
// *********************************************************************//
  IThinParameters = interface(IDispatch)
    ['{B90D597D-4213-4A59-98D4-0B67E719551B}']
    procedure Set_Thin(PVal: WordBool); safecall;
    function Get_Thin: WordBool; safecall;
    procedure Set_ThinType(PVal: ksDirectionTypeEnum); safecall;
    function Get_ThinType: ksDirectionTypeEnum; safecall;
    procedure Set_Thickness(Normal: WordBool; PVal: Double); safecall;
    function Get_Thickness(Normal: WordBool): Double; safecall;
    function GetThinParameters(out Thin: WordBool; out ThinType: ksDirectionTypeEnum; 
                               out ThicknessNormal: Double; out ThicknessReverse: Double): WordBool; safecall;
    function SetThinParameters(Thin: WordBool; ThinType: ksDirectionTypeEnum; 
                               ThicknessNormal: Double; ThicknessReverse: Double): WordBool; safecall;
    property Thin: WordBool read Get_Thin write Set_Thin;
    property ThinType: ksDirectionTypeEnum read Get_ThinType write Set_ThinType;
    property Thickness[Normal: WordBool]: Double read Get_Thickness write Set_Thickness;
  end;

// *********************************************************************//
// DispIntf:  IThinParametersDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {B90D597D-4213-4A59-98D4-0B67E719551B}
// *********************************************************************//
  IThinParametersDisp = dispinterface
    ['{B90D597D-4213-4A59-98D4-0B67E719551B}']
    property Thin: WordBool dispid 2501;
    property ThinType: ksDirectionTypeEnum dispid 2502;
    property Thickness[Normal: WordBool]: Double dispid 2503;
    function GetThinParameters(out Thin: WordBool; out ThinType: ksDirectionTypeEnum; 
                               out ThicknessNormal: Double; out ThicknessReverse: Double): WordBool; dispid 2504;
    function SetThinParameters(Thin: WordBool; ThinType: ksDirectionTypeEnum; 
                               ThicknessNormal: Double; ThicknessReverse: Double): WordBool; dispid 2505;
  end;

// *********************************************************************//
// Interface: ICutExtrusion
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {D2A01420-9159-48C2-8302-C1B10A13D8F8}
// *********************************************************************//
  ICutExtrusion = interface(IExtrusion)
    ['{D2A01420-9159-48C2-8302-C1B10A13D8F8}']
    procedure Set_Cut(PVal: WordBool); safecall;
    function Get_Cut: WordBool; safecall;
    property Cut: WordBool read Get_Cut write Set_Cut;
  end;

// *********************************************************************//
// DispIntf:  ICutExtrusionDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {D2A01420-9159-48C2-8302-C1B10A13D8F8}
// *********************************************************************//
  ICutExtrusionDisp = dispinterface
    ['{D2A01420-9159-48C2-8302-C1B10A13D8F8}']
    property Cut: WordBool dispid 101;
    property Sketch: ISketch dispid 1;
    property Direction: ksDirectionTypeEnum dispid 2;
    property ExtrusionType[Normal: WordBool]: ksEndTypeEnum dispid 3;
    property Depth[Normal: WordBool]: Double dispid 4;
    property DraftValue[Normal: WordBool]: Double dispid 5;
    property DraftOutward[Normal: WordBool]: WordBool dispid 6;
    property DepthObject[Normal: WordBool]: IModelObject dispid 7;
    function GetSideParameters(Normal: WordBool; out ExtrusionType: ksEndTypeEnum; 
                               out Depth: Double; out DraftValue: Double; 
                               out DraftOutward: WordBool; out DepthObject: IModelObject): WordBool; dispid 8;
    function SetSideParameters(Normal: WordBool; ExtrusionType: ksEndTypeEnum; Depth: Double; 
                               DraftValue: Double; DraftOutward: WordBool; 
                               const DepthObject: IModelObject): WordBool; dispid 9;
    property Name: WideString dispid 501;
    property Hidden: WordBool dispid 502;
    function Update: WordBool; dispid 503;
    property Valid: WordBool readonly dispid 504;
    property Part: IPart7 readonly dispid 505;
    property ModelObjectType: ksObj3dTypeEnum readonly dispid 506;
    property Owner: IFeature7 readonly dispid 507;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IChooseBodies7
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {7BF80DAA-25F8-4AFF-AFEA-CAD390D4275D}
// *********************************************************************//
  IChooseBodies7 = interface(IDispatch)
    ['{7BF80DAA-25F8-4AFF-AFEA-CAD390D4275D}']
    procedure Set_ChooseBodiesType(Type_: ksChooseBodiesType); safecall;
    function Get_ChooseBodiesType: ksChooseBodiesType; safecall;
    procedure Set_Bodies(Result: OleVariant); safecall;
    function Get_Bodies: OleVariant; safecall;
    property ChooseBodiesType: ksChooseBodiesType read Get_ChooseBodiesType write Set_ChooseBodiesType;
    property Bodies: OleVariant read Get_Bodies write Set_Bodies;
  end;

// *********************************************************************//
// DispIntf:  IChooseBodies7Disp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {7BF80DAA-25F8-4AFF-AFEA-CAD390D4275D}
// *********************************************************************//
  IChooseBodies7Disp = dispinterface
    ['{7BF80DAA-25F8-4AFF-AFEA-CAD390D4275D}']
    property ChooseBodiesType: ksChooseBodiesType dispid 3001;
    property Bodies: OleVariant dispid 3002;
  end;

// *********************************************************************//
// Interface: IBody7
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {4F122E22-0AA6-46E1-841F-A2504B145995}
// *********************************************************************//
  IBody7 = interface(IKompasAPIObject)
    ['{4F122E22-0AA6-46E1-841F-A2504B145995}']
    function GetGabarit(out X1: Double; out Y1: Double; out Z1: Double; out X2: Double; 
                        out Y2: Double; out Z2: Double): WordBool; safecall;
  end;

// *********************************************************************//
// DispIntf:  IBody7Disp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {4F122E22-0AA6-46E1-841F-A2504B145995}
// *********************************************************************//
  IBody7Disp = dispinterface
    ['{4F122E22-0AA6-46E1-841F-A2504B145995}']
    function GetGabarit(out X1: Double; out Y1: Double; out Z1: Double; out X2: Double; 
                        out Y2: Double; out Z2: Double): WordBool; dispid 1;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ISheetMetalBodies
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F56DBE72-48CC-48AD-9DA4-10D972C903EE}
// *********************************************************************//
  ISheetMetalBodies = interface(IModelObjects)
    ['{F56DBE72-48CC-48AD-9DA4-10D972C903EE}']
    function Get_SheetMetalBody(Index: OleVariant): ISheetMetalBody; safecall;
    function Add: ISheetMetalBody; safecall;
    property SheetMetalBody[Index: OleVariant]: ISheetMetalBody read Get_SheetMetalBody;
  end;

// *********************************************************************//
// DispIntf:  ISheetMetalBodiesDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F56DBE72-48CC-48AD-9DA4-10D972C903EE}
// *********************************************************************//
  ISheetMetalBodiesDisp = dispinterface
    ['{F56DBE72-48CC-48AD-9DA4-10D972C903EE}']
    property SheetMetalBody[Index: OleVariant]: ISheetMetalBody readonly dispid 1;
    function Add: ISheetMetalBody; dispid 2;
    property Item[Index: OleVariant]: IModelObject readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ISheetMetalBody
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {2DC533DC-829E-4EFF-A905-541E9220A12D}
// *********************************************************************//
  ISheetMetalBody = interface(IModelObject)
    ['{2DC533DC-829E-4EFF-A905-541E9220A12D}']
    procedure Set_ThicknessDirection(PVal: WordBool); safecall;
    function Get_ThicknessDirection: WordBool; safecall;
    procedure Set_Thickness(PVal: Double); safecall;
    function Get_Thickness: Double; safecall;
    procedure Set_Straighten(PVal: WordBool); safecall;
    function Get_Straighten: WordBool; safecall;
    procedure Set_Radius(PVal: Double); safecall;
    function Get_Radius: Double; safecall;
    procedure Set_UnfoldType(PVal: ksUnfoldTypeEnum); safecall;
    function Get_UnfoldType: ksUnfoldTypeEnum; safecall;
    procedure Set_BendCoefficient(PVal: Double); safecall;
    function Get_BendCoefficient: Double; safecall;
    procedure Set_BendValue(PVal: Double); safecall;
    function Get_BendValue: Double; safecall;
    procedure Set_BendReduction(PVal: Double); safecall;
    function Get_BendReduction: Double; safecall;
    procedure Set_BendTablePath(const PVal: WideString); safecall;
    function Get_BendTablePath: WideString; safecall;
    procedure Set_Sketch(const Result: ISketch); safecall;
    function Get_Sketch: ISketch; safecall;
    procedure Set_Direction(PVal: ksDirectionTypeEnum); safecall;
    function Get_Direction: ksDirectionTypeEnum; safecall;
    procedure Set_ExtrusionType(Normal: WordBool; PVal: ksEndTypeEnum); safecall;
    function Get_ExtrusionType(Normal: WordBool): ksEndTypeEnum; safecall;
    procedure Set_Depth(Normal: WordBool; PVal: Double); safecall;
    function Get_Depth(Normal: WordBool): Double; safecall;
    procedure Set_DepthObject(Normal: WordBool; const PVal: IModelObject); safecall;
    function Get_DepthObject(Normal: WordBool): IModelObject; safecall;
    function GetSideParameters(Normal: WordBool; out ExtrusionType: ksEndTypeEnum; 
                               out Depth: Double; out DepthObject: IModelObject): WordBool; safecall;
    function SetSideParameters(Normal: WordBool; ExtrusionType: ksEndTypeEnum; Depth: Double; 
                               const DepthObject: IModelObject): WordBool; safecall;
    property ThicknessDirection: WordBool read Get_ThicknessDirection write Set_ThicknessDirection;
    property Thickness: Double read Get_Thickness write Set_Thickness;
    property Straighten: WordBool read Get_Straighten write Set_Straighten;
    property Radius: Double read Get_Radius write Set_Radius;
    property UnfoldType: ksUnfoldTypeEnum read Get_UnfoldType write Set_UnfoldType;
    property BendCoefficient: Double read Get_BendCoefficient write Set_BendCoefficient;
    property BendValue: Double read Get_BendValue write Set_BendValue;
    property BendReduction: Double read Get_BendReduction write Set_BendReduction;
    property BendTablePath: WideString read Get_BendTablePath write Set_BendTablePath;
    property Sketch: ISketch read Get_Sketch write Set_Sketch;
    property Direction: ksDirectionTypeEnum read Get_Direction write Set_Direction;
    property ExtrusionType[Normal: WordBool]: ksEndTypeEnum read Get_ExtrusionType write Set_ExtrusionType;
    property Depth[Normal: WordBool]: Double read Get_Depth write Set_Depth;
    property DepthObject[Normal: WordBool]: IModelObject read Get_DepthObject write Set_DepthObject;
  end;

// *********************************************************************//
// DispIntf:  ISheetMetalBodyDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {2DC533DC-829E-4EFF-A905-541E9220A12D}
// *********************************************************************//
  ISheetMetalBodyDisp = dispinterface
    ['{2DC533DC-829E-4EFF-A905-541E9220A12D}']
    property ThicknessDirection: WordBool dispid 1;
    property Thickness: Double dispid 2;
    property Straighten: WordBool dispid 3;
    property Radius: Double dispid 4;
    property UnfoldType: ksUnfoldTypeEnum dispid 5;
    property BendCoefficient: Double dispid 6;
    property BendValue: Double dispid 7;
    property BendReduction: Double dispid 8;
    property BendTablePath: WideString dispid 9;
    property Sketch: ISketch dispid 10;
    property Direction: ksDirectionTypeEnum dispid 11;
    property ExtrusionType[Normal: WordBool]: ksEndTypeEnum dispid 12;
    property Depth[Normal: WordBool]: Double dispid 13;
    property DepthObject[Normal: WordBool]: IModelObject dispid 14;
    function GetSideParameters(Normal: WordBool; out ExtrusionType: ksEndTypeEnum; 
                               out Depth: Double; out DepthObject: IModelObject): WordBool; dispid 15;
    function SetSideParameters(Normal: WordBool; ExtrusionType: ksEndTypeEnum; Depth: Double; 
                               const DepthObject: IModelObject): WordBool; dispid 16;
    property Name: WideString dispid 501;
    property Hidden: WordBool dispid 502;
    function Update: WordBool; dispid 503;
    property Valid: WordBool readonly dispid 504;
    property Part: IPart7 readonly dispid 505;
    property ModelObjectType: ksObj3dTypeEnum readonly dispid 506;
    property Owner: IFeature7 readonly dispid 507;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ISheetMetalContainer
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {77A4895D-9B09-4C63-A3FF-6857F4340840}
// *********************************************************************//
  ISheetMetalContainer = interface(IDispatch)
    ['{77A4895D-9B09-4C63-A3FF-6857F4340840}']
    function Get_SheetMetalBodies: ISheetMetalBodies; safecall;
    function Get_SheetMetalBends: ISheetMetalBends; safecall;
    function Get_SheetMetalLineBends: ISheetMetalLineBends; safecall;
    function Get_SheetMetalHoles: ISheetMetalHoles; safecall;
    function Get_SheetMetalCuts: ISheetMetalCuts; safecall;
    property SheetMetalBodies: ISheetMetalBodies read Get_SheetMetalBodies;
    property SheetMetalBends: ISheetMetalBends read Get_SheetMetalBends;
    property SheetMetalLineBends: ISheetMetalLineBends read Get_SheetMetalLineBends;
    property SheetMetalHoles: ISheetMetalHoles read Get_SheetMetalHoles;
    property SheetMetalCuts: ISheetMetalCuts read Get_SheetMetalCuts;
  end;

// *********************************************************************//
// DispIntf:  ISheetMetalContainerDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {77A4895D-9B09-4C63-A3FF-6857F4340840}
// *********************************************************************//
  ISheetMetalContainerDisp = dispinterface
    ['{77A4895D-9B09-4C63-A3FF-6857F4340840}']
    property SheetMetalBodies: ISheetMetalBodies readonly dispid 11001;
    property SheetMetalBends: ISheetMetalBends readonly dispid 11002;
    property SheetMetalLineBends: ISheetMetalLineBends readonly dispid 11003;
    property SheetMetalHoles: ISheetMetalHoles readonly dispid 11004;
    property SheetMetalCuts: ISheetMetalCuts readonly dispid 11005;
  end;

// *********************************************************************//
// Interface: ISheetMetalBends
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {6826CFD6-6A48-4EB1-8C89-7DB4E36702B4}
// *********************************************************************//
  ISheetMetalBends = interface(IModelObjects)
    ['{6826CFD6-6A48-4EB1-8C89-7DB4E36702B4}']
    function Get_SheetMetalBend(Index: OleVariant): ISheetMetalBend; safecall;
    function Add: ISheetMetalBend; safecall;
    property SheetMetalBend[Index: OleVariant]: ISheetMetalBend read Get_SheetMetalBend;
  end;

// *********************************************************************//
// DispIntf:  ISheetMetalBendsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {6826CFD6-6A48-4EB1-8C89-7DB4E36702B4}
// *********************************************************************//
  ISheetMetalBendsDisp = dispinterface
    ['{6826CFD6-6A48-4EB1-8C89-7DB4E36702B4}']
    property SheetMetalBend[Index: OleVariant]: ISheetMetalBend readonly dispid 1;
    function Add: ISheetMetalBend; dispid 2;
    property Item[Index: OleVariant]: IModelObject readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ISheetMetalBend
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {B631D95F-C487-41D6-9726-C65E9F5A4505}
// *********************************************************************//
  ISheetMetalBend = interface(IModelObject)
    ['{B631D95F-C487-41D6-9726-C65E9F5A4505}']
    procedure Set_Direction(PVal: WordBool); safecall;
    function Get_Direction: WordBool; safecall;
    procedure Set_Disposal(PVal: ksBendDisposalEnum); safecall;
    function Get_Disposal: ksBendDisposalEnum; safecall;
    procedure Set_Width(PVal: Double); safecall;
    function Get_Width: Double; safecall;
    procedure Set_LengthType(PVal: ksBendLengthTypeEnum); safecall;
    function Get_LengthType: ksBendLengthTypeEnum; safecall;
    procedure Set_InternalLength(PVal: WordBool); safecall;
    function Get_InternalLength: WordBool; safecall;
    procedure Set_Length(PVal: Double); safecall;
    function Get_Length: Double; safecall;
    procedure Set_AngleType(PVal: WordBool); safecall;
    function Get_AngleType: WordBool; safecall;
    procedure Set_Angle(PVal: Double); safecall;
    function Get_Angle: Double; safecall;
    procedure Set_OffsetType(PVal: ksBendOffsetTypeEnum); safecall;
    function Get_OffsetType: ksBendOffsetTypeEnum; safecall;
    procedure Set_Offset(PVal: Double); safecall;
    function Get_Offset: Double; safecall;
    procedure Set_Straighten(PVal: WordBool); safecall;
    function Get_Straighten: WordBool; safecall;
    procedure Set_LeftSideType(PVal: ksBendSideTypeEnum); safecall;
    function Get_LeftSideType: ksBendSideTypeEnum; safecall;
    procedure Set_DistanceLeftSide(PVal: Double); safecall;
    function Get_DistanceLeftSide: Double; safecall;
    procedure Set_LeftSideAngle(PVal: Double); safecall;
    function Get_LeftSideAngle: Double; safecall;
    procedure Set_DeviationLeftSide(PVal: Double); safecall;
    function Get_DeviationLeftSide: Double; safecall;
    procedure Set_WideningLeftSide(PVal: Double); safecall;
    function Get_WideningLeftSide: Double; safecall;
    procedure Set_RightSideType(PVal: ksBendSideTypeEnum); safecall;
    function Get_RightSideType: ksBendSideTypeEnum; safecall;
    procedure Set_DistanceRightSide(PVal: Double); safecall;
    function Get_DistanceRightSide: Double; safecall;
    procedure Set_RightSideAngle(PVal: Double); safecall;
    function Get_RightSideAngle: Double; safecall;
    procedure Set_DeviationRightSide(PVal: Double); safecall;
    function Get_DeviationRightSide: Double; safecall;
    procedure Set_WideningRightSide(PVal: Double); safecall;
    function Get_WideningRightSide: Double; safecall;
    procedure Set_WithoutAngleRelease(PVal: WordBool); safecall;
    function Get_WithoutAngleRelease: WordBool; safecall;
    procedure Set_WithoutBendRelease(PVal: WordBool); safecall;
    function Get_WithoutBendRelease: WordBool; safecall;
    procedure Set_DismissalWithWidth(PVal: WordBool); safecall;
    function Get_DismissalWithWidth: WordBool; safecall;
    procedure Set_BendRelease(PVal: ksBendReleaseTypeEnum); safecall;
    function Get_BendRelease: ksBendReleaseTypeEnum; safecall;
    procedure Set_DismissalWidth(PVal: Double); safecall;
    function Get_DismissalWidth: Double; safecall;
    procedure Set_DismissalDepth(PVal: Double); safecall;
    function Get_DismissalDepth: Double; safecall;
    procedure Set_DismissalAngleType(PVal: ksBendAngleReleaseTypeEnum); safecall;
    function Get_DismissalAngleType: ksBendAngleReleaseTypeEnum; safecall;
    procedure Set_BendObject(const Result: IModelObject); safecall;
    function Get_BendObject: IModelObject; safecall;
    procedure Set_InternalRadius(PVal: WordBool); safecall;
    function Get_InternalRadius: WordBool; safecall;
    procedure Set_Radius(PVal: Double); safecall;
    function Get_Radius: Double; safecall;
    procedure Set_UnfoldType(PVal: ksUnfoldTypeEnum); safecall;
    function Get_UnfoldType: ksUnfoldTypeEnum; safecall;
    procedure Set_BendCoefficient(PVal: Double); safecall;
    function Get_BendCoefficient: Double; safecall;
    procedure Set_BendValue(PVal: Double); safecall;
    function Get_BendValue: Double; safecall;
    procedure Set_BendReduction(PVal: Double); safecall;
    function Get_BendReduction: Double; safecall;
    function Get_BendTablePath: WideString; safecall;
    property Direction: WordBool read Get_Direction write Set_Direction;
    property Disposal: ksBendDisposalEnum read Get_Disposal write Set_Disposal;
    property Width: Double read Get_Width write Set_Width;
    property LengthType: ksBendLengthTypeEnum read Get_LengthType write Set_LengthType;
    property InternalLength: WordBool read Get_InternalLength write Set_InternalLength;
    property Length: Double read Get_Length write Set_Length;
    property AngleType: WordBool read Get_AngleType write Set_AngleType;
    property Angle: Double read Get_Angle write Set_Angle;
    property OffsetType: ksBendOffsetTypeEnum read Get_OffsetType write Set_OffsetType;
    property Offset: Double read Get_Offset write Set_Offset;
    property Straighten: WordBool read Get_Straighten write Set_Straighten;
    property LeftSideType: ksBendSideTypeEnum read Get_LeftSideType write Set_LeftSideType;
    property DistanceLeftSide: Double read Get_DistanceLeftSide write Set_DistanceLeftSide;
    property LeftSideAngle: Double read Get_LeftSideAngle write Set_LeftSideAngle;
    property DeviationLeftSide: Double read Get_DeviationLeftSide write Set_DeviationLeftSide;
    property WideningLeftSide: Double read Get_WideningLeftSide write Set_WideningLeftSide;
    property RightSideType: ksBendSideTypeEnum read Get_RightSideType write Set_RightSideType;
    property DistanceRightSide: Double read Get_DistanceRightSide write Set_DistanceRightSide;
    property RightSideAngle: Double read Get_RightSideAngle write Set_RightSideAngle;
    property DeviationRightSide: Double read Get_DeviationRightSide write Set_DeviationRightSide;
    property WideningRightSide: Double read Get_WideningRightSide write Set_WideningRightSide;
    property WithoutAngleRelease: WordBool read Get_WithoutAngleRelease write Set_WithoutAngleRelease;
    property WithoutBendRelease: WordBool read Get_WithoutBendRelease write Set_WithoutBendRelease;
    property DismissalWithWidth: WordBool read Get_DismissalWithWidth write Set_DismissalWithWidth;
    property BendRelease: ksBendReleaseTypeEnum read Get_BendRelease write Set_BendRelease;
    property DismissalWidth: Double read Get_DismissalWidth write Set_DismissalWidth;
    property DismissalDepth: Double read Get_DismissalDepth write Set_DismissalDepth;
    property DismissalAngleType: ksBendAngleReleaseTypeEnum read Get_DismissalAngleType write Set_DismissalAngleType;
    property BendObject: IModelObject read Get_BendObject write Set_BendObject;
    property InternalRadius: WordBool read Get_InternalRadius write Set_InternalRadius;
    property Radius: Double read Get_Radius write Set_Radius;
    property UnfoldType: ksUnfoldTypeEnum read Get_UnfoldType write Set_UnfoldType;
    property BendCoefficient: Double read Get_BendCoefficient write Set_BendCoefficient;
    property BendValue: Double read Get_BendValue write Set_BendValue;
    property BendReduction: Double read Get_BendReduction write Set_BendReduction;
    property BendTablePath: WideString read Get_BendTablePath;
  end;

// *********************************************************************//
// DispIntf:  ISheetMetalBendDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {B631D95F-C487-41D6-9726-C65E9F5A4505}
// *********************************************************************//
  ISheetMetalBendDisp = dispinterface
    ['{B631D95F-C487-41D6-9726-C65E9F5A4505}']
    property Direction: WordBool dispid 1;
    property Disposal: ksBendDisposalEnum dispid 2;
    property Width: Double dispid 3;
    property LengthType: ksBendLengthTypeEnum dispid 4;
    property InternalLength: WordBool dispid 5;
    property Length: Double dispid 6;
    property AngleType: WordBool dispid 7;
    property Angle: Double dispid 8;
    property OffsetType: ksBendOffsetTypeEnum dispid 9;
    property Offset: Double dispid 10;
    property Straighten: WordBool dispid 11;
    property LeftSideType: ksBendSideTypeEnum dispid 12;
    property DistanceLeftSide: Double dispid 13;
    property LeftSideAngle: Double dispid 14;
    property DeviationLeftSide: Double dispid 15;
    property WideningLeftSide: Double dispid 16;
    property RightSideType: ksBendSideTypeEnum dispid 17;
    property DistanceRightSide: Double dispid 18;
    property RightSideAngle: Double dispid 19;
    property DeviationRightSide: Double dispid 20;
    property WideningRightSide: Double dispid 21;
    property WithoutAngleRelease: WordBool dispid 22;
    property WithoutBendRelease: WordBool dispid 23;
    property DismissalWithWidth: WordBool dispid 24;
    property BendRelease: ksBendReleaseTypeEnum dispid 25;
    property DismissalWidth: Double dispid 26;
    property DismissalDepth: Double dispid 27;
    property DismissalAngleType: ksBendAngleReleaseTypeEnum dispid 28;
    property BendObject: IModelObject dispid 29;
    property InternalRadius: WordBool dispid 30;
    property Radius: Double dispid 31;
    property UnfoldType: ksUnfoldTypeEnum dispid 32;
    property BendCoefficient: Double dispid 33;
    property BendValue: Double dispid 34;
    property BendReduction: Double dispid 35;
    property BendTablePath: WideString readonly dispid 36;
    property Name: WideString dispid 501;
    property Hidden: WordBool dispid 502;
    function Update: WordBool; dispid 503;
    property Valid: WordBool readonly dispid 504;
    property Part: IPart7 readonly dispid 505;
    property ModelObjectType: ksObj3dTypeEnum readonly dispid 506;
    property Owner: IFeature7 readonly dispid 507;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ISheetMetalLineBends
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {AF8B8310-AF82-4B02-8733-783FFAFD4DBD}
// *********************************************************************//
  ISheetMetalLineBends = interface(IModelObjects)
    ['{AF8B8310-AF82-4B02-8733-783FFAFD4DBD}']
    function Get_SheetMetalLineBend(Index: OleVariant): ISheetMetalLineBend; safecall;
    function Add: ISheetMetalLineBend; safecall;
    property SheetMetalLineBend[Index: OleVariant]: ISheetMetalLineBend read Get_SheetMetalLineBend;
  end;

// *********************************************************************//
// DispIntf:  ISheetMetalLineBendsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {AF8B8310-AF82-4B02-8733-783FFAFD4DBD}
// *********************************************************************//
  ISheetMetalLineBendsDisp = dispinterface
    ['{AF8B8310-AF82-4B02-8733-783FFAFD4DBD}']
    property SheetMetalLineBend[Index: OleVariant]: ISheetMetalLineBend readonly dispid 1;
    function Add: ISheetMetalLineBend; dispid 2;
    property Item[Index: OleVariant]: IModelObject readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ISheetMetalLineBend
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {E13EF07A-B1E8-41FD-9C85-C17F01E52A03}
// *********************************************************************//
  ISheetMetalLineBend = interface(IModelObject)
    ['{E13EF07A-B1E8-41FD-9C85-C17F01E52A03}']
    procedure Set_Direction(PVal: WordBool); safecall;
    function Get_Direction: WordBool; safecall;
    procedure Set_BendLeftSideFixed(PVal: WordBool); safecall;
    function Get_BendLeftSideFixed: WordBool; safecall;
    procedure Set_AngleType(PVal: WordBool); safecall;
    function Get_AngleType: WordBool; safecall;
    procedure Set_Angle(PVal: Double); safecall;
    function Get_Angle: Double; safecall;
    procedure Set_BendType(PVal: ksBendTypeEnum); safecall;
    function Get_BendType: ksBendTypeEnum; safecall;
    procedure Set_Straighten(PVal: WordBool); safecall;
    function Get_Straighten: WordBool; safecall;
    procedure Set_DismissalAngleType(PVal: ksBendAngleReleaseTypeEnum); safecall;
    function Get_DismissalAngleType: ksBendAngleReleaseTypeEnum; safecall;
    procedure Set_InternalRadius(PVal: WordBool); safecall;
    function Get_InternalRadius: WordBool; safecall;
    procedure Set_Radius(PVal: Double); safecall;
    function Get_Radius: Double; safecall;
    procedure Set_UnfoldType(PVal: ksUnfoldTypeEnum); safecall;
    function Get_UnfoldType: ksUnfoldTypeEnum; safecall;
    procedure Set_BendCoefficient(PVal: Double); safecall;
    function Get_BendCoefficient: Double; safecall;
    procedure Set_BendValue(PVal: Double); safecall;
    function Get_BendValue: Double; safecall;
    procedure Set_BendReduction(PVal: Double); safecall;
    function Get_BendReduction: Double; safecall;
    function Get_BendTablePath: WideString; safecall;
    procedure Set_Faces(Result: OleVariant); safecall;
    function Get_Faces: OleVariant; safecall;
    procedure Set_Line(const Result: IModelObject); safecall;
    function Get_Line: IModelObject; safecall;
    property Direction: WordBool read Get_Direction write Set_Direction;
    property BendLeftSideFixed: WordBool read Get_BendLeftSideFixed write Set_BendLeftSideFixed;
    property AngleType: WordBool read Get_AngleType write Set_AngleType;
    property Angle: Double read Get_Angle write Set_Angle;
    property BendType: ksBendTypeEnum read Get_BendType write Set_BendType;
    property Straighten: WordBool read Get_Straighten write Set_Straighten;
    property DismissalAngleType: ksBendAngleReleaseTypeEnum read Get_DismissalAngleType write Set_DismissalAngleType;
    property InternalRadius: WordBool read Get_InternalRadius write Set_InternalRadius;
    property Radius: Double read Get_Radius write Set_Radius;
    property UnfoldType: ksUnfoldTypeEnum read Get_UnfoldType write Set_UnfoldType;
    property BendCoefficient: Double read Get_BendCoefficient write Set_BendCoefficient;
    property BendValue: Double read Get_BendValue write Set_BendValue;
    property BendReduction: Double read Get_BendReduction write Set_BendReduction;
    property BendTablePath: WideString read Get_BendTablePath;
    property Faces: OleVariant read Get_Faces write Set_Faces;
    property Line: IModelObject read Get_Line write Set_Line;
  end;

// *********************************************************************//
// DispIntf:  ISheetMetalLineBendDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {E13EF07A-B1E8-41FD-9C85-C17F01E52A03}
// *********************************************************************//
  ISheetMetalLineBendDisp = dispinterface
    ['{E13EF07A-B1E8-41FD-9C85-C17F01E52A03}']
    property Direction: WordBool dispid 1;
    property BendLeftSideFixed: WordBool dispid 2;
    property AngleType: WordBool dispid 3;
    property Angle: Double dispid 4;
    property BendType: ksBendTypeEnum dispid 5;
    property Straighten: WordBool dispid 6;
    property DismissalAngleType: ksBendAngleReleaseTypeEnum dispid 7;
    property InternalRadius: WordBool dispid 8;
    property Radius: Double dispid 9;
    property UnfoldType: ksUnfoldTypeEnum dispid 10;
    property BendCoefficient: Double dispid 11;
    property BendValue: Double dispid 12;
    property BendReduction: Double dispid 13;
    property BendTablePath: WideString readonly dispid 14;
    property Faces: OleVariant dispid 15;
    property Line: IModelObject dispid 16;
    property Name: WideString dispid 501;
    property Hidden: WordBool dispid 502;
    function Update: WordBool; dispid 503;
    property Valid: WordBool readonly dispid 504;
    property Part: IPart7 readonly dispid 505;
    property ModelObjectType: ksObj3dTypeEnum readonly dispid 506;
    property Owner: IFeature7 readonly dispid 507;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ISheetMetalHoles
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {E117BDF9-5133-4672-9B8F-06046F6B9BF3}
// *********************************************************************//
  ISheetMetalHoles = interface(IModelObjects)
    ['{E117BDF9-5133-4672-9B8F-06046F6B9BF3}']
    function Get_SheetMetalHole(Index: OleVariant): ISheetMetalHole; safecall;
    function Add: ISheetMetalHole; safecall;
    property SheetMetalHole[Index: OleVariant]: ISheetMetalHole read Get_SheetMetalHole;
  end;

// *********************************************************************//
// DispIntf:  ISheetMetalHolesDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {E117BDF9-5133-4672-9B8F-06046F6B9BF3}
// *********************************************************************//
  ISheetMetalHolesDisp = dispinterface
    ['{E117BDF9-5133-4672-9B8F-06046F6B9BF3}']
    property SheetMetalHole[Index: OleVariant]: ISheetMetalHole readonly dispid 1;
    function Add: ISheetMetalHole; dispid 2;
    property Item[Index: OleVariant]: IModelObject readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ISheetMetalHole
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {3490B8B8-00D7-4BCF-AAD8-9487BF271084}
// *********************************************************************//
  ISheetMetalHole = interface(IModelObject)
    ['{3490B8B8-00D7-4BCF-AAD8-9487BF271084}']
    procedure Set_X(PVal: Double); safecall;
    function Get_X: Double; safecall;
    procedure Set_Y(PVal: Double); safecall;
    function Get_Y: Double; safecall;
    procedure Set_CutType(PVal: ksHoleCutTypeEnum); safecall;
    function Get_CutType: ksHoleCutTypeEnum; safecall;
    procedure Set_Diameter(PVal: Double); safecall;
    function Get_Diameter: Double; safecall;
    procedure Set_Depth(PVal: Double); safecall;
    function Get_Depth: Double; safecall;
    procedure Set_BasePlane(const Result: IModelObject); safecall;
    function Get_BasePlane: IModelObject; safecall;
    procedure Set_DepthObject(const PVal: IModelObject); safecall;
    function Get_DepthObject: IModelObject; safecall;
    property X: Double read Get_X write Set_X;
    property Y: Double read Get_Y write Set_Y;
    property CutType: ksHoleCutTypeEnum read Get_CutType write Set_CutType;
    property Diameter: Double read Get_Diameter write Set_Diameter;
    property Depth: Double read Get_Depth write Set_Depth;
    property BasePlane: IModelObject read Get_BasePlane write Set_BasePlane;
    property DepthObject: IModelObject read Get_DepthObject write Set_DepthObject;
  end;

// *********************************************************************//
// DispIntf:  ISheetMetalHoleDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {3490B8B8-00D7-4BCF-AAD8-9487BF271084}
// *********************************************************************//
  ISheetMetalHoleDisp = dispinterface
    ['{3490B8B8-00D7-4BCF-AAD8-9487BF271084}']
    property X: Double dispid 1;
    property Y: Double dispid 2;
    property CutType: ksHoleCutTypeEnum dispid 3;
    property Diameter: Double dispid 4;
    property Depth: Double dispid 5;
    property BasePlane: IModelObject dispid 6;
    property DepthObject: IModelObject dispid 7;
    property Name: WideString dispid 501;
    property Hidden: WordBool dispid 502;
    function Update: WordBool; dispid 503;
    property Valid: WordBool readonly dispid 504;
    property Part: IPart7 readonly dispid 505;
    property ModelObjectType: ksObj3dTypeEnum readonly dispid 506;
    property Owner: IFeature7 readonly dispid 507;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ISheetMetalCuts
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9515E4BB-7C60-4C3A-AF7A-847861E67B55}
// *********************************************************************//
  ISheetMetalCuts = interface(IModelObjects)
    ['{9515E4BB-7C60-4C3A-AF7A-847861E67B55}']
    function Get_SheetMetalCut(Index: OleVariant): ISheetMetalCut; safecall;
    function Add: ISheetMetalCut; safecall;
    property SheetMetalCut[Index: OleVariant]: ISheetMetalCut read Get_SheetMetalCut;
  end;

// *********************************************************************//
// DispIntf:  ISheetMetalCutsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {9515E4BB-7C60-4C3A-AF7A-847861E67B55}
// *********************************************************************//
  ISheetMetalCutsDisp = dispinterface
    ['{9515E4BB-7C60-4C3A-AF7A-847861E67B55}']
    property SheetMetalCut[Index: OleVariant]: ISheetMetalCut readonly dispid 1;
    function Add: ISheetMetalCut; dispid 2;
    property Item[Index: OleVariant]: IModelObject readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ISheetMetalCut
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {B50B1730-BACF-46F2-B10A-6CCDF4E4A2B1}
// *********************************************************************//
  ISheetMetalCut = interface(IModelObject)
    ['{B50B1730-BACF-46F2-B10A-6CCDF4E4A2B1}']
    procedure Set_Sketch(const Result: ISketch); safecall;
    function Get_Sketch: ISketch; safecall;
    procedure Set_CutType(PVal: ksHoleCutTypeEnum); safecall;
    function Get_CutType: ksHoleCutTypeEnum; safecall;
    procedure Set_Depth(PVal: Double); safecall;
    function Get_Depth: Double; safecall;
    procedure Set_DepthObject(const PVal: IModelObject); safecall;
    function Get_DepthObject: IModelObject; safecall;
    procedure Set_Cut(PVal: WordBool); safecall;
    function Get_Cut: WordBool; safecall;
    property Sketch: ISketch read Get_Sketch write Set_Sketch;
    property CutType: ksHoleCutTypeEnum read Get_CutType write Set_CutType;
    property Depth: Double read Get_Depth write Set_Depth;
    property DepthObject: IModelObject read Get_DepthObject write Set_DepthObject;
    property Cut: WordBool read Get_Cut write Set_Cut;
  end;

// *********************************************************************//
// DispIntf:  ISheetMetalCutDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {B50B1730-BACF-46F2-B10A-6CCDF4E4A2B1}
// *********************************************************************//
  ISheetMetalCutDisp = dispinterface
    ['{B50B1730-BACF-46F2-B10A-6CCDF4E4A2B1}']
    property Sketch: ISketch dispid 1;
    property CutType: ksHoleCutTypeEnum dispid 2;
    property Depth: Double dispid 3;
    property DepthObject: IModelObject dispid 4;
    property Cut: WordBool dispid 5;
    property Name: WideString dispid 501;
    property Hidden: WordBool dispid 502;
    function Update: WordBool; dispid 503;
    property Valid: WordBool readonly dispid 504;
    property Part: IPart7 readonly dispid 505;
    property ModelObjectType: ksObj3dTypeEnum readonly dispid 506;
    property Owner: IFeature7 readonly dispid 507;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IPoint3DParamDisplace
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {6D57994F-C170-4CED-968A-6AD69C1A2C7D}
// *********************************************************************//
  IPoint3DParamDisplace = interface(IKompasAPIObject)
    ['{6D57994F-C170-4CED-968A-6AD69C1A2C7D}']
    procedure Set_DX(PVal: Double); safecall;
    function Get_DX: Double; safecall;
    procedure Set_DY(PVal: Double); safecall;
    function Get_DY: Double; safecall;
    procedure Set_DZ(PVal: Double); safecall;
    function Get_DZ: Double; safecall;
    function SetAssociationVertex(const NewVal: IModelObject): WordBool; safecall;
    function Get_AssociationVertex: IModelObject; safecall;
    function SetGuidingObject(const NewVal: IModelObject): WordBool; safecall;
    function Get_GuidingObject: IModelObject; safecall;
    procedure Set_Distance(PVal: Double); safecall;
    function Get_Distance: Double; safecall;
    property DX: Double read Get_DX write Set_DX;
    property DY: Double read Get_DY write Set_DY;
    property DZ: Double read Get_DZ write Set_DZ;
    property AssociationVertex: IModelObject read Get_AssociationVertex;
    property GuidingObject: IModelObject read Get_GuidingObject;
    property Distance: Double read Get_Distance write Set_Distance;
  end;

// *********************************************************************//
// DispIntf:  IPoint3DParamDisplaceDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {6D57994F-C170-4CED-968A-6AD69C1A2C7D}
// *********************************************************************//
  IPoint3DParamDisplaceDisp = dispinterface
    ['{6D57994F-C170-4CED-968A-6AD69C1A2C7D}']
    property DX: Double dispid 1;
    property DY: Double dispid 2;
    property DZ: Double dispid 3;
    function SetAssociationVertex(const NewVal: IModelObject): WordBool; dispid 4;
    property AssociationVertex: IModelObject readonly dispid 5;
    function SetGuidingObject(const NewVal: IModelObject): WordBool; dispid 6;
    property GuidingObject: IModelObject readonly dispid 7;
    property Distance: Double dispid 8;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IPoint3DParamIntersect
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {C009F9ED-ED8A-4B1E-A4CE-156F43C3F6F3}
// *********************************************************************//
  IPoint3DParamIntersect = interface(IKompasAPIObject)
    ['{C009F9ED-ED8A-4B1E-A4CE-156F43C3F6F3}']
    function SetCurveObject(const NewVal: IModelObject): WordBool; safecall;
    function Get_CurveObject: IModelObject; safecall;
    function SetSurfaceObject(const NewVal: IModelObject): WordBool; safecall;
    function Get_SurfaceObject: IModelObject; safecall;
    function Get_CartPointArray: OleVariant; safecall;
    procedure Set_Index(PVal: Integer); safecall;
    function Get_Index: Integer; safecall;
    property CurveObject: IModelObject read Get_CurveObject;
    property SurfaceObject: IModelObject read Get_SurfaceObject;
    property CartPointArray: OleVariant read Get_CartPointArray;
    property Index: Integer read Get_Index write Set_Index;
  end;

// *********************************************************************//
// DispIntf:  IPoint3DParamIntersectDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {C009F9ED-ED8A-4B1E-A4CE-156F43C3F6F3}
// *********************************************************************//
  IPoint3DParamIntersectDisp = dispinterface
    ['{C009F9ED-ED8A-4B1E-A4CE-156F43C3F6F3}']
    function SetCurveObject(const NewVal: IModelObject): WordBool; dispid 1;
    property CurveObject: IModelObject readonly dispid 2;
    function SetSurfaceObject(const NewVal: IModelObject): WordBool; dispid 3;
    property SurfaceObject: IModelObject readonly dispid 4;
    property CartPointArray: OleVariant readonly dispid 5;
    property Index: Integer dispid 6;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IPoint3DParamCenter
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {A92F2938-F1D4-475E-AAB4-962FAA4A4366}
// *********************************************************************//
  IPoint3DParamCenter = interface(IKompasAPIObject)
    ['{A92F2938-F1D4-475E-AAB4-962FAA4A4366}']
    function SetObject(const NewVal: IModelObject): WordBool; safecall;
    function Get_Object_: IModelObject; safecall;
    property Object_: IModelObject read Get_Object_;
  end;

// *********************************************************************//
// DispIntf:  IPoint3DParamCenterDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {A92F2938-F1D4-475E-AAB4-962FAA4A4366}
// *********************************************************************//
  IPoint3DParamCenterDisp = dispinterface
    ['{A92F2938-F1D4-475E-AAB4-962FAA4A4366}']
    function SetObject(const NewVal: IModelObject): WordBool; dispid 1;
    property Object_: IModelObject readonly dispid 2;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IPoint3DParamCurve
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {06B6BDA5-1DC6-4321-8B28-AC065D87E060}
// *********************************************************************//
  IPoint3DParamCurve = interface(IKompasAPIObject)
    ['{06B6BDA5-1DC6-4321-8B28-AC065D87E060}']
    function SetCurveObject(const NewVal: IModelObject): WordBool; safecall;
    function Get_CurveObject: IModelObject; safecall;
    procedure Set_OffsetType(PVal: ksPoint3DCurveParamTypeEnum); safecall;
    function Get_OffsetType: ksPoint3DCurveParamTypeEnum; safecall;
    procedure Set_Offset(PVal: Double); safecall;
    function Get_Offset: Double; safecall;
    procedure Set_Direction(PVal: WordBool); safecall;
    function Get_Direction: WordBool; safecall;
    property CurveObject: IModelObject read Get_CurveObject;
    property OffsetType: ksPoint3DCurveParamTypeEnum read Get_OffsetType write Set_OffsetType;
    property Offset: Double read Get_Offset write Set_Offset;
    property Direction: WordBool read Get_Direction write Set_Direction;
  end;

// *********************************************************************//
// DispIntf:  IPoint3DParamCurveDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {06B6BDA5-1DC6-4321-8B28-AC065D87E060}
// *********************************************************************//
  IPoint3DParamCurveDisp = dispinterface
    ['{06B6BDA5-1DC6-4321-8B28-AC065D87E060}']
    function SetCurveObject(const NewVal: IModelObject): WordBool; dispid 1;
    property CurveObject: IModelObject readonly dispid 2;
    property OffsetType: ksPoint3DCurveParamTypeEnum dispid 3;
    property Offset: Double dispid 4;
    property Direction: WordBool dispid 5;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IPoint3DParamSurface
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {18CE6BBE-63FB-4C94-8998-E40BC5B5D1C6}
// *********************************************************************//
  IPoint3DParamSurface = interface(IKompasAPIObject)
    ['{18CE6BBE-63FB-4C94-8998-E40BC5B5D1C6}']
    function SetSurfaceObject(const NewVal: IModelObject): WordBool; safecall;
    function Get_SurfaceObject: IModelObject; safecall;
    procedure Set_OffsetType(PVal: ksPoint3DSurfaceParamTypeEnum); safecall;
    function Get_OffsetType: ksPoint3DSurfaceParamTypeEnum; safecall;
    procedure Set_Offset1(PVal: Double); safecall;
    function Get_Offset1: Double; safecall;
    procedure Set_Offset2(PVal: Double); safecall;
    function Get_Offset2: Double; safecall;
    function SetObject1(const NewVal: IModelObject): WordBool; safecall;
    function Get_Object1: IModelObject; safecall;
    function SetObject2(const NewVal: IModelObject): WordBool; safecall;
    function Get_Object2: IModelObject; safecall;
    property SurfaceObject: IModelObject read Get_SurfaceObject;
    property OffsetType: ksPoint3DSurfaceParamTypeEnum read Get_OffsetType write Set_OffsetType;
    property Offset1: Double read Get_Offset1 write Set_Offset1;
    property Offset2: Double read Get_Offset2 write Set_Offset2;
    property Object1: IModelObject read Get_Object1;
    property Object2: IModelObject read Get_Object2;
  end;

// *********************************************************************//
// DispIntf:  IPoint3DParamSurfaceDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {18CE6BBE-63FB-4C94-8998-E40BC5B5D1C6}
// *********************************************************************//
  IPoint3DParamSurfaceDisp = dispinterface
    ['{18CE6BBE-63FB-4C94-8998-E40BC5B5D1C6}']
    function SetSurfaceObject(const NewVal: IModelObject): WordBool; dispid 1;
    property SurfaceObject: IModelObject readonly dispid 2;
    property OffsetType: ksPoint3DSurfaceParamTypeEnum dispid 3;
    property Offset1: Double dispid 4;
    property Offset2: Double dispid 5;
    function SetObject1(const NewVal: IModelObject): WordBool; dispid 6;
    property Object1: IModelObject readonly dispid 7;
    function SetObject2(const NewVal: IModelObject): WordBool; dispid 8;
    property Object2: IModelObject readonly dispid 9;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IPoint3DParamProjection
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {B5D353DD-5F26-42FD-87D3-01C97C44E1BF}
// *********************************************************************//
  IPoint3DParamProjection = interface(IKompasAPIObject)
    ['{B5D353DD-5F26-42FD-87D3-01C97C44E1BF}']
    function SetAssociationVertex(const NewVal: IModelObject): WordBool; safecall;
    function Get_AssociationVertex: IModelObject; safecall;
    function SetSurfaceObject(const NewVal: IModelObject): WordBool; safecall;
    function Get_SurfaceObject: IModelObject; safecall;
    function SetGuidingObject(const NewVal: IModelObject): WordBool; safecall;
    function Get_GuidingObject: IModelObject; safecall;
    property AssociationVertex: IModelObject read Get_AssociationVertex;
    property SurfaceObject: IModelObject read Get_SurfaceObject;
    property GuidingObject: IModelObject read Get_GuidingObject;
  end;

// *********************************************************************//
// DispIntf:  IPoint3DParamProjectionDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {B5D353DD-5F26-42FD-87D3-01C97C44E1BF}
// *********************************************************************//
  IPoint3DParamProjectionDisp = dispinterface
    ['{B5D353DD-5F26-42FD-87D3-01C97C44E1BF}']
    function SetAssociationVertex(const NewVal: IModelObject): WordBool; dispid 1;
    property AssociationVertex: IModelObject readonly dispid 2;
    function SetSurfaceObject(const NewVal: IModelObject): WordBool; dispid 3;
    property SurfaceObject: IModelObject readonly dispid 4;
    function SetGuidingObject(const NewVal: IModelObject): WordBool; dispid 5;
    property GuidingObject: IModelObject readonly dispid 6;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IText
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {99B840FC-0150-4DAD-BC0E-AD481BAAB8C2}
// *********************************************************************//
  IText = interface(IKompasAPIObject)
    ['{99B840FC-0150-4DAD-BC0E-AD481BAAB8C2}']
    function Get_Style: Integer; safecall;
    procedure Set_Style(Result: Integer); safecall;
    function Get_TextLines: OleVariant; safecall;
    function Get_Count: Integer; safecall;
    function Get_TextLine(Index: Integer): ITextLine; safecall;
    function Add: ITextLine; safecall;
    function AddBefore(Index: Integer): ITextLine; safecall;
    function Get_Str: WideString; safecall;
    procedure Set_Str(const PVal: WideString); safecall;
    function Clear: WordBool; safecall;
    property Style: Integer read Get_Style write Set_Style;
    property TextLines: OleVariant read Get_TextLines;
    property Count: Integer read Get_Count;
    property TextLine[Index: Integer]: ITextLine read Get_TextLine;
    property Str: WideString read Get_Str write Set_Str;
  end;

// *********************************************************************//
// DispIntf:  ITextDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {99B840FC-0150-4DAD-BC0E-AD481BAAB8C2}
// *********************************************************************//
  ITextDisp = dispinterface
    ['{99B840FC-0150-4DAD-BC0E-AD481BAAB8C2}']
    property Style: Integer dispid 2001;
    property TextLines: OleVariant readonly dispid 2002;
    property Count: Integer readonly dispid 2003;
    property TextLine[Index: Integer]: ITextLine readonly dispid 2004;
    function Add: ITextLine; dispid 2005;
    function AddBefore(Index: Integer): ITextLine; dispid 2006;
    property Str: WideString dispid 2007;
    function Clear: WordBool; dispid 2008;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ITextLine
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {AAB72FE2-DEA3-4FB6-B0DD-B926249EF67C}
// *********************************************************************//
  ITextLine = interface(IKompasAPIObject)
    ['{AAB72FE2-DEA3-4FB6-B0DD-B926249EF67C}']
    function Get_Style: Integer; safecall;
    procedure Set_Style(Result: Integer); safecall;
    function Get_TextItems: OleVariant; safecall;
    function Get_Count: Integer; safecall;
    function Get_TextItem(Index: Integer): ITextItem; safecall;
    function Add: ITextItem; safecall;
    function AddBefore(Index: Integer): ITextItem; safecall;
    function Get_Str: WideString; safecall;
    procedure Set_Str(const PVal: WideString); safecall;
    function Clear: WordBool; safecall;
    function Get_Step: Double; safecall;
    procedure Set_Step(PVal: Double); safecall;
    function Get_Align: ksAlignEnum; safecall;
    procedure Set_Align(PVal: ksAlignEnum); safecall;
    function Get_IndentedLine: Double; safecall;
    procedure Set_IndentedLine(PVal: Double); safecall;
    function Get_StepBeforeParagraph: Double; safecall;
    procedure Set_StepBeforeParagraph(PVal: Double); safecall;
    function Get_StepAfterParagraph: Double; safecall;
    procedure Set_StepAfterParagraph(PVal: Double); safecall;
    function Get_LeftEdge: Double; safecall;
    procedure Set_LeftEdge(PVal: Double); safecall;
    function Get_RightEdge: Double; safecall;
    procedure Set_RightEdge(PVal: Double); safecall;
    function Get_Tabulators: ITabulators; safecall;
    function Get_Level: Integer; safecall;
    procedure Set_Level(Result: Integer); safecall;
    function Get_Numbering: ksTextNumberingEnum; safecall;
    procedure Set_Numbering(Result: ksTextNumberingEnum); safecall;
    function Delete: WordBool; safecall;
    property Style: Integer read Get_Style write Set_Style;
    property TextItems: OleVariant read Get_TextItems;
    property Count: Integer read Get_Count;
    property TextItem[Index: Integer]: ITextItem read Get_TextItem;
    property Str: WideString read Get_Str write Set_Str;
    property Step: Double read Get_Step write Set_Step;
    property Align: ksAlignEnum read Get_Align write Set_Align;
    property IndentedLine: Double read Get_IndentedLine write Set_IndentedLine;
    property StepBeforeParagraph: Double read Get_StepBeforeParagraph write Set_StepBeforeParagraph;
    property StepAfterParagraph: Double read Get_StepAfterParagraph write Set_StepAfterParagraph;
    property LeftEdge: Double read Get_LeftEdge write Set_LeftEdge;
    property RightEdge: Double read Get_RightEdge write Set_RightEdge;
    property Tabulators: ITabulators read Get_Tabulators;
    property Level: Integer read Get_Level write Set_Level;
    property Numbering: ksTextNumberingEnum read Get_Numbering write Set_Numbering;
  end;

// *********************************************************************//
// DispIntf:  ITextLineDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {AAB72FE2-DEA3-4FB6-B0DD-B926249EF67C}
// *********************************************************************//
  ITextLineDisp = dispinterface
    ['{AAB72FE2-DEA3-4FB6-B0DD-B926249EF67C}']
    property Style: Integer dispid 1;
    property TextItems: OleVariant readonly dispid 2;
    property Count: Integer readonly dispid 3;
    property TextItem[Index: Integer]: ITextItem readonly dispid 4;
    function Add: ITextItem; dispid 5;
    function AddBefore(Index: Integer): ITextItem; dispid 6;
    property Str: WideString dispid 7;
    function Clear: WordBool; dispid 8;
    property Step: Double dispid 9;
    property Align: ksAlignEnum dispid 10;
    property IndentedLine: Double dispid 11;
    property StepBeforeParagraph: Double dispid 12;
    property StepAfterParagraph: Double dispid 13;
    property LeftEdge: Double dispid 14;
    property RightEdge: Double dispid 15;
    property Tabulators: ITabulators readonly dispid 16;
    property Level: Integer dispid 17;
    property Numbering: ksTextNumberingEnum dispid 18;
    function Delete: WordBool; dispid 19;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ITextItem
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {1DE74AFB-5026-4B85-861F-F0CFDBD443E6}
// *********************************************************************//
  ITextItem = interface(IKompasAPIObject)
    ['{1DE74AFB-5026-4B85-861F-F0CFDBD443E6}']
    function Get_ItemType: ksTextItemEnum; safecall;
    procedure Set_ItemType(PVal: ksTextItemEnum); safecall;
    function Get_Str: WideString; safecall;
    procedure Set_Str(const Result: WideString); safecall;
    function Get_SymbolFontName: WideString; safecall;
    procedure Set_SymbolFontName(const PVal: WideString); safecall;
    function Get_Number: Integer; safecall;
    procedure Set_Number(Result: Integer); safecall;
    function Get_SizeFactor: ksTextSizeEnum; safecall;
    procedure Set_SizeFactor(PVal: ksTextSizeEnum); safecall;
    function Get_NewLine: WordBool; safecall;
    procedure Set_NewLine(Result: WordBool); safecall;
    function Delete: WordBool; safecall;
    function Update: WordBool; safecall;
    property ItemType: ksTextItemEnum read Get_ItemType write Set_ItemType;
    property Str: WideString read Get_Str write Set_Str;
    property SymbolFontName: WideString read Get_SymbolFontName write Set_SymbolFontName;
    property Number: Integer read Get_Number write Set_Number;
    property SizeFactor: ksTextSizeEnum read Get_SizeFactor write Set_SizeFactor;
    property NewLine: WordBool read Get_NewLine write Set_NewLine;
  end;

// *********************************************************************//
// DispIntf:  ITextItemDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {1DE74AFB-5026-4B85-861F-F0CFDBD443E6}
// *********************************************************************//
  ITextItemDisp = dispinterface
    ['{1DE74AFB-5026-4B85-861F-F0CFDBD443E6}']
    property ItemType: ksTextItemEnum dispid 2001;
    property Str: WideString dispid 2002;
    property SymbolFontName: WideString dispid 2003;
    property Number: Integer dispid 2004;
    property SizeFactor: ksTextSizeEnum dispid 2005;
    property NewLine: WordBool dispid 2006;
    function Delete: WordBool; dispid 2007;
    function Update: WordBool; dispid 2008;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IDrawingText
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {E32E5703-0141-41CF-9917-9565648FE331}
// *********************************************************************//
  IDrawingText = interface(IDrawingObject)
    ['{E32E5703-0141-41CF-9917-9565648FE331}']
    function Get_X: Double; safecall;
    procedure Set_X(Result: Double); safecall;
    function Get_Y: Double; safecall;
    procedure Set_Y(Result: Double); safecall;
    procedure Set_Angle(PVal: Double); safecall;
    function Get_Angle: Double; safecall;
    function Get_Height: Double; safecall;
    procedure Set_Height(Result: Double); safecall;
    function Get_Width: Double; safecall;
    procedure Set_Width(Result: Double); safecall;
    function Get_HFormat: ksTextHorizontalFormatEnum; safecall;
    procedure Set_HFormat(Result: ksTextHorizontalFormatEnum); safecall;
    function Get_VFormat: WordBool; safecall;
    procedure Set_VFormat(Result: WordBool); safecall;
    function Get_Allocation: ksAllocationEnum; safecall;
    procedure Set_Allocation(Result: ksAllocationEnum); safecall;
    property X: Double read Get_X write Set_X;
    property Y: Double read Get_Y write Set_Y;
    property Angle: Double read Get_Angle write Set_Angle;
    property Height: Double read Get_Height write Set_Height;
    property Width: Double read Get_Width write Set_Width;
    property HFormat: ksTextHorizontalFormatEnum read Get_HFormat write Set_HFormat;
    property VFormat: WordBool read Get_VFormat write Set_VFormat;
    property Allocation: ksAllocationEnum read Get_Allocation write Set_Allocation;
  end;

// *********************************************************************//
// DispIntf:  IDrawingTextDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {E32E5703-0141-41CF-9917-9565648FE331}
// *********************************************************************//
  IDrawingTextDisp = dispinterface
    ['{E32E5703-0141-41CF-9917-9565648FE331}']
    property X: Double dispid 1;
    property Y: Double dispid 2;
    property Angle: Double dispid 3;
    property Height: Double dispid 4;
    property Width: Double dispid 5;
    property HFormat: ksTextHorizontalFormatEnum dispid 6;
    property VFormat: WordBool dispid 7;
    property Allocation: ksAllocationEnum dispid 8;
    property DrawingObjectType: DrawingObjectTypeEnum readonly dispid 3000;
    property LayerNumber: Integer dispid 3001;
    property Temp: WordBool readonly dispid 3002;
    property Valid: WordBool readonly dispid 3003;
    function Update: WordBool; dispid 3004;
    function Delete: WordBool; dispid 3005;
    property DrawingObjectParamType: ksDrawingObjectParamTypeEnum dispid 3006;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IDrawingTexts
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {C72E0E9D-7078-4AA7-95E4-E8C75CA9BCEC}
// *********************************************************************//
  IDrawingTexts = interface(IDrawingObjects)
    ['{C72E0E9D-7078-4AA7-95E4-E8C75CA9BCEC}']
    function Get_DrawingText(Index: OleVariant): IDrawingText; safecall;
    function Add: IDrawingText; safecall;
    property DrawingText[Index: OleVariant]: IDrawingText read Get_DrawingText;
  end;

// *********************************************************************//
// DispIntf:  IDrawingTextsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {C72E0E9D-7078-4AA7-95E4-E8C75CA9BCEC}
// *********************************************************************//
  IDrawingTextsDisp = dispinterface
    ['{C72E0E9D-7078-4AA7-95E4-E8C75CA9BCEC}']
    property DrawingText[Index: OleVariant]: IDrawingText readonly dispid 1;
    function Add: IDrawingText; dispid 2;
    property Item[Index: OleVariant]: IDrawingObject readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IDrawingContainer
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {D603FEC9-75B7-4FA5-918F-47074C45B848}
// *********************************************************************//
  IDrawingContainer = interface(IDispatch)
    ['{D603FEC9-75B7-4FA5-918F-47074C45B848}']
    function Get_Objects(ObjType: OleVariant): OleVariant; safecall;
    function Get_DrawingTexts: IDrawingTexts; safecall;
    function Get_LineSegments: ILineSegments; safecall;
    function Get_Arcs: IArcs; safecall;
    property Objects[ObjType: OleVariant]: OleVariant read Get_Objects;
    property DrawingTexts: IDrawingTexts read Get_DrawingTexts;
    property LineSegments: ILineSegments read Get_LineSegments;
    property Arcs: IArcs read Get_Arcs;
  end;

// *********************************************************************//
// DispIntf:  IDrawingContainerDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {D603FEC9-75B7-4FA5-918F-47074C45B848}
// *********************************************************************//
  IDrawingContainerDisp = dispinterface
    ['{D603FEC9-75B7-4FA5-918F-47074C45B848}']
    property Objects[ObjType: OleVariant]: OleVariant readonly dispid 5001;
    property DrawingTexts: IDrawingTexts readonly dispid 5002;
    property LineSegments: ILineSegments readonly dispid 5003;
    property Arcs: IArcs readonly dispid 5004;
  end;

// *********************************************************************//
// Interface: ILineSegments
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {B211C782-A830-468E-9F4F-C499A77078D8}
// *********************************************************************//
  ILineSegments = interface(IDrawingObjects)
    ['{B211C782-A830-468E-9F4F-C499A77078D8}']
    function Get_LineSegment(Index: OleVariant): ILineSegment; safecall;
    function Add: ILineSegment; safecall;
    property LineSegment[Index: OleVariant]: ILineSegment read Get_LineSegment;
  end;

// *********************************************************************//
// DispIntf:  ILineSegmentsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {B211C782-A830-468E-9F4F-C499A77078D8}
// *********************************************************************//
  ILineSegmentsDisp = dispinterface
    ['{B211C782-A830-468E-9F4F-C499A77078D8}']
    property LineSegment[Index: OleVariant]: ILineSegment readonly dispid 1;
    function Add: ILineSegment; dispid 2;
    property Item[Index: OleVariant]: IDrawingObject readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ILineSegment
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {64ACC86F-4B10-4897-8552-BC0A556D228B}
// *********************************************************************//
  ILineSegment = interface(IDrawingObject)
    ['{64ACC86F-4B10-4897-8552-BC0A556D228B}']
    procedure Set_X1(PVal: Double); safecall;
    function Get_X1: Double; safecall;
    procedure Set_Y1(PVal: Double); safecall;
    function Get_Y1: Double; safecall;
    procedure Set_X2(PVal: Double); safecall;
    function Get_X2: Double; safecall;
    procedure Set_Y2(PVal: Double); safecall;
    function Get_Y2: Double; safecall;
    procedure Set_Length(PVal: Double); safecall;
    function Get_Length: Double; safecall;
    procedure Set_Angle(PVal: Double); safecall;
    function Get_Angle: Double; safecall;
    function Get_Style: Integer; safecall;
    procedure Set_Style(Result: Integer); safecall;
    property X1: Double read Get_X1 write Set_X1;
    property Y1: Double read Get_Y1 write Set_Y1;
    property X2: Double read Get_X2 write Set_X2;
    property Y2: Double read Get_Y2 write Set_Y2;
    property Length: Double read Get_Length write Set_Length;
    property Angle: Double read Get_Angle write Set_Angle;
    property Style: Integer read Get_Style write Set_Style;
  end;

// *********************************************************************//
// DispIntf:  ILineSegmentDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {64ACC86F-4B10-4897-8552-BC0A556D228B}
// *********************************************************************//
  ILineSegmentDisp = dispinterface
    ['{64ACC86F-4B10-4897-8552-BC0A556D228B}']
    property X1: Double dispid 1;
    property Y1: Double dispid 2;
    property X2: Double dispid 3;
    property Y2: Double dispid 4;
    property Length: Double dispid 5;
    property Angle: Double dispid 6;
    property Style: Integer dispid 7;
    property DrawingObjectType: DrawingObjectTypeEnum readonly dispid 3000;
    property LayerNumber: Integer dispid 3001;
    property Temp: WordBool readonly dispid 3002;
    property Valid: WordBool readonly dispid 3003;
    function Update: WordBool; dispid 3004;
    function Delete: WordBool; dispid 3005;
    property DrawingObjectParamType: ksDrawingObjectParamTypeEnum dispid 3006;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IArcs
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {4FCB4C17-3B9E-45E8-B83C-9284027BAA0D}
// *********************************************************************//
  IArcs = interface(IDrawingObjects)
    ['{4FCB4C17-3B9E-45E8-B83C-9284027BAA0D}']
    function Get_Arc(Index: OleVariant): IArc; safecall;
    function Add: IArc; safecall;
    property Arc[Index: OleVariant]: IArc read Get_Arc;
  end;

// *********************************************************************//
// DispIntf:  IArcsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {4FCB4C17-3B9E-45E8-B83C-9284027BAA0D}
// *********************************************************************//
  IArcsDisp = dispinterface
    ['{4FCB4C17-3B9E-45E8-B83C-9284027BAA0D}']
    property Arc[Index: OleVariant]: IArc readonly dispid 1;
    function Add: IArc; dispid 2;
    property Item[Index: OleVariant]: IDrawingObject readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IArc
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {A22DFB7E-21E0-4B28-9CA1-29B7950CF256}
// *********************************************************************//
  IArc = interface(IDrawingObject)
    ['{A22DFB7E-21E0-4B28-9CA1-29B7950CF256}']
    procedure Set_Radius(PVal: Double); safecall;
    function Get_Radius: Double; safecall;
    procedure Set_Direction(PVal: WordBool); safecall;
    function Get_Direction: WordBool; safecall;
    procedure Set_Xc(PVal: Double); safecall;
    function Get_Xc: Double; safecall;
    procedure Set_Yc(PVal: Double); safecall;
    function Get_Yc: Double; safecall;
    procedure Set_X1(PVal: Double); safecall;
    function Get_X1: Double; safecall;
    procedure Set_Y1(PVal: Double); safecall;
    function Get_Y1: Double; safecall;
    procedure Set_X2(PVal: Double); safecall;
    function Get_X2: Double; safecall;
    procedure Set_Y2(PVal: Double); safecall;
    function Get_Y2: Double; safecall;
    procedure Set_X3(PVal: Double); safecall;
    function Get_X3: Double; safecall;
    procedure Set_Y3(PVal: Double); safecall;
    function Get_Y3: Double; safecall;
    procedure Set_Angle1(PVal: Double); safecall;
    function Get_Angle1: Double; safecall;
    procedure Set_Angle2(PVal: Double); safecall;
    function Get_Angle2: Double; safecall;
    function Get_Style: Integer; safecall;
    procedure Set_Style(Result: Integer); safecall;
    property Radius: Double read Get_Radius write Set_Radius;
    property Direction: WordBool read Get_Direction write Set_Direction;
    property Xc: Double read Get_Xc write Set_Xc;
    property Yc: Double read Get_Yc write Set_Yc;
    property X1: Double read Get_X1 write Set_X1;
    property Y1: Double read Get_Y1 write Set_Y1;
    property X2: Double read Get_X2 write Set_X2;
    property Y2: Double read Get_Y2 write Set_Y2;
    property X3: Double read Get_X3 write Set_X3;
    property Y3: Double read Get_Y3 write Set_Y3;
    property Angle1: Double read Get_Angle1 write Set_Angle1;
    property Angle2: Double read Get_Angle2 write Set_Angle2;
    property Style: Integer read Get_Style write Set_Style;
  end;

// *********************************************************************//
// DispIntf:  IArcDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {A22DFB7E-21E0-4B28-9CA1-29B7950CF256}
// *********************************************************************//
  IArcDisp = dispinterface
    ['{A22DFB7E-21E0-4B28-9CA1-29B7950CF256}']
    property Radius: Double dispid 1;
    property Direction: WordBool dispid 2;
    property Xc: Double dispid 3;
    property Yc: Double dispid 4;
    property X1: Double dispid 5;
    property Y1: Double dispid 6;
    property X2: Double dispid 7;
    property Y2: Double dispid 8;
    property X3: Double dispid 9;
    property Y3: Double dispid 10;
    property Angle1: Double dispid 11;
    property Angle2: Double dispid 12;
    property Style: Integer dispid 13;
    property DrawingObjectType: DrawingObjectTypeEnum readonly dispid 3000;
    property LayerNumber: Integer dispid 3001;
    property Temp: WordBool readonly dispid 3002;
    property Valid: WordBool readonly dispid 3003;
    function Update: WordBool; dispid 3004;
    function Delete: WordBool; dispid 3005;
    property DrawingObjectParamType: ksDrawingObjectParamTypeEnum dispid 3006;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IMark
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {B5D1A0BE-8F3C-4143-B9C5-66F0CF0FE74D}
// *********************************************************************//
  IMark = interface(IDrawingObject)
    ['{B5D1A0BE-8F3C-4143-B9C5-66F0CF0FE74D}']
    function Get_X: Double; safecall;
    procedure Set_X(Result: Double); safecall;
    function Get_Y: Double; safecall;
    procedure Set_Y(Result: Double); safecall;
    function Get_AutoNumber: WordBool; safecall;
    procedure Set_AutoNumber(Result: WordBool); safecall;
    function Get_Name: IText; safecall;
    function Get_Number: IText; safecall;
    function Get_TextBefore: IText; safecall;
    function Get_TextAfter: IText; safecall;
    function Get_TextUnder: IText; safecall;
    function Get_Comment: WideString; safecall;
    procedure Set_Comment(const Result: WideString); safecall;
    property X: Double read Get_X write Set_X;
    property Y: Double read Get_Y write Set_Y;
    property AutoNumber: WordBool read Get_AutoNumber write Set_AutoNumber;
    property Name: IText read Get_Name;
    property Number: IText read Get_Number;
    property TextBefore: IText read Get_TextBefore;
    property TextAfter: IText read Get_TextAfter;
    property TextUnder: IText read Get_TextUnder;
    property Comment: WideString read Get_Comment write Set_Comment;
  end;

// *********************************************************************//
// DispIntf:  IMarkDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {B5D1A0BE-8F3C-4143-B9C5-66F0CF0FE74D}
// *********************************************************************//
  IMarkDisp = dispinterface
    ['{B5D1A0BE-8F3C-4143-B9C5-66F0CF0FE74D}']
    property X: Double dispid 2001;
    property Y: Double dispid 2002;
    property AutoNumber: WordBool dispid 2003;
    property Name: IText readonly dispid 2004;
    property Number: IText readonly dispid 2005;
    property TextBefore: IText readonly dispid 2006;
    property TextAfter: IText readonly dispid 2007;
    property TextUnder: IText readonly dispid 2008;
    property Comment: WideString dispid 2009;
    property DrawingObjectType: DrawingObjectTypeEnum readonly dispid 3000;
    property LayerNumber: Integer dispid 3001;
    property Temp: WordBool readonly dispid 3002;
    property Valid: WordBool readonly dispid 3003;
    function Update: WordBool; dispid 3004;
    function Delete: WordBool; dispid 3005;
    property DrawingObjectParamType: ksDrawingObjectParamTypeEnum dispid 3006;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IMarks
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {47585370-56BD-4419-82D9-DB7CBFB1A252}
// *********************************************************************//
  IMarks = interface(IDrawingObjects)
    ['{47585370-56BD-4419-82D9-DB7CBFB1A252}']
    function Get_Mark(Index: OleVariant): IMark; safecall;
    function Add(MarkType: DrawingObjectTypeEnum): IMark; safecall;
    property Mark[Index: OleVariant]: IMark read Get_Mark;
  end;

// *********************************************************************//
// DispIntf:  IMarksDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {47585370-56BD-4419-82D9-DB7CBFB1A252}
// *********************************************************************//
  IMarksDisp = dispinterface
    ['{47585370-56BD-4419-82D9-DB7CBFB1A252}']
    property Mark[Index: OleVariant]: IMark readonly dispid 1;
    function Add(MarkType: DrawingObjectTypeEnum): IMark; dispid 2;
    property Item[Index: OleVariant]: IDrawingObject readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IMarkInsideForm
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {E5C5A0FF-6CAB-4179-9BF3-868D96BF6AEA}
// *********************************************************************//
  IMarkInsideForm = interface(IMark)
    ['{E5C5A0FF-6CAB-4179-9BF3-868D96BF6AEA}']
    function Get_Angle: Double; safecall;
    procedure Set_Angle(Result: Double); safecall;
    procedure Set_Form(NewVal: ksMarkInsideFormEnum); safecall;
    function Get_Form: ksMarkInsideFormEnum; safecall;
    procedure Set_FormGabarit(PVal: Double); safecall;
    function Get_FormGabarit: Double; safecall;
    procedure Set_FormHeight(PVal: Double); safecall;
    function Get_FormHeight: Double; safecall;
    procedure Set_FormStyle(PVal: Integer); safecall;
    function Get_FormStyle: Integer; safecall;
    property Angle: Double read Get_Angle write Set_Angle;
    property Form: ksMarkInsideFormEnum read Get_Form write Set_Form;
    property FormGabarit: Double read Get_FormGabarit write Set_FormGabarit;
    property FormHeight: Double read Get_FormHeight write Set_FormHeight;
    property FormStyle: Integer read Get_FormStyle write Set_FormStyle;
  end;

// *********************************************************************//
// DispIntf:  IMarkInsideFormDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {E5C5A0FF-6CAB-4179-9BF3-868D96BF6AEA}
// *********************************************************************//
  IMarkInsideFormDisp = dispinterface
    ['{E5C5A0FF-6CAB-4179-9BF3-868D96BF6AEA}']
    property Angle: Double dispid 1;
    property Form: ksMarkInsideFormEnum dispid 2;
    property FormGabarit: Double dispid 3;
    property FormHeight: Double dispid 4;
    property FormStyle: Integer dispid 5;
    property X: Double dispid 2001;
    property Y: Double dispid 2002;
    property AutoNumber: WordBool dispid 2003;
    property Name: IText readonly dispid 2004;
    property Number: IText readonly dispid 2005;
    property TextBefore: IText readonly dispid 2006;
    property TextAfter: IText readonly dispid 2007;
    property TextUnder: IText readonly dispid 2008;
    property Comment: WideString dispid 2009;
    property DrawingObjectType: DrawingObjectTypeEnum readonly dispid 3000;
    property LayerNumber: Integer dispid 3001;
    property Temp: WordBool readonly dispid 3002;
    property Valid: WordBool readonly dispid 3003;
    function Update: WordBool; dispid 3004;
    function Delete: WordBool; dispid 3005;
    property DrawingObjectParamType: ksDrawingObjectParamTypeEnum dispid 3006;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IMarkOnLine
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {5A1540F9-7388-466F-A13C-EB1133423DD9}
// *********************************************************************//
  IMarkOnLine = interface(IMark)
    ['{5A1540F9-7388-466F-A13C-EB1133423DD9}']
    function Get_Position: ksMarkOnLinePosTypeEnum; safecall;
    procedure Set_Position(Result: ksMarkOnLinePosTypeEnum); safecall;
    function Get_Line: IDrawingObject; safecall;
    procedure Set_Line(const Result: IDrawingObject); safecall;
    property Position: ksMarkOnLinePosTypeEnum read Get_Position write Set_Position;
    property Line: IDrawingObject read Get_Line write Set_Line;
  end;

// *********************************************************************//
// DispIntf:  IMarkOnLineDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {5A1540F9-7388-466F-A13C-EB1133423DD9}
// *********************************************************************//
  IMarkOnLineDisp = dispinterface
    ['{5A1540F9-7388-466F-A13C-EB1133423DD9}']
    property Position: ksMarkOnLinePosTypeEnum dispid 1;
    property Line: IDrawingObject dispid 2;
    property X: Double dispid 2001;
    property Y: Double dispid 2002;
    property AutoNumber: WordBool dispid 2003;
    property Name: IText readonly dispid 2004;
    property Number: IText readonly dispid 2005;
    property TextBefore: IText readonly dispid 2006;
    property TextAfter: IText readonly dispid 2007;
    property TextUnder: IText readonly dispid 2008;
    property Comment: WideString dispid 2009;
    property DrawingObjectType: DrawingObjectTypeEnum readonly dispid 3000;
    property LayerNumber: Integer dispid 3001;
    property Temp: WordBool readonly dispid 3002;
    property Valid: WordBool readonly dispid 3003;
    function Update: WordBool; dispid 3004;
    function Delete: WordBool; dispid 3005;
    property DrawingObjectParamType: ksDrawingObjectParamTypeEnum dispid 3006;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IMarkOnLeader
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F3D7E6A6-26EA-4D68-AD58-4DE194C47B4E}
// *********************************************************************//
  IMarkOnLeader = interface(IMark)
    ['{F3D7E6A6-26EA-4D68-AD58-4DE194C47B4E}']
    function Get_ArrowType: ksArrowEnum; safecall;
    procedure Set_ArrowType(PVal: ksArrowEnum); safecall;
    function Get_ShelfDirection: ksShelfDirectionEnum; safecall;
    procedure Set_ShelfDirection(PVal: ksShelfDirectionEnum); safecall;
    function Get_ParallelBranch: WordBool; safecall;
    procedure Set_ParallelBranch(PVal: WordBool); safecall;
    function Get_BranchCount: Integer; safecall;
    procedure Set_BranchPoints(Index: Integer; PVal: OleVariant); safecall;
    function Get_BranchPoints(Index: Integer): OleVariant; safecall;
    procedure Set_BranchBegin(Index: Integer; PVal: WordBool); safecall;
    function Get_BranchBegin(Index: Integer): WordBool; safecall;
    procedure Set_BranchX(Index: Integer; PVal: Double); safecall;
    function Get_BranchX(Index: Integer): Double; safecall;
    procedure Set_BranchY(Index: Integer; PVal: Double); safecall;
    function Get_BranchY(Index: Integer): Double; safecall;
    function Get_BranchPointsCount(Index: Integer): Integer; safecall;
    function AddBranch(Index: Integer; Begin_: WordBool; Points: OleVariant): WordBool; safecall;
    function AddBranchByPoint(Index: Integer; Begin_: WordBool; X: Double; Y: Double): WordBool; safecall;
    function DeleteBranch(Index: Integer): WordBool; safecall;
    property ArrowType: ksArrowEnum read Get_ArrowType write Set_ArrowType;
    property ShelfDirection: ksShelfDirectionEnum read Get_ShelfDirection write Set_ShelfDirection;
    property ParallelBranch: WordBool read Get_ParallelBranch write Set_ParallelBranch;
    property BranchCount: Integer read Get_BranchCount;
    property BranchPoints[Index: Integer]: OleVariant read Get_BranchPoints write Set_BranchPoints;
    property BranchBegin[Index: Integer]: WordBool read Get_BranchBegin write Set_BranchBegin;
    property BranchX[Index: Integer]: Double read Get_BranchX write Set_BranchX;
    property BranchY[Index: Integer]: Double read Get_BranchY write Set_BranchY;
    property BranchPointsCount[Index: Integer]: Integer read Get_BranchPointsCount;
  end;

// *********************************************************************//
// DispIntf:  IMarkOnLeaderDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {F3D7E6A6-26EA-4D68-AD58-4DE194C47B4E}
// *********************************************************************//
  IMarkOnLeaderDisp = dispinterface
    ['{F3D7E6A6-26EA-4D68-AD58-4DE194C47B4E}']
    property ArrowType: ksArrowEnum dispid 1;
    property ShelfDirection: ksShelfDirectionEnum dispid 2;
    property ParallelBranch: WordBool dispid 3;
    property BranchCount: Integer readonly dispid 4;
    property BranchPoints[Index: Integer]: OleVariant dispid 5;
    property BranchBegin[Index: Integer]: WordBool dispid 6;
    property BranchX[Index: Integer]: Double dispid 7;
    property BranchY[Index: Integer]: Double dispid 8;
    property BranchPointsCount[Index: Integer]: Integer readonly dispid 9;
    function AddBranch(Index: Integer; Begin_: WordBool; Points: OleVariant): WordBool; dispid 10;
    function AddBranchByPoint(Index: Integer; Begin_: WordBool; X: Double; Y: Double): WordBool; dispid 11;
    function DeleteBranch(Index: Integer): WordBool; dispid 12;
    property X: Double dispid 2001;
    property Y: Double dispid 2002;
    property AutoNumber: WordBool dispid 2003;
    property Name: IText readonly dispid 2004;
    property Number: IText readonly dispid 2005;
    property TextBefore: IText readonly dispid 2006;
    property TextAfter: IText readonly dispid 2007;
    property TextUnder: IText readonly dispid 2008;
    property Comment: WideString dispid 2009;
    property DrawingObjectType: DrawingObjectTypeEnum readonly dispid 3000;
    property LayerNumber: Integer dispid 3001;
    property Temp: WordBool readonly dispid 3002;
    property Valid: WordBool readonly dispid 3003;
    function Update: WordBool; dispid 3004;
    function Delete: WordBool; dispid 3005;
    property DrawingObjectParamType: ksDrawingObjectParamTypeEnum dispid 3006;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IBuildingAxis
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {123C45BF-14DE-433E-B3B0-2FB642A9A418}
// *********************************************************************//
  IBuildingAxis = interface(IDrawingObject)
    ['{123C45BF-14DE-433E-B3B0-2FB642A9A418}']
    procedure Set_DoubleMark(PVal: WordBool); safecall;
    function Get_DoubleMark: WordBool; safecall;
    procedure Set_MarkSize(PVal: Double); safecall;
    function Get_MarkSize: Double; safecall;
    procedure Set_DottedLength(PVal: Double); safecall;
    function Get_DottedLength: Double; safecall;
    procedure Set_Interval(PVal: Double); safecall;
    function Get_Interval: Double; safecall;
    procedure Set_Stroke(PVal: Double); safecall;
    function Get_Stroke: Double; safecall;
    function Get_Text: IText; safecall;
    function Get_TextBefore: IText; safecall;
    function Get_TextAfter: IText; safecall;
    procedure Set_AutoStroke(PVal: WordBool); safecall;
    function Get_AutoStroke: WordBool; safecall;
    function GetInsertionPoints(First: WordBool; out Points: OleVariant; 
                                out Directions: OleVariant; out Nodes: OleVariant): WordBool; safecall;
    function GetNodeByPoint(X: Double; Y: Double; Limit: Double): IMarkNode; safecall;
    function AddNodeByPoint(Type_: ksMarkNodeEnum; X: Double; Y: Double): IMarkNode; safecall;
    property DoubleMark: WordBool read Get_DoubleMark write Set_DoubleMark;
    property MarkSize: Double read Get_MarkSize write Set_MarkSize;
    property DottedLength: Double read Get_DottedLength write Set_DottedLength;
    property Interval: Double read Get_Interval write Set_Interval;
    property Stroke: Double read Get_Stroke write Set_Stroke;
    property Text: IText read Get_Text;
    property TextBefore: IText read Get_TextBefore;
    property TextAfter: IText read Get_TextAfter;
    property AutoStroke: WordBool read Get_AutoStroke write Set_AutoStroke;
  end;

// *********************************************************************//
// DispIntf:  IBuildingAxisDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {123C45BF-14DE-433E-B3B0-2FB642A9A418}
// *********************************************************************//
  IBuildingAxisDisp = dispinterface
    ['{123C45BF-14DE-433E-B3B0-2FB642A9A418}']
    property DoubleMark: WordBool dispid 2001;
    property MarkSize: Double dispid 2002;
    property DottedLength: Double dispid 2003;
    property Interval: Double dispid 2004;
    property Stroke: Double dispid 2005;
    property Text: IText readonly dispid 2006;
    property TextBefore: IText readonly dispid 2007;
    property TextAfter: IText readonly dispid 2008;
    property AutoStroke: WordBool dispid 2009;
    function GetInsertionPoints(First: WordBool; out Points: OleVariant; 
                                out Directions: OleVariant; out Nodes: OleVariant): WordBool; dispid 2010;
    function GetNodeByPoint(X: Double; Y: Double; Limit: Double): IMarkNode; dispid 2011;
    function AddNodeByPoint(Type_: ksMarkNodeEnum; X: Double; Y: Double): IMarkNode; dispid 2012;
    property DrawingObjectType: DrawingObjectTypeEnum readonly dispid 3000;
    property LayerNumber: Integer dispid 3001;
    property Temp: WordBool readonly dispid 3002;
    property Valid: WordBool readonly dispid 3003;
    function Update: WordBool; dispid 3004;
    function Delete: WordBool; dispid 3005;
    property DrawingObjectParamType: ksDrawingObjectParamTypeEnum dispid 3006;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IMarkNode
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {5AC48E97-80B1-459F-9709-1F3F374559BE}
// *********************************************************************//
  IMarkNode = interface(IKompasAPIObject)
    ['{5AC48E97-80B1-459F-9709-1F3F374559BE}']
    procedure Set_MarkType(Val: ksMarkNodeEnum); safecall;
    function Get_MarkType: ksMarkNodeEnum; safecall;
    procedure Set_DoubleMark(PVal: WordBool); safecall;
    function Get_DoubleMark: WordBool; safecall;
    procedure Set_RefLength(PVal: Double); safecall;
    function Get_RefLength: Double; safecall;
    function Get_Text: IText; safecall;
    function Get_MarkNodes(Left: WordBool): IMarkNodes; safecall;
    function Delete: WordBool; safecall;
    function GetInsertionPoints(LeftJut: WordBool; out Points: OleVariant; 
                                out Directions: OleVariant): WordBool; safecall;
    property MarkType: ksMarkNodeEnum read Get_MarkType write Set_MarkType;
    property DoubleMark: WordBool read Get_DoubleMark write Set_DoubleMark;
    property RefLength: Double read Get_RefLength write Set_RefLength;
    property Text: IText read Get_Text;
    property MarkNodes[Left: WordBool]: IMarkNodes read Get_MarkNodes;
  end;

// *********************************************************************//
// DispIntf:  IMarkNodeDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {5AC48E97-80B1-459F-9709-1F3F374559BE}
// *********************************************************************//
  IMarkNodeDisp = dispinterface
    ['{5AC48E97-80B1-459F-9709-1F3F374559BE}']
    property MarkType: ksMarkNodeEnum dispid 1;
    property DoubleMark: WordBool dispid 2;
    property RefLength: Double dispid 3;
    property Text: IText readonly dispid 4;
    property MarkNodes[Left: WordBool]: IMarkNodes readonly dispid 5;
    function Delete: WordBool; dispid 6;
    function GetInsertionPoints(LeftJut: WordBool; out Points: OleVariant; 
                                out Directions: OleVariant): WordBool; dispid 7;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IMarkNodes
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {EB8ACD77-8008-4F89-A311-2F4712462F72}
// *********************************************************************//
  IMarkNodes = interface(IKompasCollection)
    ['{EB8ACD77-8008-4F89-A311-2F4712462F72}']
    function Get_Item(Index: OleVariant): IMarkNode; safecall;
    function Add(Type_: ksMarkNodeEnum; Index: OleVariant): IMarkNode; safecall;
    function Clear: WordBool; safecall;
    property Item[Index: OleVariant]: IMarkNode read Get_Item; default;
  end;

// *********************************************************************//
// DispIntf:  IMarkNodesDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {EB8ACD77-8008-4F89-A311-2F4712462F72}
// *********************************************************************//
  IMarkNodesDisp = dispinterface
    ['{EB8ACD77-8008-4F89-A311-2F4712462F72}']
    property Item[Index: OleVariant]: IMarkNode readonly dispid 0; default;
    function Add(Type_: ksMarkNodeEnum; Index: OleVariant): IMarkNode; dispid 1;
    function Clear: WordBool; dispid 2;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IBuildingAxes
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {18072E1D-1802-41F5-A434-04BB9D3F157F}
// *********************************************************************//
  IBuildingAxes = interface(IDrawingObjects)
    ['{18072E1D-1802-41F5-A434-04BB9D3F157F}']
    function Get_BuildingAxis(Index: OleVariant): IBuildingAxis; safecall;
    function Add(AxisType: DrawingObjectTypeEnum): IBuildingAxis; safecall;
    property BuildingAxis[Index: OleVariant]: IBuildingAxis read Get_BuildingAxis;
  end;

// *********************************************************************//
// DispIntf:  IBuildingAxesDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {18072E1D-1802-41F5-A434-04BB9D3F157F}
// *********************************************************************//
  IBuildingAxesDisp = dispinterface
    ['{18072E1D-1802-41F5-A434-04BB9D3F157F}']
    property BuildingAxis[Index: OleVariant]: IBuildingAxis readonly dispid 1;
    function Add(AxisType: DrawingObjectTypeEnum): IBuildingAxis; dispid 2;
    property Item[Index: OleVariant]: IDrawingObject readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IStraightAxis
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {7B2820E0-2CB7-4412-9B96-F291DD790448}
// *********************************************************************//
  IStraightAxis = interface(IBuildingAxis)
    ['{7B2820E0-2CB7-4412-9B96-F291DD790448}']
    procedure Set_X1(PVal: Double); safecall;
    function Get_X1: Double; safecall;
    procedure Set_Y1(PVal: Double); safecall;
    function Get_Y1: Double; safecall;
    procedure Set_X2(PVal: Double); safecall;
    function Get_X2: Double; safecall;
    procedure Set_Y2(PVal: Double); safecall;
    function Get_Y2: Double; safecall;
    procedure Set_Length(PVal: Double); safecall;
    function Get_Length: Double; safecall;
    procedure Set_Angle(PVal: Double); safecall;
    function Get_Angle: Double; safecall;
    function Get_Jut(First: WordBool): IAxisJut; safecall;
    function Get_MarkNodes: IMarkNodes; safecall;
    property X1: Double read Get_X1 write Set_X1;
    property Y1: Double read Get_Y1 write Set_Y1;
    property X2: Double read Get_X2 write Set_X2;
    property Y2: Double read Get_Y2 write Set_Y2;
    property Length: Double read Get_Length write Set_Length;
    property Angle: Double read Get_Angle write Set_Angle;
    property Jut[First: WordBool]: IAxisJut read Get_Jut;
    property MarkNodes: IMarkNodes read Get_MarkNodes;
  end;

// *********************************************************************//
// DispIntf:  IStraightAxisDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {7B2820E0-2CB7-4412-9B96-F291DD790448}
// *********************************************************************//
  IStraightAxisDisp = dispinterface
    ['{7B2820E0-2CB7-4412-9B96-F291DD790448}']
    property X1: Double dispid 1;
    property Y1: Double dispid 2;
    property X2: Double dispid 3;
    property Y2: Double dispid 4;
    property Length: Double dispid 5;
    property Angle: Double dispid 6;
    property Jut[First: WordBool]: IAxisJut readonly dispid 7;
    property MarkNodes: IMarkNodes readonly dispid 8;
    property DoubleMark: WordBool dispid 2001;
    property MarkSize: Double dispid 2002;
    property DottedLength: Double dispid 2003;
    property Interval: Double dispid 2004;
    property Stroke: Double dispid 2005;
    property Text: IText readonly dispid 2006;
    property TextBefore: IText readonly dispid 2007;
    property TextAfter: IText readonly dispid 2008;
    property AutoStroke: WordBool dispid 2009;
    function GetInsertionPoints(First: WordBool; out Points: OleVariant; 
                                out Directions: OleVariant; out Nodes: OleVariant): WordBool; dispid 2010;
    function GetNodeByPoint(X: Double; Y: Double; Limit: Double): IMarkNode; dispid 2011;
    function AddNodeByPoint(Type_: ksMarkNodeEnum; X: Double; Y: Double): IMarkNode; dispid 2012;
    property DrawingObjectType: DrawingObjectTypeEnum readonly dispid 3000;
    property LayerNumber: Integer dispid 3001;
    property Temp: WordBool readonly dispid 3002;
    property Valid: WordBool readonly dispid 3003;
    function Update: WordBool; dispid 3004;
    function Delete: WordBool; dispid 3005;
    property DrawingObjectParamType: ksDrawingObjectParamTypeEnum dispid 3006;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IAxisJut
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {5A22E024-F530-45DB-A3F2-CA0587BDA1B5}
// *********************************************************************//
  IAxisJut = interface(IKompasAPIObject)
    ['{5A22E024-F530-45DB-A3F2-CA0587BDA1B5}']
    procedure Set_Length(PVal: Double); safecall;
    function Get_Length: Double; safecall;
    procedure Set_MarkOffset(PVal: Double); safecall;
    function Get_MarkOffset: Double; safecall;
    procedure Set_BreakOffset(PVal: Double); safecall;
    function Get_BreakOffset: Double; safecall;
    procedure Set_BreakDirection(PVal: WordBool); safecall;
    function Get_BreakDirection: WordBool; safecall;
    procedure Set_MarkOn(PVal: WordBool); safecall;
    function Get_MarkOn: WordBool; safecall;
    property Length: Double read Get_Length write Set_Length;
    property MarkOffset: Double read Get_MarkOffset write Set_MarkOffset;
    property BreakOffset: Double read Get_BreakOffset write Set_BreakOffset;
    property BreakDirection: WordBool read Get_BreakDirection write Set_BreakDirection;
    property MarkOn: WordBool read Get_MarkOn write Set_MarkOn;
  end;

// *********************************************************************//
// DispIntf:  IAxisJutDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {5A22E024-F530-45DB-A3F2-CA0587BDA1B5}
// *********************************************************************//
  IAxisJutDisp = dispinterface
    ['{5A22E024-F530-45DB-A3F2-CA0587BDA1B5}']
    property Length: Double dispid 1;
    property MarkOffset: Double dispid 2;
    property BreakOffset: Double dispid 3;
    property BreakDirection: WordBool dispid 4;
    property MarkOn: WordBool dispid 5;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IArcAxis
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {DAA9755A-3971-4713-B281-15995CBF2E56}
// *********************************************************************//
  IArcAxis = interface(IBuildingAxis)
    ['{DAA9755A-3971-4713-B281-15995CBF2E56}']
    procedure Set_Xc(PVal: Double); safecall;
    function Get_Xc: Double; safecall;
    procedure Set_Yc(PVal: Double); safecall;
    function Get_Yc: Double; safecall;
    procedure Set_X1(PVal: Double); safecall;
    function Get_X1: Double; safecall;
    procedure Set_Y1(PVal: Double); safecall;
    function Get_Y1: Double; safecall;
    procedure Set_X2(PVal: Double); safecall;
    function Get_X2: Double; safecall;
    procedure Set_Y2(PVal: Double); safecall;
    function Get_Y2: Double; safecall;
    procedure Set_Angle1(PVal: Double); safecall;
    function Get_Angle1: Double; safecall;
    procedure Set_Angle2(PVal: Double); safecall;
    function Get_Angle2: Double; safecall;
    procedure Set_Radius(PVal: Double); safecall;
    function Get_Radius: Double; safecall;
    procedure Set_Direction(PVal: WordBool); safecall;
    function Get_Direction: WordBool; safecall;
    function Get_Jut(First: WordBool): IAxisJut; safecall;
    function Get_MarkNodes: IMarkNodes; safecall;
    procedure Set_X3(PVal: Double); safecall;
    function Get_X3: Double; safecall;
    procedure Set_Y3(PVal: Double); safecall;
    function Get_Y3: Double; safecall;
    property Xc: Double read Get_Xc write Set_Xc;
    property Yc: Double read Get_Yc write Set_Yc;
    property X1: Double read Get_X1 write Set_X1;
    property Y1: Double read Get_Y1 write Set_Y1;
    property X2: Double read Get_X2 write Set_X2;
    property Y2: Double read Get_Y2 write Set_Y2;
    property Angle1: Double read Get_Angle1 write Set_Angle1;
    property Angle2: Double read Get_Angle2 write Set_Angle2;
    property Radius: Double read Get_Radius write Set_Radius;
    property Direction: WordBool read Get_Direction write Set_Direction;
    property Jut[First: WordBool]: IAxisJut read Get_Jut;
    property MarkNodes: IMarkNodes read Get_MarkNodes;
    property X3: Double read Get_X3 write Set_X3;
    property Y3: Double read Get_Y3 write Set_Y3;
  end;

// *********************************************************************//
// DispIntf:  IArcAxisDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {DAA9755A-3971-4713-B281-15995CBF2E56}
// *********************************************************************//
  IArcAxisDisp = dispinterface
    ['{DAA9755A-3971-4713-B281-15995CBF2E56}']
    property Xc: Double dispid 1;
    property Yc: Double dispid 2;
    property X1: Double dispid 3;
    property Y1: Double dispid 4;
    property X2: Double dispid 5;
    property Y2: Double dispid 6;
    property Angle1: Double dispid 7;
    property Angle2: Double dispid 8;
    property Radius: Double dispid 9;
    property Direction: WordBool dispid 10;
    property Jut[First: WordBool]: IAxisJut readonly dispid 11;
    property MarkNodes: IMarkNodes readonly dispid 12;
    property X3: Double dispid 13;
    property Y3: Double dispid 14;
    property DoubleMark: WordBool dispid 2001;
    property MarkSize: Double dispid 2002;
    property DottedLength: Double dispid 2003;
    property Interval: Double dispid 2004;
    property Stroke: Double dispid 2005;
    property Text: IText readonly dispid 2006;
    property TextBefore: IText readonly dispid 2007;
    property TextAfter: IText readonly dispid 2008;
    property AutoStroke: WordBool dispid 2009;
    function GetInsertionPoints(First: WordBool; out Points: OleVariant; 
                                out Directions: OleVariant; out Nodes: OleVariant): WordBool; dispid 2010;
    function GetNodeByPoint(X: Double; Y: Double; Limit: Double): IMarkNode; dispid 2011;
    function AddNodeByPoint(Type_: ksMarkNodeEnum; X: Double; Y: Double): IMarkNode; dispid 2012;
    property DrawingObjectType: DrawingObjectTypeEnum readonly dispid 3000;
    property LayerNumber: Integer dispid 3001;
    property Temp: WordBool readonly dispid 3002;
    property Valid: WordBool readonly dispid 3003;
    function Update: WordBool; dispid 3004;
    function Delete: WordBool; dispid 3005;
    property DrawingObjectParamType: ksDrawingObjectParamTypeEnum dispid 3006;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ICircleAxis
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {D84358FB-674C-4A5D-93BA-EE5D3342097B}
// *********************************************************************//
  ICircleAxis = interface(IBuildingAxis)
    ['{D84358FB-674C-4A5D-93BA-EE5D3342097B}']
    procedure Set_Xc(PVal: Double); safecall;
    function Get_Xc: Double; safecall;
    procedure Set_Yc(PVal: Double); safecall;
    function Get_Yc: Double; safecall;
    procedure Set_MarkAngle(PVal: Double); safecall;
    function Get_MarkAngle: Double; safecall;
    procedure Set_Radius(PVal: Double); safecall;
    function Get_Radius: Double; safecall;
    procedure Set_MarkOn(PVal: WordBool); safecall;
    function Get_MarkOn: WordBool; safecall;
    function Get_BaseMarkNode: IMarkNode; safecall;
    property Xc: Double read Get_Xc write Set_Xc;
    property Yc: Double read Get_Yc write Set_Yc;
    property MarkAngle: Double read Get_MarkAngle write Set_MarkAngle;
    property Radius: Double read Get_Radius write Set_Radius;
    property MarkOn: WordBool read Get_MarkOn write Set_MarkOn;
    property BaseMarkNode: IMarkNode read Get_BaseMarkNode;
  end;

// *********************************************************************//
// DispIntf:  ICircleAxisDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {D84358FB-674C-4A5D-93BA-EE5D3342097B}
// *********************************************************************//
  ICircleAxisDisp = dispinterface
    ['{D84358FB-674C-4A5D-93BA-EE5D3342097B}']
    property Xc: Double dispid 1;
    property Yc: Double dispid 2;
    property MarkAngle: Double dispid 3;
    property Radius: Double dispid 4;
    property MarkOn: WordBool dispid 5;
    property BaseMarkNode: IMarkNode readonly dispid 6;
    property DoubleMark: WordBool dispid 2001;
    property MarkSize: Double dispid 2002;
    property DottedLength: Double dispid 2003;
    property Interval: Double dispid 2004;
    property Stroke: Double dispid 2005;
    property Text: IText readonly dispid 2006;
    property TextBefore: IText readonly dispid 2007;
    property TextAfter: IText readonly dispid 2008;
    property AutoStroke: WordBool dispid 2009;
    function GetInsertionPoints(First: WordBool; out Points: OleVariant; 
                                out Directions: OleVariant; out Nodes: OleVariant): WordBool; dispid 2010;
    function GetNodeByPoint(X: Double; Y: Double; Limit: Double): IMarkNode; dispid 2011;
    function AddNodeByPoint(Type_: ksMarkNodeEnum; X: Double; Y: Double): IMarkNode; dispid 2012;
    property DrawingObjectType: DrawingObjectTypeEnum readonly dispid 3000;
    property LayerNumber: Integer dispid 3001;
    property Temp: WordBool readonly dispid 3002;
    property Valid: WordBool readonly dispid 3003;
    function Update: WordBool; dispid 3004;
    function Delete: WordBool; dispid 3005;
    property DrawingObjectParamType: ksDrawingObjectParamTypeEnum dispid 3006;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ICutUnitMarking
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {2EDA58EE-DBDA-44CC-AD10-6895006D498C}
// *********************************************************************//
  ICutUnitMarking = interface(IDrawingObject)
    ['{2EDA58EE-DBDA-44CC-AD10-6895006D498C}']
    function Get_StrokeCount: Integer; safecall;
    procedure Set_StrokeX(Index: Integer; PVal: Double); safecall;
    function Get_StrokeX(Index: Integer): Double; safecall;
    procedure Set_StrokeY(Index: Integer; PVal: Double); safecall;
    function Get_StrokeY(Index: Integer): Double; safecall;
    procedure Set_Stroke(Index: Integer; PVal: Double); safecall;
    function Get_Stroke(Index: Integer): Double; safecall;
    function Get_Angle: Double; safecall;
    procedure Set_Angle(Result: Double); safecall;
    function Get_ShelfDirection: ksShelfDirectionEnum; safecall;
    procedure Set_ShelfDirection(Result: ksShelfDirectionEnum); safecall;
    function Get_ShelfX: Double; safecall;
    procedure Set_ShelfX(Result: Double); safecall;
    function Get_ShelfY: Double; safecall;
    procedure Set_ShelfY(Result: Double); safecall;
    function Get_TextUp: IText; safecall;
    function Get_TextDown: IText; safecall;
    function AddStroke(X: Double; Y: Double; Length: Double): WordBool; safecall;
    function DeleteStroke(Index: Integer): WordBool; safecall;
    property StrokeCount: Integer read Get_StrokeCount;
    property StrokeX[Index: Integer]: Double read Get_StrokeX write Set_StrokeX;
    property StrokeY[Index: Integer]: Double read Get_StrokeY write Set_StrokeY;
    property Stroke[Index: Integer]: Double read Get_Stroke write Set_Stroke;
    property Angle: Double read Get_Angle write Set_Angle;
    property ShelfDirection: ksShelfDirectionEnum read Get_ShelfDirection write Set_ShelfDirection;
    property ShelfX: Double read Get_ShelfX write Set_ShelfX;
    property ShelfY: Double read Get_ShelfY write Set_ShelfY;
    property TextUp: IText read Get_TextUp;
    property TextDown: IText read Get_TextDown;
  end;

// *********************************************************************//
// DispIntf:  ICutUnitMarkingDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {2EDA58EE-DBDA-44CC-AD10-6895006D498C}
// *********************************************************************//
  ICutUnitMarkingDisp = dispinterface
    ['{2EDA58EE-DBDA-44CC-AD10-6895006D498C}']
    property StrokeCount: Integer readonly dispid 1;
    property StrokeX[Index: Integer]: Double dispid 2;
    property StrokeY[Index: Integer]: Double dispid 3;
    property Stroke[Index: Integer]: Double dispid 4;
    property Angle: Double dispid 5;
    property ShelfDirection: ksShelfDirectionEnum dispid 6;
    property ShelfX: Double dispid 7;
    property ShelfY: Double dispid 8;
    property TextUp: IText readonly dispid 9;
    property TextDown: IText readonly dispid 10;
    function AddStroke(X: Double; Y: Double; Length: Double): WordBool; dispid 11;
    function DeleteStroke(Index: Integer): WordBool; dispid 12;
    property DrawingObjectType: DrawingObjectTypeEnum readonly dispid 3000;
    property LayerNumber: Integer dispid 3001;
    property Temp: WordBool readonly dispid 3002;
    property Valid: WordBool readonly dispid 3003;
    function Update: WordBool; dispid 3004;
    function Delete: WordBool; dispid 3005;
    property DrawingObjectParamType: ksDrawingObjectParamTypeEnum dispid 3006;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ICutUnitMarkings
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {23B00F94-98D3-4AD7-8827-F4088F4A9E5C}
// *********************************************************************//
  ICutUnitMarkings = interface(IDrawingObjects)
    ['{23B00F94-98D3-4AD7-8827-F4088F4A9E5C}']
    function Get_CutUnitMarking(Index: OleVariant): ICutUnitMarking; safecall;
    function Add: ICutUnitMarking; safecall;
    property CutUnitMarking[Index: OleVariant]: ICutUnitMarking read Get_CutUnitMarking;
  end;

// *********************************************************************//
// DispIntf:  ICutUnitMarkingsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {23B00F94-98D3-4AD7-8827-F4088F4A9E5C}
// *********************************************************************//
  ICutUnitMarkingsDisp = dispinterface
    ['{23B00F94-98D3-4AD7-8827-F4088F4A9E5C}']
    property CutUnitMarking[Index: OleVariant]: ICutUnitMarking readonly dispid 1;
    function Add: ICutUnitMarking; dispid 2;
    property Item[Index: OleVariant]: IDrawingObject readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IUnitMarking
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {86F46084-16A8-4B5C-99E9-F848216788F0}
// *********************************************************************//
  IUnitMarking = interface(IDrawingObject)
    ['{86F46084-16A8-4B5C-99E9-F848216788F0}']
    function Get_Xc: Double; safecall;
    procedure Set_Xc(Result: Double); safecall;
    function Get_Yc: Double; safecall;
    procedure Set_Yc(Result: Double); safecall;
    function Get_Radius: Double; safecall;
    procedure Set_Radius(Result: Double); safecall;
    function Get_Height: Double; safecall;
    procedure Set_Height(Result: Double); safecall;
    function Get_Width: Double; safecall;
    procedure Set_Width(Result: Double); safecall;
    function Get_ShelfDirection: ksShelfDirectionEnum; safecall;
    procedure Set_ShelfDirection(Result: ksShelfDirectionEnum); safecall;
    function Get_ShelfX: Double; safecall;
    procedure Set_ShelfX(Result: Double); safecall;
    function Get_ShelfY: Double; safecall;
    procedure Set_ShelfY(Result: Double); safecall;
    function Get_Form: ksContourFormEnum; safecall;
    procedure Set_Form(Result: ksContourFormEnum); safecall;
    function Get_TextUp: IText; safecall;
    function Get_TextDown: IText; safecall;
    property Xc: Double read Get_Xc write Set_Xc;
    property Yc: Double read Get_Yc write Set_Yc;
    property Radius: Double read Get_Radius write Set_Radius;
    property Height: Double read Get_Height write Set_Height;
    property Width: Double read Get_Width write Set_Width;
    property ShelfDirection: ksShelfDirectionEnum read Get_ShelfDirection write Set_ShelfDirection;
    property ShelfX: Double read Get_ShelfX write Set_ShelfX;
    property ShelfY: Double read Get_ShelfY write Set_ShelfY;
    property Form: ksContourFormEnum read Get_Form write Set_Form;
    property TextUp: IText read Get_TextUp;
    property TextDown: IText read Get_TextDown;
  end;

// *********************************************************************//
// DispIntf:  IUnitMarkingDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {86F46084-16A8-4B5C-99E9-F848216788F0}
// *********************************************************************//
  IUnitMarkingDisp = dispinterface
    ['{86F46084-16A8-4B5C-99E9-F848216788F0}']
    property Xc: Double dispid 1;
    property Yc: Double dispid 2;
    property Radius: Double dispid 3;
    property Height: Double dispid 4;
    property Width: Double dispid 5;
    property ShelfDirection: ksShelfDirectionEnum dispid 6;
    property ShelfX: Double dispid 7;
    property ShelfY: Double dispid 8;
    property Form: ksContourFormEnum dispid 9;
    property TextUp: IText readonly dispid 10;
    property TextDown: IText readonly dispid 11;
    property DrawingObjectType: DrawingObjectTypeEnum readonly dispid 3000;
    property LayerNumber: Integer dispid 3001;
    property Temp: WordBool readonly dispid 3002;
    property Valid: WordBool readonly dispid 3003;
    function Update: WordBool; dispid 3004;
    function Delete: WordBool; dispid 3005;
    property DrawingObjectParamType: ksDrawingObjectParamTypeEnum dispid 3006;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IUnitMarkings
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {969AD901-FC09-47F5-94F5-1ABEB1A9C85C}
// *********************************************************************//
  IUnitMarkings = interface(IDrawingObjects)
    ['{969AD901-FC09-47F5-94F5-1ABEB1A9C85C}']
    function Get_UnitMarking(Index: OleVariant): IUnitMarking; safecall;
    function Add: IUnitMarking; safecall;
    property UnitMarking[Index: OleVariant]: IUnitMarking read Get_UnitMarking;
  end;

// *********************************************************************//
// DispIntf:  IUnitMarkingsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {969AD901-FC09-47F5-94F5-1ABEB1A9C85C}
// *********************************************************************//
  IUnitMarkingsDisp = dispinterface
    ['{969AD901-FC09-47F5-94F5-1ABEB1A9C85C}']
    property UnitMarking[Index: OleVariant]: IUnitMarking readonly dispid 1;
    function Add: IUnitMarking; dispid 2;
    property Item[Index: OleVariant]: IDrawingObject readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IBuildingContainer
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {FD1FD236-F5BA-4FB0-A872-21FC13E6895F}
// *********************************************************************//
  IBuildingContainer = interface(IDispatch)
    ['{FD1FD236-F5BA-4FB0-A872-21FC13E6895F}']
    function Get_BuildingAxes: IBuildingAxes; safecall;
    function Get_Marks: IMarks; safecall;
    function Get_CutUnitMarkings: ICutUnitMarkings; safecall;
    function Get_UnitMarkings: IUnitMarkings; safecall;
    function Get_MultiTextLeaders: IMultiTextLeaders; safecall;
    function Get_UnitNumbers: IUnitNumbers; safecall;
    function Get_Braces: IBraces; safecall;
    property BuildingAxes: IBuildingAxes read Get_BuildingAxes;
    property Marks: IMarks read Get_Marks;
    property CutUnitMarkings: ICutUnitMarkings read Get_CutUnitMarkings;
    property UnitMarkings: IUnitMarkings read Get_UnitMarkings;
    property MultiTextLeaders: IMultiTextLeaders read Get_MultiTextLeaders;
    property UnitNumbers: IUnitNumbers read Get_UnitNumbers;
    property Braces: IBraces read Get_Braces;
  end;

// *********************************************************************//
// DispIntf:  IBuildingContainerDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {FD1FD236-F5BA-4FB0-A872-21FC13E6895F}
// *********************************************************************//
  IBuildingContainerDisp = dispinterface
    ['{FD1FD236-F5BA-4FB0-A872-21FC13E6895F}']
    property BuildingAxes: IBuildingAxes readonly dispid 5501;
    property Marks: IMarks readonly dispid 5502;
    property CutUnitMarkings: ICutUnitMarkings readonly dispid 5503;
    property UnitMarkings: IUnitMarkings readonly dispid 5504;
    property MultiTextLeaders: IMultiTextLeaders readonly dispid 5505;
    property UnitNumbers: IUnitNumbers readonly dispid 5506;
    property Braces: IBraces readonly dispid 5507;
  end;

// *********************************************************************//
// Interface: IMultiTextLeaders
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {233B2298-7A45-4CE1-AEF2-30B063FDB63C}
// *********************************************************************//
  IMultiTextLeaders = interface(IDrawingObjects)
    ['{233B2298-7A45-4CE1-AEF2-30B063FDB63C}']
    function Get_MultiTextLeader(Index: OleVariant): IMultiTextLeader; safecall;
    function Add: IMultiTextLeader; safecall;
    property MultiTextLeader[Index: OleVariant]: IMultiTextLeader read Get_MultiTextLeader;
  end;

// *********************************************************************//
// DispIntf:  IMultiTextLeadersDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {233B2298-7A45-4CE1-AEF2-30B063FDB63C}
// *********************************************************************//
  IMultiTextLeadersDisp = dispinterface
    ['{233B2298-7A45-4CE1-AEF2-30B063FDB63C}']
    property MultiTextLeader[Index: OleVariant]: IMultiTextLeader readonly dispid 1;
    function Add: IMultiTextLeader; dispid 2;
    property Item[Index: OleVariant]: IDrawingObject readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IMultiTextLeader
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {1BFC5D3F-1483-4569-B4B5-7A12163A4655}
// *********************************************************************//
  IMultiTextLeader = interface(IDrawingObject)
    ['{1BFC5D3F-1483-4569-B4B5-7A12163A4655}']
    function Get_ArrowType: ksArrowEnum; safecall;
    procedure Set_ArrowType(Result: ksArrowEnum); safecall;
    function Get_BranchCount: Integer; safecall;
    procedure Set_BranchPoints(Index: Integer; PVal: OleVariant); safecall;
    function Get_BranchPoints(Index: Integer): OleVariant; safecall;
    function Get_BranchPointsCount(Index: Integer): Integer; safecall;
    procedure Set_BranchX(Index: Integer; PVal: Double); safecall;
    function Get_BranchX(Index: Integer): Double; safecall;
    procedure Set_BranchY(Index: Integer; PVal: Double); safecall;
    function Get_BranchY(Index: Integer): Double; safecall;
    function AddBranch(Index: Integer; Points: OleVariant): WordBool; safecall;
    function AddBranchByPoint(Index: Integer; X: Double; Y: Double): WordBool; safecall;
    function DeleteBranch(Index: Integer): WordBool; safecall;
    function Get_ShelfX: Double; safecall;
    procedure Set_ShelfX(Result: Double); safecall;
    function Get_ShelfY: Double; safecall;
    procedure Set_ShelfY(Result: Double); safecall;
    function Get_ShelfDirection: ksShelfDirectionEnum; safecall;
    procedure Set_ShelfDirection(Result: ksShelfDirectionEnum); safecall;
    function Get_TextDirection: WordBool; safecall;
    procedure Set_TextDirection(Result: WordBool); safecall;
    function Get_Form: WordBool; safecall;
    procedure Set_Form(Result: WordBool); safecall;
    function Get_Align: WordBool; safecall;
    procedure Set_Align(Result: WordBool); safecall;
    function Get_Text: IText; safecall;
    property ArrowType: ksArrowEnum read Get_ArrowType write Set_ArrowType;
    property BranchCount: Integer read Get_BranchCount;
    property BranchPoints[Index: Integer]: OleVariant read Get_BranchPoints write Set_BranchPoints;
    property BranchPointsCount[Index: Integer]: Integer read Get_BranchPointsCount;
    property BranchX[Index: Integer]: Double read Get_BranchX write Set_BranchX;
    property BranchY[Index: Integer]: Double read Get_BranchY write Set_BranchY;
    property ShelfX: Double read Get_ShelfX write Set_ShelfX;
    property ShelfY: Double read Get_ShelfY write Set_ShelfY;
    property ShelfDirection: ksShelfDirectionEnum read Get_ShelfDirection write Set_ShelfDirection;
    property TextDirection: WordBool read Get_TextDirection write Set_TextDirection;
    property Form: WordBool read Get_Form write Set_Form;
    property Align: WordBool read Get_Align write Set_Align;
    property Text: IText read Get_Text;
  end;

// *********************************************************************//
// DispIntf:  IMultiTextLeaderDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {1BFC5D3F-1483-4569-B4B5-7A12163A4655}
// *********************************************************************//
  IMultiTextLeaderDisp = dispinterface
    ['{1BFC5D3F-1483-4569-B4B5-7A12163A4655}']
    property ArrowType: ksArrowEnum dispid 1;
    property BranchCount: Integer readonly dispid 2;
    property BranchPoints[Index: Integer]: OleVariant dispid 3;
    property BranchPointsCount[Index: Integer]: Integer readonly dispid 4;
    property BranchX[Index: Integer]: Double dispid 5;
    property BranchY[Index: Integer]: Double dispid 6;
    function AddBranch(Index: Integer; Points: OleVariant): WordBool; dispid 7;
    function AddBranchByPoint(Index: Integer; X: Double; Y: Double): WordBool; dispid 8;
    function DeleteBranch(Index: Integer): WordBool; dispid 9;
    property ShelfX: Double dispid 10;
    property ShelfY: Double dispid 11;
    property ShelfDirection: ksShelfDirectionEnum dispid 12;
    property TextDirection: WordBool dispid 13;
    property Form: WordBool dispid 14;
    property Align: WordBool dispid 15;
    property Text: IText readonly dispid 16;
    property DrawingObjectType: DrawingObjectTypeEnum readonly dispid 3000;
    property LayerNumber: Integer dispid 3001;
    property Temp: WordBool readonly dispid 3002;
    property Valid: WordBool readonly dispid 3003;
    function Update: WordBool; dispid 3004;
    function Delete: WordBool; dispid 3005;
    property DrawingObjectParamType: ksDrawingObjectParamTypeEnum dispid 3006;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IUnitNumbers
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {598E649B-970C-454B-9162-1BB6C9FBFCBF}
// *********************************************************************//
  IUnitNumbers = interface(IDrawingObjects)
    ['{598E649B-970C-454B-9162-1BB6C9FBFCBF}']
    function Get_UnitNumber(Index: OleVariant): IUnitNumber; safecall;
    function Add: IUnitNumber; safecall;
    property UnitNumber[Index: OleVariant]: IUnitNumber read Get_UnitNumber;
  end;

// *********************************************************************//
// DispIntf:  IUnitNumbersDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {598E649B-970C-454B-9162-1BB6C9FBFCBF}
// *********************************************************************//
  IUnitNumbersDisp = dispinterface
    ['{598E649B-970C-454B-9162-1BB6C9FBFCBF}']
    property UnitNumber[Index: OleVariant]: IUnitNumber readonly dispid 1;
    function Add: IUnitNumber; dispid 2;
    property Item[Index: OleVariant]: IDrawingObject readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IUnitNumber
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {FABAF607-CB92-47C4-9409-B7678162051D}
// *********************************************************************//
  IUnitNumber = interface(IDrawingObject)
    ['{FABAF607-CB92-47C4-9409-B7678162051D}']
    function Get_X: Double; safecall;
    procedure Set_X(Result: Double); safecall;
    function Get_Y: Double; safecall;
    procedure Set_Y(Result: Double); safecall;
    function Get_TextUp: IText; safecall;
    function Get_TextDown: IText; safecall;
    property X: Double read Get_X write Set_X;
    property Y: Double read Get_Y write Set_Y;
    property TextUp: IText read Get_TextUp;
    property TextDown: IText read Get_TextDown;
  end;

// *********************************************************************//
// DispIntf:  IUnitNumberDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {FABAF607-CB92-47C4-9409-B7678162051D}
// *********************************************************************//
  IUnitNumberDisp = dispinterface
    ['{FABAF607-CB92-47C4-9409-B7678162051D}']
    property X: Double dispid 1;
    property Y: Double dispid 2;
    property TextUp: IText readonly dispid 3;
    property TextDown: IText readonly dispid 4;
    property DrawingObjectType: DrawingObjectTypeEnum readonly dispid 3000;
    property LayerNumber: Integer dispid 3001;
    property Temp: WordBool readonly dispid 3002;
    property Valid: WordBool readonly dispid 3003;
    function Update: WordBool; dispid 3004;
    function Delete: WordBool; dispid 3005;
    property DrawingObjectParamType: ksDrawingObjectParamTypeEnum dispid 3006;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IBraces
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {99F27BD6-6294-45D9-AF78-A9D52E9DD799}
// *********************************************************************//
  IBraces = interface(IDrawingObjects)
    ['{99F27BD6-6294-45D9-AF78-A9D52E9DD799}']
    function Get_Brace(Index: OleVariant): IBrace; safecall;
    function Add: IBrace; safecall;
    property Brace[Index: OleVariant]: IBrace read Get_Brace;
  end;

// *********************************************************************//
// DispIntf:  IBracesDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {99F27BD6-6294-45D9-AF78-A9D52E9DD799}
// *********************************************************************//
  IBracesDisp = dispinterface
    ['{99F27BD6-6294-45D9-AF78-A9D52E9DD799}']
    property Brace[Index: OleVariant]: IBrace readonly dispid 1;
    function Add: IBrace; dispid 2;
    property Item[Index: OleVariant]: IDrawingObject readonly dispid 0; default;
    property _NewEnum: IUnknown readonly dispid -4;
    property Count: Integer readonly dispid 2000;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: IBrace
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {7F328D28-76E9-4E04-A35C-AD60339998E4}
// *********************************************************************//
  IBrace = interface(IDrawingObject)
    ['{7F328D28-76E9-4E04-A35C-AD60339998E4}']
    procedure Set_X1(PVal: Double); safecall;
    function Get_X1: Double; safecall;
    procedure Set_Y1(PVal: Double); safecall;
    function Get_Y1: Double; safecall;
    procedure Set_X2(PVal: Double); safecall;
    function Get_X2: Double; safecall;
    procedure Set_Y2(PVal: Double); safecall;
    function Get_Y2: Double; safecall;
    procedure Set_Length(PVal: Double); safecall;
    function Get_Length: Double; safecall;
    procedure Set_Angle(PVal: Double); safecall;
    function Get_Angle: Double; safecall;
    function Get_Radius: Double; safecall;
    procedure Set_Radius(Result: Double); safecall;
    function Get_ShelfDirection: ksShelfDirectionEnum; safecall;
    procedure Set_ShelfDirection(Result: ksShelfDirectionEnum); safecall;
    function Get_ShelfX: Double; safecall;
    procedure Set_ShelfX(Result: Double); safecall;
    function Get_ShelfY: Double; safecall;
    procedure Set_ShelfY(Result: Double); safecall;
    function Get_Direction: WordBool; safecall;
    procedure Set_Direction(Result: WordBool); safecall;
    function Get_Alignment: ksAlignmentTypeEnum; safecall;
    procedure Set_Alignment(Result: ksAlignmentTypeEnum); safecall;
    function Get_Style: Integer; safecall;
    procedure Set_Style(Result: Integer); safecall;
    function Get_Text: IText; safecall;
    property X1: Double read Get_X1 write Set_X1;
    property Y1: Double read Get_Y1 write Set_Y1;
    property X2: Double read Get_X2 write Set_X2;
    property Y2: Double read Get_Y2 write Set_Y2;
    property Length: Double read Get_Length write Set_Length;
    property Angle: Double read Get_Angle write Set_Angle;
    property Radius: Double read Get_Radius write Set_Radius;
    property ShelfDirection: ksShelfDirectionEnum read Get_ShelfDirection write Set_ShelfDirection;
    property ShelfX: Double read Get_ShelfX write Set_ShelfX;
    property ShelfY: Double read Get_ShelfY write Set_ShelfY;
    property Direction: WordBool read Get_Direction write Set_Direction;
    property Alignment: ksAlignmentTypeEnum read Get_Alignment write Set_Alignment;
    property Style: Integer read Get_Style write Set_Style;
    property Text: IText read Get_Text;
  end;

// *********************************************************************//
// DispIntf:  IBraceDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {7F328D28-76E9-4E04-A35C-AD60339998E4}
// *********************************************************************//
  IBraceDisp = dispinterface
    ['{7F328D28-76E9-4E04-A35C-AD60339998E4}']
    property X1: Double dispid 1;
    property Y1: Double dispid 2;
    property X2: Double dispid 3;
    property Y2: Double dispid 4;
    property Length: Double dispid 5;
    property Angle: Double dispid 6;
    property Radius: Double dispid 7;
    property ShelfDirection: ksShelfDirectionEnum dispid 8;
    property ShelfX: Double dispid 9;
    property ShelfY: Double dispid 10;
    property Direction: WordBool dispid 11;
    property Alignment: ksAlignmentTypeEnum dispid 12;
    property Style: Integer dispid 13;
    property Text: IText readonly dispid 14;
    property DrawingObjectType: DrawingObjectTypeEnum readonly dispid 3000;
    property LayerNumber: Integer dispid 3001;
    property Temp: WordBool readonly dispid 3002;
    property Valid: WordBool readonly dispid 3003;
    function Update: WordBool; dispid 3004;
    function Delete: WordBool; dispid 3005;
    property DrawingObjectParamType: ksDrawingObjectParamTypeEnum dispid 3006;
    property Parent: IKompasAPIObject readonly dispid 1000;
    property Application: IApplication readonly dispid 1001;
    property type_: KompasAPIObjectTypeEnum readonly dispid 1002;
    property Reference: Integer readonly dispid 1003;
  end;

// *********************************************************************//
// Interface: ISourcePart7Params
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {C9E03A9B-0A54-49AC-9397-8DE4465A8D1D}
// *********************************************************************//
  ISourcePart7Params = interface(IDispatch)
    ['{C9E03A9B-0A54-49AC-9397-8DE4465A8D1D}']
    function Get_SourceName: WideString; safecall;
    procedure Set_SourceName(const PVal: WideString); safecall;
    function Get_SourceMarking: WideString; safecall;
    procedure Set_SourceMarking(const PVal: WideString); safecall;
    function Get_DocumentAuthor: WideString; safecall;
    procedure Set_DocumentAuthor(const PVal: WideString); safecall;
    function Get_DocumentComment: OleVariant; safecall;
    procedure Set_DocumentComment(PVal: OleVariant); safecall;
    property SourceName: WideString read Get_SourceName write Set_SourceName;
    property SourceMarking: WideString read Get_SourceMarking write Set_SourceMarking;
    property DocumentAuthor: WideString read Get_DocumentAuthor write Set_DocumentAuthor;
    property DocumentComment: OleVariant read Get_DocumentComment write Set_DocumentComment;
  end;

// *********************************************************************//
// DispIntf:  ISourcePart7ParamsDisp
// Flags:     (4544) Dual NonExtensible OleAutomation Dispatchable
// GUID:      {C9E03A9B-0A54-49AC-9397-8DE4465A8D1D}
// *********************************************************************//
  ISourcePart7ParamsDisp = dispinterface
    ['{C9E03A9B-0A54-49AC-9397-8DE4465A8D1D}']
    property SourceName: WideString dispid 12001;
    property SourceMarking: WideString dispid 12002;
    property DocumentAuthor: WideString dispid 12003;
    property DocumentComment: OleVariant dispid 12004;
  end;

// *********************************************************************//
// The Class CoKompasDocument provides a Create and CreateRemote method to          
// create instances of the default interface IKompasDocument exposed by              
// the CoClass KompasDocument. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoKompasDocument = class
    class function Create: IKompasDocument;
    class function CreateRemote(const MachineName: string): IKompasDocument;
  end;

// *********************************************************************//
// The Class Co_Application provides a Create and CreateRemote method to          
// create instances of the default interface IApplication exposed by              
// the CoClass _Application. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  Co_Application = class
    class function Create: IApplication;
    class function CreateRemote(const MachineName: string): IApplication;
  end;

// *********************************************************************//
// The Class CoDocuments provides a Create and CreateRemote method to          
// create instances of the default interface IDocuments exposed by              
// the CoClass Documents. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDocuments = class
    class function Create: IDocuments;
    class function CreateRemote(const MachineName: string): IDocuments;
  end;

// *********************************************************************//
// The Class CoDocumentFrame provides a Create and CreateRemote method to          
// create instances of the default interface IDocumentFrame exposed by              
// the CoClass DocumentFrame. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDocumentFrame = class
    class function Create: IDocumentFrame;
    class function CreateRemote(const MachineName: string): IDocumentFrame;
  end;

// *********************************************************************//
// The Class CoDocumentFrames provides a Create and CreateRemote method to          
// create instances of the default interface IDocumentFrames exposed by              
// the CoClass DocumentFrames. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDocumentFrames = class
    class function Create: IDocumentFrames;
    class function CreateRemote(const MachineName: string): IDocumentFrames;
  end;

// *********************************************************************//
// The Class CoProcessParam provides a Create and CreateRemote method to          
// create instances of the default interface IProcessParam exposed by              
// the CoClass ProcessParam. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoProcessParam = class
    class function Create: IProcessParam;
    class function CreateRemote(const MachineName: string): IProcessParam;
  end;

// *********************************************************************//
// The Class CoPropertyControls provides a Create and CreateRemote method to          
// create instances of the default interface IPropertyControls exposed by              
// the CoClass PropertyControls. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPropertyControls = class
    class function Create: IPropertyControls;
    class function CreateRemote(const MachineName: string): IPropertyControls;
  end;

// *********************************************************************//
// The Class CoPropertyTab provides a Create and CreateRemote method to          
// create instances of the default interface IPropertyTab exposed by              
// the CoClass PropertyTab. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPropertyTab = class
    class function Create: IPropertyTab;
    class function CreateRemote(const MachineName: string): IPropertyTab;
  end;

// *********************************************************************//
// The Class CoPropertyTabs provides a Create and CreateRemote method to          
// create instances of the default interface IPropertyTabs exposed by              
// the CoClass PropertyTabs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPropertyTabs = class
    class function Create: IPropertyTabs;
    class function CreateRemote(const MachineName: string): IPropertyTabs;
  end;

// *********************************************************************//
// The Class CoPropertyEdit provides a Create and CreateRemote method to          
// create instances of the default interface IPropertyEdit exposed by              
// the CoClass PropertyEdit. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPropertyEdit = class
    class function Create: IPropertyEdit;
    class function CreateRemote(const MachineName: string): IPropertyEdit;
  end;

// *********************************************************************//
// The Class CoPropertySeparator provides a Create and CreateRemote method to          
// create instances of the default interface IPropertySeparator exposed by              
// the CoClass PropertySeparator. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPropertySeparator = class
    class function Create: IPropertySeparator;
    class function CreateRemote(const MachineName: string): IPropertySeparator;
  end;

// *********************************************************************//
// The Class CoPropertyList provides a Create and CreateRemote method to          
// create instances of the default interface IPropertyList exposed by              
// the CoClass PropertyList. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPropertyList = class
    class function Create: IPropertyList;
    class function CreateRemote(const MachineName: string): IPropertyList;
  end;

// *********************************************************************//
// The Class CoPropertyCheckBox provides a Create and CreateRemote method to          
// create instances of the default interface IPropertyCheckBox exposed by              
// the CoClass PropertyCheckBox. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPropertyCheckBox = class
    class function Create: IPropertyCheckBox;
    class function CreateRemote(const MachineName: string): IPropertyCheckBox;
  end;

// *********************************************************************//
// The Class CoPropertyMultiButton provides a Create and CreateRemote method to          
// create instances of the default interface IPropertyMultiButton exposed by              
// the CoClass PropertyMultiButton. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPropertyMultiButton = class
    class function Create: IPropertyMultiButton;
    class function CreateRemote(const MachineName: string): IPropertyMultiButton;
  end;

// *********************************************************************//
// The Class CoPropertySlideBox provides a Create and CreateRemote method to          
// create instances of the default interface IPropertySlideBox exposed by              
// the CoClass PropertySlideBox. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPropertySlideBox = class
    class function Create: IPropertySlideBox;
    class function CreateRemote(const MachineName: string): IPropertySlideBox;
  end;

// *********************************************************************//
// The Class CoPropertyUserControl provides a Create and CreateRemote method to          
// create instances of the default interface IPropertyUserControl exposed by              
// the CoClass PropertyUserControl. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPropertyUserControl = class
    class function Create: IPropertyUserControl;
    class function CreateRemote(const MachineName: string): IPropertyUserControl;
  end;

// *********************************************************************//
// The Class CoPropertyGrid provides a Create and CreateRemote method to          
// create instances of the default interface IPropertyGrid exposed by              
// the CoClass PropertyGrid. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPropertyGrid = class
    class function Create: IPropertyGrid;
    class function CreateRemote(const MachineName: string): IPropertyGrid;
  end;

// *********************************************************************//
// The Class CoPropertyManager provides a Create and CreateRemote method to          
// create instances of the default interface IPropertyManager exposed by              
// the CoClass PropertyManager. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPropertyManager = class
    class function Create: IPropertyManager;
    class function CreateRemote(const MachineName: string): IPropertyManager;
  end;

// *********************************************************************//
// The Class CoKompasDocument3D provides a Create and CreateRemote method to          
// create instances of the default interface IKompasDocument3D exposed by              
// the CoClass KompasDocument3D. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoKompasDocument3D = class
    class function Create: IKompasDocument3D;
    class function CreateRemote(const MachineName: string): IKompasDocument3D;
  end;

// *********************************************************************//
// The Class CoDrawingDocument provides a Create and CreateRemote method to          
// create instances of the default interface IDrawingDocument exposed by              
// the CoClass DrawingDocument. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDrawingDocument = class
    class function Create: IDrawingDocument;
    class function CreateRemote(const MachineName: string): IDrawingDocument;
  end;

// *********************************************************************//
// The Class CoFragmentDocument provides a Create and CreateRemote method to          
// create instances of the default interface IFragmentDocument exposed by              
// the CoClass FragmentDocument. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoFragmentDocument = class
    class function Create: IFragmentDocument;
    class function CreateRemote(const MachineName: string): IFragmentDocument;
  end;

// *********************************************************************//
// The Class CoSpecificationDocument provides a Create and CreateRemote method to          
// create instances of the default interface ISpecificationDocument exposed by              
// the CoClass SpecificationDocument. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSpecificationDocument = class
    class function Create: ISpecificationDocument;
    class function CreateRemote(const MachineName: string): ISpecificationDocument;
  end;

// *********************************************************************//
// The Class CoTextDocument provides a Create and CreateRemote method to          
// create instances of the default interface ITextDocument exposed by              
// the CoClass TextDocument. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTextDocument = class
    class function Create: ITextDocument;
    class function CreateRemote(const MachineName: string): ITextDocument;
  end;

// *********************************************************************//
// The Class CoPartDocument provides a Create and CreateRemote method to          
// create instances of the default interface IPartDocument exposed by              
// the CoClass PartDocument. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPartDocument = class
    class function Create: IPartDocument;
    class function CreateRemote(const MachineName: string): IPartDocument;
  end;

// *********************************************************************//
// The Class CoAssemblyDocument provides a Create and CreateRemote method to          
// create instances of the default interface IAssemblyDocument exposed by              
// the CoClass AssemblyDocument. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAssemblyDocument = class
    class function Create: IAssemblyDocument;
    class function CreateRemote(const MachineName: string): IAssemblyDocument;
  end;

// *********************************************************************//
// The Class CoPropertyTextButton provides a Create and CreateRemote method to          
// create instances of the default interface IPropertyTextButton exposed by              
// the CoClass PropertyTextButton. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPropertyTextButton = class
    class function Create: IPropertyTextButton;
    class function CreateRemote(const MachineName: string): IPropertyTextButton;
  end;

// *********************************************************************//
// The Class CoPropertySpinEdit provides a Create and CreateRemote method to          
// create instances of the default interface IPropertySpinEdit exposed by              
// the CoClass PropertySpinEdit. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPropertySpinEdit = class
    class function Create: IPropertySpinEdit;
    class function CreateRemote(const MachineName: string): IPropertySpinEdit;
  end;

// *********************************************************************//
// The Class CoViewsAndLayersManager provides a Create and CreateRemote method to          
// create instances of the default interface IViewsAndLayersManager exposed by              
// the CoClass ViewsAndLayersManager. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoViewsAndLayersManager = class
    class function Create: IViewsAndLayersManager;
    class function CreateRemote(const MachineName: string): IViewsAndLayersManager;
  end;

// *********************************************************************//
// The Class CoDrawingObject provides a Create and CreateRemote method to          
// create instances of the default interface IDrawingObject exposed by              
// the CoClass DrawingObject. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDrawingObject = class
    class function Create: IDrawingObject;
    class function CreateRemote(const MachineName: string): IDrawingObject;
  end;

// *********************************************************************//
// The Class CoDrawingObjects provides a Create and CreateRemote method to          
// create instances of the default interface IDrawingObjects exposed by              
// the CoClass DrawingObjects. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDrawingObjects = class
    class function Create: IDrawingObjects;
    class function CreateRemote(const MachineName: string): IDrawingObjects;
  end;

// *********************************************************************//
// The Class CoViews provides a Create and CreateRemote method to          
// create instances of the default interface IViews exposed by              
// the CoClass Views. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoViews = class
    class function Create: IViews;
    class function CreateRemote(const MachineName: string): IViews;
  end;

// *********************************************************************//
// The Class CoView provides a Create and CreateRemote method to          
// create instances of the default interface IView exposed by              
// the CoClass View. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoView = class
    class function Create: IView;
    class function CreateRemote(const MachineName: string): IView;
  end;

// *********************************************************************//
// The Class CoAssociationView provides a Create and CreateRemote method to          
// create instances of the default interface IAssociationView exposed by              
// the CoClass AssociationView. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAssociationView = class
    class function Create: IAssociationView;
    class function CreateRemote(const MachineName: string): IAssociationView;
  end;

// *********************************************************************//
// The Class CoLayerGroups provides a Create and CreateRemote method to          
// create instances of the default interface ILayerGroups exposed by              
// the CoClass LayerGroups. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLayerGroups = class
    class function Create: ILayerGroups;
    class function CreateRemote(const MachineName: string): ILayerGroups;
  end;

// *********************************************************************//
// The Class CoLayerGroup provides a Create and CreateRemote method to          
// create instances of the default interface ILayerGroup exposed by              
// the CoClass LayerGroup. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLayerGroup = class
    class function Create: ILayerGroup;
    class function CreateRemote(const MachineName: string): ILayerGroup;
  end;

// *********************************************************************//
// The Class CoLayers provides a Create and CreateRemote method to          
// create instances of the default interface ILayers exposed by              
// the CoClass Layers. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLayers = class
    class function Create: ILayers;
    class function CreateRemote(const MachineName: string): ILayers;
  end;

// *********************************************************************//
// The Class CoLayer provides a Create and CreateRemote method to          
// create instances of the default interface ILayer exposed by              
// the CoClass Layer. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLayer = class
    class function Create: ILayer;
    class function CreateRemote(const MachineName: string): ILayer;
  end;

// *********************************************************************//
// The Class CoLayerFilterCondition provides a Create and CreateRemote method to          
// create instances of the default interface ILayerFilterCondition exposed by              
// the CoClass LayerFilterCondition. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLayerFilterCondition = class
    class function Create: ILayerFilterCondition;
    class function CreateRemote(const MachineName: string): ILayerFilterCondition;
  end;

// *********************************************************************//
// The Class CoLayerFilterConditions provides a Create and CreateRemote method to          
// create instances of the default interface ILayerFilterConditions exposed by              
// the CoClass LayerFilterConditions. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLayerFilterConditions = class
    class function Create: ILayerFilterConditions;
    class function CreateRemote(const MachineName: string): ILayerFilterConditions;
  end;

// *********************************************************************//
// The Class CoDocumentSettings provides a Create and CreateRemote method to          
// create instances of the default interface IDocumentSettings exposed by              
// the CoClass DocumentSettings. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDocumentSettings = class
    class function Create: IDocumentSettings;
    class function CreateRemote(const MachineName: string): IDocumentSettings;
  end;

// *********************************************************************//
// The Class CoDocument2DSettings provides a Create and CreateRemote method to          
// create instances of the default interface IDocument2DSettings exposed by              
// the CoClass Document2DSettings. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDocument2DSettings = class
    class function Create: IDocument2DSettings;
    class function CreateRemote(const MachineName: string): IDocument2DSettings;
  end;

// *********************************************************************//
// The Class CoDrawingDocumentSettings provides a Create and CreateRemote method to          
// create instances of the default interface IDrawingDocumentSettings exposed by              
// the CoClass DrawingDocumentSettings. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDrawingDocumentSettings = class
    class function Create: IDrawingDocumentSettings;
    class function CreateRemote(const MachineName: string): IDrawingDocumentSettings;
  end;

// *********************************************************************//
// The Class CoFragmentDocumentSettings provides a Create and CreateRemote method to          
// create instances of the default interface IFragmentDocumentSettings exposed by              
// the CoClass FragmentDocumentSettings. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoFragmentDocumentSettings = class
    class function Create: IFragmentDocumentSettings;
    class function CreateRemote(const MachineName: string): IFragmentDocumentSettings;
  end;

// *********************************************************************//
// The Class CoLibraryManager provides a Create and CreateRemote method to          
// create instances of the default interface ILibraryManager exposed by              
// the CoClass LibraryManager. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLibraryManager = class
    class function Create: ILibraryManager;
    class function CreateRemote(const MachineName: string): ILibraryManager;
  end;

// *********************************************************************//
// The Class CoProceduresLibrary provides a Create and CreateRemote method to          
// create instances of the default interface IProceduresLibrary exposed by              
// the CoClass ProceduresLibrary. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoProceduresLibrary = class
    class function Create: IProceduresLibrary;
    class function CreateRemote(const MachineName: string): IProceduresLibrary;
  end;

// *********************************************************************//
// The Class CoProcedures provides a Create and CreateRemote method to          
// create instances of the default interface IProcedures exposed by              
// the CoClass Procedures. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoProcedures = class
    class function Create: IProcedures;
    class function CreateRemote(const MachineName: string): IProcedures;
  end;

// *********************************************************************//
// The Class CoProcedure_ provides a Create and CreateRemote method to          
// create instances of the default interface IProcedure exposed by              
// the CoClass Procedure_. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoProcedure_ = class
    class function Create: IProcedure;
    class function CreateRemote(const MachineName: string): IProcedure;
  end;

// *********************************************************************//
// The Class CoInsertsLibrary provides a Create and CreateRemote method to          
// create instances of the default interface IInsertsLibrary exposed by              
// the CoClass InsertsLibrary. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoInsertsLibrary = class
    class function Create: IInsertsLibrary;
    class function CreateRemote(const MachineName: string): IInsertsLibrary;
  end;

// *********************************************************************//
// The Class CoInserts provides a Create and CreateRemote method to          
// create instances of the default interface IInserts exposed by              
// the CoClass Inserts. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoInserts = class
    class function Create: IInserts;
    class function CreateRemote(const MachineName: string): IInserts;
  end;

// *********************************************************************//
// The Class CoInsert provides a Create and CreateRemote method to          
// create instances of the default interface IInsert exposed by              
// the CoClass Insert. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoInsert = class
    class function Create: IInsert;
    class function CreateRemote(const MachineName: string): IInsert;
  end;

// *********************************************************************//
// The Class CoInsertsLibraries provides a Create and CreateRemote method to          
// create instances of the default interface IInsertsLibraries exposed by              
// the CoClass InsertsLibraries. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoInsertsLibraries = class
    class function Create: IInsertsLibraries;
    class function CreateRemote(const MachineName: string): IInsertsLibraries;
  end;

// *********************************************************************//
// The Class CoProceduresLibraries provides a Create and CreateRemote method to          
// create instances of the default interface IProceduresLibraries exposed by              
// the CoClass ProceduresLibraries. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoProceduresLibraries = class
    class function Create: IProceduresLibraries;
    class function CreateRemote(const MachineName: string): IProceduresLibraries;
  end;

// *********************************************************************//
// The Class CoSpecificationDescriptions provides a Create and CreateRemote method to          
// create instances of the default interface ISpecificationDescriptions exposed by              
// the CoClass SpecificationDescriptions. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSpecificationDescriptions = class
    class function Create: ISpecificationDescriptions;
    class function CreateRemote(const MachineName: string): ISpecificationDescriptions;
  end;

// *********************************************************************//
// The Class CoSpecificationDescription provides a Create and CreateRemote method to          
// create instances of the default interface ISpecificationDescription exposed by              
// the CoClass SpecificationDescription. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSpecificationDescription = class
    class function Create: ISpecificationDescription;
    class function CreateRemote(const MachineName: string): ISpecificationDescription;
  end;

// *********************************************************************//
// The Class CoSpecificationStyle provides a Create and CreateRemote method to          
// create instances of the default interface ISpecificationStyle exposed by              
// the CoClass SpecificationStyle. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSpecificationStyle = class
    class function Create: ISpecificationStyle;
    class function CreateRemote(const MachineName: string): ISpecificationStyle;
  end;

// *********************************************************************//
// The Class CoSpecificationColumnStyles provides a Create and CreateRemote method to          
// create instances of the default interface ISpecificationColumnStyles exposed by              
// the CoClass SpecificationColumnStyles. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSpecificationColumnStyles = class
    class function Create: ISpecificationColumnStyles;
    class function CreateRemote(const MachineName: string): ISpecificationColumnStyles;
  end;

// *********************************************************************//
// The Class CoSpecificationColumnStyle provides a Create and CreateRemote method to          
// create instances of the default interface ISpecificationColumnStyle exposed by              
// the CoClass SpecificationColumnStyle. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSpecificationColumnStyle = class
    class function Create: ISpecificationColumnStyle;
    class function CreateRemote(const MachineName: string): ISpecificationColumnStyle;
  end;

// *********************************************************************//
// The Class CoSpecificationSectionStyles provides a Create and CreateRemote method to          
// create instances of the default interface ISpecificationSectionStyles exposed by              
// the CoClass SpecificationSectionStyles. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSpecificationSectionStyles = class
    class function Create: ISpecificationSectionStyles;
    class function CreateRemote(const MachineName: string): ISpecificationSectionStyles;
  end;

// *********************************************************************//
// The Class CoSpecificationSectionStyle provides a Create and CreateRemote method to          
// create instances of the default interface ISpecificationSectionStyle exposed by              
// the CoClass SpecificationSectionStyle. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSpecificationSectionStyle = class
    class function Create: ISpecificationSectionStyle;
    class function CreateRemote(const MachineName: string): ISpecificationSectionStyle;
  end;

// *********************************************************************//
// The Class CoAdditionalBlockStyles provides a Create and CreateRemote method to          
// create instances of the default interface IAdditionalBlockStyles exposed by              
// the CoClass AdditionalBlockStyles. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAdditionalBlockStyles = class
    class function Create: IAdditionalBlockStyles;
    class function CreateRemote(const MachineName: string): IAdditionalBlockStyles;
  end;

// *********************************************************************//
// The Class CoAdditionalBlockStyle provides a Create and CreateRemote method to          
// create instances of the default interface IAdditionalBlockStyle exposed by              
// the CoClass AdditionalBlockStyle. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAdditionalBlockStyle = class
    class function Create: IAdditionalBlockStyle;
    class function CreateRemote(const MachineName: string): IAdditionalBlockStyle;
  end;

// *********************************************************************//
// The Class CoSheetFormat provides a Create and CreateRemote method to          
// create instances of the default interface ISheetFormat exposed by              
// the CoClass SheetFormat. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSheetFormat = class
    class function Create: ISheetFormat;
    class function CreateRemote(const MachineName: string): ISheetFormat;
  end;

// *********************************************************************//
// The Class CoSpecificationTuning provides a Create and CreateRemote method to          
// create instances of the default interface ISpecificationTuning exposed by              
// the CoClass SpecificationTuning. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSpecificationTuning = class
    class function Create: ISpecificationTuning;
    class function CreateRemote(const MachineName: string): ISpecificationTuning;
  end;

// *********************************************************************//
// The Class CoSpecificationTuningSections provides a Create and CreateRemote method to          
// create instances of the default interface ISpecificationTuningSections exposed by              
// the CoClass SpecificationTuningSections. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSpecificationTuningSections = class
    class function Create: ISpecificationTuningSections;
    class function CreateRemote(const MachineName: string): ISpecificationTuningSections;
  end;

// *********************************************************************//
// The Class CoSpecificationTuningSection provides a Create and CreateRemote method to          
// create instances of the default interface ISpecificationTuningSection exposed by              
// the CoClass SpecificationTuningSection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSpecificationTuningSection = class
    class function Create: ISpecificationTuningSection;
    class function CreateRemote(const MachineName: string): ISpecificationTuningSection;
  end;

// *********************************************************************//
// The Class CoSpecificationSubsections provides a Create and CreateRemote method to          
// create instances of the default interface ISpecificationSubsections exposed by              
// the CoClass SpecificationSubsections. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSpecificationSubsections = class
    class function Create: ISpecificationSubsections;
    class function CreateRemote(const MachineName: string): ISpecificationSubsections;
  end;

// *********************************************************************//
// The Class CoSpecificationSubsection provides a Create and CreateRemote method to          
// create instances of the default interface ISpecificationSubsection exposed by              
// the CoClass SpecificationSubsection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSpecificationSubsection = class
    class function Create: ISpecificationSubsection;
    class function CreateRemote(const MachineName: string): ISpecificationSubsection;
  end;

// *********************************************************************//
// The Class CoAdditionalBlockTunings provides a Create and CreateRemote method to          
// create instances of the default interface IAdditionalBlockTunings exposed by              
// the CoClass AdditionalBlockTunings. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAdditionalBlockTunings = class
    class function Create: IAdditionalBlockTunings;
    class function CreateRemote(const MachineName: string): IAdditionalBlockTunings;
  end;

// *********************************************************************//
// The Class CoAdditionalBlockTuning provides a Create and CreateRemote method to          
// create instances of the default interface IAdditionalBlockTuning exposed by              
// the CoClass AdditionalBlockTuning. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAdditionalBlockTuning = class
    class function Create: IAdditionalBlockTuning;
    class function CreateRemote(const MachineName: string): IAdditionalBlockTuning;
  end;

// *********************************************************************//
// The Class CoAdditionalBlockSectionTunings provides a Create and CreateRemote method to          
// create instances of the default interface IAdditionalBlockSectionTunings exposed by              
// the CoClass AdditionalBlockSectionTunings. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAdditionalBlockSectionTunings = class
    class function Create: IAdditionalBlockSectionTunings;
    class function CreateRemote(const MachineName: string): IAdditionalBlockSectionTunings;
  end;

// *********************************************************************//
// The Class CoAdditionalBlockSectionTuning provides a Create and CreateRemote method to          
// create instances of the default interface IAdditionalBlockSectionTuning exposed by              
// the CoClass AdditionalBlockSectionTuning. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAdditionalBlockSectionTuning = class
    class function Create: IAdditionalBlockSectionTuning;
    class function CreateRemote(const MachineName: string): IAdditionalBlockSectionTuning;
  end;

// *********************************************************************//
// The Class CoTextFont provides a Create and CreateRemote method to          
// create instances of the default interface ITextFont exposed by              
// the CoClass TextFont. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTextFont = class
    class function Create: ITextFont;
    class function CreateRemote(const MachineName: string): ITextFont;
  end;

// *********************************************************************//
// The Class CoTextStyle provides a Create and CreateRemote method to          
// create instances of the default interface ITextStyle exposed by              
// the CoClass TextStyle. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTextStyle = class
    class function Create: ITextStyle;
    class function CreateRemote(const MachineName: string): ITextStyle;
  end;

// *********************************************************************//
// The Class CoTabulators provides a Create and CreateRemote method to          
// create instances of the default interface ITabulators exposed by              
// the CoClass Tabulators. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTabulators = class
    class function Create: ITabulators;
    class function CreateRemote(const MachineName: string): ITabulators;
  end;

// *********************************************************************//
// The Class CoTabulator provides a Create and CreateRemote method to          
// create instances of the default interface ITabulator exposed by              
// the CoClass Tabulator. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTabulator = class
    class function Create: ITabulator;
    class function CreateRemote(const MachineName: string): ITabulator;
  end;

// *********************************************************************//
// The Class CoKompasError provides a Create and CreateRemote method to          
// create instances of the default interface IKompasError exposed by              
// the CoClass KompasError. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoKompasError = class
    class function Create: IKompasError;
    class function CreateRemote(const MachineName: string): IKompasError;
  end;

// *********************************************************************//
// The Class CoSpecificationBaseObjects provides a Create and CreateRemote method to          
// create instances of the default interface ISpecificationBaseObjects exposed by              
// the CoClass SpecificationBaseObjects. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSpecificationBaseObjects = class
    class function Create: ISpecificationBaseObjects;
    class function CreateRemote(const MachineName: string): ISpecificationBaseObjects;
  end;

// *********************************************************************//
// The Class CoSpecificationCommentObjects provides a Create and CreateRemote method to          
// create instances of the default interface ISpecificationCommentObjects exposed by              
// the CoClass SpecificationCommentObjects. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSpecificationCommentObjects = class
    class function Create: ISpecificationCommentObjects;
    class function CreateRemote(const MachineName: string): ISpecificationCommentObjects;
  end;

// *********************************************************************//
// The Class CoSpecificationObject provides a Create and CreateRemote method to          
// create instances of the default interface ISpecificationObject exposed by              
// the CoClass SpecificationObject. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSpecificationObject = class
    class function Create: ISpecificationObject;
    class function CreateRemote(const MachineName: string): ISpecificationObject;
  end;

// *********************************************************************//
// The Class CoSpecificationBaseObject provides a Create and CreateRemote method to          
// create instances of the default interface ISpecificationBaseObject exposed by              
// the CoClass SpecificationBaseObject. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSpecificationBaseObject = class
    class function Create: ISpecificationBaseObject;
    class function CreateRemote(const MachineName: string): ISpecificationBaseObject;
  end;

// *********************************************************************//
// The Class CoSpecificationCommentObject provides a Create and CreateRemote method to          
// create instances of the default interface ISpecificationCommentObject exposed by              
// the CoClass SpecificationCommentObject. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSpecificationCommentObject = class
    class function Create: ISpecificationCommentObject;
    class function CreateRemote(const MachineName: string): ISpecificationCommentObject;
  end;

// *********************************************************************//
// The Class CoSpecificationColumns provides a Create and CreateRemote method to          
// create instances of the default interface ISpecificationColumns exposed by              
// the CoClass SpecificationColumns. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSpecificationColumns = class
    class function Create: ISpecificationColumns;
    class function CreateRemote(const MachineName: string): ISpecificationColumns;
  end;

// *********************************************************************//
// The Class CoSpecificationColumn provides a Create and CreateRemote method to          
// create instances of the default interface ISpecificationColumn exposed by              
// the CoClass SpecificationColumn. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSpecificationColumn = class
    class function Create: ISpecificationColumn;
    class function CreateRemote(const MachineName: string): ISpecificationColumn;
  end;

// *********************************************************************//
// The Class CoSpecificationColumnItems provides a Create and CreateRemote method to          
// create instances of the default interface ISpecificationColumnItems exposed by              
// the CoClass SpecificationColumnItems. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSpecificationColumnItems = class
    class function Create: ISpecificationColumnItems;
    class function CreateRemote(const MachineName: string): ISpecificationColumnItems;
  end;

// *********************************************************************//
// The Class CoSpecificationColumnItem provides a Create and CreateRemote method to          
// create instances of the default interface ISpecificationColumnItem exposed by              
// the CoClass SpecificationColumnItem. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSpecificationColumnItem = class
    class function Create: ISpecificationColumnItem;
    class function CreateRemote(const MachineName: string): ISpecificationColumnItem;
  end;

// *********************************************************************//
// The Class CoAttachedDocuments provides a Create and CreateRemote method to          
// create instances of the default interface IAttachedDocuments exposed by              
// the CoClass AttachedDocuments. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAttachedDocuments = class
    class function Create: IAttachedDocuments;
    class function CreateRemote(const MachineName: string): IAttachedDocuments;
  end;

// *********************************************************************//
// The Class CoAttachedDocument provides a Create and CreateRemote method to          
// create instances of the default interface IAttachedDocument exposed by              
// the CoClass AttachedDocument. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAttachedDocument = class
    class function Create: IAttachedDocument;
    class function CreateRemote(const MachineName: string): IAttachedDocument;
  end;

// *********************************************************************//
// The Class CoPropertyFileName provides a Create and CreateRemote method to          
// create instances of the default interface IPropertyFileName exposed by              
// the CoClass PropertyFileName. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPropertyFileName = class
    class function Create: IPropertyFileName;
    class function CreateRemote(const MachineName: string): IPropertyFileName;
  end;

// *********************************************************************//
// The Class CoPropertyColor provides a Create and CreateRemote method to          
// create instances of the default interface IPropertyColor exposed by              
// the CoClass PropertyColor. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPropertyColor = class
    class function Create: IPropertyColor;
    class function CreateRemote(const MachineName: string): IPropertyColor;
  end;

// *********************************************************************//
// The Class CoLayoutSheets provides a Create and CreateRemote method to          
// create instances of the default interface ILayoutSheets exposed by              
// the CoClass LayoutSheets. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLayoutSheets = class
    class function Create: ILayoutSheets;
    class function CreateRemote(const MachineName: string): ILayoutSheets;
  end;

// *********************************************************************//
// The Class CoLayoutSheet provides a Create and CreateRemote method to          
// create instances of the default interface ILayoutSheet exposed by              
// the CoClass LayoutSheet. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLayoutSheet = class
    class function Create: ILayoutSheet;
    class function CreateRemote(const MachineName: string): ILayoutSheet;
  end;

// *********************************************************************//
// The Class CoConverter provides a Create and CreateRemote method to          
// create instances of the default interface IConverter exposed by              
// the CoClass Converter. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoConverter = class
    class function Create: IConverter;
    class function CreateRemote(const MachineName: string): IConverter;
  end;

// *********************************************************************//
// The Class CoCheckSum provides a Create and CreateRemote method to          
// create instances of the default interface ICheckSum exposed by              
// the CoClass CheckSum. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCheckSum = class
    class function Create: ICheckSum;
    class function CreateRemote(const MachineName: string): ICheckSum;
  end;

// *********************************************************************//
// The Class CoModelObject provides a Create and CreateRemote method to          
// create instances of the default interface IModelObject exposed by              
// the CoClass ModelObject. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoModelObject = class
    class function Create: IModelObject;
    class function CreateRemote(const MachineName: string): IModelObject;
  end;

// *********************************************************************//
// The Class CoModelObjects provides a Create and CreateRemote method to          
// create instances of the default interface IModelObjects exposed by              
// the CoClass ModelObjects. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoModelObjects = class
    class function Create: IModelObjects;
    class function CreateRemote(const MachineName: string): IModelObjects;
  end;

// *********************************************************************//
// The Class CoParts7 provides a Create and CreateRemote method to          
// create instances of the default interface IParts7 exposed by              
// the CoClass Parts7. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoParts7 = class
    class function Create: IParts7;
    class function CreateRemote(const MachineName: string): IParts7;
  end;

// *********************************************************************//
// The Class CoPart7 provides a Create and CreateRemote method to          
// create instances of the default interface IPart7 exposed by              
// the CoClass Part7. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPart7 = class
    class function Create: IPart7;
    class function CreateRemote(const MachineName: string): IPart7;
  end;

// *********************************************************************//
// The Class CoSketchs provides a Create and CreateRemote method to          
// create instances of the default interface ISketchs exposed by              
// the CoClass Sketchs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSketchs = class
    class function Create: ISketchs;
    class function CreateRemote(const MachineName: string): ISketchs;
  end;

// *********************************************************************//
// The Class CoExtrusions provides a Create and CreateRemote method to          
// create instances of the default interface IExtrusions exposed by              
// the CoClass Extrusions. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoExtrusions = class
    class function Create: IExtrusions;
    class function CreateRemote(const MachineName: string): IExtrusions;
  end;

// *********************************************************************//
// The Class CoVariableTable provides a Create and CreateRemote method to          
// create instances of the default interface IVariableTable exposed by              
// the CoClass VariableTable. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoVariableTable = class
    class function Create: IVariableTable;
    class function CreateRemote(const MachineName: string): IVariableTable;
  end;

// *********************************************************************//
// The Class CoProgressBarIndicator provides a Create and CreateRemote method to          
// create instances of the default interface IProgressBarIndicator exposed by              
// the CoClass ProgressBarIndicator. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoProgressBarIndicator = class
    class function Create: IProgressBarIndicator;
    class function CreateRemote(const MachineName: string): IProgressBarIndicator;
  end;

// *********************************************************************//
// The Class CoText provides a Create and CreateRemote method to          
// create instances of the default interface IText exposed by              
// the CoClass Text. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoText = class
    class function Create: IText;
    class function CreateRemote(const MachineName: string): IText;
  end;

// *********************************************************************//
// The Class CoTextLine provides a Create and CreateRemote method to          
// create instances of the default interface ITextLine exposed by              
// the CoClass TextLine. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTextLine = class
    class function Create: ITextLine;
    class function CreateRemote(const MachineName: string): ITextLine;
  end;

// *********************************************************************//
// The Class CoTextItem provides a Create and CreateRemote method to          
// create instances of the default interface ITextItem exposed by              
// the CoClass TextItem. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTextItem = class
    class function Create: ITextItem;
    class function CreateRemote(const MachineName: string): ITextItem;
  end;

// *********************************************************************//
// The Class CoDrawingText provides a Create and CreateRemote method to          
// create instances of the default interface IDrawingText exposed by              
// the CoClass DrawingText. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDrawingText = class
    class function Create: IDrawingText;
    class function CreateRemote(const MachineName: string): IDrawingText;
  end;

// *********************************************************************//
// The Class CoDrawingTexts provides a Create and CreateRemote method to          
// create instances of the default interface IDrawingTexts exposed by              
// the CoClass DrawingTexts. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDrawingTexts = class
    class function Create: IDrawingTexts;
    class function CreateRemote(const MachineName: string): IDrawingTexts;
  end;

// *********************************************************************//
// The Class CoMarks provides a Create and CreateRemote method to          
// create instances of the default interface IMarks exposed by              
// the CoClass Marks. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMarks = class
    class function Create: IMarks;
    class function CreateRemote(const MachineName: string): IMarks;
  end;

// *********************************************************************//
// The Class CoMarkInsideForm provides a Create and CreateRemote method to          
// create instances of the default interface IMarkInsideForm exposed by              
// the CoClass MarkInsideForm. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMarkInsideForm = class
    class function Create: IMarkInsideForm;
    class function CreateRemote(const MachineName: string): IMarkInsideForm;
  end;

// *********************************************************************//
// The Class CoMarkOnLine provides a Create and CreateRemote method to          
// create instances of the default interface IMarkOnLine exposed by              
// the CoClass MarkOnLine. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMarkOnLine = class
    class function Create: IMarkOnLine;
    class function CreateRemote(const MachineName: string): IMarkOnLine;
  end;

// *********************************************************************//
// The Class CoMarkOnLeader provides a Create and CreateRemote method to          
// create instances of the default interface IMarkOnLeader exposed by              
// the CoClass MarkOnLeader. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMarkOnLeader = class
    class function Create: IMarkOnLeader;
    class function CreateRemote(const MachineName: string): IMarkOnLeader;
  end;

// *********************************************************************//
// The Class CoUserDataStoragesMng provides a Create and CreateRemote method to          
// create instances of the default interface IUserDataStoragesMng exposed by              
// the CoClass UserDataStoragesMng. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoUserDataStoragesMng = class
    class function Create: IUserDataStoragesMng;
    class function CreateRemote(const MachineName: string): IUserDataStoragesMng;
  end;

// *********************************************************************//
// The Class CoUserDataStorages provides a Create and CreateRemote method to          
// create instances of the default interface IUserDataStorages exposed by              
// the CoClass UserDataStorages. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoUserDataStorages = class
    class function Create: IUserDataStorages;
    class function CreateRemote(const MachineName: string): IUserDataStorages;
  end;

// *********************************************************************//
// The Class CoUserDataStorage provides a Create and CreateRemote method to          
// create instances of the default interface IUserDataStorage exposed by              
// the CoClass UserDataStorage. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoUserDataStorage = class
    class function Create: IUserDataStorage;
    class function CreateRemote(const MachineName: string): IUserDataStorage;
  end;

// *********************************************************************//
// The Class CoBuildingAxes provides a Create and CreateRemote method to          
// create instances of the default interface IBuildingAxes exposed by              
// the CoClass BuildingAxes. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBuildingAxes = class
    class function Create: IBuildingAxes;
    class function CreateRemote(const MachineName: string): IBuildingAxes;
  end;

// *********************************************************************//
// The Class CoStraightAxis provides a Create and CreateRemote method to          
// create instances of the default interface IStraightAxis exposed by              
// the CoClass StraightAxis. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoStraightAxis = class
    class function Create: IStraightAxis;
    class function CreateRemote(const MachineName: string): IStraightAxis;
  end;

// *********************************************************************//
// The Class CoArcAxis provides a Create and CreateRemote method to          
// create instances of the default interface IArcAxis exposed by              
// the CoClass ArcAxis. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoArcAxis = class
    class function Create: IArcAxis;
    class function CreateRemote(const MachineName: string): IArcAxis;
  end;

// *********************************************************************//
// The Class CoCircleAxis provides a Create and CreateRemote method to          
// create instances of the default interface ICircleAxis exposed by              
// the CoClass CircleAxis. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCircleAxis = class
    class function Create: ICircleAxis;
    class function CreateRemote(const MachineName: string): ICircleAxis;
  end;

// *********************************************************************//
// The Class CoAxisJut provides a Create and CreateRemote method to          
// create instances of the default interface IAxisJut exposed by              
// the CoClass AxisJut. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAxisJut = class
    class function Create: IAxisJut;
    class function CreateRemote(const MachineName: string): IAxisJut;
  end;

// *********************************************************************//
// The Class CoMarkNodes provides a Create and CreateRemote method to          
// create instances of the default interface IMarkNodes exposed by              
// the CoClass MarkNodes. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMarkNodes = class
    class function Create: IMarkNodes;
    class function CreateRemote(const MachineName: string): IMarkNodes;
  end;

// *********************************************************************//
// The Class CoMarkNode provides a Create and CreateRemote method to          
// create instances of the default interface IMarkNode exposed by              
// the CoClass MarkNode. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMarkNode = class
    class function Create: IMarkNode;
    class function CreateRemote(const MachineName: string): IMarkNode;
  end;

// *********************************************************************//
// The Class CoLineSegments provides a Create and CreateRemote method to          
// create instances of the default interface ILineSegments exposed by              
// the CoClass LineSegments. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLineSegments = class
    class function Create: ILineSegments;
    class function CreateRemote(const MachineName: string): ILineSegments;
  end;

// *********************************************************************//
// The Class CoLineSegment provides a Create and CreateRemote method to          
// create instances of the default interface ILineSegment exposed by              
// the CoClass LineSegment. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLineSegment = class
    class function Create: ILineSegment;
    class function CreateRemote(const MachineName: string): ILineSegment;
  end;

// *********************************************************************//
// The Class CoSystemSettings provides a Create and CreateRemote method to          
// create instances of the default interface ISystemSettings exposed by              
// the CoClass SystemSettings. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSystemSettings = class
    class function Create: ISystemSettings;
    class function CreateRemote(const MachineName: string): ISystemSettings;
  end;

// *********************************************************************//
// The Class CoCutUnitMarking provides a Create and CreateRemote method to          
// create instances of the default interface ICutUnitMarking exposed by              
// the CoClass CutUnitMarking. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCutUnitMarking = class
    class function Create: ICutUnitMarking;
    class function CreateRemote(const MachineName: string): ICutUnitMarking;
  end;

// *********************************************************************//
// The Class CoCutUnitMarkings provides a Create and CreateRemote method to          
// create instances of the default interface ICutUnitMarkings exposed by              
// the CoClass CutUnitMarkings. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCutUnitMarkings = class
    class function Create: ICutUnitMarkings;
    class function CreateRemote(const MachineName: string): ICutUnitMarkings;
  end;

// *********************************************************************//
// The Class CoUnitMarking provides a Create and CreateRemote method to          
// create instances of the default interface IUnitMarking exposed by              
// the CoClass UnitMarking. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoUnitMarking = class
    class function Create: IUnitMarking;
    class function CreateRemote(const MachineName: string): IUnitMarking;
  end;

// *********************************************************************//
// The Class CoUnitMarkings provides a Create and CreateRemote method to          
// create instances of the default interface IUnitMarkings exposed by              
// the CoClass UnitMarkings. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoUnitMarkings = class
    class function Create: IUnitMarkings;
    class function CreateRemote(const MachineName: string): IUnitMarkings;
  end;

// *********************************************************************//
// The Class CoArcs provides a Create and CreateRemote method to          
// create instances of the default interface IArcs exposed by              
// the CoClass Arcs. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoArcs = class
    class function Create: IArcs;
    class function CreateRemote(const MachineName: string): IArcs;
  end;

// *********************************************************************//
// The Class Co_Arc provides a Create and CreateRemote method to          
// create instances of the default interface IArc exposed by              
// the CoClass _Arc. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  Co_Arc = class
    class function Create: IArc;
    class function CreateRemote(const MachineName: string): IArc;
  end;

// *********************************************************************//
// The Class CoMultiTextLeader provides a Create and CreateRemote method to          
// create instances of the default interface IMultiTextLeader exposed by              
// the CoClass MultiTextLeader. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMultiTextLeader = class
    class function Create: IMultiTextLeader;
    class function CreateRemote(const MachineName: string): IMultiTextLeader;
  end;

// *********************************************************************//
// The Class CoMultiTextLeaders provides a Create and CreateRemote method to          
// create instances of the default interface IMultiTextLeaders exposed by              
// the CoClass MultiTextLeaders. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMultiTextLeaders = class
    class function Create: IMultiTextLeaders;
    class function CreateRemote(const MachineName: string): IMultiTextLeaders;
  end;

// *********************************************************************//
// The Class CoBrace provides a Create and CreateRemote method to          
// create instances of the default interface IBrace exposed by              
// the CoClass Brace. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBrace = class
    class function Create: IBrace;
    class function CreateRemote(const MachineName: string): IBrace;
  end;

// *********************************************************************//
// The Class CoBraces provides a Create and CreateRemote method to          
// create instances of the default interface IBraces exposed by              
// the CoClass Braces. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBraces = class
    class function Create: IBraces;
    class function CreateRemote(const MachineName: string): IBraces;
  end;

// *********************************************************************//
// The Class CoUnitNumber provides a Create and CreateRemote method to          
// create instances of the default interface IUnitNumber exposed by              
// the CoClass UnitNumber. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoUnitNumber = class
    class function Create: IUnitNumber;
    class function CreateRemote(const MachineName: string): IUnitNumber;
  end;

// *********************************************************************//
// The Class CoUnitNumbers provides a Create and CreateRemote method to          
// create instances of the default interface IUnitNumbers exposed by              
// the CoClass UnitNumbers. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoUnitNumbers = class
    class function Create: IUnitNumbers;
    class function CreateRemote(const MachineName: string): IUnitNumbers;
  end;

// *********************************************************************//
// The Class CoSketch provides a Create and CreateRemote method to          
// create instances of the default interface ISketch exposed by              
// the CoClass Sketch. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSketch = class
    class function Create: ISketch;
    class function CreateRemote(const MachineName: string): ISketch;
  end;

// *********************************************************************//
// The Class CoExtrusion provides a Create and CreateRemote method to          
// create instances of the default interface IExtrusion exposed by              
// the CoClass Extrusion. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoExtrusion = class
    class function Create: IExtrusion;
    class function CreateRemote(const MachineName: string): IExtrusion;
  end;

// *********************************************************************//
// The Class CoParametriticConstraint provides a Create and CreateRemote method to          
// create instances of the default interface IParametriticConstraint exposed by              
// the CoClass ParametriticConstraint. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoParametriticConstraint = class
    class function Create: IParametriticConstraint;
    class function CreateRemote(const MachineName: string): IParametriticConstraint;
  end;

// *********************************************************************//
// The Class CoCutExtrusion provides a Create and CreateRemote method to          
// create instances of the default interface ICutExtrusion exposed by              
// the CoClass CutExtrusion. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCutExtrusion = class
    class function Create: ICutExtrusion;
    class function CreateRemote(const MachineName: string): ICutExtrusion;
  end;

// *********************************************************************//
// The Class CoBody7 provides a Create and CreateRemote method to          
// create instances of the default interface IBody7 exposed by              
// the CoClass Body7. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBody7 = class
    class function Create: IBody7;
    class function CreateRemote(const MachineName: string): IBody7;
  end;

// *********************************************************************//
// The Class CoSheetMetalBodies provides a Create and CreateRemote method to          
// create instances of the default interface ISheetMetalBodies exposed by              
// the CoClass SheetMetalBodies. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSheetMetalBodies = class
    class function Create: ISheetMetalBodies;
    class function CreateRemote(const MachineName: string): ISheetMetalBodies;
  end;

// *********************************************************************//
// The Class CoSheetMetalBody provides a Create and CreateRemote method to          
// create instances of the default interface ISheetMetalBody exposed by              
// the CoClass SheetMetalBody. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSheetMetalBody = class
    class function Create: ISheetMetalBody;
    class function CreateRemote(const MachineName: string): ISheetMetalBody;
  end;

// *********************************************************************//
// The Class CoPoints3D provides a Create and CreateRemote method to          
// create instances of the default interface IPoints3D exposed by              
// the CoClass Points3D. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPoints3D = class
    class function Create: IPoints3D;
    class function CreateRemote(const MachineName: string): IPoints3D;
  end;

// *********************************************************************//
// The Class CoPoint3D provides a Create and CreateRemote method to          
// create instances of the default interface IPoint3D exposed by              
// the CoClass Point3D. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPoint3D = class
    class function Create: IPoint3D;
    class function CreateRemote(const MachineName: string): IPoint3D;
  end;

// *********************************************************************//
// The Class CoPoint3DParamDisplace provides a Create and CreateRemote method to          
// create instances of the default interface IPoint3DParamDisplace exposed by              
// the CoClass Point3DParamDisplace. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPoint3DParamDisplace = class
    class function Create: IPoint3DParamDisplace;
    class function CreateRemote(const MachineName: string): IPoint3DParamDisplace;
  end;

// *********************************************************************//
// The Class CoPoint3DParamIntersect provides a Create and CreateRemote method to          
// create instances of the default interface IPoint3DParamIntersect exposed by              
// the CoClass Point3DParamIntersect. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPoint3DParamIntersect = class
    class function Create: IPoint3DParamIntersect;
    class function CreateRemote(const MachineName: string): IPoint3DParamIntersect;
  end;

// *********************************************************************//
// The Class CoPoint3DParamCenter provides a Create and CreateRemote method to          
// create instances of the default interface IPoint3DParamCenter exposed by              
// the CoClass Point3DParamCenter. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPoint3DParamCenter = class
    class function Create: IPoint3DParamCenter;
    class function CreateRemote(const MachineName: string): IPoint3DParamCenter;
  end;

// *********************************************************************//
// The Class CoPoint3DParamCurve provides a Create and CreateRemote method to          
// create instances of the default interface IPoint3DParamCurve exposed by              
// the CoClass Point3DParamCurve. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPoint3DParamCurve = class
    class function Create: IPoint3DParamCurve;
    class function CreateRemote(const MachineName: string): IPoint3DParamCurve;
  end;

// *********************************************************************//
// The Class CoPoint3DParamSurface provides a Create and CreateRemote method to          
// create instances of the default interface IPoint3DParamSurface exposed by              
// the CoClass Point3DParamSurface. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPoint3DParamSurface = class
    class function Create: IPoint3DParamSurface;
    class function CreateRemote(const MachineName: string): IPoint3DParamSurface;
  end;

// *********************************************************************//
// The Class CoPoint3DParamProjection provides a Create and CreateRemote method to          
// create instances of the default interface IPoint3DParamProjection exposed by              
// the CoClass Point3DParamProjection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPoint3DParamProjection = class
    class function Create: IPoint3DParamProjection;
    class function CreateRemote(const MachineName: string): IPoint3DParamProjection;
  end;

// *********************************************************************//
// The Class CoSheetMetalBends provides a Create and CreateRemote method to          
// create instances of the default interface ISheetMetalBends exposed by              
// the CoClass SheetMetalBends. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSheetMetalBends = class
    class function Create: ISheetMetalBends;
    class function CreateRemote(const MachineName: string): ISheetMetalBends;
  end;

// *********************************************************************//
// The Class CoSheetMetalBend provides a Create and CreateRemote method to          
// create instances of the default interface ISheetMetalBend exposed by              
// the CoClass SheetMetalBend. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSheetMetalBend = class
    class function Create: ISheetMetalBend;
    class function CreateRemote(const MachineName: string): ISheetMetalBend;
  end;

// *********************************************************************//
// The Class CoSheetMetalLineBends provides a Create and CreateRemote method to          
// create instances of the default interface ISheetMetalLineBends exposed by              
// the CoClass SheetMetalLineBends. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSheetMetalLineBends = class
    class function Create: ISheetMetalLineBends;
    class function CreateRemote(const MachineName: string): ISheetMetalLineBends;
  end;

// *********************************************************************//
// The Class CoSheetMetalLineBend provides a Create and CreateRemote method to          
// create instances of the default interface ISheetMetalLineBend exposed by              
// the CoClass SheetMetalLineBend. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSheetMetalLineBend = class
    class function Create: ISheetMetalLineBend;
    class function CreateRemote(const MachineName: string): ISheetMetalLineBend;
  end;

// *********************************************************************//
// The Class CoSheetMetalHole provides a Create and CreateRemote method to          
// create instances of the default interface ISheetMetalHole exposed by              
// the CoClass SheetMetalHole. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSheetMetalHole = class
    class function Create: ISheetMetalHole;
    class function CreateRemote(const MachineName: string): ISheetMetalHole;
  end;

// *********************************************************************//
// The Class CoSheetMetalHoles provides a Create and CreateRemote method to          
// create instances of the default interface ISheetMetalHoles exposed by              
// the CoClass SheetMetalHoles. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSheetMetalHoles = class
    class function Create: ISheetMetalHoles;
    class function CreateRemote(const MachineName: string): ISheetMetalHoles;
  end;

// *********************************************************************//
// The Class CoSheetMetalCut provides a Create and CreateRemote method to          
// create instances of the default interface ISheetMetalCut exposed by              
// the CoClass SheetMetalCut. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSheetMetalCut = class
    class function Create: ISheetMetalCut;
    class function CreateRemote(const MachineName: string): ISheetMetalCut;
  end;

// *********************************************************************//
// The Class CoSheetMetalCuts provides a Create and CreateRemote method to          
// create instances of the default interface ISheetMetalCuts exposed by              
// the CoClass SheetMetalCuts. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSheetMetalCuts = class
    class function Create: ISheetMetalCuts;
    class function CreateRemote(const MachineName: string): ISheetMetalCuts;
  end;

implementation

uses ComObj;

class function CoKompasDocument.Create: IKompasDocument;
begin
  Result := CreateComObject(CLASS_KompasDocument) as IKompasDocument;
end;

class function CoKompasDocument.CreateRemote(const MachineName: string): IKompasDocument;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_KompasDocument) as IKompasDocument;
end;

class function Co_Application.Create: IApplication;
begin
  Result := CreateComObject(CLASS__Application) as IApplication;
end;

class function Co_Application.CreateRemote(const MachineName: string): IApplication;
begin
  Result := CreateRemoteComObject(MachineName, CLASS__Application) as IApplication;
end;

class function CoDocuments.Create: IDocuments;
begin
  Result := CreateComObject(CLASS_Documents) as IDocuments;
end;

class function CoDocuments.CreateRemote(const MachineName: string): IDocuments;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Documents) as IDocuments;
end;

class function CoDocumentFrame.Create: IDocumentFrame;
begin
  Result := CreateComObject(CLASS_DocumentFrame) as IDocumentFrame;
end;

class function CoDocumentFrame.CreateRemote(const MachineName: string): IDocumentFrame;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DocumentFrame) as IDocumentFrame;
end;

class function CoDocumentFrames.Create: IDocumentFrames;
begin
  Result := CreateComObject(CLASS_DocumentFrames) as IDocumentFrames;
end;

class function CoDocumentFrames.CreateRemote(const MachineName: string): IDocumentFrames;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DocumentFrames) as IDocumentFrames;
end;

class function CoProcessParam.Create: IProcessParam;
begin
  Result := CreateComObject(CLASS_ProcessParam) as IProcessParam;
end;

class function CoProcessParam.CreateRemote(const MachineName: string): IProcessParam;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ProcessParam) as IProcessParam;
end;

class function CoPropertyControls.Create: IPropertyControls;
begin
  Result := CreateComObject(CLASS_PropertyControls) as IPropertyControls;
end;

class function CoPropertyControls.CreateRemote(const MachineName: string): IPropertyControls;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PropertyControls) as IPropertyControls;
end;

class function CoPropertyTab.Create: IPropertyTab;
begin
  Result := CreateComObject(CLASS_PropertyTab) as IPropertyTab;
end;

class function CoPropertyTab.CreateRemote(const MachineName: string): IPropertyTab;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PropertyTab) as IPropertyTab;
end;

class function CoPropertyTabs.Create: IPropertyTabs;
begin
  Result := CreateComObject(CLASS_PropertyTabs) as IPropertyTabs;
end;

class function CoPropertyTabs.CreateRemote(const MachineName: string): IPropertyTabs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PropertyTabs) as IPropertyTabs;
end;

class function CoPropertyEdit.Create: IPropertyEdit;
begin
  Result := CreateComObject(CLASS_PropertyEdit) as IPropertyEdit;
end;

class function CoPropertyEdit.CreateRemote(const MachineName: string): IPropertyEdit;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PropertyEdit) as IPropertyEdit;
end;

class function CoPropertySeparator.Create: IPropertySeparator;
begin
  Result := CreateComObject(CLASS_PropertySeparator) as IPropertySeparator;
end;

class function CoPropertySeparator.CreateRemote(const MachineName: string): IPropertySeparator;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PropertySeparator) as IPropertySeparator;
end;

class function CoPropertyList.Create: IPropertyList;
begin
  Result := CreateComObject(CLASS_PropertyList) as IPropertyList;
end;

class function CoPropertyList.CreateRemote(const MachineName: string): IPropertyList;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PropertyList) as IPropertyList;
end;

class function CoPropertyCheckBox.Create: IPropertyCheckBox;
begin
  Result := CreateComObject(CLASS_PropertyCheckBox) as IPropertyCheckBox;
end;

class function CoPropertyCheckBox.CreateRemote(const MachineName: string): IPropertyCheckBox;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PropertyCheckBox) as IPropertyCheckBox;
end;

class function CoPropertyMultiButton.Create: IPropertyMultiButton;
begin
  Result := CreateComObject(CLASS_PropertyMultiButton) as IPropertyMultiButton;
end;

class function CoPropertyMultiButton.CreateRemote(const MachineName: string): IPropertyMultiButton;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PropertyMultiButton) as IPropertyMultiButton;
end;

class function CoPropertySlideBox.Create: IPropertySlideBox;
begin
  Result := CreateComObject(CLASS_PropertySlideBox) as IPropertySlideBox;
end;

class function CoPropertySlideBox.CreateRemote(const MachineName: string): IPropertySlideBox;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PropertySlideBox) as IPropertySlideBox;
end;

class function CoPropertyUserControl.Create: IPropertyUserControl;
begin
  Result := CreateComObject(CLASS_PropertyUserControl) as IPropertyUserControl;
end;

class function CoPropertyUserControl.CreateRemote(const MachineName: string): IPropertyUserControl;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PropertyUserControl) as IPropertyUserControl;
end;

class function CoPropertyGrid.Create: IPropertyGrid;
begin
  Result := CreateComObject(CLASS_PropertyGrid) as IPropertyGrid;
end;

class function CoPropertyGrid.CreateRemote(const MachineName: string): IPropertyGrid;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PropertyGrid) as IPropertyGrid;
end;

class function CoPropertyManager.Create: IPropertyManager;
begin
  Result := CreateComObject(CLASS_PropertyManager) as IPropertyManager;
end;

class function CoPropertyManager.CreateRemote(const MachineName: string): IPropertyManager;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PropertyManager) as IPropertyManager;
end;

class function CoKompasDocument3D.Create: IKompasDocument3D;
begin
  Result := CreateComObject(CLASS_KompasDocument3D) as IKompasDocument3D;
end;

class function CoKompasDocument3D.CreateRemote(const MachineName: string): IKompasDocument3D;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_KompasDocument3D) as IKompasDocument3D;
end;

class function CoDrawingDocument.Create: IDrawingDocument;
begin
  Result := CreateComObject(CLASS_DrawingDocument) as IDrawingDocument;
end;

class function CoDrawingDocument.CreateRemote(const MachineName: string): IDrawingDocument;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DrawingDocument) as IDrawingDocument;
end;

class function CoFragmentDocument.Create: IFragmentDocument;
begin
  Result := CreateComObject(CLASS_FragmentDocument) as IFragmentDocument;
end;

class function CoFragmentDocument.CreateRemote(const MachineName: string): IFragmentDocument;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_FragmentDocument) as IFragmentDocument;
end;

class function CoSpecificationDocument.Create: ISpecificationDocument;
begin
  Result := CreateComObject(CLASS_SpecificationDocument) as ISpecificationDocument;
end;

class function CoSpecificationDocument.CreateRemote(const MachineName: string): ISpecificationDocument;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SpecificationDocument) as ISpecificationDocument;
end;

class function CoTextDocument.Create: ITextDocument;
begin
  Result := CreateComObject(CLASS_TextDocument) as ITextDocument;
end;

class function CoTextDocument.CreateRemote(const MachineName: string): ITextDocument;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TextDocument) as ITextDocument;
end;

class function CoPartDocument.Create: IPartDocument;
begin
  Result := CreateComObject(CLASS_PartDocument) as IPartDocument;
end;

class function CoPartDocument.CreateRemote(const MachineName: string): IPartDocument;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PartDocument) as IPartDocument;
end;

class function CoAssemblyDocument.Create: IAssemblyDocument;
begin
  Result := CreateComObject(CLASS_AssemblyDocument) as IAssemblyDocument;
end;

class function CoAssemblyDocument.CreateRemote(const MachineName: string): IAssemblyDocument;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AssemblyDocument) as IAssemblyDocument;
end;

class function CoPropertyTextButton.Create: IPropertyTextButton;
begin
  Result := CreateComObject(CLASS_PropertyTextButton) as IPropertyTextButton;
end;

class function CoPropertyTextButton.CreateRemote(const MachineName: string): IPropertyTextButton;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PropertyTextButton) as IPropertyTextButton;
end;

class function CoPropertySpinEdit.Create: IPropertySpinEdit;
begin
  Result := CreateComObject(CLASS_PropertySpinEdit) as IPropertySpinEdit;
end;

class function CoPropertySpinEdit.CreateRemote(const MachineName: string): IPropertySpinEdit;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PropertySpinEdit) as IPropertySpinEdit;
end;

class function CoViewsAndLayersManager.Create: IViewsAndLayersManager;
begin
  Result := CreateComObject(CLASS_ViewsAndLayersManager) as IViewsAndLayersManager;
end;

class function CoViewsAndLayersManager.CreateRemote(const MachineName: string): IViewsAndLayersManager;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ViewsAndLayersManager) as IViewsAndLayersManager;
end;

class function CoDrawingObject.Create: IDrawingObject;
begin
  Result := CreateComObject(CLASS_DrawingObject) as IDrawingObject;
end;

class function CoDrawingObject.CreateRemote(const MachineName: string): IDrawingObject;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DrawingObject) as IDrawingObject;
end;

class function CoDrawingObjects.Create: IDrawingObjects;
begin
  Result := CreateComObject(CLASS_DrawingObjects) as IDrawingObjects;
end;

class function CoDrawingObjects.CreateRemote(const MachineName: string): IDrawingObjects;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DrawingObjects) as IDrawingObjects;
end;

class function CoViews.Create: IViews;
begin
  Result := CreateComObject(CLASS_Views) as IViews;
end;

class function CoViews.CreateRemote(const MachineName: string): IViews;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Views) as IViews;
end;

class function CoView.Create: IView;
begin
  Result := CreateComObject(CLASS_View) as IView;
end;

class function CoView.CreateRemote(const MachineName: string): IView;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_View) as IView;
end;

class function CoAssociationView.Create: IAssociationView;
begin
  Result := CreateComObject(CLASS_AssociationView) as IAssociationView;
end;

class function CoAssociationView.CreateRemote(const MachineName: string): IAssociationView;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AssociationView) as IAssociationView;
end;

class function CoLayerGroups.Create: ILayerGroups;
begin
  Result := CreateComObject(CLASS_LayerGroups) as ILayerGroups;
end;

class function CoLayerGroups.CreateRemote(const MachineName: string): ILayerGroups;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_LayerGroups) as ILayerGroups;
end;

class function CoLayerGroup.Create: ILayerGroup;
begin
  Result := CreateComObject(CLASS_LayerGroup) as ILayerGroup;
end;

class function CoLayerGroup.CreateRemote(const MachineName: string): ILayerGroup;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_LayerGroup) as ILayerGroup;
end;

class function CoLayers.Create: ILayers;
begin
  Result := CreateComObject(CLASS_Layers) as ILayers;
end;

class function CoLayers.CreateRemote(const MachineName: string): ILayers;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Layers) as ILayers;
end;

class function CoLayer.Create: ILayer;
begin
  Result := CreateComObject(CLASS_Layer) as ILayer;
end;

class function CoLayer.CreateRemote(const MachineName: string): ILayer;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Layer) as ILayer;
end;

class function CoLayerFilterCondition.Create: ILayerFilterCondition;
begin
  Result := CreateComObject(CLASS_LayerFilterCondition) as ILayerFilterCondition;
end;

class function CoLayerFilterCondition.CreateRemote(const MachineName: string): ILayerFilterCondition;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_LayerFilterCondition) as ILayerFilterCondition;
end;

class function CoLayerFilterConditions.Create: ILayerFilterConditions;
begin
  Result := CreateComObject(CLASS_LayerFilterConditions) as ILayerFilterConditions;
end;

class function CoLayerFilterConditions.CreateRemote(const MachineName: string): ILayerFilterConditions;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_LayerFilterConditions) as ILayerFilterConditions;
end;

class function CoDocumentSettings.Create: IDocumentSettings;
begin
  Result := CreateComObject(CLASS_DocumentSettings) as IDocumentSettings;
end;

class function CoDocumentSettings.CreateRemote(const MachineName: string): IDocumentSettings;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DocumentSettings) as IDocumentSettings;
end;

class function CoDocument2DSettings.Create: IDocument2DSettings;
begin
  Result := CreateComObject(CLASS_Document2DSettings) as IDocument2DSettings;
end;

class function CoDocument2DSettings.CreateRemote(const MachineName: string): IDocument2DSettings;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Document2DSettings) as IDocument2DSettings;
end;

class function CoDrawingDocumentSettings.Create: IDrawingDocumentSettings;
begin
  Result := CreateComObject(CLASS_DrawingDocumentSettings) as IDrawingDocumentSettings;
end;

class function CoDrawingDocumentSettings.CreateRemote(const MachineName: string): IDrawingDocumentSettings;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DrawingDocumentSettings) as IDrawingDocumentSettings;
end;

class function CoFragmentDocumentSettings.Create: IFragmentDocumentSettings;
begin
  Result := CreateComObject(CLASS_FragmentDocumentSettings) as IFragmentDocumentSettings;
end;

class function CoFragmentDocumentSettings.CreateRemote(const MachineName: string): IFragmentDocumentSettings;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_FragmentDocumentSettings) as IFragmentDocumentSettings;
end;

class function CoLibraryManager.Create: ILibraryManager;
begin
  Result := CreateComObject(CLASS_LibraryManager) as ILibraryManager;
end;

class function CoLibraryManager.CreateRemote(const MachineName: string): ILibraryManager;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_LibraryManager) as ILibraryManager;
end;

class function CoProceduresLibrary.Create: IProceduresLibrary;
begin
  Result := CreateComObject(CLASS_ProceduresLibrary) as IProceduresLibrary;
end;

class function CoProceduresLibrary.CreateRemote(const MachineName: string): IProceduresLibrary;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ProceduresLibrary) as IProceduresLibrary;
end;

class function CoProcedures.Create: IProcedures;
begin
  Result := CreateComObject(CLASS_Procedures) as IProcedures;
end;

class function CoProcedures.CreateRemote(const MachineName: string): IProcedures;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Procedures) as IProcedures;
end;

class function CoProcedure_.Create: IProcedure;
begin
  Result := CreateComObject(CLASS_Procedure_) as IProcedure;
end;

class function CoProcedure_.CreateRemote(const MachineName: string): IProcedure;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Procedure_) as IProcedure;
end;

class function CoInsertsLibrary.Create: IInsertsLibrary;
begin
  Result := CreateComObject(CLASS_InsertsLibrary) as IInsertsLibrary;
end;

class function CoInsertsLibrary.CreateRemote(const MachineName: string): IInsertsLibrary;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_InsertsLibrary) as IInsertsLibrary;
end;

class function CoInserts.Create: IInserts;
begin
  Result := CreateComObject(CLASS_Inserts) as IInserts;
end;

class function CoInserts.CreateRemote(const MachineName: string): IInserts;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Inserts) as IInserts;
end;

class function CoInsert.Create: IInsert;
begin
  Result := CreateComObject(CLASS_Insert) as IInsert;
end;

class function CoInsert.CreateRemote(const MachineName: string): IInsert;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Insert) as IInsert;
end;

class function CoInsertsLibraries.Create: IInsertsLibraries;
begin
  Result := CreateComObject(CLASS_InsertsLibraries) as IInsertsLibraries;
end;

class function CoInsertsLibraries.CreateRemote(const MachineName: string): IInsertsLibraries;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_InsertsLibraries) as IInsertsLibraries;
end;

class function CoProceduresLibraries.Create: IProceduresLibraries;
begin
  Result := CreateComObject(CLASS_ProceduresLibraries) as IProceduresLibraries;
end;

class function CoProceduresLibraries.CreateRemote(const MachineName: string): IProceduresLibraries;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ProceduresLibraries) as IProceduresLibraries;
end;

class function CoSpecificationDescriptions.Create: ISpecificationDescriptions;
begin
  Result := CreateComObject(CLASS_SpecificationDescriptions) as ISpecificationDescriptions;
end;

class function CoSpecificationDescriptions.CreateRemote(const MachineName: string): ISpecificationDescriptions;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SpecificationDescriptions) as ISpecificationDescriptions;
end;

class function CoSpecificationDescription.Create: ISpecificationDescription;
begin
  Result := CreateComObject(CLASS_SpecificationDescription) as ISpecificationDescription;
end;

class function CoSpecificationDescription.CreateRemote(const MachineName: string): ISpecificationDescription;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SpecificationDescription) as ISpecificationDescription;
end;

class function CoSpecificationStyle.Create: ISpecificationStyle;
begin
  Result := CreateComObject(CLASS_SpecificationStyle) as ISpecificationStyle;
end;

class function CoSpecificationStyle.CreateRemote(const MachineName: string): ISpecificationStyle;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SpecificationStyle) as ISpecificationStyle;
end;

class function CoSpecificationColumnStyles.Create: ISpecificationColumnStyles;
begin
  Result := CreateComObject(CLASS_SpecificationColumnStyles) as ISpecificationColumnStyles;
end;

class function CoSpecificationColumnStyles.CreateRemote(const MachineName: string): ISpecificationColumnStyles;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SpecificationColumnStyles) as ISpecificationColumnStyles;
end;

class function CoSpecificationColumnStyle.Create: ISpecificationColumnStyle;
begin
  Result := CreateComObject(CLASS_SpecificationColumnStyle) as ISpecificationColumnStyle;
end;

class function CoSpecificationColumnStyle.CreateRemote(const MachineName: string): ISpecificationColumnStyle;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SpecificationColumnStyle) as ISpecificationColumnStyle;
end;

class function CoSpecificationSectionStyles.Create: ISpecificationSectionStyles;
begin
  Result := CreateComObject(CLASS_SpecificationSectionStyles) as ISpecificationSectionStyles;
end;

class function CoSpecificationSectionStyles.CreateRemote(const MachineName: string): ISpecificationSectionStyles;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SpecificationSectionStyles) as ISpecificationSectionStyles;
end;

class function CoSpecificationSectionStyle.Create: ISpecificationSectionStyle;
begin
  Result := CreateComObject(CLASS_SpecificationSectionStyle) as ISpecificationSectionStyle;
end;

class function CoSpecificationSectionStyle.CreateRemote(const MachineName: string): ISpecificationSectionStyle;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SpecificationSectionStyle) as ISpecificationSectionStyle;
end;

class function CoAdditionalBlockStyles.Create: IAdditionalBlockStyles;
begin
  Result := CreateComObject(CLASS_AdditionalBlockStyles) as IAdditionalBlockStyles;
end;

class function CoAdditionalBlockStyles.CreateRemote(const MachineName: string): IAdditionalBlockStyles;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AdditionalBlockStyles) as IAdditionalBlockStyles;
end;

class function CoAdditionalBlockStyle.Create: IAdditionalBlockStyle;
begin
  Result := CreateComObject(CLASS_AdditionalBlockStyle) as IAdditionalBlockStyle;
end;

class function CoAdditionalBlockStyle.CreateRemote(const MachineName: string): IAdditionalBlockStyle;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AdditionalBlockStyle) as IAdditionalBlockStyle;
end;

class function CoSheetFormat.Create: ISheetFormat;
begin
  Result := CreateComObject(CLASS_SheetFormat) as ISheetFormat;
end;

class function CoSheetFormat.CreateRemote(const MachineName: string): ISheetFormat;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SheetFormat) as ISheetFormat;
end;

class function CoSpecificationTuning.Create: ISpecificationTuning;
begin
  Result := CreateComObject(CLASS_SpecificationTuning) as ISpecificationTuning;
end;

class function CoSpecificationTuning.CreateRemote(const MachineName: string): ISpecificationTuning;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SpecificationTuning) as ISpecificationTuning;
end;

class function CoSpecificationTuningSections.Create: ISpecificationTuningSections;
begin
  Result := CreateComObject(CLASS_SpecificationTuningSections) as ISpecificationTuningSections;
end;

class function CoSpecificationTuningSections.CreateRemote(const MachineName: string): ISpecificationTuningSections;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SpecificationTuningSections) as ISpecificationTuningSections;
end;

class function CoSpecificationTuningSection.Create: ISpecificationTuningSection;
begin
  Result := CreateComObject(CLASS_SpecificationTuningSection) as ISpecificationTuningSection;
end;

class function CoSpecificationTuningSection.CreateRemote(const MachineName: string): ISpecificationTuningSection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SpecificationTuningSection) as ISpecificationTuningSection;
end;

class function CoSpecificationSubsections.Create: ISpecificationSubsections;
begin
  Result := CreateComObject(CLASS_SpecificationSubsections) as ISpecificationSubsections;
end;

class function CoSpecificationSubsections.CreateRemote(const MachineName: string): ISpecificationSubsections;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SpecificationSubsections) as ISpecificationSubsections;
end;

class function CoSpecificationSubsection.Create: ISpecificationSubsection;
begin
  Result := CreateComObject(CLASS_SpecificationSubsection) as ISpecificationSubsection;
end;

class function CoSpecificationSubsection.CreateRemote(const MachineName: string): ISpecificationSubsection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SpecificationSubsection) as ISpecificationSubsection;
end;

class function CoAdditionalBlockTunings.Create: IAdditionalBlockTunings;
begin
  Result := CreateComObject(CLASS_AdditionalBlockTunings) as IAdditionalBlockTunings;
end;

class function CoAdditionalBlockTunings.CreateRemote(const MachineName: string): IAdditionalBlockTunings;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AdditionalBlockTunings) as IAdditionalBlockTunings;
end;

class function CoAdditionalBlockTuning.Create: IAdditionalBlockTuning;
begin
  Result := CreateComObject(CLASS_AdditionalBlockTuning) as IAdditionalBlockTuning;
end;

class function CoAdditionalBlockTuning.CreateRemote(const MachineName: string): IAdditionalBlockTuning;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AdditionalBlockTuning) as IAdditionalBlockTuning;
end;

class function CoAdditionalBlockSectionTunings.Create: IAdditionalBlockSectionTunings;
begin
  Result := CreateComObject(CLASS_AdditionalBlockSectionTunings) as IAdditionalBlockSectionTunings;
end;

class function CoAdditionalBlockSectionTunings.CreateRemote(const MachineName: string): IAdditionalBlockSectionTunings;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AdditionalBlockSectionTunings) as IAdditionalBlockSectionTunings;
end;

class function CoAdditionalBlockSectionTuning.Create: IAdditionalBlockSectionTuning;
begin
  Result := CreateComObject(CLASS_AdditionalBlockSectionTuning) as IAdditionalBlockSectionTuning;
end;

class function CoAdditionalBlockSectionTuning.CreateRemote(const MachineName: string): IAdditionalBlockSectionTuning;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AdditionalBlockSectionTuning) as IAdditionalBlockSectionTuning;
end;

class function CoTextFont.Create: ITextFont;
begin
  Result := CreateComObject(CLASS_TextFont) as ITextFont;
end;

class function CoTextFont.CreateRemote(const MachineName: string): ITextFont;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TextFont) as ITextFont;
end;

class function CoTextStyle.Create: ITextStyle;
begin
  Result := CreateComObject(CLASS_TextStyle) as ITextStyle;
end;

class function CoTextStyle.CreateRemote(const MachineName: string): ITextStyle;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TextStyle) as ITextStyle;
end;

class function CoTabulators.Create: ITabulators;
begin
  Result := CreateComObject(CLASS_Tabulators) as ITabulators;
end;

class function CoTabulators.CreateRemote(const MachineName: string): ITabulators;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Tabulators) as ITabulators;
end;

class function CoTabulator.Create: ITabulator;
begin
  Result := CreateComObject(CLASS_Tabulator) as ITabulator;
end;

class function CoTabulator.CreateRemote(const MachineName: string): ITabulator;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Tabulator) as ITabulator;
end;

class function CoKompasError.Create: IKompasError;
begin
  Result := CreateComObject(CLASS_KompasError) as IKompasError;
end;

class function CoKompasError.CreateRemote(const MachineName: string): IKompasError;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_KompasError) as IKompasError;
end;

class function CoSpecificationBaseObjects.Create: ISpecificationBaseObjects;
begin
  Result := CreateComObject(CLASS_SpecificationBaseObjects) as ISpecificationBaseObjects;
end;

class function CoSpecificationBaseObjects.CreateRemote(const MachineName: string): ISpecificationBaseObjects;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SpecificationBaseObjects) as ISpecificationBaseObjects;
end;

class function CoSpecificationCommentObjects.Create: ISpecificationCommentObjects;
begin
  Result := CreateComObject(CLASS_SpecificationCommentObjects) as ISpecificationCommentObjects;
end;

class function CoSpecificationCommentObjects.CreateRemote(const MachineName: string): ISpecificationCommentObjects;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SpecificationCommentObjects) as ISpecificationCommentObjects;
end;

class function CoSpecificationObject.Create: ISpecificationObject;
begin
  Result := CreateComObject(CLASS_SpecificationObject) as ISpecificationObject;
end;

class function CoSpecificationObject.CreateRemote(const MachineName: string): ISpecificationObject;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SpecificationObject) as ISpecificationObject;
end;

class function CoSpecificationBaseObject.Create: ISpecificationBaseObject;
begin
  Result := CreateComObject(CLASS_SpecificationBaseObject) as ISpecificationBaseObject;
end;

class function CoSpecificationBaseObject.CreateRemote(const MachineName: string): ISpecificationBaseObject;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SpecificationBaseObject) as ISpecificationBaseObject;
end;

class function CoSpecificationCommentObject.Create: ISpecificationCommentObject;
begin
  Result := CreateComObject(CLASS_SpecificationCommentObject) as ISpecificationCommentObject;
end;

class function CoSpecificationCommentObject.CreateRemote(const MachineName: string): ISpecificationCommentObject;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SpecificationCommentObject) as ISpecificationCommentObject;
end;

class function CoSpecificationColumns.Create: ISpecificationColumns;
begin
  Result := CreateComObject(CLASS_SpecificationColumns) as ISpecificationColumns;
end;

class function CoSpecificationColumns.CreateRemote(const MachineName: string): ISpecificationColumns;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SpecificationColumns) as ISpecificationColumns;
end;

class function CoSpecificationColumn.Create: ISpecificationColumn;
begin
  Result := CreateComObject(CLASS_SpecificationColumn) as ISpecificationColumn;
end;

class function CoSpecificationColumn.CreateRemote(const MachineName: string): ISpecificationColumn;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SpecificationColumn) as ISpecificationColumn;
end;

class function CoSpecificationColumnItems.Create: ISpecificationColumnItems;
begin
  Result := CreateComObject(CLASS_SpecificationColumnItems) as ISpecificationColumnItems;
end;

class function CoSpecificationColumnItems.CreateRemote(const MachineName: string): ISpecificationColumnItems;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SpecificationColumnItems) as ISpecificationColumnItems;
end;

class function CoSpecificationColumnItem.Create: ISpecificationColumnItem;
begin
  Result := CreateComObject(CLASS_SpecificationColumnItem) as ISpecificationColumnItem;
end;

class function CoSpecificationColumnItem.CreateRemote(const MachineName: string): ISpecificationColumnItem;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SpecificationColumnItem) as ISpecificationColumnItem;
end;

class function CoAttachedDocuments.Create: IAttachedDocuments;
begin
  Result := CreateComObject(CLASS_AttachedDocuments) as IAttachedDocuments;
end;

class function CoAttachedDocuments.CreateRemote(const MachineName: string): IAttachedDocuments;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AttachedDocuments) as IAttachedDocuments;
end;

class function CoAttachedDocument.Create: IAttachedDocument;
begin
  Result := CreateComObject(CLASS_AttachedDocument) as IAttachedDocument;
end;

class function CoAttachedDocument.CreateRemote(const MachineName: string): IAttachedDocument;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AttachedDocument) as IAttachedDocument;
end;

class function CoPropertyFileName.Create: IPropertyFileName;
begin
  Result := CreateComObject(CLASS_PropertyFileName) as IPropertyFileName;
end;

class function CoPropertyFileName.CreateRemote(const MachineName: string): IPropertyFileName;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PropertyFileName) as IPropertyFileName;
end;

class function CoPropertyColor.Create: IPropertyColor;
begin
  Result := CreateComObject(CLASS_PropertyColor) as IPropertyColor;
end;

class function CoPropertyColor.CreateRemote(const MachineName: string): IPropertyColor;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_PropertyColor) as IPropertyColor;
end;

class function CoLayoutSheets.Create: ILayoutSheets;
begin
  Result := CreateComObject(CLASS_LayoutSheets) as ILayoutSheets;
end;

class function CoLayoutSheets.CreateRemote(const MachineName: string): ILayoutSheets;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_LayoutSheets) as ILayoutSheets;
end;

class function CoLayoutSheet.Create: ILayoutSheet;
begin
  Result := CreateComObject(CLASS_LayoutSheet) as ILayoutSheet;
end;

class function CoLayoutSheet.CreateRemote(const MachineName: string): ILayoutSheet;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_LayoutSheet) as ILayoutSheet;
end;

class function CoConverter.Create: IConverter;
begin
  Result := CreateComObject(CLASS_Converter) as IConverter;
end;

class function CoConverter.CreateRemote(const MachineName: string): IConverter;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Converter) as IConverter;
end;

class function CoCheckSum.Create: ICheckSum;
begin
  Result := CreateComObject(CLASS_CheckSum) as ICheckSum;
end;

class function CoCheckSum.CreateRemote(const MachineName: string): ICheckSum;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CheckSum) as ICheckSum;
end;

class function CoModelObject.Create: IModelObject;
begin
  Result := CreateComObject(CLASS_ModelObject) as IModelObject;
end;

class function CoModelObject.CreateRemote(const MachineName: string): IModelObject;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ModelObject) as IModelObject;
end;

class function CoModelObjects.Create: IModelObjects;
begin
  Result := CreateComObject(CLASS_ModelObjects) as IModelObjects;
end;

class function CoModelObjects.CreateRemote(const MachineName: string): IModelObjects;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ModelObjects) as IModelObjects;
end;

class function CoParts7.Create: IParts7;
begin
  Result := CreateComObject(CLASS_Parts7) as IParts7;
end;

class function CoParts7.CreateRemote(const MachineName: string): IParts7;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Parts7) as IParts7;
end;

class function CoPart7.Create: IPart7;
begin
  Result := CreateComObject(CLASS_Part7) as IPart7;
end;

class function CoPart7.CreateRemote(const MachineName: string): IPart7;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Part7) as IPart7;
end;

class function CoSketchs.Create: ISketchs;
begin
  Result := CreateComObject(CLASS_Sketchs) as ISketchs;
end;

class function CoSketchs.CreateRemote(const MachineName: string): ISketchs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Sketchs) as ISketchs;
end;

class function CoExtrusions.Create: IExtrusions;
begin
  Result := CreateComObject(CLASS_Extrusions) as IExtrusions;
end;

class function CoExtrusions.CreateRemote(const MachineName: string): IExtrusions;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Extrusions) as IExtrusions;
end;

class function CoVariableTable.Create: IVariableTable;
begin
  Result := CreateComObject(CLASS_VariableTable) as IVariableTable;
end;

class function CoVariableTable.CreateRemote(const MachineName: string): IVariableTable;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_VariableTable) as IVariableTable;
end;

class function CoProgressBarIndicator.Create: IProgressBarIndicator;
begin
  Result := CreateComObject(CLASS_ProgressBarIndicator) as IProgressBarIndicator;
end;

class function CoProgressBarIndicator.CreateRemote(const MachineName: string): IProgressBarIndicator;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ProgressBarIndicator) as IProgressBarIndicator;
end;

class function CoText.Create: IText;
begin
  Result := CreateComObject(CLASS_Text) as IText;
end;

class function CoText.CreateRemote(const MachineName: string): IText;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Text) as IText;
end;

class function CoTextLine.Create: ITextLine;
begin
  Result := CreateComObject(CLASS_TextLine) as ITextLine;
end;

class function CoTextLine.CreateRemote(const MachineName: string): ITextLine;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TextLine) as ITextLine;
end;

class function CoTextItem.Create: ITextItem;
begin
  Result := CreateComObject(CLASS_TextItem) as ITextItem;
end;

class function CoTextItem.CreateRemote(const MachineName: string): ITextItem;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TextItem) as ITextItem;
end;

class function CoDrawingText.Create: IDrawingText;
begin
  Result := CreateComObject(CLASS_DrawingText) as IDrawingText;
end;

class function CoDrawingText.CreateRemote(const MachineName: string): IDrawingText;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DrawingText) as IDrawingText;
end;

class function CoDrawingTexts.Create: IDrawingTexts;
begin
  Result := CreateComObject(CLASS_DrawingTexts) as IDrawingTexts;
end;

class function CoDrawingTexts.CreateRemote(const MachineName: string): IDrawingTexts;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DrawingTexts) as IDrawingTexts;
end;

class function CoMarks.Create: IMarks;
begin
  Result := CreateComObject(CLASS_Marks) as IMarks;
end;

class function CoMarks.CreateRemote(const MachineName: string): IMarks;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Marks) as IMarks;
end;

class function CoMarkInsideForm.Create: IMarkInsideForm;
begin
  Result := CreateComObject(CLASS_MarkInsideForm) as IMarkInsideForm;
end;

class function CoMarkInsideForm.CreateRemote(const MachineName: string): IMarkInsideForm;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MarkInsideForm) as IMarkInsideForm;
end;

class function CoMarkOnLine.Create: IMarkOnLine;
begin
  Result := CreateComObject(CLASS_MarkOnLine) as IMarkOnLine;
end;

class function CoMarkOnLine.CreateRemote(const MachineName: string): IMarkOnLine;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MarkOnLine) as IMarkOnLine;
end;

class function CoMarkOnLeader.Create: IMarkOnLeader;
begin
  Result := CreateComObject(CLASS_MarkOnLeader) as IMarkOnLeader;
end;

class function CoMarkOnLeader.CreateRemote(const MachineName: string): IMarkOnLeader;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MarkOnLeader) as IMarkOnLeader;
end;

class function CoUserDataStoragesMng.Create: IUserDataStoragesMng;
begin
  Result := CreateComObject(CLASS_UserDataStoragesMng) as IUserDataStoragesMng;
end;

class function CoUserDataStoragesMng.CreateRemote(const MachineName: string): IUserDataStoragesMng;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_UserDataStoragesMng) as IUserDataStoragesMng;
end;

class function CoUserDataStorages.Create: IUserDataStorages;
begin
  Result := CreateComObject(CLASS_UserDataStorages) as IUserDataStorages;
end;

class function CoUserDataStorages.CreateRemote(const MachineName: string): IUserDataStorages;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_UserDataStorages) as IUserDataStorages;
end;

class function CoUserDataStorage.Create: IUserDataStorage;
begin
  Result := CreateComObject(CLASS_UserDataStorage) as IUserDataStorage;
end;

class function CoUserDataStorage.CreateRemote(const MachineName: string): IUserDataStorage;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_UserDataStorage) as IUserDataStorage;
end;

class function CoBuildingAxes.Create: IBuildingAxes;
begin
  Result := CreateComObject(CLASS_BuildingAxes) as IBuildingAxes;
end;

class function CoBuildingAxes.CreateRemote(const MachineName: string): IBuildingAxes;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_BuildingAxes) as IBuildingAxes;
end;

class function CoStraightAxis.Create: IStraightAxis;
begin
  Result := CreateComObject(CLASS_StraightAxis) as IStraightAxis;
end;

class function CoStraightAxis.CreateRemote(const MachineName: string): IStraightAxis;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_StraightAxis) as IStraightAxis;
end;

class function CoArcAxis.Create: IArcAxis;
begin
  Result := CreateComObject(CLASS_ArcAxis) as IArcAxis;
end;

class function CoArcAxis.CreateRemote(const MachineName: string): IArcAxis;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ArcAxis) as IArcAxis;
end;

class function CoCircleAxis.Create: ICircleAxis;
begin
  Result := CreateComObject(CLASS_CircleAxis) as ICircleAxis;
end;

class function CoCircleAxis.CreateRemote(const MachineName: string): ICircleAxis;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CircleAxis) as ICircleAxis;
end;

class function CoAxisJut.Create: IAxisJut;
begin
  Result := CreateComObject(CLASS_AxisJut) as IAxisJut;
end;

class function CoAxisJut.CreateRemote(const MachineName: string): IAxisJut;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AxisJut) as IAxisJut;
end;

class function CoMarkNodes.Create: IMarkNodes;
begin
  Result := CreateComObject(CLASS_MarkNodes) as IMarkNodes;
end;

class function CoMarkNodes.CreateRemote(const MachineName: string): IMarkNodes;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MarkNodes) as IMarkNodes;
end;

class function CoMarkNode.Create: IMarkNode;
begin
  Result := CreateComObject(CLASS_MarkNode) as IMarkNode;
end;

class function CoMarkNode.CreateRemote(const MachineName: string): IMarkNode;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MarkNode) as IMarkNode;
end;

class function CoLineSegments.Create: ILineSegments;
begin
  Result := CreateComObject(CLASS_LineSegments) as ILineSegments;
end;

class function CoLineSegments.CreateRemote(const MachineName: string): ILineSegments;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_LineSegments) as ILineSegments;
end;

class function CoLineSegment.Create: ILineSegment;
begin
  Result := CreateComObject(CLASS_LineSegment) as ILineSegment;
end;

class function CoLineSegment.CreateRemote(const MachineName: string): ILineSegment;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_LineSegment) as ILineSegment;
end;

class function CoSystemSettings.Create: ISystemSettings;
begin
  Result := CreateComObject(CLASS_SystemSettings) as ISystemSettings;
end;

class function CoSystemSettings.CreateRemote(const MachineName: string): ISystemSettings;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SystemSettings) as ISystemSettings;
end;

class function CoCutUnitMarking.Create: ICutUnitMarking;
begin
  Result := CreateComObject(CLASS_CutUnitMarking) as ICutUnitMarking;
end;

class function CoCutUnitMarking.CreateRemote(const MachineName: string): ICutUnitMarking;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CutUnitMarking) as ICutUnitMarking;
end;

class function CoCutUnitMarkings.Create: ICutUnitMarkings;
begin
  Result := CreateComObject(CLASS_CutUnitMarkings) as ICutUnitMarkings;
end;

class function CoCutUnitMarkings.CreateRemote(const MachineName: string): ICutUnitMarkings;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CutUnitMarkings) as ICutUnitMarkings;
end;

class function CoUnitMarking.Create: IUnitMarking;
begin
  Result := CreateComObject(CLASS_UnitMarking) as IUnitMarking;
end;

class function CoUnitMarking.CreateRemote(const MachineName: string): IUnitMarking;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_UnitMarking) as IUnitMarking;
end;

class function CoUnitMarkings.Create: IUnitMarkings;
begin
  Result := CreateComObject(CLASS_UnitMarkings) as IUnitMarkings;
end;

class function CoUnitMarkings.CreateRemote(const MachineName: string): IUnitMarkings;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_UnitMarkings) as IUnitMarkings;
end;

class function CoArcs.Create: IArcs;
begin
  Result := CreateComObject(CLASS_Arcs) as IArcs;
end;

class function CoArcs.CreateRemote(const MachineName: string): IArcs;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Arcs) as IArcs;
end;

class function Co_Arc.Create: IArc;
begin
  Result := CreateComObject(CLASS__Arc) as IArc;
end;

class function Co_Arc.CreateRemote(const MachineName: string): IArc;
begin
  Result := CreateRemoteComObject(MachineName, CLASS__Arc) as IArc;
end;

class function CoMultiTextLeader.Create: IMultiTextLeader;
begin
  Result := CreateComObject(CLASS_MultiTextLeader) as IMultiTextLeader;
end;

class function CoMultiTextLeader.CreateRemote(const MachineName: string): IMultiTextLeader;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MultiTextLeader) as IMultiTextLeader;
end;

class function CoMultiTextLeaders.Create: IMultiTextLeaders;
begin
  Result := CreateComObject(CLASS_MultiTextLeaders) as IMultiTextLeaders;
end;

class function CoMultiTextLeaders.CreateRemote(const MachineName: string): IMultiTextLeaders;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MultiTextLeaders) as IMultiTextLeaders;
end;

class function CoBrace.Create: IBrace;
begin
  Result := CreateComObject(CLASS_Brace) as IBrace;
end;

class function CoBrace.CreateRemote(const MachineName: string): IBrace;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Brace) as IBrace;
end;

class function CoBraces.Create: IBraces;
begin
  Result := CreateComObject(CLASS_Braces) as IBraces;
end;

class function CoBraces.CreateRemote(const MachineName: string): IBraces;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Braces) as IBraces;
end;

class function CoUnitNumber.Create: IUnitNumber;
begin
  Result := CreateComObject(CLASS_UnitNumber) as IUnitNumber;
end;

class function CoUnitNumber.CreateRemote(const MachineName: string): IUnitNumber;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_UnitNumber) as IUnitNumber;
end;

class function CoUnitNumbers.Create: IUnitNumbers;
begin
  Result := CreateComObject(CLASS_UnitNumbers) as IUnitNumbers;
end;

class function CoUnitNumbers.CreateRemote(const MachineName: string): IUnitNumbers;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_UnitNumbers) as IUnitNumbers;
end;

class function CoSketch.Create: ISketch;
begin
  Result := CreateComObject(CLASS_Sketch) as ISketch;
end;

class function CoSketch.CreateRemote(const MachineName: string): ISketch;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Sketch) as ISketch;
end;

class function CoExtrusion.Create: IExtrusion;
begin
  Result := CreateComObject(CLASS_Extrusion) as IExtrusion;
end;

class function CoExtrusion.CreateRemote(const MachineName: string): IExtrusion;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Extrusion) as IExtrusion;
end;

class function CoParametriticConstraint.Create: IParametriticConstraint;
begin
  Result := CreateComObject(CLASS_ParametriticConstraint) as IParametriticConstraint;
end;

class function CoParametriticConstraint.CreateRemote(const MachineName: string): IParametriticConstraint;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ParametriticConstraint) as IParametriticConstraint;
end;

class function CoCutExtrusion.Create: ICutExtrusion;
begin
  Result := CreateComObject(CLASS_CutExtrusion) as ICutExtrusion;
end;

class function CoCutExtrusion.CreateRemote(const MachineName: string): ICutExtrusion;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CutExtrusion) as ICutExtrusion;
end;

class function CoBody7.Create: IBody7;
begin
  Result := CreateComObject(CLASS_Body7) as IBody7;
end;

class function CoBody7.CreateRemote(const MachineName: string): IBody7;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Body7) as IBody7;
end;

class function CoSheetMetalBodies.Create: ISheetMetalBodies;
begin
  Result := CreateComObject(CLASS_SheetMetalBodies) as ISheetMetalBodies;
end;

class function CoSheetMetalBodies.CreateRemote(const MachineName: string): ISheetMetalBodies;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SheetMetalBodies) as ISheetMetalBodies;
end;

class function CoSheetMetalBody.Create: ISheetMetalBody;
begin
  Result := CreateComObject(CLASS_SheetMetalBody) as ISheetMetalBody;
end;

class function CoSheetMetalBody.CreateRemote(const MachineName: string): ISheetMetalBody;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SheetMetalBody) as ISheetMetalBody;
end;

class function CoPoints3D.Create: IPoints3D;
begin
  Result := CreateComObject(CLASS_Points3D) as IPoints3D;
end;

class function CoPoints3D.CreateRemote(const MachineName: string): IPoints3D;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Points3D) as IPoints3D;
end;

class function CoPoint3D.Create: IPoint3D;
begin
  Result := CreateComObject(CLASS_Point3D) as IPoint3D;
end;

class function CoPoint3D.CreateRemote(const MachineName: string): IPoint3D;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Point3D) as IPoint3D;
end;

class function CoPoint3DParamDisplace.Create: IPoint3DParamDisplace;
begin
  Result := CreateComObject(CLASS_Point3DParamDisplace) as IPoint3DParamDisplace;
end;

class function CoPoint3DParamDisplace.CreateRemote(const MachineName: string): IPoint3DParamDisplace;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Point3DParamDisplace) as IPoint3DParamDisplace;
end;

class function CoPoint3DParamIntersect.Create: IPoint3DParamIntersect;
begin
  Result := CreateComObject(CLASS_Point3DParamIntersect) as IPoint3DParamIntersect;
end;

class function CoPoint3DParamIntersect.CreateRemote(const MachineName: string): IPoint3DParamIntersect;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Point3DParamIntersect) as IPoint3DParamIntersect;
end;

class function CoPoint3DParamCenter.Create: IPoint3DParamCenter;
begin
  Result := CreateComObject(CLASS_Point3DParamCenter) as IPoint3DParamCenter;
end;

class function CoPoint3DParamCenter.CreateRemote(const MachineName: string): IPoint3DParamCenter;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Point3DParamCenter) as IPoint3DParamCenter;
end;

class function CoPoint3DParamCurve.Create: IPoint3DParamCurve;
begin
  Result := CreateComObject(CLASS_Point3DParamCurve) as IPoint3DParamCurve;
end;

class function CoPoint3DParamCurve.CreateRemote(const MachineName: string): IPoint3DParamCurve;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Point3DParamCurve) as IPoint3DParamCurve;
end;

class function CoPoint3DParamSurface.Create: IPoint3DParamSurface;
begin
  Result := CreateComObject(CLASS_Point3DParamSurface) as IPoint3DParamSurface;
end;

class function CoPoint3DParamSurface.CreateRemote(const MachineName: string): IPoint3DParamSurface;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Point3DParamSurface) as IPoint3DParamSurface;
end;

class function CoPoint3DParamProjection.Create: IPoint3DParamProjection;
begin
  Result := CreateComObject(CLASS_Point3DParamProjection) as IPoint3DParamProjection;
end;

class function CoPoint3DParamProjection.CreateRemote(const MachineName: string): IPoint3DParamProjection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Point3DParamProjection) as IPoint3DParamProjection;
end;

class function CoSheetMetalBends.Create: ISheetMetalBends;
begin
  Result := CreateComObject(CLASS_SheetMetalBends) as ISheetMetalBends;
end;

class function CoSheetMetalBends.CreateRemote(const MachineName: string): ISheetMetalBends;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SheetMetalBends) as ISheetMetalBends;
end;

class function CoSheetMetalBend.Create: ISheetMetalBend;
begin
  Result := CreateComObject(CLASS_SheetMetalBend) as ISheetMetalBend;
end;

class function CoSheetMetalBend.CreateRemote(const MachineName: string): ISheetMetalBend;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SheetMetalBend) as ISheetMetalBend;
end;

class function CoSheetMetalLineBends.Create: ISheetMetalLineBends;
begin
  Result := CreateComObject(CLASS_SheetMetalLineBends) as ISheetMetalLineBends;
end;

class function CoSheetMetalLineBends.CreateRemote(const MachineName: string): ISheetMetalLineBends;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SheetMetalLineBends) as ISheetMetalLineBends;
end;

class function CoSheetMetalLineBend.Create: ISheetMetalLineBend;
begin
  Result := CreateComObject(CLASS_SheetMetalLineBend) as ISheetMetalLineBend;
end;

class function CoSheetMetalLineBend.CreateRemote(const MachineName: string): ISheetMetalLineBend;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SheetMetalLineBend) as ISheetMetalLineBend;
end;

class function CoSheetMetalHole.Create: ISheetMetalHole;
begin
  Result := CreateComObject(CLASS_SheetMetalHole) as ISheetMetalHole;
end;

class function CoSheetMetalHole.CreateRemote(const MachineName: string): ISheetMetalHole;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SheetMetalHole) as ISheetMetalHole;
end;

class function CoSheetMetalHoles.Create: ISheetMetalHoles;
begin
  Result := CreateComObject(CLASS_SheetMetalHoles) as ISheetMetalHoles;
end;

class function CoSheetMetalHoles.CreateRemote(const MachineName: string): ISheetMetalHoles;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SheetMetalHoles) as ISheetMetalHoles;
end;

class function CoSheetMetalCut.Create: ISheetMetalCut;
begin
  Result := CreateComObject(CLASS_SheetMetalCut) as ISheetMetalCut;
end;

class function CoSheetMetalCut.CreateRemote(const MachineName: string): ISheetMetalCut;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SheetMetalCut) as ISheetMetalCut;
end;

class function CoSheetMetalCuts.Create: ISheetMetalCuts;
begin
  Result := CreateComObject(CLASS_SheetMetalCuts) as ISheetMetalCuts;
end;

class function CoSheetMetalCuts.CreateRemote(const MachineName: string): ISheetMetalCuts;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SheetMetalCuts) as ISheetMetalCuts;
end;

end.

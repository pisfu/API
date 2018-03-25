unit ksConstTLB;

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

// $Rev: 52393 $
// File generated on 23.06.2017 10:29:46 from Type Library described below.

// ************************************************************************  //
// Type Lib: ksConstants.tlb (1)
// LIBID: {75C9F5D0-B5B8-4526-8681-9903C567D2ED}
// LCID: 0
// Helpfile: sdk.hlp
// HelpString:
// DepndLst: None
// Parent TypeLibrary:
//   (0) v1.0 KompasAPI7, (kAPI7.TLB)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers.
{$IFDEF CONDITIONALEXPRESSIONS}
{$IF CompilerVersion >= 14 }
  {$WARN SYMBOL_PLATFORM OFF}
  {$WRITEABLECONST ON}
  {$VARPROPSETTER ON}
  {$ALIGN 4}
{$IFEND}
{$ENDIF}

interface

uses Windows, Classes, StdVCL, Graphics, ActiveX;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  Kompas6ConstantsMajorVersion = 1;
  Kompas6ConstantsMinorVersion = 0;

  LIBID_Kompas6Constants: TGUID = '{75C9F5D0-B5B8-4526-8681-9903C567D2ED}';


// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum ksNotifyType
type
  ksNotifyType = TOleEnum;
const
  ntKompasObjectNotify = $00000001;
  ntDocumentFileNotify = $00000002;
  ntStampNotify = $00000003;
  ntObject2DNotify = $00000004;
  ntSelectionMngNotify = $00000005;
  ntSpcObjectNotify = $00000006;
  ntSpcDocumentNotify = $00000007;
  ntSpecificationNotify = $00000008;
  ntDocument3DNotify = $00000009;
  ntObject3DNotify = $0000000A;
  ntDocument2DNotify = $0000000B;
  ntPropertyManagerNotify = $0000000C;
  ntPropertyUserControlNotifyEnum = $0000000D;
  ntDocumentFrameNotify = $0000000E;
  ntViewsAndLayersManagerNotify = $0000000F;
  ntLibraryManagerNotify = $00000010;
  ntLayoutSheetsNotify = $00000011;
  ntProcess2DNotify = $00000012;
  ntProcess3DNotify = $00000013;

// Constants for enum ksKompasObjectNotifyEnum
type
  ksKompasObjectNotifyEnum = TOleEnum;
const
  koCreateDocument = $00000001;
  koBeginOpenDocument = $00000002;
  koOpenDocument = $00000003;
  koChangeActiveDocument = $00000004;
  koApplicatinDestroy = $00000005;
  koBeginCreate = $00000006;
  koBeginOpenFile = $00000007;
  koBeginCloseAllDocument = $00000008;
  koKeyDown = $00000009;
  koKeyUp = $0000000A;
  koKeyPress = $0000000B;
  koBeginRequestFiles = $0000000C;
  koBeginChoiceMaterial = $0000000D;
  koChoiceMaterial = $0000000E;

// Constants for enum ksDocumentFileNotifyEnum
type
  ksDocumentFileNotifyEnum = TOleEnum;
const
  kdBeginCloseDocument = $00000001;
  kdCloseDocument = $00000002;
  kdBeginSaveDocument = $00000003;
  kdSaveDocument = $00000004;
  kdActiveDocument = $00000005;
  kdDeactiveDocument = $00000006;
  kdBeginSaveAsDocument = $00000007;
  kdDocumentFrameOpen = $00000008;
  kdProcessActivate = $00000009;
  kdProcessDeactivate = $0000000A;
  kdBeginProcess = $0000000B;
  kdEndProcess = $0000000C;

// Constants for enum ksStampNotifyEnum
type
  ksStampNotifyEnum = TOleEnum;
const
  kdBeginEditStamp = $00000001;
  kdEndEditStamp = $00000002;
  kdStampCellDblClick = $00000003;
  kdStampCellBeginEdit = $00000004;
  kdStampBeginClearCells = $00000005;

// Constants for enum ksObject2DNotifyEnum
type
  ksObject2DNotifyEnum = TOleEnum;
const
  koChangeActive = $00000001;
  koBeginDelete = $00000002;
  koDelete = $00000003;
  koBeginMove = $00000004;
  koMove = $00000005;
  koBeginRotate = $00000006;
  koRotate = $00000007;
  koBeginScale = $00000008;
  koScale = $00000009;
  koBeginTransform = $0000000A;
  koTransform = $0000000B;
  koBeginCopy = $0000000C;
  koCopy = $0000000D;
  koBeginSymmetry = $0000000E;
  koSymmetry = $0000000F;
  koBeginProcess = $00000010;
  koEndProcess = $00000011;
  koCreateObject = $00000012;
  koUpdateObject = $00000013;
  koBeginDestroyObject = $00000014;
  koDestroyObject = $00000015;
  koBeginPropertyChanged = $00000016;
  koPropertyChanged = $00000017;

// Constants for enum ksSelectionMngNotifyEnum
type
  ksSelectionMngNotifyEnum = TOleEnum;
const
  ksmSelect = $00000001;
  ksmUnselect = $00000002;
  ksmUnselectAll = $00000003;

// Constants for enum ksSpcObjectNotifyEnum
type
  ksSpcObjectNotifyEnum = TOleEnum;
const
  soBeginDelete = $00000001;
  soDelete = $00000002;
  soCellDblClick = $00000003;
  soCellBeginEdit = $00000004;
  soChangeCurrent = $00000005;
  soDocumentBeginAdd = $00000006;
  soDocumentAdd = $00000007;
  soDocumentRemove = $00000008;
  soBeginGeomChange = $00000009;
  soGeomChange = $0000000A;
  soBeginProcess = $0000000B;
  soEndProcess = $0000000C;
  soCreateObject = $0000000D;
  soUpdateObject = $0000000E;
  soBeginCopy = $0000000F;
  soCopy = $00000010;

// Constants for enum ksSpcDocumentNotifyEnum
type
  ksSpcDocumentNotifyEnum = TOleEnum;
const
  sdDocumentBeginAdd = $00000001;
  sdDocumentAdd = $00000002;
  sdDocumentBeginRemove = $00000003;
  sdDocumentRemove = $00000004;
  sdSpcStyleBeginChange = $00000005;
  sdSpcStyleChange = $00000006;

// Constants for enum ksSpecificationNotifyEnum
type
  ksSpecificationNotifyEnum = TOleEnum;
const
  ssTuningSpcStyleBeginChange = $00000001;
  ssTuningSpcStyleChange = $00000002;
  ssChangeCurrentSpcDescription = $00000003;
  ssSpcDescriptionAdd = $00000004;
  ssSpcDescriptionRemove = $00000005;
  ssSpcDescriptionBeginEdit = $00000006;
  ssSpcDescriptionEdit = $00000007;
  ssSynchronizationBegin = $00000008;
  ssSynchronization = $00000009;
  ssBeginCalcPositions = $0000000A;
  ssCalcPositions = $0000000B;
  ssBeginCreateObject = $0000000C;

// Constants for enum ksDocument3DNotifyEnum
type
  ksDocument3DNotifyEnum = TOleEnum;
const
  d3BeginRebuild = $00000001;
  d3Rebuild = $00000002;
  d3BeginChoiceMaterial = $00000003;
  d3ChoiceMaterial = $00000004;
  d3BeginChoiceMarking = $00000005;
  d3ChoiceMarking = $00000006;
  d3BeginSetPartFromFile = $00000007;
  d3BeginCreatePartFromFile = $00000008;
  d3CreateEmbodiment = $00000009;
  d3DeleteEmbodiment = $0000000A;
  d3ChangeCurrentEmbodiment = $0000000B;
  d3BeginChoiceProperty = $0000000C;
  d3ChoiceProperty = $0000000D;

// Constants for enum ksObject3DNotifyEnum
type
  ksObject3DNotifyEnum = TOleEnum;
const
  o3BeginDelete = $00000001;
  o3Delete = $00000002;
  o3Excluded = $00000003;
  o3Hidden = $00000004;
  o3BeginPropertyChanged = $00000005;
  o3PropertyChanged = $00000006;
  o3BeginPlacementChanged = $00000007;
  o3PlacementChanged = $00000008;
  o3BeginProcess = $00000009;
  o3EndProcess = $0000000A;
  o3CreateObject = $0000000B;
  o3UpdateObject = $0000000C;
  o3ChangeCurrent = $0000000D;

// Constants for enum ksDocument2DNotifyEnum
type
  ksDocument2DNotifyEnum = TOleEnum;
const
  d2BeginRebuild = $00000001;
  d2Rebuild = $00000002;
  d2BeginChoiceMaterial = $00000003;
  d2ChoiceMaterial = $00000004;
  d2BeginInsertFragment = $00000005;
  d2LocalFragmentEdit = $00000006;
  d2BeginChoiceProperty = $00000007;
  d2ChoiceProperty = $00000008;

// Constants for enum ksTypeLookStyle
type
  ksTypeLookStyle = TOleEnum;
const
  tls_VisualStudio_97 = $00000000;
  tls_VisualStudio_NET = $00000001;
  tls_Office_2003 = $00000002;
  tls_VisualStudio2005 = $00000003;
  tls_WindowsXP = $00000004;
  tls_Office_2007 = $00000005;
  tls_Office_2007_LunaBlue = $00000005;
  tls_Office_2007_ObsidianBlack = $00000006;
  tls_Office_2007_Aqua = $00000007;
  tls_Office_2007_Silver = $00000008;
  tls_VisualStudio2008 = $00000009;
  tls_VisualStudio2010 = $0000000A;
  tls_Office_2010_Blue = $0000000B;
  tls_Office_2010_Dark = $0000000C;
  tls_Office_2010_White = $0000000D;
  tls_Carbon = $0000000E;

// Constants for enum ksPropertyManagerNotifyEnum
type
  ksPropertyManagerNotifyEnum = TOleEnum;
const
  prButtonClick = $00000001;
  prChangeControlValue = $00000002;
  prControlCommand = $00000003;
  prButtonUpdate = $00000004;
  prProcessActivate = $00000005;
  prProcessDeactivate = $00000006;
  prCommandHelp = $00000007;
  prSelectItem = $00000008;
  prCheckItem = $00000009;
  prChangeActiveTab = $0000000A;
  prEditFocus = $0000000B;
  prUserMenuCommand = $0000000C;
  prLayoutChanged = $0000000D;
  prGetContextMenuType = $0000000E;
  prFillContextPanel = $0000000F;
  prFillContextIconMenu = $00000010;
  prEndEditItem = $00000011;
  prChangeTabExpanded = $00000012;

// Constants for enum SpecPropertyButtonEnum
type
  SpecPropertyButtonEnum = TOleEnum;
const
  pbEnter = $00000001;
  pbEsc = $00000002;
  pbAutoCreate = $00000003;
  pbSaveState = $00000004;
  pbNewSearch = $00000005;
  pbPrevObj = $00000006;
  pbNextObj = $00000007;
  pbHelp = $00000008;
  pbCopyProps = $00000009;

// Constants for enum SpecPropertyToolBarEnum
type
  SpecPropertyToolBarEnum = TOleEnum;
const
  pnUnknown = $00000000;
  pnEmpty = $00000001;
  pnEscHelp = $00000002;
  pnEnterEscHelp = $00000003;
  pnEnterEscCreateHelp = $00000004;
  pnEnterEscCreateSaveHelp = $00000005;
  pnEnterEscCreateSaveSearchHelp = $00000006;
  pnEnterEscSaveSearchPrevNextHelp = $00000007;
  pnEnterEscSearchHelp = $00000008;
  pnEscSaveSearchHelp = $00000009;
  pnEnterEscCreateSearchHelp = $0000000A;
  pnEnterEscSaveSearchHelp = $0000000B;
  pnEscSaveStateHelp = $0000000C;
  pnEnterEscSearchPrevNextHelp = $0000000D;

// Constants for enum KompasAPIObjectTypeEnum
type
  KompasAPIObjectTypeEnum = TOleEnum;
const
  ksObjectUnknown = $00000000;
  ksObjectApplication = $00002711;
  ksObjectDocuments = $00002712;
  ksObjectKompasError = $00002713;
  ksObjectProcessParam = $00002714;
  ksObjectPropertyTabs = $00002715;
  ksObjectPropertyTab = $00002716;
  ksObjectPropertyControls = $00002717;
  ksObjectPropertySeparator = $00002718;
  ksObjectPropertyEdit = $00002719;
  ksObjectPropertyList = $0000271A;
  ksObjectPropertyCheckBox = $0000271B;
  ksObjectPropertyMultiButton = $0000271C;
  ksObjectPropertyUserControl = $0000271D;
  ksObjectPropertyBmpList = $0000271E;
  ksObjectPropertySlideBox = $00002720;
  ksObjectPropertyGrid = $00002721;
  ksObjectDocumentFrame = $00002722;
  ksObjectDocumentFrames = $00002723;
  ksObjectPropertyManager = $00002724;
  ksObjectDrawingDocument = $00002725;
  ksObjectFragmentDocument = $00002726;
  ksObjectSpecificationDocument = $00002727;
  ksObjectPartDocument = $00002728;
  ksObjectAssemblyDocument = $00002729;
  ksObjectTextDocument = $0000272A;
  ksObjectPropertyTextButton = $0000272B;
  ksObjectPropertySpinEdit = $0000272C;
  ksObjectViewsAndLayersManager = $0000272D;
  ksObjectViews = $0000272E;
  ksObjectView = $0000272F;
  ksObjectAssociationView = $00002730;
  ksObjectLayerGroups = $00002731;
  ksObjectLayerGroup = $00002733;
  ksObjectLayers = $00002734;
  ksObjectLayer = $00002735;
  ksObjectLayerFilterCondition = $00002736;
  ksObjectLayerFilterConditions = $00002737;
  ksObjectDocumentSettings = $00002738;
  ksObjectDocument2DSettings = $00002739;
  ksObjectDrawingDocumentSettings = $0000273A;
  ksObjectFragmentDocumentSettings = $0000273B;
  ksObjectSystemSettings = $0000273C;
  ksObjectDocument3DSettings = $0000273D;
  ksObjectLibraryManager = $00002742;
  ksObjectProcedure = $00002743;
  ksObjectProceduresLibraries = $00002744;
  ksObjectProceduresLibrary = $00002745;
  ksObjectProcedures = $00002746;
  ksObjectInsertsLibraries = $00002747;
  ksObjectInsertsLibrary = $00002748;
  ksObjectInserts = $00002749;
  ksObjectInsert = $0000274A;
  ksObjectSpecificationDescriptions = $0000274B;
  ksObjectSpecificationDescription = $0000274C;
  ksObjectSpecificationStyle = $0000274D;
  ksObjectSpecificationColumnStyles = $0000274E;
  ksObjectSpecificationColumnStyle = $0000274F;
  ksObjectSpecificationSectionStyles = $00002750;
  ksObjectSpecificationSectionStyle = $00002751;
  ksObjectSpecificationTuning = $00002752;
  ksObjectSpecificationTuningSections = $00002753;
  ksObjectSpecificationTuningSection = $00002754;
  ksObjectSpecificationSubsections = $00002755;
  ksObjectSpecificationSubsection = $00002756;
  ksObjectAdditionalBlockStyles = $00002757;
  ksObjectAdditionalBlockStyle = $00002758;
  ksObjectAdditionalBlockTunings = $00002759;
  ksObjectAdditionalBlockTuning = $0000275A;
  ksObjectAdditionalBlockSectionTunings = $0000275B;
  ksObjectAdditionalBlockSectionTuning = $0000275C;
  ksObjectSheetFormat = $0000275D;
  ksObjectTextStyle = $0000275E;
  ksObjectFont = $0000275F;
  ksObjectTabulators = $00002760;
  ksObjectTabulator = $00002761;
  ksObjectSpecificationBaseObjects = $00002763;
  ksObjectSpecificationCommentObjects = $00002764;
  ksObjectSpecificationObject = $00002765;
  ksObjectSpecificationBaseObject = $00002766;
  ksObjectSpecificationCommentObject = $00002767;
  ksObjectSpecificationColumns = $00002768;
  ksObjectSpecificationColumn = $00002769;
  ksObjectSpecificationColumnItems = $0000276A;
  ksObjectSpecificationColumnItem = $0000276B;
  ksObjectAttachedDocuments = $0000276C;
  ksObjectAttachedDocument = $0000276D;
  ksObjectPropertyFileName = $0000276E;
  ksObjectPropertyColor = $0000276F;
  ksObjectLayoutSheets = $00002770;
  ksObjectLayoutSheet = $00002771;
  ksObjectConverter = $00002772;
  ksObjectCheckSum = $00002773;
  ksObjectProgressBarIndicator = $00002774;
  ksObjectPropertyEditList = $00002775;
  ksObjectPropertyLibExplorer = $00002776;
  ksObjectVariable7 = $00002777;
  ksObjectInsertionParameters = $00002778;
  ksObjectMath2D = $00002779;
  ksObjectSelectionManager = $0000277A;
  ksObjectChooseManager = $0000277B;
  ksObjectStamp = $0000277C;
  ksObjectPropertyStyleList = $0000277D;
  ksObjectPrintJob = $0000277E;
  ksObjectPrintJob_Sheet = $0000277F;
  ksObjectPropertyOpticalProps = $00002780;
  ksObjectPropertyEditCheckBox = $00002781;
  ksObjectNewPartDocumentSettings = $00002782;
  ksObjectNewAssemblyDocumentSettings = $00002783;
  ksObjectPropertyGroupBegin = $00002784;
  ksObjectPropertyGroupEnd = $00002785;
  ksObjectThreadPattern = $00002786;
  ksObjectThreadDialogParam = $00002787;
  ksObjectPropertyPreviewText = $00002788;
  ksObjectPropertyAggregateControl = $00002789;
  ksObjectPropertyBasePoint = $00002789;
  ksObjectPropertyLinkButton = $0000278A;
  ksObjectPropertyMarking = $0000278B;
  ksObjectUserDataStoragesMng = $00002904;
  ksObjectUserDataStorages = $00002905;
  ksObjectUserDataStorage = $00002906;
  ksObjectParametriticConstraint = $00002907;
  ksObjectAttribute = $00002908;
  ksObjectColumnInfo = $00002909;
  ksObjectAttributeType = $0000290A;
  ksObjectAttrTypeMng = $0000290B;
  ksObjectProperty = $0000290C;
  ksObjectPropertyMng = $0000290D;
  ksObjectReportProcess = $0000290E;
  ksObjectReport = $0000290F;
  ksObjectReportStyle = $00002910;
  ksObjectReportStyleColumn = $00002911;
  ksObjectText = $000029CC;
  ksObjectTextLine = $000029CD;
  ksObjectTextItem = $000029CE;
  ksObjectTableCell = $000029CF;
  ksObjectExternalTessellation = $000029D0;
  ksObjectContour = $000029D1;
  ksObjectContourSegment = $000029D2;
  ksObjectContourLineSegment = $000029D3;
  ksObjectContourArc = $000029D4;
  ksObjectExternalGDI = $000029D5;
  ksObjectLibArraySettings = $000029D6;
  ksObjectTextTable = $000029D7;
  ksObjectSnapInfo = $000029D8;
  ksObjectPropertyTwinSwitcher = $000029D9;
  ksObjectPropertyPoint3D = $000029DA;
  ksObjectPart7 = $00002AF8;
  ksObjectModelObject = $00002AF9;
  ks3dMateConstraint = $00002AFA;
  ksObjectParts7 = $00002AFB;
  ksObjectVariableTable = $00002AFC;
  ksObjectSketchs = $00002AFD;
  ksObjectSketch = $00002AFE;
  ksObjectExtrussions = $00002AFF;
  ksObjectExtrusion = $00002B00;
  ksObjectBody7 = $00002B01;
  ksObjectCutExtrusion = $00002B02;
  ksObjectSheetMetalBodies = $00002B03;
  ksObjectSheetMetalBody = $00002B04;
  ksObjectPoints3D = $00002B05;
  ksObjectPoint3D = $00002B06;
  ksObjectPoint3DParamCoord = $00002B07;
  ksObjectPoint3DParamDisplace = $00002B08;
  ksObjectPoint3DParamIntersect = $00002B09;
  ksObjectPoint3DParamCenter = $00002B0A;
  ksObjectPoint3DParamCurve = $00002B0B;
  ksObjectPoint3DParamSurface = $00002B0C;
  ksObjectPoint3DParamProjection = $00002B0D;
  ksObjectSheetMetalBend = $00002B0E;
  ksObjectSheetMetalBends = $00002B0F;
  ksObjectSheetMetalLineBend = $00002B10;
  ksObjectSheetMetalLineBends = $00002B11;
  ksObjectSheetMetalHole = $00002B12;
  ksObjectSheetMetalHoles = $00002B13;
  ksObjectSheetMetalCut = $00002B14;
  ksObjectSheetMetalCuts = $00002B15;
  ksObjectLineDimensions3D = $00002B16;
  ksObjectBaseLineDimension3D = $00002B17;
  ksObjectLineDimension3D = $00002B18;
  ksObjectRadialDimension3D = $00002B19;
  ksObjectDiametralDimension3D = $00002B1A;
  ksObjectRadialDimensions3D = $00002B1B;
  ksObjectDiametralDimensions3D = $00002B1C;
  ksObjectAngleDimension3D = $00002B1D;
  ksObjectAngleDimensions3D = $00002B1E;
  ksObjectLocalCoordinateSystems = $00002B1F;
  ksObjectLocalCoordinateSystem = $00002B20;
  ksObjectLocalCSAxesDirectionParam = $00002B21;
  ksObjectLocalCSOrientByObjectParam = $00002B22;
  ksObjectLocalCSEulerParam = $00002B23;
  ksObjectSpline3D = $00002B24;
  ksObjectSplines3D = $00002B25;
  ksObjectCurveVertexParam = $00002B26;
  ksObjectPolyLines = $00002B27;
  ksObjectPolyLine = $00002B28;
  ksObjectLeaders3D = $00002B29;
  ksObjectLeader3D = $00002B2A;
  ksObjectMarkLeader3D = $00002B2B;
  ksObjectRough3D = $00002B2C;
  ksObjectRoughs3D = $00002B2D;
  ksObjectPositionLeader3D = $00002B2E;
  ksObjectBrandLeader3D = $00002B2F;
  ksObjectBase3D = $00002B30;
  ksObjectBases3D = $00002B31;
  ksObjectTolerances3D = $00002B32;
  ksObjectTolerance3D = $00002B33;
  ksObjectControlPoints = $00002B34;
  ksObjectControlPoint = $00002B35;
  ksObjectConjunctivePoints = $00002B36;
  ksObjectConjunctivePoint = $00002B37;
  ksObjectSplitLines = $00002B38;
  ksObjectSplitLine = $00002B39;
  ksObjectSurfacePatches = $00002B3A;
  ksObjectSurfacePatch = $00002B3B;
  ksObjectFaceRemovers = $00002B3C;
  ksObjectFaceRemover = $00002B3D;
  ksObjectSurfaceSewers = $00002B3E;
  ksObjectSurfaceSewer = $00002B3F;
  ksObjectNurbsSurfaces = $00002B40;
  ksObjectNurbsSurface = $00002B41;
  ksObjectSurfacesIntersectionCurves = $00002B42;
  ksObjectSurfacesIntersectionCurve = $00002B43;
  ksObjectEquidistants3D = $00002B44;
  ksObjectEquidistant3D = $00002B45;
  ksObjectTrimmedCurves = $00002B46;
  ksObjectTrimmedCurve = $00002B47;
  ksObjectFeaturePatterns = $00002B48;
  ksObjectLinearPattern = $00002B49;
  ksObjectCircularPattern = $00002B4A;
  ksObjectPathPattern = $00002B4B;
  ksObjectPartsLinearPattern = $00002B4C;
  ksObjectPartsCircularPattern = $00002B4D;
  ksObjectPartsPathPattern = $00002B4E;
  ksObjectAuxLinearPattern = $00002B4F;
  ksObjectAuxCircularPattern = $00002B50;
  ksObjectAuxPathPattern = $00002B51;
  ksObjectPointDrivenPattern = $00002B52;
  ksObjectPartsPointDrivenPattern = $00002B53;
  ksObjectDerivedPattern = $00002B54;
  ksObjectMirrorPattern = $00002B55;
  ksObjectShellMirrorPattern = $00002B56;
  ksObjectAuxMirrorPattern = $00002B57;
  ksObjectRuledSurfaces = $00002B58;
  ksObjectRuledSurface = $00002B59;
  ksObjectExtensionSurfaces = $00002B5A;
  ksObjectExtensionSurface = $00002B5B;
  ksObjectEquidistantSurfaces = $00002B5C;
  ksObjectEquidistantSurface = $00002B5D;
  ksObjectTrimmedSurfaces = $00002B5E;
  ksObjectTrimmedSurface = $00002B5F;
  ksObjectVector3D = $00002B60;
  ksObjectVector3DBy2VertexesParameters = $00002B61;
  ksObjectVector3DByCoefficientsParameters = $00002B62;
  ksObjectVector3DBy2AnglesParameters = $00002B63;
  ksObjectVector3DByObjectParameters = $00002B64;
  ksObjectVector3DAlongSurfaceNormalParameters = $00002B65;
  ksObjectVector3DByCurveParameters = $00002B66;
  ksObjectVector3DByScreenNormalParameters = $00002B67;
  ksObjectVector3DByLocalCSParameters = $00002B68;
  ksObjectConnectCurves = $00002B69;
  ksObjectConnectCurve = $00002B6A;
  ksObjectFilletCurves = $00002B6B;
  ksObjectFilletCurve = $00002B6C;
  ksObjectSurfaceThickenings = $00002B6D;
  ksObjectSurfaceThickening = $00002B6E;
  ksObjectArcs3D = $00002B6F;
  ksObjectArc3D = $00002B70;
  ksObjectAuxPointDrivenPattern = $00002B71;
  ksObjectBodiesPointDrivenPattern = $00002B72;
  ksObjectTablePattern = $00002B73;
  ksObjectPartsTablePattern = $00002B74;
  ksObjectAuxTablePattern = $00002B75;
  ksObjectBodiesTablePattern = $00002B76;
  ksObjectRotateds = $00002B77;
  ksObjectRotated = $00002B78;
  ksObjectCutRotated = $00002B79;
  ksObjectExtrusionSurfaces = $00002B7A;
  ksObjectExtrusionSurface = $00002B7B;
  ksObjectRotatedSurfaces = $00002B7C;
  ksObjectRotatedSurface = $00002B7D;
  ksObjectPoint3DParamBySphere = $00002B7E;
  ksObjectPoint3DParamByCylinder = $00002B7F;
  ksObjectMeshPointsSurfaces = $00002B80;
  ksObjectMeshPointsSurface = $00002B81;
  ksObjectCloudPointsSurfaces = $00002B82;
  ksObjectCloudPointsSurface = $00002B83;
  ksObjectImportedSurfaces = $00002B84;
  ksObjectImportedSurface = $00002B85;
  ksObjectBodiesLinearPattern = $00002B86;
  ksObjectBodiesCircularPattern = $00002B87;
  ksObjectBodiesPathPattern = $00002B88;
  ksObjectScalings3D = $00002B89;
  ksObjectScaling3D = $00002B8A;
  ksObjectCurveOutLine = $00002B8B;
  ksObjectCurveOutLines = $00002B8C;
  ksObjectCurveByLaw = $00002B8D;
  ksObjectCurveByLaws = $00002B8E;
  ksObjectIsoparametricCurve = $00002B8F;
  ksObjectIsoparametricCurves = $00002B90;
  ksObjectIsoparametricCurvesSet = $00002B91;
  ksObjectIsoparametricCurvesSets = $00002B92;
  ksObjectSplineOnSurface = $00002B93;
  ksObjectSplinesOnSurfaces = $00002B94;
  ksObjectProjectionCurve = $00002B95;
  ksObjectProjectionCurves = $00002B96;
  ksObjectCurveBy2Projections = $00002B97;
  ksObjectCurvesBy2Projectionses = $00002B98;
  ksObjectContour3D = $00002B99;
  ksObjectContours3D = $00002B9A;
  ksObjectLineSegment3D = $00002B9B;
  ksObjectLineSegments3D = $00002B9C;
  ksObjectUnhistoredCurve3D = $00002B9D;
  ksObjectUnhistoredCurves3D = $00002B9E;
  ksObjectTechnicalDemand3D = $00002B9F;
  ksObjectEmbodiment = $00002BA0;
  ksObjectOperationLinearDimension = $00002BA1;
  ksObjectOperationAngularDimension = $00002BA2;
  ksObjectOperationRadialDimension = $00002BA3;
  ksObjectOperationDiametralDimension = $00002BA4;
  ksObjectSketchLinearDimension = $00002BA5;
  ksObjectSketchAngularDimension = $00002BA6;
  ksObjectSketchBreakAngularDimension = $00002BA7;
  ksObjectSketchRadialDimension = $00002BA8;
  ksObjectSketchBreakRadialDimension = $00002BA9;
  ksObjectSketchDiametralDimension = $00002BAA;
  ksObjectConicSpiral3D = $00002BAB;
  ksObjectCylindricSpiral3D = $00002BAC;
  ksObjectSpirals3D = $00002BAD;
  ksObjectPointsArrOnCurve = $00002BAE;
  ksObjectPointsArrsOnCurves = $00002BAF;
  ksObjectPointsArrOnSurface = $00002BB0;
  ksObjectPointsArrsOnSurfaces = $00002BB1;
  ksObjectPointsArrFromFile = $00002BB2;
  ksObjectPointsArrsFromFiles = $00002BB3;
  ksObjectAxis3D = $00002BB4;
  ksObjectAxes3D = $00002BB5;
  ksObjectAxis3DBy2Points = $00002BB6;
  ksObjectAxis3DBy2Planes = $00002BB7;
  ksObjectAxis3DByConeface = $00002BB8;
  ksObjectAxis3DByEdge = $00002BB9;
  ksObjectAxis3DByPointAndObject = $00002BBA;
  ksObjectAxis3DByOperation = $00002BBB;
  ksObjectPlanes3D = $00002BBC;
  ksObjectPlane3D = $00002BBD;
  ksObjectPlane3DByPlaneCurve = $00002BBE;
  ksObjectPlane3DTangentToFaceInPoint = $00002BBF;
  ksObjectPlane3DByOffset = $00002BC0;
  ksObjectPlane3DBy3Points = $00002BC1;
  ksObjectPlane3DByAngle = $00002BC2;
  ksObjectPlane3DByEdgeAndPoint = $00002BC3;
  ksObjectPlane3DParallelByPoint = $00002BC4;
  ksObjectPlane3DPerpendicularByEdge = $00002BC5;
  ksObjectPlane3DNormalToSurface = $00002BC6;
  ksObjectPlane3DMiddle = $00002BC7;
  ksObjectPlane3DByEdgeAndPlane = $00002BC8;
  ksObjectPlane3DBy2Edge = $00002BC9;
  ksObjectPlane3DTangentToFace = $00002BCA;
  ksObjectUserObject3D = $00002BCB;
  ksObjectUserObjects3D = $00002BCC;
  ksObjectLinearPatternAnyCopy = $00002BCD;
  ksObjectCircularPatternAnyCopy = $00002BCE;
  ksObjectPathPatternAnyCopy = $00002BCF;
  ksObjectPointDrivenPatternAnyCopy = $00002BD1;
  ksObjectTablePatternAnyCopy = $00002BD2;
  ksObjectLinearUnhistoriedDimension = $00002BD3;
  ksObjectAngularUnhistoriedDimension = $00002BD4;
  ksObjectRadialUnhistoriedDimension = $00002BD5;
  ksObjectDiametralUnhistoriedDimension = $00002BD6;
  ksObjectPlacement3D = $00002BD7;
  ksObjectLayers3D = $00002BD8;
  ksObjectLayer3D = $00002BD9;
  ksObjectLayerGroups3D = $00002BDA;
  ksObjectLayerGroup3D = $00002BDB;
  ksObjectDocument3DManager = $00002BDC;
  ksObjectToleranceRecalc = $00002BDD;
  ksObjectSpecRough3D = $00002BDE;
  ksObjectSketchBreakLinearDimension = $00002BDF;
  ksObjectMathCurve3D = $00002BE0;
  ksObjectMathSurface3D = $00002BE1;
  ksObjectBilletObsolete = $00002BE2;
  ksObjectBilletsObsoletes = $00002BE3;
  ksObjectCopyGeometry = $00002BE4;
  ksObjectCopiesGeometry = $00002BE5;
  ksObjectCollectionGeometry = $00002BE6;
  ksObjectCollectionsGeometry = $00002BE7;
  ksObjectUserWireFrame3D = $00002BE8;
  ksObjectThreads = $00002BE9;
  ksObjectThread = $00002BEA;
  ks3dMateConstraints = $00002BEB;
  ksMate3DByAngle = $00002BEC;
  ksMate3DByTangent = $00002BED;
  ksMate3DSymmetry = $00002BEE;
  ksMate3DTransmission = $00002BEF;
  ksMate3DCamGear = $00002BF0;
  ksMate3DDependentPosition = $00002BF1;
  ksObjectHoles3D = $00002BF2;
  ksObjectHole3D = $00002BF3;
  ksObjectCountersinkHoleParameters = $00002BF4;
  ksObjectSpotfacingHoleParameters = $00002BF5;
  ksObjectCountersinkSpotfacingHoleParameters = $00002BF6;
  ksObjectConicHoleParameters = $00002BF7;
  ksObjectDrawingObject = $000032C8;
  ksObjectDrawingText = $000032C9;
  ksObjectDrawingTexts = $000032CA;
  ksObjectStraightAxis = $000032CB;
  ksObjectCircleAxis = $000032CC;
  ksObjectArcAxis = $000032CD;
  ksObjectBuildingAxes = $000032CE;
  ksObjectAxisJut = $000032CF;
  ksObjectMarkNodes = $000032D0;
  ksObjectMarkNode = $000032D1;
  ksObjectMarkOnLeader = $000032D2;
  ksObjectMarkOnLine = $000032D3;
  ksObjectMarkInsideForm = $000032D4;
  ksObjectMarks = $000032D5;
  ksObjectCutUnitMarking = $000032D6;
  ksObjectCutUnitMarkings = $000032D7;
  ksObjectUnitMarking = $000032D8;
  ksObjectUnitMarkings = $000032D9;
  ksObjectUnitNumber = $000032DA;
  ksObjectUnitNumbers = $000032DB;
  ksObjectMultiTextLeader = $000032DC;
  ksObjectMultiTextLeaders = $000032DD;
  ksObjectBrace = $000032DE;
  ksObjectBraces = $000032DF;
  ksObjectLineSegments = $000032E0;
  ksObjectLineSegment = $000032E1;
  ksObjectArcs = $000032E2;
  ksObjectArc = $000032E3;
  ksObjectRadialDimension = $000032E4;
  ksObjectDiametralDimension = $000032E5;
  ksObjectBreakRadialDimension = $000032E6;
  ksObjectRadialDimensions = $000032E7;
  ksObjectBreakRadialDimensions = $000032E8;
  ksObjectDiametralDimensions = $000032E9;
  ksObjectLineDimension = $000032F1;
  ksObjectLineDimensions = $000032F2;
  ksObjectBreakLineDimension = $000032F3;
  ksObjectBreakLineDimensions = $000032F4;
  ksObjectHeightDimension = $000032F5;
  ksObjectHeightDimensions = $000032F6;
  ksObjectAngleDimension = $000032F7;
  ksObjectBreakAngleDimension = $000032F8;
  ksObjectAngleDimensions = $000032F9;
  ksObjectArcDimension = $000032FA;
  ksObjectArcDimensions = $000032FB;
  ksObjectLeader = $000032FC;
  ksObjectLeaders = $000032FD;
  ksObjectRough = $000032FE;
  ksObjectRoughs = $000032FF;
  ksObjectMarkLeader = $00003300;
  ksObjectBrandLeader = $00003301;
  ksObjectPositionLeader = $00003302;
  ksObjectChangeLeader = $00003303;
  ksObjectBase = $00003304;
  ksObjectBases = $00003305;
  ksObjectDrawingTable = $00003306;
  ksObjectDrawingTables = $00003307;
  ksObjectTolerance = $00003308;
  ksObjectTolerances = $00003309;
  ksObjectCutLines = $0000330A;
  ksObjectCutLine = $0000330B;
  ksObjectViewPointer = $0000330C;
  ksObjectViewPointers = $0000330D;
  ksObjectMultiline = $0000330E;
  ksObjectMultilines = $0000330F;
  ksObjectDrawingContour = $00003310;
  ksObjectDrawingContours = $00003311;
  ksObjectCircles = $00003312;
  ksObjectCircle = $00003313;
  ksObjectPoints = $00003314;
  ksObjectPoint = $00003315;
  ksObjectBeziers = $00003316;
  ksObjectBezier = $00003317;
  ksObjectMacroObjects = $00003318;
  ksObjectMacroObject = $00003319;
  ksObjectLines = $0000331A;
  ksObjectLine = $0000331B;
  ksObjectPolyLines2D = $0000331C;
  ksObjectPolyLine2D = $0000331D;
  ksObjectNurbses = $0000331E;
  ksObjectNurbs = $0000331F;
  ksObjectRasters = $00003320;
  ksObjectRaster = $00003321;
  ksObjectOleDrawingObjects = $00003322;
  ksObjectOleDrawingObject = $00003323;
  ksObjectEllipses = $00003324;
  ksObjectEllipse = $00003325;
  ksObjectEllipseArcs = $00003326;
  ksObjectEllipseArc = $00003327;
  ksObjectRectangles = $00003328;
  ksObjectRectangle = $00003329;
  ksObjectRegularPolygons = $0000332A;
  ksObjectRegularPolygon = $0000332B;
  ksObjectEquidistants = $0000332C;
  ksObjectEquidistant = $0000332D;
  ksObjectInsertionFragment = $0000332E;
  ksObjectInsertionView = $0000332F;
  ksObjectInsertionObjects = $00003330;
  ksObjectInsertionDefinition = $00003331;
  ksObjectCentreMarkers = $00003332;
  ksObjectCentreMarker = $00003333;
  ksObjectRemoteElements = $00003334;
  ksObjectRemoteElement = $00003335;
  ksObjectAxisLines = $00003336;
  ksObjectAxisLine = $00003337;
  ksObjectHatchParam = $00003338;
  ksObjectDrawingGroup = $00003339;
  ksObjectDrawingGroups = $0000333A;
  ksObjectCurve2D = $0000333B;
  ksObjectHatches = $0000333C;
  ksObjectHatch = $0000333D;
  ksObjectColourings = $0000333E;
  ksObjectColouring = $0000333F;
  ksObjectSpecRough = $00003340;
  ksObjectTechnicalDemand = $00003341;
  ksObjectAnnotativeLineSegment = $00003342;
  ksObjectAnnotativeCircle = $00003343;
  ksObjectAnnotativeEllipse = $00003344;
  ksObjectAnnotativeArc = $00003345;
  ksObjectAnnotativeEllipseArc = $00003346;
  ksObjectAnnotativePolyLine = $00003347;
  ksObjectAnnotativePoint = $00003348;
  ksObjectAnnotativeText = $00003349;
  ksObjectBuildingCutLines = $0000334B;
  ksObjectBuildingCutLine = $0000334C;
  ksObjectWaveLines = $0000334D;
  ksObjectWaveLine = $0000334E;
  ksObjectBrokenLines = $0000334F;
  ksObjectBrokenLine = $00003350;
  ksObjectCopyObjectParam = $00003351;
  ksObjectCurveCopyObjectParam = $00003352;
  ksObjectCircleCopyObjectParam = $00003353;
  ksObjectCircularCopyObjectParam = $00003354;
  ksObjectMeshCopyObjectParam = $00003355;
  ksObjectLocalCoordinateSystem2D = $00003356;
  ksObjectLocalCoordinateSystems2D = $00003357;
  ksObjectAttachedLeader = $00003358;
  ksObjectAttachedLeaders = $00003359;
  ksObjectLoadCombinationsParam = $0000335A;
  ksObjectOpenDocumentParam = $0000335B;
  ksObjectAssociationTables = $0000335C;
  ksObjectAssociationTable = $0000335D;
  ksObjectNurbsesByPoints = $0000335E;
  ksObjectNurbsByPoints = $0000335F;
  ksObjectProcess2D = $00003360;
  ksObjectPhantom2D = $00003361;
  ksObjectProcess3D = $00003362;

// Constants for enum ControlTypeEnum
type
  ControlTypeEnum = TOleEnum;
const
  ksControlUnknown = $00000000;
  ksControlSeparator = $00000001;
  ksControlEditInt = $00000002;
  ksControlEditReal = $00000003;
  ksControlEditStr = $00000004;
  ksControlListInt = $00000005;
  ksControlListReal = $00000006;
  ksControlListStr = $00000007;
  ksControlCheckBox = $00000008;
  ksControlMultiButton = $00000009;
  ksControlGrid = $0000000A;
  ksControlSlideBox = $0000000B;
  ksControlUser = $0000000C;
  ksControlTextButton = $0000000D;
  ksControlSpinInt = $0000000E;
  ksControlSpinReal = $0000000F;
  ksControlFileName = $00000010;
  ksControlColor = $00000011;
  ksControlEditList = $00000012;
  ksControlEditLength = $00000013;
  ksControlEditAngle = $00000014;
  ksControlEditPoint = $00000015;
  ksControlListLength = $00000016;
  ksControlListAngle = $00000017;
  ksControlBmpList = $00000018;
  ksControlLibExplorer = $00000019;
  ksControlListScale = $0000001A;
  ksControlLineStyle = $0000001B;
  ksControlOpticalProps = $0000001C;
  ksControlEditCheckBox = $0000001D;
  ksControlPointStyle = $0000001E;
  ksControlPointStyle3D = $0000001F;
  ksControlLineStyle3D = $00000020;
  ksControlHatchStyle = $00000021;
  ksControlGroupBegin = $00000022;
  ksControlGroupEnd = $00000023;
  ksControlTwinSwitcher = $00000024;
  ksControlPoint3D = $00000025;
  ksControlPreviewText = $00000026;
  ksControlAggregateTriple = $00000028;
  ksControlBasePoint = $00000029;
  ksControlLinkButton = $0000002A;
  ksControlMarking = $0000002B;

// Constants for enum DocumentTypeEnum
type
  DocumentTypeEnum = TOleEnum;
const
  ksDocumentUnknown = $00000000;
  ksDocumentDrawing = $00000001;
  ksDocumentFragment = $00000002;
  ksDocumentSpecification = $00000003;
  ksDocumentPart = $00000004;
  ksDocumentAssembly = $00000005;
  ksDocumentTextual = $00000006;
  ksDocumentTechnologyAssembly = $00000007;

// Constants for enum SeparatorTypeEnum
type
  SeparatorTypeEnum = TOleEnum;
const
  ksSeparatorDownName = $00000000;
  ksSeparatorUpName = $00000001;
  ksSeparatorWithoutLine = $00000002;
  ksSeparatorBMPLeftName = $00000003;
  ksSeparatorBMPRightName = $00000004;

// Constants for enum CheckStateEnum
type
  CheckStateEnum = TOleEnum;
const
  ksCheckUndefined = $00000000;
  ksCheckCurrent = $00000001;
  ksCheckFixed = $00000002;
  ksCheckVariable = $00000003;

// Constants for enum PropertyControlNameVisibility
type
  PropertyControlNameVisibility = TOleEnum;
const
  ksNameAlwaysVisible = $00000000;
  ksNameHorizontalVisible = $00000001;
  ksNameVerticalVisible = $00000002;
  ksNameNoVisible = $00000003;

// Constants for enum ButtonTypeEnum
type
  ButtonTypeEnum = TOleEnum;
const
  ksPushButton = $00000000;
  ksCheckButton = $00000001;
  ksRadioButton = $00000002;

// Constants for enum ksPropertyUserControlNotifyEnum
type
  ksPropertyUserControlNotifyEnum = TOleEnum;
const
  puCreateOCX = $00000001;
  puDestroyOCX = $00000002;

// Constants for enum SlideTypeEnum
type
  SlideTypeEnum = TOleEnum;
const
  ksSlide = $FFFFFFFF;
  ksBitmap = $00000001;
  ksGroup = $00000002;
  ksKompasDocument = $00000003;
  ksKompasText = $00000004;

// Constants for enum DefaultFixTypeEnum
type
  DefaultFixTypeEnum = TOleEnum;
const
  ksAllFixOff = $FFFFFFFF;
  ksAllFix = $00000000;
  ksPointFix = $00000001;
  ksAngleFix = $00000002;

// Constants for enum FrameRegimeEnum
type
  FrameRegimeEnum = TOleEnum;
const
  ksFrameMinimize = $00000000;
  ksFrameMaximize = $00000001;
  ksFrameRestore = $00000002;

// Constants for enum ZoomTypeEnum
type
  ZoomTypeEnum = TOleEnum;
const
  ksZoomNext = $00000000;
  ksZoomPrevious = $00000001;
  ksZoomAll = $00000002;

// Constants for enum ksDocumentFrameNotifyEnum
type
  ksDocumentFrameNotifyEnum = TOleEnum;
const
  frBeginPaint = $00000001;
  frClosePaint = $00000002;
  frMouseDown = $00000003;
  frMouseUp = $00000004;
  frMouseDblClick = $00000005;
  frBeginPaintGL = $00000006;
  frClosePaintGL = $00000007;
  frAddGabarit = $00000008;
  frActivate = $00000009;
  frDeactivate = $0000000A;
  frCloseFrame = $0000000B;
  frMouseMove = $0000000C;
  frShowOcxTree = $0000000D;
  frBeginPaintTmpObjects = $0000000E;
  frClosePaintTmpObjects = $0000000F;

// Constants for enum StructType2DEnum
type
  StructType2DEnum = TOleEnum;
const
  ko_Type1 = $00000001;
  ko_Type2 = $00000002;
  ko_Type3 = $00000003;
  ko_Type5 = $00000004;
  ko_Type6 = $00000005;
  ko_Phantom = $00000006;
  ko_PlacementParam = $00000007;
  ko_ViewParam = $00000008;
  ko_LayerParam = $00000009;
  ko_RequestInfo = $0000000A;
  ko_LineSegParam = $0000000B;
  ko_ArcByAngleParam = $0000000C;
  ko_ArcByPointParam = $0000000D;
  ko_MathPointParam = $0000000E;
  ko_RectParam = $0000000F;
  ko_PointParam = $00000010;
  ko_BezierPointParam = $00000011;
  ko_NurbsPointParam = $00000012;
  ko_BezierParam = $00000013;
  ko_CircleParam = $00000014;
  ko_LineParam = $00000015;
  ko_EllipseParam = $00000016;
  ko_EllipsArcParam = $00000017;
  ko_EllipsArcParam1 = $00000018;
  ko_EquidParam = $00000019;
  ko_HatchParam = $0000001A;
  ko_ParagraphParam = $0000001B;
  ko_TextParam = $0000001C;
  ko_TextLineParam = $0000001D;
  ko_TextItemFont = $0000001E;
  ko_TextItemParam = $0000001F;
  ko_StandartSheet = $00000020;
  ko_SheetSize = $00000021;
  ko_SheetPar = $00000022;
  ko_DocumentParam = $00000023;
  ko_ColumnInfoParam = $00000024;
  ko_AttributeType = $00000025;
  ko_Attribute = $00000026;
  ko_LibraryAttrTypeParam = $00000027;
  ko_TAN = $00000028;
  ko_CON = $00000029;
  ko_DimText = $0000002A;
  ko_LDimSource = $0000002B;
  ko_DimDrawing = $0000002C;
  ko_LDimParam = $0000002D;
  ko_LBreakDimSource = $0000002E;
  ko_BreakDimDrawing = $0000002F;
  ko_LBreakDimParam = $00000030;
  ko_ADimSource = $00000031;
  ko_ADimParam = $00000032;
  ko_ABreakDimParam = $00000033;
  ko_RDimSource = $00000034;
  ko_RDimDrawing = $00000035;
  ko_RDimParam = $00000036;
  ko_RBreakDrawing = $00000037;
  ko_RBreakDimParam = $00000038;
  ko_RoughPar = $00000039;
  ko_ShelfPar = $0000003A;
  ko_RoughParam = $0000003B;
  ko_LeaderParam = $0000003C;
  ko_PosLeaderParam = $0000003D;
  ko_BrandLeaderParam = $0000003E;
  ko_MarkerLeaderParam = $0000003F;
  ko_BaseParam = $00000040;
  ko_CutLineParam = $00000041;
  ko_ViewPointerParam = $00000042;
  ko_ToleranceBranch = $00000043;
  ko_ToleranceParam = $00000044;
  ko_CurvePattern = $00000045;
  ko_CurvePicture = $00000046;
  ko_CurvePatternEx = $00000047;
  ko_CurveStyleParam = $00000048;
  ko_DimensionPartsParam = $00000049;
  ko_TextStyleParam = $0000004A;
  ko_ConicArcParam = $0000004B;
  ko_PolylineParam = $0000004C;
  ko_LibStyle = $0000004D;
  ko_TechnicalDemandParam = $0000004E;
  ko_SpecRoughParam = $0000004F;
  ko_DimensionOptions = $00000050;
  ko_SpcColumnParam = $00000051;
  ko_LibraryStyleParam = $00000052;
  ko_InertiaParam = $00000053;
  ko_MassInertiaParam = $00000054;
  ko_VariableParam = $00000055;
  ko_SnapOptions = $00000056;
  ko_NurbsParam = $00000057;
  ko_InsertFragmentParam = $00000058;
  ko_ConstraintParam = $00000059;
  ko_CornerParam = $0000005A;
  ko_RectangleParam = $0000005B;
  ko_RegularPolygonParam = $0000005C;
  ko_CentreParam = $0000005D;
  ko_DocAttachSpcParam = $0000005E;
  ko_SpcObjParam = $0000005F;
  ko_RasterParam = $00000060;
  ko_RecordTypeAttrParam = $00000061;
  ko_NumberTypeAttrParam = $00000062;
  ko_SpcStyleColumnParam = $00000063;
  ko_SpcStyleSectionParam = $00000064;
  ko_SpcSubSectionParam = $00000065;
  ko_SpcTuningSectionParam = $00000066;
  ko_SpcTuningStyleParam = $00000067;
  ko_SpcStyleParam = $00000068;
  ko_SpcDescrParam = $00000069;
  ko_QualityItemParam = $0000006A;
  ko_QualityContensParam = $0000006B;
  ko_LtVariant = $0000006C;
  ko_ContourParam = $0000006D;
  ko_DoubleValue = $0000006E;
  ko_Char255 = $0000006F;
  ko_UserParam = $00000070;
  ko_HatchLineParam = $00000071;
  ko_HatchStyleParam = $00000072;
  ko_OrdinatedSourceParam = $00000073;
  ko_OrdinatedDrawingParam = $00000074;
  ko_OrdinatedDimParam = $00000075;
  ko_SheetOptions = $00000076;
  ko_InsertFragmentParamEx = $00000077;
  ko_TreeNodeParam = $00000078;
  ko_ViewColorParam = $00000079;
  ko_AssociationViewParam = $0000007A;
  ko_AxisLineParam = $0000007B;
  ko_TextDocumentParam = $0000007C;
  ko_RemoteElementParam = $0000007D;
  ko_CopyObjectParam = $0000007E;
  ko_OverlapObjectOptions = $0000007F;
  ko_ChangeLeaderParam = $00000080;
  ko_ParametrisationParam = $00002328;

// Constants for enum PropertyManagerLayout
type
  PropertyManagerLayout = TOleEnum;
const
  pmFloating = $00000000;
  pmAlignTop = $00000001;
  pmAlignBottom = $00000002;
  pmAlignRight = $00000003;
  pmAlignLeft = $00000004;

// Constants for enum ProcessTypeEnum
type
  ProcessTypeEnum = TOleEnum;
const
  prUnknown = $00000000;
  prPoint = $00002710;
  prPointAlong = $00002711;
  prIntersectPoint = $00002712;
  prAllIntersectPoint = $00002713;
  prPointOnDistance = $00002714;
  prLineSeg = $00002715;
  prParallelLineSeg = $00002716;
  prPerpendLineSeg = $00002717;
  prTanLineSegByOutsidePnt = $00002718;
  prTanLineSegByPntOn = $00002719;
  prTangent2LineSeg = $0000271A;
  prContourLineSeg = $0000271B;
  prContourParallelLineSeg = $0000271C;
  prContourPerpendLineSeg = $0000271D;
  prContourTanLineSegByOutsidePnt = $0000271E;
  prLine = $0000271F;
  prVerticalLine = $00002720;
  prHorizontalLine = $00002721;
  prPerpendLine = $00002722;
  prParallelLine = $00002723;
  prTangent2Line = $00002724;
  prTanLineByPntOn = $00002725;
  prTanLineByOutsidePnt = $00002726;
  prBisectorLine = $00002727;
  prCircle = $00002728;
  prCircle3Points = $00002729;
  prCircleCentreOnEl = $0000272A;
  prCircleTangent = $0000272B;
  prCircleTangent2 = $0000272C;
  prCircleTangent3 = $0000272D;
  prCircle2Points = $0000272E;
  prCircleArc = $0000272F;
  prArc3Points = $00002730;
  prArc2PointsAngle = $00002731;
  prArc2Points = $00002732;
  prArcTangent = $00002733;
  prContourArc = $00002734;
  prContourConArc = $00002735;
  prEllipse = $00002736;
  prEllipseGabDiagonal = $00002737;
  prEllipseTangent2 = $00002738;
  prEllipseCentre3Points = $00002739;
  prEllipseParallel3Points = $0000273A;
  prEllipseParallelCentre2Points = $0000273B;
  prEllipseGabCentrePoint = $0000273C;
  prBezier = $0000273D;
  prContourBezier = $0000273E;
  prPolyline = $0000273F;
  prNurbs = $00002740;
  prContourNurbs = $00002741;
  prRectangle = $00002742;
  prRectangleCentrePoint = $00002743;
  prPolygon = $00002744;
  prEquidToObj = $00002745;
  prAssemblyEquid = $00002746;
  prLineDimension = $00002747;
  prCommonBaseLineDim = $00002748;
  prChainLineDim = $00002749;
  prCommonLineLineDim = $0000274A;
  pr2ObjectsLineDim = $0000274B;
  prCutLineDimension = $0000274C;
  prAngleDimension = $0000274D;
  prCommonBaseAngleDim = $0000274E;
  prChainAngleDim = $0000274F;
  prCommonLineAngleDim = $00002750;
  prCutAngleDimension = $00002751;
  prRadialDimension = $00002752;
  prRadialDimensionWithBreak = $00002753;
  prDiametralDimension = $00002754;
  prArcDimension = $00002755;
  prOrdinateDimension = $00002756;
  prLeader = $00002757;
  prBrandLeader = $00002758;
  prMarkLeader = $00002759;
  prPositionLeader = $0000275A;
  prChangeLeader = $0000275B;
  prHatch = $0000275C;
  prText = $0000275D;
  prTable = $0000275E;
  prRough = $0000275F;
  prBase = $00002760;
  prCutLine = $00002761;
  prViewPointer = $00002762;
  prRemoteElement = $00002763;
  prAxedLineSegment = $00002764;
  prCentreMarker = $00002765;
  prAssemblyContour = $00002766;
  prFormTolerance = $00002767;
  prInsertRaster = $00002768;
  prMakeMacro = $00002769;
  prInsertFragment = $0000276A;
  prCreateSheetView = $0000276B;
  prInsertOLEObject = $0000276C;
  prCreateStandartSheetView = $0000276D;
  prCreateSectionSheetView = $0000276E;
  prCreateArbitrarySheetView = $0000276F;
  prCreateProjectionSheetView = $00002770;
  prCreateArrowSheetView = $00002771;
  prCreateRemoteSheetView = $00002772;
  prCreateLocalSheetView = $00002773;
  prCreateLocalSectionSheetView = $00002774;
  prCreateBrokenSheetView = $00002775;
  prContour = $00002776;
  prChamfer = $00002777;
  prChamferPolyContour = $00002778;
  prFillet = $00002779;
  prFilletPolyContour = $0000277A;
  prProjectionObject = $0000277B;
  prSmartDimension = $0000277C;
  prSmartAxedLineSegment = $0000277D;
  prMeasurePointProperties = $0000277E;
  prMeasureDistance2Points = $0000277F;
  prMeasureDistance2PointsByCurve = $00002780;
  prMeasureDistancePointObject = $00002781;
  prMeasureDistance2Curves = $00002782;
  prMeasureAngle2Lines = $00002783;
  prMeasureAngle3Points = $00002784;
  prPerimeter = $00002785;
  prMeasureArea = $00002786;
  prMix = $00002787;
  prMix3DRevolution = $00002788;
  prMix3DExtrision = $00002789;
  prMix3DExtrusion = $00002789;
  prObjectShift = $0000278A;
  prObjectShiftAngleLen = $0000278B;
  prObjectRotate = $0000278C;
  prObjectScale = $0000278D;
  prObjectSymmetry = $0000278E;
  prObjectMultiply = $0000278F;
  prObjectMultiplyByCurve = $00002790;
  prObjectMultiplyByCircle = $00002791;
  prObjectMultiplyByRing = $00002792;
  prObjectMultiplyByMesh = $00002793;
  prMoveDeformation = $00002794;
  prRotateDeformation = $00002795;
  prScaleDeformation = $00002796;
  prCutObjectPart = $00002797;
  prCutObjectPartBy2Points = $00002798;
  prJustify = $00002799;
  prRemoveChamfer = $0000279A;
  prBreakCurve = $0000279B;
  prBreakCurveNParts = $0000279C;
  prBlackBox = $0000279D;
  prConvertToNurbs = $0000279E;
  prParametricHorizontal = $0000279F;
  prParametricVertical = $000027A0;
  prParametricXAlign = $000027A1;
  prParametricYAlign = $000027A2;
  prParametricMergePoints = $000027A3;
  prParametricPointOnCurve = $000027A4;
  prParametricPointSymmetry = $000027A5;
  prParametricParallel = $000027A6;
  prParametricNormal = $000027A7;
  prParametricColinear = $000027A8;
  prParametricTangent = $000027A9;
  prParametricFixPoint = $000027AA;
  prParametricEqualRadiuses = $000027AB;
  prParametricEqualLength = $000027AC;
  prParametricFixDimension = $000027AD;
  prParametricChangeDimension = $000027AE;
  prParametricSelected = $000027AF;
  prParametricDeleteObjConstraints = $000027B0;
  prParametricDeleteAllConstraints = $000027B1;
  prSelectObject = $000027B2;
  prSelectLayer = $000027B3;
  prSelectSheetView = $000027B4;
  prSelectWithRect = $000027B5;
  prSelectOutSideRect = $000027B6;
  prSelectWithCutRect = $000027B7;
  prSelectWithCutPolyline = $000027B8;
  prExcludeObject = $000027B9;
  prExcludeLayer = $000027BA;
  prExcludeSheetView = $000027BB;
  prExcludeWithRect = $000027BC;
  prExcludeOutSideRect = $000027BD;
  prExcludeWithCutRect = $000027BE;
  prExcludeWithCutPolyline = $000027BF;
  prSmartLine = $000027C0;
  prBrace = $000027C1;
  prAutoDimL = $000027C2;
  prAutoDimA = $000027C3;
  prAutoDimD = $000027C4;
  prAutoDimR = $000027C5;
  prAutoDimLToPoint = $000027C6;
  prAutoDimLBreak = $000027C7;
  prAutoDimABreak = $000027C8;
  prTechnicalDemandPlacement = $000027C9;
  prDirectAxis = $000027CA;
  prArcAxis = $000027CB;
  prCircleAxis = $000027CC;
  prWaveLine = $000027CD;
  prMarkOnLDRPosNum = $000027CE;
  prMarkWoLDRPosNum = $000027CF;
  prKnotNumber = $000027D0;
  prUnitMarking = $000027D1;
  prCutUnitMarking = $000027D2;
  prMultiTextLeader = $000027D3;
  prColouring = $000027D4;
  prMultiLine = $000027D5;
  prBuildingCutLine = $000027D6;
  prBrokenLine = $000027D7;
  prCreateReport = $000027D8;
  prCreateAttachedLeaders = $000027D9;
  prEditProperties = $000027DA;
  prParametricBisector = $000027DB;
  prParametricFixedLenght = $000027DC;
  prParametricFixedAngle = $000027DD;
  prParametricPointOnCurveMiddle = $000027DE;
  prTechnicalDemand = $000027DF;
  prSpecRough = $000027E0;
  prMoveSpecRough = $000027E1;
  prDeleteHistory = $000027E2;
  prUndo = $000027E3;
  prRedo = $000027E4;
  prEmbodimentsReport = $000027E5;
  prArrayParamReport = $000027E6;
  prConicCurve = $000027E7;
  prConicCurve4Or5Point = $000027E8;
  prMarkOnLeader = $000027E9;
  prCutLineMultiple = $000027EA;
  prBuildingCutLineMultiple = $000027EB;
  prBaseExtrusion = $00004E20;
  prBossExtrusion = $00004E21;
  prCutExtrusion = $00004E22;
  prExtrusionSurface = $00004E23;
  prBaseRotated = $00004E24;
  prBossRotated = $00004E25;
  prCutRotated = $00004E26;
  prRotatedSurface = $00004E27;
  prBaseEvolution = $00004E28;
  prBossEvolution = $00004E29;
  prCutEvolution = $00004E2A;
  prEvolutionSurface = $00004E2B;
  prBaseLoft = $00004E2C;
  prBossLoft = $00004E2D;
  prCutLoft = $00004E2E;
  prLoftSurface = $00004E2F;
  prFillet3D = $00004E30;
  prChamfer3D = $00004E31;
  prCutByPlane = $00004E32;
  prCutBySketch = $00004E33;
  prMeshCopy = $00004E34;
  prCircularCopy = $00004E35;
  prCurveCopy = $00004E36;
  prMirrorCopy = $00004E37;
  prMirrorAllCopy = $00004E38;
  prDerivativePartArray = $00004E39;
  prMeshPartArray = $00004E3A;
  prCircularPartArray = $00004E3B;
  prCurvePartArray = $00004E3C;
  prIncline = $00004E3D;
  prShell = $00004E3E;
  prRib = $00004E3F;
  prHole = $00004E40;
  prThread = $00004E41;
  prCPlaneOffset = $00004E42;
  prCPlane3Points = $00004E43;
  prCPlaneAngle = $00004E44;
  prCPlaneEdgePoint = $00004E45;
  prCPlaneParallel = $00004E46;
  prCPlanePerpendicular = $00004E47;
  prCPlaneNormalToSurface = $00004E48;
  prCPlaneTangentToSurface = $00004E49;
  prCPlaneLineToEdge = $00004E4A;
  prCAxis2Points = $00004E4B;
  prCAxis2Planes = $00004E4C;
  prCAxisConeface = $00004E4D;
  prCAxisEdge = $00004E4E;
  prCAxisOperation = $00004E4F;
  prPolyline3D = $00004E50;
  prSpline3D = $00004E51;
  prCylindricSpiral = $00004E52;
  prConicSpiral = $00004E53;
  prImportedSurface = $00004E54;
  prInsertSketch = $00004E55;
  prInsertScetch = $00004E55;
  prEditSketch = $00004E56;
  prEditScetch = $00004E56;
  prOrientationScetch = $00004E57;
  prInPlacePartEdit = $00004E58;
  prOutPlacePartEdit = $00004E59;
  prAddDetail = $00004E5A;
  prAddAssembly = $00004E5B;
  prMateCoincident = $00004E5C;
  prMateConcentric = $00004E5D;
  prMateParallel = $00004E5E;
  prMatePerpendicular = $00004E5F;
  prMateOnDistance = $00004E60;
  prMateOnAngle = $00004E61;
  prMateTangent = $00004E62;
  prPartVariables = $00004E63;
  prCopyBilletPart = $00004E64;
  prMakeMoldCavity = $00004E65;
  prMakeUnionComps = $00004E66;
  prAddPartFromFile = $00004E67;
  prMovePart = $00004E68;
  prRotatePartWC = $00004E69;
  prRotatePartAxis = $00004E6A;
  prRotatePartPoint = $00004E6B;
  prMakeSplitLine = $00004E6C;
  prMeasureDistance3D = $00004E6D;
  prMeasurePerimeter3D = $00004E6E;
  prMeasureArea3D = $00004E6F;
  prMeasureMix3D = $00004E70;
  prMeasureInterferenceVolumes = $00004E71;
  prBaseShMtSolid = $00004E72;
  prShMtBend = $00004E73;
  prShMtCombinedBend = $00004E74;
  prShMtBendLine = $00004E75;
  prShMtBendHook = $00004E76;
  prShMtHole = $00004E77;
  prShMtCut = $00004E78;
  prBaseShMtPlate = $00004E79;
  prShMtClosedCorner = $00004E7A;
  prShMtBendStraighten = $00004E7B;
  prShMtBendBended = $00004E7C;
  prShMtBendParamUnfold = $00004E7D;
  prPatchSurface = $00004E7E;
  prSewSurface = $00004E7F;
  prMakeFaceRemover = $00004E80;
  prCPlaneMiddle = $00004E81;
  prCPointControl = $00004E82;
  prCPointConjunctive = $00004E83;
  prCAggregateOper = $00004E84;
  prCPlaneLineToFlat = $00004E85;
  prPoint3D = $00004E87;
  prLocalCoordinateSystem = $00004E88;
  prLineDimention3DPlane = $00004E89;
  prLineDimention3D = $00004E8A;
  prAngleDimention3D = $00004E8B;
  prRough3D = $00004E8C;
  prTolerance3D = $00004E8D;
  prBrandLeader3D = $00004E8E;
  prMarkerLeader3D = $00004E8F;
  prPositionLeader3D = $00004E90;
  prBase3D = $00004E91;
  prLeader3D = $00004E92;
  prSaveBody = $00004E93;
  prCreateSketch = $00004E94;
  prMeasureInformation = $00004E95;
  prEquidistant3D = $00004E96;
  prChoiceOperationResult = $00004E97;
  prChoiceBodyUnit = $00004E98;
  prSelectCurrentCS = $00004E99;
  prShmtRuledOperation = $00004E9A;
  prArc3D = $00004E9B;
  prConnectCurve = $00004E9C;
  prTrimCurve = $00004E9D;
  prFilletCurve = $00004E9E;
  prSwithOwnCS = $00004E9F;
  prScalingOperation = $00004EA0;
  prPointDrivenPattern = $00004EA1;
  prNurbs3DByObjects = $00004EA2;
  prCurveOperationCrossing = $00004EA3;
  prConvertToNurbsSurface3D = $00004EA5;
  prNurbsSurface3DByPoints = $00004EA6;
  prNurbsSurface3DByCurves = $00004EA7;
  prArrayPointsFromFile = $00004EA8;
  prArrayPointsOnCurve = $00004EA9;
  prArrayPointsByCloud = $00004EAA;
  prOffsetSurface = $00004EAB;
  prAuxObjectMultiplyByMesh = $00004EAC;
  prAuxObjectMultiplyByRing = $00004EAD;
  prAuxObjectMultiplyByCurve = $00004EAE;
  prTrimmedSurface = $00004EAF;
  prSurfaceToBody = $00004EB0;
  prAxisByDirection = $00004EB1;
  prRuledSurface = $00004EB2;
  prExtensionSurface = $00004EB3;
  prCPlaneTangentAtPoint = $00004EB4;
  prCPlaneAtCurve = $00004EB5;
  prArrayPintsOnSyrface = $00004EB6;
  prAuxObjectMultiplyMirror = $00004EB7;
  prOutlineCurve = $00004EB8;
  prSplineOnSurface = $00004EB9;
  prPartsPointDrivenPattern = $00004EBA;
  prChooseLinearPattern = $00004EBB;
  prChooseCircularPattern = $00004EBC;
  prChooseCurvePattern = $00004EBD;
  prChoosePointDrivenPattern = $00004EBE;
  prChooseTablePattern = $00004EBF;
  prChooseMirrorPattern = $00004EC0;
  prTablePattern = $00004EC1;
  prAuxTablePattern = $00004EC2;
  prPartsTablePattern = $00004EC3;
  prAuxPointDrivenPattern = $00004EC4;
  prBodiesLinearPattern = $00004EC5;
  prBodiesCircularPattern = $00004EC6;
  prBodiesCurvePattern = $00004EC7;
  prBodiesPointDrivenPattern = $00004EC8;
  prBodiesTablePattern = $00004EC9;
  prContour3D = $00004ECA;
  prCurveOper2Projection = $00004ECB;
  prCurveByLaw = $00004ECC;
  prBodyReposition = $00004ECD;
  prIsoparamCurve = $00004ECE;
  prIsoparamCurveArr = $00004ECF;
  prBindingMesh = $00004ED0;
  prSaveBodyAs = $00004ED1;
  prBlendSurface = $00004ED2;
  prLineSegment3D = $00004ED3;
  prEmbodiment = $00004ED4;
  prCreateSpecificationObjects = $00004ED5;
  prDeleteSpecificationObjects = $00004ED6;
  prCreateSpecificationFromAssembly = $00004ED7;
  prSpecRough3D = $00004ED8;
  prShmtRuledCowling = $00004ED9;
  prRepositionPart = $00004EDA;
  prAddLocalPartFromFile = $00004EDB;
  prAddLayoutGeometryFromFile = $00004EDC;
  prAddBilletPartFromFile = $00004EDD;
  prMateSymmetry = $00004EDE;
  prMateDependent = $00004EDF;
  prMateCamGear = $00004EE0;
  prMateRotation = $00004EE1;
  prMateRotationTransfer = $00004EE2;
  prTechnicalDemand3D = $00004EE3;
  prHoleSimple = $00004EE4;
  prHoleCounterbore = $00004EE5;
  prHoleCountersinking = $00004EE6;
  prHoleCounterdrill = $00004EE7;
  prHoleConic = $00004EE8;
  prPoint3DCoord = $00004EE9;
  prPoint3DDisplace = $00004EEA;
  prPoint3DIntersect = $00004EEB;
  prPoint3DCurve = $00004EEC;
  prPoint3DSurface = $00004EED;
  prPoint3DCenter = $00004EEE;
  prPoint3DProjection = $00004EEF;
  prPoint3DCylindrCoord = $00004EF0;
  prPoint3DSphericCoord = $00004EF1;
  prAlignShelfs = $00008CEB;
  prZoomWindow = $00007E9B;
  prMoveView = $00007EA2;
  prPanoramaView = $00007EA3;
  prRotateView = $00007EA4;
  prEditSelectedObject = $00008B98;
  prEditCopy = $0000E122;
  prEditCut = $0000E123;
  prEditPaste = $0000E125;

// Constants for enum DocumentCloseOptions
type
  DocumentCloseOptions = TOleEnum;
const
  kdDoNotSaveChanges = $00000000;
  kdSaveChanges = $00000001;
  kdPromptToSaveChanges = $00000002;

// Constants for enum ConvertCoordTypeEnum
type
  ConvertCoordTypeEnum = TOleEnum;
const
  kcDocument = $00000001;
  kcGeoView = $00000002;
  kcCurrentPlane = $00000003;

// Constants for enum FilterCondotionStateEnum
type
  FilterCondotionStateEnum = TOleEnum;
const
  ksStateUndefined = $FFFFFFFF;
  ksStateFALSE = $00000000;
  ksStateTRUE = $00000001;

// Constants for enum LtViewType
type
  LtViewType = TOleEnum;
const
  vtUnknown = $FFFFFFFF;
  vt_System = $00000000;
  vt_Normal = $00000001;
  vt_Arbitrary = $00000002;
  vt_Standart = $00000003;
  vt_Projected = $00000004;
  vt_Arrow = $00000005;
  vt_Remote = $00000006;
  vt_Section = $00000007;
  vt_Remote2D = $00000064;

// Constants for enum LayersGroupWayEnum
type
  LayersGroupWayEnum = TOleEnum;
const
  wgLayers = $00000000;
  wgLayersCharacteristics = $00000001;

// Constants for enum DrawingObjectTypeEnum
type
  DrawingObjectTypeEnum = TOleEnum;
const
  ksUnknown = $FFFFFFFF;
  ksAllObj = $00000000;
  ksDrLineSeg = $00000001;
  ksDrCircle = $00000002;
  ksDrArc = $00000003;
  ksDrDrawText = $00000004;
  ksDrPoint = $00000005;
  ksDrHatch = $00000007;
  ksDrBezier = $00000008;
  ksDrLDimension = $00000009;
  ksDrADimension = $0000000A;
  ksDrDDimension = $0000000D;
  ksDrRDimension = $0000000E;
  ksDrRBreakDimension = $0000000F;
  ksDrRough = $00000010;
  ksDrBase = $00000011;
  ksDrWPointer = $00000012;
  ksDrCut = $00000013;
  ksDrLeader = $00000014;
  ksDrPosLeader = $00000015;
  ksDrBrandLeader = $00000016;
  ksDrMarkerLeader = $00000017;
  ksDrTolerance = $00000018;
  ksDrTable = $00000019;
  ksDrContour = $0000001A;
  ksDrMacro = $0000001B;
  ksDrLine = $0000001C;
  ksLayer = $0000001D;
  ksDrFragment = $0000001E;
  ksDrPolyline = $0000001F;
  ksDrEllipse = $00000020;
  ksDrNurbs = $00000021;
  ksDrEllipseArc = $00000022;
  ksDrRectangle = $00000023;
  ksDrRegularPolygon = $00000024;
  ksDrEquid = $00000025;
  ksDrLBreakDimension = $00000026;
  ksDrABreakDimension = $00000027;
  ksDrOrdinateDimension = $00000028;
  ksDrColorFill = $00000029;
  ksDrCentreMarker = $0000002A;
  ksDrArcDimension = $0000002B;
  ksDrRaster = $0000002D;
  ksDrChangeLeader = $0000002E;
  ksDrRemoteElement = $0000002F;
  ksDrAxisLine = $00000030;
  ksDrOLEObject = $00000031;
  ksDrUnitNumber = $00000032;
  ksDrBrace = $00000033;
  ksDrMarkOnLeader = $00000034;
  ksDrMarkOnLine = $00000035;
  ksDrMarkInsideForm = $00000036;
  ksDrWaveLine = $00000037;
  ksDrStraightAxis = $00000038;
  ksDrBrokenLine = $00000039;
  ksDrCircleAxis = $0000003A;
  ksDrArcAxis = $0000003B;
  ksDrCutUnitMarking = $0000003C;
  ksDrUnitMarking = $0000003D;
  ksDrMultiTextLeader = $0000003E;
  ksDrExternalView = $0000003F;
  ksDrAnnLineSeg = $00000040;
  ksDrAnnCircle = $00000041;
  ksDrAnnEllipse = $00000042;
  ksDrAnnArc = $00000043;
  ksDrAnnEllipseArc = $00000044;
  ksDrAnnPolyline = $00000045;
  ksDrAnnPoint = $00000046;
  ksDrAnnText = $00000047;
  ksDrMultiLine = $00000048;
  ksDrBuildingCutLine = $00000049;
  ksDrAttachedLeader = $0000004A;
  ksDrConditionCrossing = $0000004B;
  ksReportTable = $0000004C;
  ksEmbodimentsTable = $0000004D;
  ksArrayParamTable = $0000004F;
  ksDrNurbsByPoints = $00000050;
  ksDrConicCurve = $00000051;
  ksDrConicCurve4Point = $00000052;
  ksDrConicCurve5Point = $00000052;
  ksView = $0000007B;

// Constants for enum ksViewsAndLayersManagerNotifyEnum
type
  ksViewsAndLayersManagerNotifyEnum = TOleEnum;
const
  vmBeginEdit = $00000001;
  vmEndEdit = $00000002;

// Constants for enum ksLibraryTypeEnum
type
  ksLibraryTypeEnum = TOleEnum;
const
  ksLibraryUnknown = $00000000;
  ksLibraryProcedure = $00000001;
  ksLibraryFragment = $00000002;
  ksLibraryModel = $00000003;
  ksLibraryDocuments = $00000004;

// Constants for enum ksLibraryStyleEnum
type
  ksLibraryStyleEnum = TOleEnum;
const
  ksLibraryStyleUnknown = $00000000;
  ksLibraryStyleMenu = $00000001;
  ksLibraryStyleDialog = $00000002;
  ksLibraryStyleWindow = $00000003;
  ksLibraryStyleBar = $00000004;
  ksLibraryStyleInvisible = $00000005;

// Constants for enum ksLibraryManagerNotifyEnum
type
  ksLibraryManagerNotifyEnum = TOleEnum;
const
  ksLMBeginAttach = $00000001;
  ksLMAttach = $00000002;
  ksLMBeginDetach = $00000003;
  ksLMDetach = $00000004;
  ksLMBeginExecute = $00000005;
  ksLMEndExecute = $00000006;
  ksLMSystemControlStop = $00000007;
  ksLMSystemControlStart = $00000008;
  ksLMAddLibraryDescription = $00000009;
  ksLMDeleteLibraryDescription = $0000000A;
  ksLMAddInsert = $0000000B;
  ksLMDeleteInsert = $0000000C;
  ksLMEditInsert = $0000000D;
  ksLMTryExecute = $0000000E;
  ksLMBeginInsertDocument = $0000000F;

// Constants for enum ksSystemControlStartEnum
type
  ksSystemControlStartEnum = TOleEnum;
const
  ksSCStoppedByMenuCommand = $00000001;
  ksSCCloseApplication = $00000000;
  ksSCStopItself = $FFFFFFFF;
  ksSCAlreadyStarted = $FFFFFFFE;
  ksSCStartedByAnotherLibrary = $FFFFFFFD;
  ksSCError = $FFFFFFFC;

// Constants for enum ksSpecificationVariantEnum
type
  ksSpecificationVariantEnum = TOleEnum;
const
  ksSpecificationSimple = $00000000;
  ksSpecificationVariantA = $00000001;
  ksSpecificationVariantB = $00000002;
  ksSpecificationVariantV = $00000003;
  ksSpecificationVariantG = $00000004;

// Constants for enum ksSpecificationLinkTypeEnum
type
  ksSpecificationLinkTypeEnum = TOleEnum;
const
  ksLinkNone = $00000000;
  ksLinkOnlyObjects = $00000001;
  ksLinkWithPositionCalculate = $00000002;

// Constants for enum ksSpecificationColumnTypeEnum
type
  ksSpecificationColumnTypeEnum = TOleEnum;
const
  ksSColumnUnknown = $00000000;
  ksSColumnFormat = $00000001;
  ksSColumnZone = $00000002;
  ksSColumnPosition = $00000003;
  ksSColumnMark = $00000004;
  ksSColumnName = $00000005;
  ksSColumnCount = $00000006;
  ksSColumnNote = $00000007;
  ksSColumnMass = $00000008;
  ksSColumnMaterial = $00000009;
  ksSColumnUser = $0000000A;
  ksSColumnCode = $0000000B;
  ksSColumnFactory = $0000000C;
  ksSColumnDocumentNumber = $0000000D;
  ksSColumnDocumentName = $0000000E;
  ksSColumnDocumentCode = $0000000F;
  ksSColumnCodeOKP = $00000010;

// Constants for enum ksValueTypeEnum
type
  ksValueTypeEnum = TOleEnum;
const
  ksValueTypeUnknown = $00000000;
  ksValueTypeInteger = $00000001;
  ksValueTypeFloat = $00000002;
  ksValueTypeString = $00000003;
  ksValueTypeRecord = $00000004;

// Constants for enum ksSortTypeEnum
type
  ksSortTypeEnum = TOleEnum;
const
  ksSortTypeNone = $00000000;
  ksSortTypeCompositeUp = $00000001;
  ksSortTypeUp = $00000003;
  ksSortTypeDocument = $00000004;
  ksSortTypeDown = $00000005;
  ksSortTypeCompositeDown = $00000006;

// Constants for enum ksDocumentFormatEnum
type
  ksDocumentFormatEnum = TOleEnum;
const
  ksFormatA0 = $00000000;
  ksFormatA1 = $00000001;
  ksFormatA2 = $00000002;
  ksFormatA3 = $00000003;
  ksFormatA4 = $00000004;
  ksFormatA5 = $00000005;
  ksFormatUser = $00000006;

// Constants for enum ksAlignEnum
type
  ksAlignEnum = TOleEnum;
const
  ksAlignDefault = $FFFFFFFF;
  ksAlignLeft = $00000000;
  ksAlignCenter = $00000001;
  ksAlignRight = $00000002;
  ksAlignAllWidth = $00000003;
  ksAlignDecimal = $00000003;

// Constants for enum ksTabulatorFillingEnum
type
  ksTabulatorFillingEnum = TOleEnum;
const
  ksTabulatorFillingNone = $00000000;
  ksTabulatorFillingBaseLine = $00000001;
  ksTabulatorFillingCenterLine = $00000002;
  ksTabulatorFillingBaseDot = $00000003;
  ksTabulatorFillingCenterDot = $00000004;
  ksTabulatorFillingBaseDash = $00000005;
  ksTabulatorFillingCenterDash = $00000006;

// Constants for enum ErrorType
type
  ErrorType = TOleEnum;
const
  etNoTXTDocument = $FFFFFFF8;
  etNo3dDocument = $FFFFFFF9;
  etNoAllDocument = $FFFFFFFA;
  etNoSPCDocument = $FFFFFFFB;
  etLibraryClose = $FFFFFFFC;
  etNoPreView = $FFFFFFFD;
  etNoDocument = $FFFFFFFE;
  etAbort = $FFFFFFFF;
  etSuccess = $00000000;
  etError1 = $00000001;
  etError2 = $00000002;
  etError3 = $00000003;
  etError4 = $00000004;
  etError5 = $00000005;
  etError6 = $00000006;
  etError7 = $00000007;
  etError8 = $00000008;
  etError9 = $00000009;
  etError10 = $0000000A;
  etError11 = $0000000B;
  etError12 = $0000000C;
  etError13 = $0000000D;
  etError14 = $0000000E;
  etError15 = $0000000F;
  etError16 = $00000010;
  etError17 = $00000011;
  etError18 = $00000012;
  etError19 = $00000013;
  etError20 = $00000014;
  etError21 = $00000015;
  etError22 = $00000016;
  etError23 = $00000017;
  etError24 = $00000018;
  etError25 = $00000019;
  etError26 = $0000001A;
  etError27 = $0000001B;
  etError28 = $0000001C;
  etError29 = $0000001D;
  etError30 = $0000001E;
  etError31 = $0000001F;
  etError32 = $00000020;
  etError33 = $00000021;
  etError34 = $00000022;
  etError35 = $00000023;
  etError36 = $00000024;
  etError37 = $00000025;
  etError38 = $00000026;
  etError39 = $00000027;
  etError40 = $00000028;
  etError41 = $00000029;
  etError42 = $0000002A;
  etError43 = $0000002B;
  etError44 = $0000002C;
  etError45 = $0000002D;
  etError46 = $0000002E;
  etError47 = $0000002F;
  etError48 = $00000030;
  etError49 = $00000031;
  etError50 = $00000032;
  etError51 = $00000033;
  etError52 = $00000034;
  etError53 = $00000035;
  etError54 = $00000036;
  etError55 = $00000037;
  etError56 = $00000038;
  etError57 = $00000039;
  etError58 = $0000003A;
  etError59 = $0000003B;
  etError60 = $0000003C;
  etError61 = $0000003D;
  etError62 = $0000003E;
  etError63 = $0000003F;
  etError64 = $00000040;
  etError65 = $00000041;
  etError66 = $00000042;
  etError67 = $00000043;
  etError68 = $00000044;
  etError69 = $00000045;
  etError70 = $00000046;
  etError71 = $00000047;
  etError72 = $00000048;
  etError73 = $00000049;
  etError74 = $0000004A;
  etError75 = $0000004B;
  etError76 = $0000004C;
  etError77 = $0000004D;
  etError78 = $0000004E;
  etError79 = $0000004F;
  etError80 = $00000050;
  etError81 = $00000051;
  etError82 = $00000052;
  etError83 = $00000053;
  etError84 = $00000054;
  etError85 = $00000055;
  etError86 = $00000056;
  etError87 = $00000057;
  etError88 = $00000058;
  etError89 = $00000059;
  etError90 = $0000005A;
  etError91 = $0000005B;
  etError92 = $0000005C;
  etError93 = $0000005D;
  etError94 = $0000005E;
  etError95 = $0000005F;
  etError96 = $00000060;
  etError97 = $00000061;
  etError98 = $00000062;
  etError99 = $00000063;
  etError100 = $00000064;
  etError101 = $00000065;
  etError102 = $00000066;
  etError103 = $00000067;
  etError104 = $00000068;
  etError105 = $00000069;
  etError106 = $0000006A;
  etError107 = $0000006B;
  etError108 = $0000006C;
  etError109 = $0000006D;
  etError110 = $0000006E;
  etError111 = $0000006F;
  etError112 = $00000070;
  etError113 = $00000071;
  etError114 = $00000072;
  etError115 = $00000073;
  etError116 = $00000074;
  etError117 = $00000075;
  etError118 = $00000076;
  etError119 = $00000077;
  etError120 = $00000078;
  etError121 = $00000079;
  etError122 = $0000007A;
  etError123 = $0000007B;
  etError124 = $0000007C;
  etError125 = $0000007D;
  etError126 = $0000007E;
  etError127 = $0000007F;
  etError128 = $00000080;
  etError129 = $00000081;
  etError130 = $00000082;
  etError131 = $00000083;
  etError132 = $00000084;
  etError133 = $00000085;
  etError134 = $00000086;
  etError135 = $00000087;
  etError136 = $00000088;
  etError137 = $00000089;
  etError138 = $0000008A;
  etError139 = $0000008B;
  etError140 = $0000008C;
  etError141 = $0000008D;
  etError142 = $0000008E;
  etError143 = $0000008F;
  etError144 = $00000090;
  etError145 = $00000091;
  etError146 = $00000092;
  etError147 = $00000093;
  etError148 = $00000094;
  etError149 = $00000095;
  etError150 = $00000096;
  etError151 = $00000097;
  etError152 = $00000098;
  etError153 = $00000099;
  etError154 = $0000009A;
  etError155 = $0000009B;
  etError156 = $0000009C;
  etError157 = $0000009D;
  etError158 = $0000009E;
  etError159 = $0000009F;
  etError160 = $000000A0;
  etError161 = $000000A1;
  etError162 = $000000A2;
  etError163 = $000000A3;
  etError164 = $000000A4;
  etError165 = $000000A5;
  etError166 = $000000A6;
  etError167 = $000000A7;
  etError168 = $000000A8;
  etError169 = $000000A9;
  etError170 = $000000AA;
  etError171 = $000000AB;
  etError172 = $000000AC;
  etError173 = $000000AD;
  etError174 = $000000AE;
  etError175 = $000000AF;
  etError176 = $000000B0;
  etError177 = $000000B1;
  etError178 = $000000B2;
  etError179 = $000000B3;
  etError180 = $000000B4;
  etError181 = $000000B5;
  etError182 = $000000B6;
  etError183 = $000000B7;
  etError184 = $000000B8;
  etError185 = $000000B9;
  etError186 = $000000BA;
  etError187 = $000000BB;
  etError188 = $000000BC;
  etError189 = $000000BD;
  etError190 = $000000BE;
  etError191 = $000000BF;
  etError192 = $000000C0;
  etError193 = $000000C1;
  etError194 = $000000C2;
  etError195 = $000000C3;
  etError196 = $000000C4;
  etError197 = $000000C5;
  etError198 = $000000C6;
  etError199 = $000000C7;
  etError200 = $000000C8;
  etError201 = $000000C9;
  etError202 = $000000CA;
  etError203 = $000000CB;
  etError204 = $000000CC;
  etError205 = $000000CD;
  etError206 = $000000CE;
  etError207 = $000000CF;
  etError208 = $000000D0;
  etError209 = $000000D1;
  etError210 = $000000D2;
  etError211 = $000000D3;
  etError212 = $000000D4;
  etError213 = $000000D5;
  etError214 = $000000D6;
  etError215 = $000000D7;
  etError216 = $000000D8;

// Constants for enum ksSpecificationObjectTypeEnum
type
  ksSpecificationObjectTypeEnum = TOleEnum;
const
  ksSpecificationUnknownObject = $00000000;
  ksSpecificationBaseObject = $00000001;
  ksSpecificationComment = $00000002;
  ksSpecificationSectionName = $00000003;
  ksSpecificationBlock = $00000004;
  ksSpecificationReserveString = $00000005;
  ksSpecificationEmptyString = $00000006;

// Constants for enum ksSpecificationObjectStateEnum
type
  ksSpecificationObjectStateEnum = TOleEnum;
const
  ksObjectStateIndependent = $00000000;
  ksObjectStateFromInsert = $00000001;
  ksObjectStateEdit = $00000002;
  ksObjectStateUserSetNotEdit = $00000003;

// Constants for enum ksLayoutSheetsNotifyEnum
type
  ksLayoutSheetsNotifyEnum = TOleEnum;
const
  ksLayoutAdd = $00000001;
  ksLayoutDelete = $00000002;
  ksLayoutUpdate = $00000003;

// Constants for enum ksKOMPASConverterEnum
type
  ksKOMPASConverterEnum = TOleEnum;
const
  ksConverterToRaster = $00000000;
  ksConverterToSAT = $00000001;
  ksConverterToXT = $00000002;
  ksConverterToSTEP = $00000003;
  ksConverterToIGES = $00000004;
  ksConverterToVRML = $00000005;
  ksConverterToSTL = $00000006;
  ksConverterToC3D = $00000007;
  ksConverterToSTEP_AP203 = $000000CB;
  ksConverterToSTEP_AP214 = $000000D6;
  ksConverterToSTEP_AP242 = $000000F2;

// Constants for enum ksLengthUnitEnum
type
  ksLengthUnitEnum = TOleEnum;
const
  ksLUMillimetres = $00000000;
  ksLUCentimetres = $00000001;
  ksLUDecimetres = $00000002;
  ksLUMetres = $00000003;
  ksLUKilometres = $00000004;

// Constants for enum ksStampEnum
type
  ksStampEnum = TOleEnum;
const
  ksStPartNumber = $00000001;
  ksStDescription = $00000002;
  ksStMaterial = $00000003;
  ksStMass = $00000005;
  ksStScale = $00000006;
  ksStSheetNumber = $00000007;
  ksStNumberOfSheets = $00000008;
  ksStCompany = $00000009;
  ksStTypeOfWork = $0000000A;
  ksStDocumentLetter1 = $00000028;
  ksStDocumentLetter2 = $00000029;
  ksStDocumentLetter3 = $0000002A;
  ksStFullFileName = $0000002B;
  ksStShortFileName = $0000002C;
  ksStMarkingLine = $0000002D;
  ksStDocumentName = $00000033;
  ksStDocumentCode = $00000034;
  ksStOKPCode = $00000035;
  ksStAuthor = $0000006E;
  ksStCheckedBy = $0000006F;
  ksStMfgApprovedBy = $00000070;
  ksStDesigner = $00000071;
  ksStRateOfInspection = $00000072;
  ksStApprovedBy = $00000073;
  ksStEndDesignDate = $00000082;
  ksStCheckedDate = $00000083;
  ksStMfgApprovedDate = $00000084;
  ksStExecutionDate = $00000085;
  ksStRateOfInspectionDate = $00000086;
  ksStApprovedDate = $00000087;

// Constants for enum ksEditListTypeEnum
type
  ksEditListTypeEnum = TOleEnum;
const
  ksEditList = $00000000;
  ksCheckList = $00000001;
  ksRadioList = $00000002;

// Constants for enum ksEditListCommandEnum
type
  ksEditListCommandEnum = TOleEnum;
const
  ksListItemNew = $00000001;
  ksListItemDelete = $00000002;
  ksListItemMoveUp = $00000003;
  ksListItemMoveDown = $00000004;
  ksListItemEdit = $00000005;

// Constants for enum ksAPITypeEnum
type
  ksAPITypeEnum = TOleEnum;
const
  ksAPIUndef = $00000000;
  ksAPI5Auto = $00000001;
  ksAPI7Dual = $00000002;
  ksAPI3DCom = $00000003;

// Constants for enum ksTreeTypeEnum
type
  ksTreeTypeEnum = TOleEnum;
const
  ksOperTree = $00000000;
  ksMultiTree = $00000001;

// Constants for enum ksKompasCommandEnum
type
  ksKompasCommandEnum = TOleEnum;
const
  ksCMViewFullScreen = $00007E93;
  ksCMSaveAll = $00007E94;
  ksCMSaveTechnicalDemand = $00007E95;
  ksCMSaveTechnicalDemandToTxt = $00007E96;
  ksCMCloseTechnicalDemand = $00007E97;
  ksCMCloseSpcSlave = $00007E98;
  ksCMDocumentSetup = $00007E9A;
  ksCMZoomWindow = $00007E9B;
  ksCMZoomIn = $00007E9C;
  ksCMZoomOut = $00007E9D;
  ksCMScaleView = $00007E9E;
  ksCMZoomEntireDocument = $00007E9F;
  ksCMZoomSelected = $00007EA0;
  ksCMRefresh = $00007EA1;
  ksCMMoveView = $00007EA2;
  ksCMPanoramaView = $00007EA3;
  ksCMRotateView = $00007EA4;
  ksCMSetAttributeTypes = $00007EA5;
  ksCMSetCurveStyles = $00007EA6;
  ksCMSetTextStyles = $00007EA7;
  ksCMSetStampStyles = $00007EA8;
  ksCMSetTextShape = $00007EA9;
  ksCMSetGraphicShape = $00007EAA;
  ksCMSetHatchStyles = $00007EAB;
  ksCMSetSpcStyles = $00007EC0;
  ksCMSummaryInfo = $00007EB8;
  ksCMMoveDocumentEX = $00007F0A;
  ksCMMoveDocumentFirst = $00007F0B;
  ksCMMoveDocumentLast = $00007F0C;
  ksCMMoveDocumentPrev = $00007F0D;
  ksCMMoveDocumentNext = $00007F0E;
  ksCMRetryCommand = $00007F16;
  ksCMTutor3D = $00007F17;
  ksCMTutor2D = $00007F1C;
  ksCMSetProperties = $00007F1D;
  ksCMSetReportStyles = $00007F1E;
  ksCMZoom1 = $00007F21;
  ksCMCloseAll = $000080F0;
  ksCMRepeatFind = $000081B7;
  ksCMStop = $000081B6;
  ksCMEscape = $000081BB;
  ksCMCreateObject = $000083A4;
  ksCMCansel = $000083A5;
  ksCMSpcObjectsSort = $00008404;
  ksCMSpcRebuild = $00008405;
  ksCMFullPageHeight = $00008408;
  ksCMFullPageWidth = $00008409;
  ksCMSpcMakePosition = $00008463;
  ksCMSpcObjectDelete = $00008464;
  ksCMSpcObjectInsert = $00008465;
  ksCMSpcSynchronize = $00008468;
  ksCMSpcInsertLine = $0000846A;
  ksCMSpcShowAll = $0000846C;
  ksCMSpcTuningSetup = $0000846D;
  ksCMSpcCopyObject = $0000846E;
  ksCMSpcObjectMoveUp = $0000846F;
  ksCMSpcObjectMoveDovn = $00008470;
  ksCMSpcObjectEdit = $00008471;
  ksCMSpcInsertIspoln = $00008472;
  ksCMSpcOpenGeometryDocs = $00008473;
  ksCMFragmentManager = $00008B78;
  ksCMEditFragment = $00008B79;
  ksCMCreateLocalFragment = $00008B7A;
  ksCMEditFragmentSource = $00008B7B;
  ksCMSelectGroup = $00008B7F;
  ksCMSelectLayer = $00008B80;
  ksCMSelectByType = $00008B81;
  ksCMStoreGroup = $00008B83;
  ksCMSelectView = $00008B84;
  ksCMSelectByAttr = $00008B85;
  ksCMSelectByCurveStyle = $00008B86;
  ksCMSelectPrevList = $00008B87;
  ksCMUnSelectSroup = $00008B88;
  ksCMUnSelectLayer = $00008B89;
  ksCMUnSelectByType = $00008B8A;
  ksCMUnSelectView = $00008B8B;
  ksCMUnSelectByAttr = $00008B8C;
  ksCMUnSelectByCurveStyle = $00008B8D;
  ksCMUnSelectPrevList = $00008B8E;
  ksCMMakeMacro = $00008B8F;
  ksCMDestroyMacro = $00008B90;
  ksCMViewObjAttr = $00008B91;
  ksCMChangeSelObjStyles = $00008B92;
  ksCMChangeSelObjLayer = $00008B93;
  ksCMEditObject = $00008B98;
  ksCMToggleToObjLayer = $00008B99;
  ksCMObjStreamline = $00008B9A;
  ksCMDelAuxCurves = $00008B9B;
  ksCMDelAuxCurvesInCurentView = $00008B9C;
  ksCMDelStamp = $00008B9D;
  ksCMDelTechnicalDemand = $00008B9E;
  ksCMDelSpecRough = $00008B9F;
  ksCMSheetViewStates = $00008BA0;
  ksCMViewLayerStates = $00008BA1;
  ksCMGridOnOf = $00008BA2;
  ksCMSnapSuspend = $00008BA4;
  ksCMSnapSetup = $00008BA5;
  ksCMOrthoModeOnOff = $00008BA6;
  ksCMDiscreteModeOnOff = $00008BA3;
  ksCMRebuildSheet = $00008BA7;
  ksCMSheetViewParams = $00008BA8;
  ksCMTechnicalDemand = $00008BA9;
  ksCMSpecRough = $00008BAA;
  ksCMSlaveSpc = $00008BAB;
  ksCMSlaveChangeList = $00008BAC;
  ksCMAddEditSpcObject = $00008BB0;
  ksCMAddEditChangeListObject = $00008BB1;
  ksCMSpcSinhronize = $00008BB3;
  ksCMSheetSpc = $00008BB4;
  ksCMLayoutManager = $00008BB5;
  ksCMAddPage = $00008BB6;
  ksCMGoto00 = $00008CBC;
  ksCMToggleCursor = $00008CBD;
  ksCMRegulateLeaderLineX = $00008CEB;
  ksCMRegulateLeaderLineY = $00008CEC;
  ksCMEditSpcObject = $00008CED;
  ksCMEditSpcObjectForGeom = $00008CF6;
  ksCMGridSetup = $00008CFA;
  ksCMSlaveSpcDelegate = $00008CFE;
  ksCMAddSpcDelegate = $00008CFF;
  ksCMAutoCreateSpcObj = $00008D01;
  ksCMBuildTreeView = $0000908B;
  ksSheetViewParams = $0000908D;
  ksEditDocumentProperties = $00009133;
  ksEditInserionFragmentProperties = $00009134;
  ksEditInserionViewProperties = $00009135;
  ksEditMacroObjectProperties = $00009136;
  ksClearAttachedLeaders = $00009142;
  ksPrintSpecialExecute = $000091A9;
  ksCMParameters = $000092E8;
  ksCMZoomUndo = $00009682;
  ksCMZoomRedo = $00009683;
  ksViewShowBreakups = $000099B0;
  ksCMHideCPlaces = $00009DA8;
  ksCMHideCPlanes = $00009DA9;
  ksCMHideCAxies = $00009DAA;
  ksCMHideSketches = $00009DAB;
  ksCMHideSurfaces = $00009DAC;
  ksCMHideThreads = $00009DAD;
  ksCMHideCurves = $00009DAE;
  ksCMHidePoints = $00009DAF;
  ksCMHideAllObjects = $00009DB0;
  ksCMHideDimensions = $00009DB1;
  ksCMHideDesignations = $00009DB2;
  ksCMCreateSheetFromModel = $00009DB5;
  ksCMDeleteRollbackObjects = $00009DB7;
  ksCMSelectedObjectProperties = $00009E0D;
  ksCMSelectedObjectOwnerProperties = $00009E0E;
  ksCMSelectedCompanentProperties = $00009E0F;
  ksCMSelectedCompanentInstanceProperties = $00009E10;
  ksCMEditBilletPart = $00009EAD;
  ksCMChangeBilletPart = $00009EAE;
  ksCMViewFeatureInTree = $00009E4C;
  ksCMLODOn = $00009EA2;
  ksCM3DArrayDestroy = $00009EA7;
  ksCMEmbodimentManager = $00009F06;
  ksCMAdditionNumberberManager = $00009F07;
  ksCMCreateSheetFromObject = $00009F13;
  ksCMHideInCompCPlaces = $00009F18;
  ksCMHideInCompCPlanes = $00009F19;
  ksCMHideInCompCAxies = $00009F1A;
  ksCMHideInCompSketches = $00009F1B;
  ksCMHideInCompSurfaces = $00009F1C;
  ksCMHideInCompThreads = $00009F1D;
  ksCMHideInCompCurves = $00009F1E;
  ksCMHideInCompPoints = $00009F1F;
  ksCMHideInCompAllObjects = $00009F20;
  ksCMHideInCompDimensions = $00009F21;
  ksCMHideInCompDesignations = $00009F22;
  ksCM3DSavePartAs = $00009F28;
  ksCM3DUnitParts = $00009F29;
  ksCM3DAssemblyDestroy = $00009F2A;
  ksCMZoomSketch = $00009FA8;
  ksCMWireframeMode = $0000A39A;
  ksCMHiddenRemovedMode = $0000A39B;
  ksCMHiddenThinMode = $0000A39C;
  ksCMShadedMode = $0000A39D;
  ksCMPerspective = $0000A39E;
  ksCMShadedWireframeMode = $0000A3A5;
  ksCMRotateCCW = $0000A39F;
  ksCMRotateCC = $0000A3A0;
  ksCMRotate90CCW = $0000A3A1;
  ksCMRotate90CC = $0000A3A2;
  ksCMFastLines = $0000A3A3;
  ksCMTreeStructure = $0000A3B0;
  ksCMPropertyEditor = $0000B073;
  ksCMFileNew = $0000E100;
  ksCMFileOpen = $0000E101;
  ksCMFileClose = $0000E102;
  ksCMFileSave = $0000E103;
  ksCMFileSaveAs = $0000E104;
  ksCMFilePrintSetup = $0000E106;
  ksCMFilePrint = $0000E107;
  ksCMFilePrintPreview = $0000E109;
  ksCMFileSendMail = $0000E10C;
  ksCMEditClear = $0000E120;
  ksCMEditClearAll = $0000E121;
  ksCMEditCopy = $0000E122;
  ksCMEditCut = $0000E123;
  ksCMEditFind = $0000E124;
  ksCMEditPaste = $0000E125;
  ksCMEditRepeat = $0000E128;
  ksCMEditReplace = $0000E129;
  ksCMEditSelectAll = $0000E12A;
  ksCMEditUndo = $0000E12B;
  ksCMEditRedo = $0000E12C;
  ksCMWindowNew = $0000E130;
  ksCMAbout = $0000E140;
  ksCMHelpIndex = $0000E142;
  ksCMHelpFinder = $0000E143;
  ksCMContextHelp = $0000E145;
  ksCMHelp = $0000E146;

// Constants for enum ksHideMessageEnum
type
  ksHideMessageEnum = TOleEnum;
const
  ksShowMessage = $00000000;
  ksHideMessageYes = $00000001;
  ksHideMessageNo = $00000002;

// Constants for enum ksTextNumberingEnum
type
  ksTextNumberingEnum = TOleEnum;
const
  ksTNumbUnknown = $FFFFFFFF;
  ksTNumbNoNumber = $00000000;
  ksTNumbNumber = $00000001;
  ksTNumbNewNumber = $00000002;
  ksTNumbDisableNumber = $00000003;

// Constants for enum ksTextSizeEnum
type
  ksTextSizeEnum = TOleEnum;
const
  ksTextDefault = $00000000;
  ksTextNormal = $00000001;
  ksTextMiddle = $00000002;
  ksTextSmall = $00000003;
  ksTextBig = $00000002;

// Constants for enum ksTextItemEnum
type
  ksTextItemEnum = TOleEnum;
const
  ksTItString = $00000000;
  ksTItNumerator = $00000001;
  ksTItDenominator = $00000002;
  ksTItFractionEnd = $00000003;
  ksTItUpperDeviation = $00000004;
  ksTItLowerDeviation = $00000005;
  ksTItDeviationEnd = $00000006;
  ksTItSBase = $00000007;
  ksTItSUpperIndex = $00000008;
  ksTItSLowerIndex = $00000009;
  ksTItSEnd = $00000010;
  ksTItSpecialSymbol = $00000011;
  ksTItSpecialSymbolEnd = $00000012;
  ksTItSpecialSymbolNext = $00000013;
  ksTItSpecialSymbolDown = $00000014;
  ksTItSpecialSymbolRight = $00000015;
  ksTItTab = $00000016;
  ksTItFontSymbol = $00000017;
  ksTItSeparator = $00000018;
  ksTItHyperTextEnd = $00000019;
  ksTItFontSymbolW = $00002017;
  ksTItHyperText = $00002000;

// Constants for enum ksTextHorizontalFormatEnum
type
  ksTextHorizontalFormatEnum = TOleEnum;
const
  ksHFormatNot = $00000000;
  ksHFormatStrNarrowing = $00000001;
  ksHFormatDivision = $00000002;

// Constants for enum ksAllocationEnum
type
  ksAllocationEnum = TOleEnum;
const
  ksAlLeft = $00000000;
  ksAlCentre = $00000001;
  ksAlRight = $00000002;

// Constants for enum ksMarkInsideFormEnum
type
  ksMarkInsideFormEnum = TOleEnum;
const
  ksMFormEmpty = $00000000;
  ksMFormCirle = $00000001;
  ksMFormCircle = $00000001;
  ksMFormRectangle = $00000002;
  ksMFormSquare = $00000003;
  ksMFormRhomb1 = $00000004;
  ksMFormRhomb2 = $00000005;
  ksMFormHexagon = $00000006;
  ksMFormTriangle1 = $00000007;
  ksMFormTriangle2 = $00000008;
  ksMFormChamferedRectangle = $00000009;
  ksMFormCircleWidthVerticalDelimer = $0000000A;
  ksMFormDoubleCircle = $0000000B;

// Constants for enum ksMarkOnLinePosTypeEnum
type
  ksMarkOnLinePosTypeEnum = TOleEnum;
const
  ksMTextAboveLine = $00000000;
  ksMTextOnLine = $00000001;
  ksMTextUnderLine = $00000002;

// Constants for enum ksArrowEnum
type
  ksArrowEnum = TOleEnum;
const
  ksLeaderWithoutArrow = $00000000;
  ksLeaderPoint = $00000001;
  ksLeaderArrow = $00000002;
  ksWithoutArrow = $00000000;
  ksPoint = $00000001;
  ksArrow = $00000002;
  ksUpHalfArrow = $00000003;
  ksDownHalfArrow = $00000004;
  ksNotch = $00000005;
  ksLeftNotch = $00000006;
  ksRightAngle = $00000007;
  ksClosedArrow = $00000008;
  ksOpenArrow = $00000009;
  ksDot = $0000000A;
  ksSmallDot = $0000000B;
  ksTriangle60 = $0000000C;
  ksTriangle90 = $0000000D;

// Constants for enum ksShelfDirectionEnum
type
  ksShelfDirectionEnum = TOleEnum;
const
  ksLSLeft = $FFFFFFFF;
  ksLSNone = $00000000;
  ksLSRight = $00000001;
  ksLSUp = $00000002;
  ksLSDown = $00000003;

// Constants for enum ksDrawingObjectParamTypeEnum
type
  ksDrawingObjectParamTypeEnum = TOleEnum;
const
  ksAllParam = $FFFFFFFF;
  ksSheetAllParam = $FFFFFFFE;
  ksViewAllParam = $FFFFFFF9;

// Constants for enum ksMarkNodeEnum
type
  ksMarkNodeEnum = TOleEnum;
const
  ksMarkCircle = $00000000;
  ksMarkRefCircle = $00000001;
  ksMarkText = $00000002;

// Constants for enum ksCurveStyleEnum
type
  ksCurveStyleEnum = TOleEnum;
const
  ksCSHidden = $FFFFFFFF;
  ksCSUnvisible = $00000000;
  ksCSNormal = $00000001;
  ksCSThin = $00000002;
  ksCSAxial = $00000003;
  ksCSDashed = $00000004;
  ksCSBrokenLine = $00000005;
  ksCSConstruction = $00000006;
  ksCSThick = $00000007;
  ksCSDash2Dots = $00000008;
  ksCSDashedNormal = $00000009;
  ksCSNormalDashDot = $0000000A;
  ksCSThinForHatch = $0000000B;
  ksCSISO02Dashed = $0000000C;
  ksCSISO03DashedLSpace = $0000000D;
  ksCSISO04DashDotLDash = $0000000E;
  ksCSISO05DashDotLDash2Dots = $0000000F;
  ksCSISO06DashDotLDash3Dots = $00000010;
  ksCSISO07Dotted = $00000011;
  ksCSISO08DashDotLShDashes = $00000012;
  ksCSISO09DashDot1L2ShDashes = $00000013;
  ksCSISO10DashDot = $00000014;
  ksCSISO11DashDot2Dashes = $00000015;
  ksCSISO12DashDot2Dots = $00000016;
  ksCSISO13DashDot3Dots = $00000017;
  ksCSISO14DashDot2Dashes2Dots = $00000018;
  ksCSISO15DashDot2Dashes3Dots = $00000019;

// Constants for enum ksTextStyleEnum
type
  ksTextStyleEnum = TOleEnum;
const
  ksTSDefault = $00000000;
  ksTSDrawingAnnotation = $00000001;
  ksTSSpecifications = $00000002;
  ksTSDimensionText = $00000003;
  ksTSSurfaceFinish = $00000004;
  ksTSLeader1 = $00000005;
  ksTSLeader2 = $00000006;
  ksTSLeader3 = $00000007;
  ksTSShapeDeviations = $00000008;
  ksTSTableHeader = $00000009;
  ksTSTableCell = $0000000A;
  ksTSSectionLine = $0000000B;
  ksTSDirectionArrow = $0000000C;
  ksTSUnspecifiedSurfaceFinish = $0000000D;
  ksTSModificationSymbol = $0000000E;
  ksTSBrace = $0000000F;
  ksTSUnitNumber = $00000010;
  ksTSMultiTextLeader = $00000011;
  ksTSUnitMarking = $00000012;
  ksTSAxisMark = $00000013;
  ksTSMarkOnLeader = $00000014;
  ksTSMarkOnLine = $00000015;
  ksTSMarkInsideForm = $00000016;
  ksTSBOMTableName = $00000017;
  ksTSBuildingCutLine = $00000018;
  ksTSRprtTableHeader = $00000019;
  ksTSRprtTableCell = $0000001A;

// Constants for enum ksContourFormEnum
type
  ksContourFormEnum = TOleEnum;
const
  ksUFormCirle = $00000000;
  ksUFormCircle = $00000000;
  ksUFormRectangle = $00000001;
  ksUFormCRectangle = $00000002;

// Constants for enum ksAlignmentTypeEnum
type
  ksAlignmentTypeEnum = TOleEnum;
const
  ksATArbitrary = $00000000;
  ksATHorizontal = $00000001;
  ksATVertical = $00000002;

// Constants for enum ksLengthUnitsEnum
type
  ksLengthUnitsEnum = TOleEnum;
const
  ksLUnSM = $00000000;
  ksLUnMM = $00000001;
  ksLUnDM = $00000002;
  ksLUnM = $00000003;
  ksLUnDocument = $00000004;

// Constants for enum ksMassUnitsEnum
type
  ksMassUnitsEnum = TOleEnum;
const
  ksMUnGR = $00000000;
  ksMUnKG = $00000001;
  ksMUnDocument = $00000004;

// Constants for enum ksMassSettingModeEnum
type
  ksMassSettingModeEnum = TOleEnum;
const
  ksCalculateParam = $00000000;
  ksManualMass = $00000001;

// Constants for enum ksConstraintTypeEnum
type
  ksConstraintTypeEnum = TOleEnum;
const
  ksCUnknown = $00000000;
  ksCFixedPoint = $00000001;
  ksCPointOnCurve = $00000002;
  ksCHorizontal = $00000003;
  ksCVertical = $00000004;
  ksCParallel = $00000005;
  ksCPerpendicular = $00000006;
  ksCEqualLength = $00000007;
  ksCEqualRadius = $00000008;
  ksCHAlignPoints = $00000009;
  ksCVAlignPoints = $0000000A;
  ksCMergePoints = $0000000B;
  ksCAssociation = $0000000C;
  ksCDimWithVariable = $0000000D;
  ksCFixedDim = $0000000E;
  ksCTangentTwoCurves = $0000000F;
  ksCSymmetryTwoPoints = $00000010;
  ksCCollinear = $00000011;
  ksCFixedAngle = $00000012;
  ksCFixedLenght = $00000013;
  ksCPointOnCurveMiddle = $00000014;
  ksCBisector = $00000015;
  ksCConcentricity = $00000016;

// Constants for enum ksAnnotationSymbolEnum
type
  ksAnnotationSymbolEnum = TOleEnum;
const
  ksUnknownSymbol = $00000000;
  ksDotPoint = $00000001;
  ksPlusPoint = $00000002;
  ksXPoint = $00000003;
  ksSquarePoint = $00000004;
  ksTrianglePoint = $00000005;
  ksCirclePoint = $00000006;
  ksAsteriskPoint = $00000007;
  ksStrikeSquarePoint = $00000008;
  ksPlusPointTwo = $00000009;

// Constants for enum ksDimensionTextAlignEnum
type
  ksDimensionTextAlignEnum = TOleEnum;
const
  ksDimACentreLowFont = $00000000;
  ksDimAUpperBoundary = $00000001;
  ksDimACentre = $00000002;
  ksDimALowerBoundary = $00000003;

// Constants for enum ksDimensionTextBracketsEnum
type
  ksDimensionTextBracketsEnum = TOleEnum;
const
  ksDimBracketsOff = $00000000;
  ksDimBrackets = $00000001;
  ksDimSquareBrackets = $00000002;

// Constants for enum ksDimensionDeviationEnum
type
  ksDimensionDeviationEnum = TOleEnum;
const
  ksDimDeviation = $00000000;
  ksDimLimits = $00000001;
  ksDimLineLimits = $00000002;

// Constants for enum ksDimensionTextTypeEnum
type
  ksDimensionTextTypeEnum = TOleEnum;
const
  ksDimTAuto = $00000000;
  ksDimTManual = $00000001;
  ksDTPOnShelf = $00000002;

// Constants for enum ksDimensionBaseEnum
type
  ksDimensionBaseEnum = TOleEnum;
const
  ksDimBaseCenter = $00000000;
  ksDimBaseP1 = $00000001;
  ksDimBaseP2 = $00000002;
  ksDimCommonBase = $00000003;
  ksDimFirstCommonBase = $00000004;

// Constants for enum ksDimensionTextPosEnum
type
  ksDimensionTextPosEnum = TOleEnum;
const
  ksDimTextParallelOnLine = $00000000;
  ksDimTextParallelInCut = $00000001;
  ksDimTextHorizontalInCut = $00000002;

// Constants for enum ksDimensionArrowPosEnum
type
  ksDimensionArrowPosEnum = TOleEnum;
const
  ksDimArrowInside = $00000000;
  ksDimArrowOutside = $00000001;
  ksDimArrowAuto = $00000002;

// Constants for enum ksLineDimensionOrientationEnum
type
  ksLineDimensionOrientationEnum = TOleEnum;
const
  ksLinDParallel = $00000000;
  ksLinDHorizontal = $00000001;
  ksLinDVertical = $00000002;

// Constants for enum ksHeightDimTypeEnum
type
  ksHeightDimTypeEnum = TOleEnum;
const
  ksHDFrontView = $00000000;
  ksHDTopView = $00000001;
  ksHDTopViewLeader = $00000002;

// Constants for enum ksAngleDimTypeEnum
type
  ksAngleDimTypeEnum = TOleEnum;
const
  ksADMinAngle = $00000000;
  ksADMaxAngle = $00000001;
  ksADMoreAngle = $00000002;

// Constants for enum ksDimTextFormatEnum
type
  ksDimTextFormatEnum = TOleEnum;
const
  ksDimTextFormatGMS = $00000000;
  ksDimTextFormatGDD = $00000001;

// Constants for enum ksRoughSignEnum
type
  ksRoughSignEnum = TOleEnum;
const
  ksNoProcessingType = $00000000;
  ksDeleteMaterial = $00000001;
  ksWithoutDeleteMaterial = $00000002;

// Constants for enum ksLeaderSignEnum
type
  ksLeaderSignEnum = TOleEnum;
const
  ksLSignNone = $00000000;
  ksLGlueSign = $00000001;
  ksLSolderingSign = $00000002;
  ksLSewingSign = $00000003;
  ksLCrampSign = $00000004;
  ksLcornerCrampSign = $00000005;
  ksLMontageJointSign = $00000006;

// Constants for enum ksPositionLederFormEnum
type
  ksPositionLederFormEnum = TOleEnum;
const
  ksPLSingleText = $00000000;
  ksPLOpenText = $00000001;
  ksPLCircle = $00000002;
  ksPLHexagon = $00000003;
  ksPLCircleWithSeparator = $00000004;

// Constants for enum ksChangeLeaderSignEnum
type
  ksChangeLeaderSignEnum = TOleEnum;
const
  ksCLSSquare = $00000000;
  ksCLSCircle = $00000001;
  ksCLSBracketSquare = $00000002;
  ksCLSBracketCircle = $00000003;
  ksCLSBracketCorner = $00000004;

// Constants for enum ksTolerancePrefixSignEnum
type
  ksTolerancePrefixSignEnum = TOleEnum;
const
  ksTPSNone = $00000000;
  ksTPSRadius = $00000001;
  ksTPSDiametr = $00000002;
  ksTPSToleranseT = $00000003;
  ksTPSToleranseT2 = $00000004;

// Constants for enum ksToleranceSuffixSignEnum
type
  ksToleranceSuffixSignEnum = TOleEnum;
const
  ksTSNone = $00000000;
  ksTSToleranseM = $00000001;
  ksTSToleranseS = $00000002;
  ksTSToleranseP = $00000003;

// Constants for enum ksTablePointEnum
type
  ksTablePointEnum = TOleEnum;
const
  ksTPUndefined = $00000000;
  ksTPLeftBottom = $00000001;
  ksTPLeftCenter = $00000002;
  ksTPLeftUp = $00000003;
  ksTPUpCenter = $00000004;
  ksTPRightUp = $00000005;
  ksTPRightCenter = $00000006;
  ksTPRightBottom = $00000007;
  ksTPBottomCenter = $00000008;
  ksTPCenter = $00000009;

// Constants for enum ksTableTileLayoutEnum
type
  ksTableTileLayoutEnum = TOleEnum;
const
  ksTTLFirstRow = $00000000;
  ksTTLFirstColumn = $00000001;
  ksTTLNotCreate = $00000002;

// Constants for enum ksCellBoundariesEnum
type
  ksCellBoundariesEnum = TOleEnum;
const
  ksCBLeftBorder = $00000000;
  ksCBRightBorder = $00000001;
  ksCBTopBorder = $00000002;
  ksCBBottomBorder = $00000003;
  ksCBHorisontMidleBorder = $00000004;
  ksCBVerticalMidleBorder = $00000005;
  ksCBExternalBorders = $00000006;
  ksCBAllBorders = $00000007;
  ksCBInternalBorders = $00000008;
  ksCBNoBorders = $00000009;

// Constants for enum ksTextLineType
type
  ksTextLineType = TOleEnum;
const
  ksTLError = $00000000;
  ksTLText = $00000001;
  ksTLVerticalText = $00000002;
  ksTLFragment = $00000003;
  ksTLRaster = $00000004;
  ksTLTable = $00000005;

// Constants for enum ksCheckSumVersionEnum
type
  ksCheckSumVersionEnum = TOleEnum;
const
  ksCsrCurrent = $00000000;
  ksCsrKompas10SP2 = $FFFFFFFF;
  ksCsrKompas11 = $FFFFFFFB;
  ksCsrKompas11SP1 = $FFFFFFFA;
  ksCsrKompas12 = $FFFFFFF6;
  ksCsrKompas12SP1 = $FFFFFFF5;
  ksCsrKompas13 = $FFFFFFF1;
  ksCsrKompas13SP1 = $FFFFFFF0;
  ksCsrKompas13SP2 = $FFFFFFEF;
  ksCsrKompas14 = $FFFFFFEC;
  ksCsrKompas14SP1 = $FFFFFFEB;
  ksCsrKompas14SP2 = $FFFFFFEA;
  ksCsrKompas15 = $FFFFFFE7;
  ksCsrKompas15Sp1 = $FFFFFFE6;
  ksCsrKompas15Sp2 = $FFFFFFE5;
  ksCsrKompas16 = $FFFFFFE2;
  ksCsrKompas16Sp1 = $FFFFFFE1;
  ksCsrKompas17 = $FFFFFFDD;
  ksCsrKompas17Sp1 = $FFFFFFDC;

// Constants for enum ksBmpSizeEnum
type
  ksBmpSizeEnum = TOleEnum;
const
  ksBmp1616 = $00000000;
  ksBmp2424 = $00000001;
  ksBmp3232 = $00000002;
  ksBmp4848 = $00000003;

// Constants for enum ksRequestFilesTypeEnum
type
  ksRequestFilesTypeEnum = TOleEnum;
const
  ksRFUnknown = $00000000;
  ksRFSaveBody = $00000001;
  koRFUnitParts = $00000002;
  koRFCopyBilletPart = $00000003;
  koRFSavePartAs = $00000004;
  koRFAddDetail = $00000005;
  koRFAddAssembly = $00000006;
  koRFAddPartFromFile = $00000007;
  koRFChangeDetailFile = $00000008;
  koRFChangeAssemblyFile = $00000009;
  koRFChangeBilletPartFile = $0000000A;
  koRFSpcObjAddDocument = $0000000B;
  koRFSpcAssemblyAddDocument = $0000000C;
  koRFAddLocalDetail = $0000000D;
  koRFAddLayoutGeometry = $0000000E;

// Constants for enum ksMlVertexLimiterEnum
type
  ksMlVertexLimiterEnum = TOleEnum;
const
  ksMVeUnknown = $00000000;
  ksMVeArc = $00000001;
  ksMVeAngle = $00000002;
  ksMVeTangent = $00000003;

// Constants for enum ksMlEndLimiterEnum
type
  ksMlEndLimiterEnum = TOleEnum;
const
  ksMEndUnknown = $00000000;
  ksMEndLine = $00000001;
  ksMEndArc = $00000002;
  ksMEndPolyline = $00000003;

// Constants for enum ksMlVertexTrackingEnum
type
  ksMlVertexTrackingEnum = TOleEnum;
const
  ksMTrShear = $00000000;
  ksMTrFillet = $00000001;
  ksMTrEquaFillet = $00000002;

// Constants for enum ksContourSegmentEnum
type
  ksContourSegmentEnum = TOleEnum;
const
  ksCSUnknown = $FFFFFFFF;
  ksCSLineSeg = $00000001;
  ksCSCircle = $00000002;
  ksCSArc = $00000003;
  ksCSBezier = $00000008;
  ksCSEllipse = $00000020;
  ksCSNurbs = $00000021;
  ksCSEllipseArc = $00000022;

// Constants for enum ksAnnotativeTerminatorSignEnum
type
  ksAnnotativeTerminatorSignEnum = TOleEnum;
const
  ksASUnknown = $00000000;
  ksASArrowInside = $00000065;
  ksASArrowOutside = $00000066;
  ksASNotchTail = $00000067;
  ksASUpHalfArrow = $00000068;
  ksASDownHalfArrow = $00000069;
  ksASBigArrowInside = $0000006A;
  ksASArrowOrdinate = $0000006B;
  ksASTriangle = $0000006C;
  ksAScircleRad2 = $0000006D;
  ksASCentreMarker = $0000006E;
  ksASGlueSign = $0000006F;
  ksASSolderingSign = $00000070;
  ksASSewingSign = $00000071;
  ksASCrampSign = $00000072;
  ksASCornerCrampSign = $00000073;
  ksASMontageJointSign = $00000074;
  ksASNotch = $00000075;
  ksASBaseTriangle = $00000076;
  ksASClosedArrowInside = $00000077;
  ksASClosedArrowOutside = $00000078;
  ksASOpenArrowInside = $00000079;
  ksASOpenArrowOutside = $0000007A;
  ksASRightAngleInside = $0000007B;
  ksASRightAngleOutside = $0000007C;
  ksASDot = $0000007D;
  ksASSmallDot = $0000007E;
  ksASPoint = $0000007F;
  ksASLeftNotch = $00000080;

// Constants for enum ksCornerTypeEnum
type
  ksCornerTypeEnum = TOleEnum;
const
  ksCTNoProcess = $00000000;
  ksCTChamfer = $00000001;
  ksCTFillet = $00000002;

// Constants for enum ksInsertionTypeEnum
type
  ksInsertionTypeEnum = TOleEnum;
const
  ksTUnknown = $FFFFFFFF;
  ksTBodyFragment = $00000000;
  ksTReferenceFragment = $00000001;
  ksTLocalFragment = $00000003;
  ksTBodyView = $00000004;
  ksTReferenceView = $00000005;

// Constants for enum ksEquidistantTypeEnum
type
  ksEquidistantTypeEnum = TOleEnum;
const
  ksETUnknown = $FFFFFFFF;
  ksETLeft = $00000000;
  ksETRight = $00000001;
  ksETBoth = $00000002;

// Constants for enum ksCentreMarkerEnum
type
  ksCentreMarkerEnum = TOleEnum;
const
  ksCMUnknown = $FFFFFFFF;
  ksCMPlusPoint = $00000000;
  ksCMOneAxis = $00000001;
  ksCMTwoAxis = $00000002;

// Constants for enum ksSemiAxisTypeEnum
type
  ksSemiAxisTypeEnum = TOleEnum;
const
  ksAxisUnknown = $FFFFFFFF;
  ksAxisXPlus = $00000000;
  ksAxisXMinus = $00000001;
  ksAxisYPlus = $00000002;
  ksAxisYMinus = $00000003;

// Constants for enum ksAttributeTypeEnum
type
  ksAttributeTypeEnum = TOleEnum;
const
  ksATUnknown = $FFFFFFFF;
  ksATString = $00000000;
  ksATDouble = $00000001;
  ksATFixedTable = $00000002;
  ksATVariableTable = $00000003;

// Constants for enum ksRelativeProjectionTypeEnum
type
  ksRelativeProjectionTypeEnum = TOleEnum;
const
  ksPtNone = $FFFFFFFF;
  ksPtFront = $00000001;
  ksPtRear = $00000002;
  ksPtUp = $00000003;
  ksPtDown = $00000004;
  ksPtLeft = $00000005;
  ksPtRight = $00000006;
  ksPtIsoXYZ = $00000007;

// Constants for enum ksBreakLineTypeEnum
type
  ksBreakLineTypeEnum = TOleEnum;
const
  ksBLNotImage = $00000000;
  ksBLStraight = $00000001;
  ksBLBreak = $00000002;
  ksBLVawe = $00000003;

// Constants for enum ksAngleEnum
type
  ksAngleEnum = TOleEnum;
const
  ksAngle0 = $00000000;
  ksAngle90 = $00000001;
  ksAngle180 = $00000002;
  ksAngle270 = $00000003;

// Constants for enum ksHatchStyleEnum
type
  ksHatchStyleEnum = TOleEnum;
const
  ksHatchMetal = $00000000;
  ksHatchNonMetal = $00000001;
  ksHatchTimber = $00000002;
  ksHatchNaturalStone = $00000003;
  ksHatchCeramics = $00000004;
  ksHatchConcrete = $00000005;
  ksHatchGlass = $00000006;
  ksHatchLiquid = $00000007;
  ksHatchNaturallyGround = $00000008;
  ksHatchSpreadGround = $00000009;
  ksHatchArtificialStone = $0000000A;
  ksHatchReinforcedConcrete = $0000000B;
  ksHatchTenseReinforcedConcrete = $0000000C;
  ksHatchLongitudalTimber = $0000000D;
  ksHatchSand = $0000000E;

// Constants for enum ksRegionTypeEnum
type
  ksRegionTypeEnum = TOleEnum;
const
  ksRTInside = $00000001;
  ksRTOutside = $00000002;
  ksRTCutFrame = $00000003;

// Constants for enum ksColouringTypeEnum
type
  ksColouringTypeEnum = TOleEnum;
const
  ksColouringSolid = $00000000;
  ksColouringLinear = $00000001;
  ksColouringAngle = $00000002;
  ksColouringCone = $00000003;
  ksColouringCircle = $00000004;
  ksColouringSquare = $00000005;
  ksColouringCylinder = $00000006;

// Constants for enum ksSheetsRangeEnum
type
  ksSheetsRangeEnum = TOleEnum;
const
  ksAllSheets = $00000000;
  ksUnevenSheets = $00000001;
  ksEvenSheets = $00000002;

// Constants for enum ksOutputColorTypeEnum
type
  ksOutputColorTypeEnum = TOleEnum;
const
  ksPJ_OCBlack = $00000000;
  ksPJ_OCByView = $00000001;
  ksPJ_OCByLayer = $00000002;
  ksPJ_OCByObject = $00000003;

// Constants for enum ksPropertyTypeEnum
type
  ksPropertyTypeEnum = TOleEnum;
const
  ksPropertyDataTypeUnknown = $00000000;
  ksPropertyDataTypeLong = $00000001;
  ksPropertyDataTypeDouble = $00000002;
  ksPropertyDataTypeString = $00000003;
  ksPropertyDataTypeBoolean = $00000004;
  ksPropertyDataTypeColorRGB = $00000005;
  ksPropertyDataTypeHatchStyle = $00000006;
  ksPropertyDataTypeGroup = $00000007;

// Constants for enum ksReportFiltersTypeEnum
type
  ksReportFiltersTypeEnum = TOleEnum;
const
  ksFilterConditionUnknown = $00000000;
  ksFilterConditionEqual = $00000001;
  ksFilterConditionSmaller = $00000002;
  ksFilterConditionLarger = $00000003;
  ksFilterConditionEqualOrSmaller = $00000004;
  ksFilterConditionEqualOrLarger = $00000005;
  ksFilterConditionContain = $00000006;
  ksFilterConditionNotContain = $00000007;

// Constants for enum ksHypertextTypeEnum
type
  ksHypertextTypeEnum = TOleEnum;
const
  ksHTViewScale = $00000001;
  ksHTViewUnfold = $00000003;
  ksHTViewTurn = $00000004;
  ksHTViewTurnAngle = $00000005;
  ksHTViewName = $00000006;
  ksHTObjectText = $00000000;
  ksHTObjectText1 = $00000001;
  ksHTObjectText2 = $00000002;
  ksHTObjectText3 = $00000003;
  ksHTObjectText4 = $00000004;
  ksHTVariableValue = $00000000;
  ksHTVariableName = $00000001;
  ksHTVariableExpression = $00000002;
  ksHTVariableComment = $00000003;
  ksHTPositionNumber = $00000010;
  ksHTSpecificationObjectMarking = $00000080;
  ksHTSpecificationObjectName = $00000081;
  ksHTSpecificationObjectCount = $00000082;
  ksHTObjectProperty = $00000080;
  ksHTObjectZone = $FFFFFFFF;
  ksHTObjectSheet = $FFFFFFFE;
  ksHTViewTitleZone = $FFFFFFFF;
  ksHTViewTitleSheet = $FFFFFFFE;
  ksHTViewBaseObjectZone = $FFFFFFFD;
  ksHTViewBaseObjectSheet = $FFFFFFFC;

// Constants for enum ksHyperLinkTypeEnum
type
  ksHyperLinkTypeEnum = TOleEnum;
const
  ksHLUnknown = $00000000;
  ksHLFile = $00000001;
  ksHLObject = $00000002;
  ksHLMail = $00000003;

// Constants for enum ksChooseManagerTypeEnum
type
  ksChooseManagerTypeEnum = TOleEnum;
const
  ksChMUnknown = $FFFFFFFE;
  ksChMAllColors = $FFFFFFFF;
  ksChMLevel1ColorBase = $00000000;
  ksChMLevel1Color1 = $00000001;
  ksChMLevel1Color2 = $00000002;
  ksChMLevel2ColorBase = $00000064;
  ksChMLevel2Color1 = $00000065;
  ksChMLevel2Color2 = $00000066;

// Constants for enum ksRecoverErrorEnum
type
  ksRecoverErrorEnum = TOleEnum;
const
  ksRNoError = $00000000;
  ksRecover = $00000001;
  ksRNoOpen = $00000002;
  ksRAlreadyOpen = $00000003;
  ksRProtected = $00000004;

// Constants for enum ksBisectorVariant
type
  ksBisectorVariant = TOleEnum;
const
  ksBVNone = $00000000;
  ksBVNormalSum = $00000001;
  ksBVNormalDiff = $00000002;

// Constants for enum ksExternalFilesTypesEnum
type
  ksExternalFilesTypesEnum = TOleEnum;
const
  ksEFTUnknown = $FFFFFFFF;
  ksEFTDocumentFile = $00000000;
  ksEFTCurveStyleLibrary = $00000001;
  ksEFTTextStyleLibrary = $00000002;
  ksEFTHatchStyleLibrary = $00000003;
  ksEFTAttributeTypesLibrary = $00000004;
  ksEFTLayoutsLibrary = $00000005;
  ksEFTFragmentFile = $00000006;
  ksEFTFragmentsLibrary = $00000007;
  ksEFTSheetConnectedToSpc = $00000008;
  ksEFTSystemFile = $00000009;
  ksEFTIngotsLibrary = $0000000A;
  ksEFTPartFile = $0000000B;
  ksEFTRasterFile = $0000000C;
  ksEFTDocConnectedToSpcObj = $0000000D;
  ksEFTSpcConnectedToSheet = $0000000E;
  ksEFTDocConnectedToSpcObjInOtherDocs = $0000000F;
  ksEFTAssemblyFile = $00000010;
  ksEFTModelsLibrary = $00000011;
  ksEFTTemporaryFile = $00000012;
  ksEFTSourceFileForVariable = $00000013;
  ksEFTServiceFile = $00000014;
  ksEFTDraftFile = $00000015;
  ksEFTHyperLink = $00000016;
  ksEFTDataFile = $00000017;
  ksEFTReadingRegimFile = $00000018;
  ksEFTAssRprtTable = $00000019;
  ksEFTEexternalHyperText = $0000001A;
  ksEFTCopyExternalGeometry = $0000001B;
  ksEFExternalBilletPart = $0000001C;
  ksEFTExternalLayoutGeometry = $0000001D;

// Constants for enum ksBooleanType
type
  ksBooleanType = TOleEnum;
const
  ksBooleanUnknown = $00000000;
  ksIntersect = $00000001;
  ksDifference = $00000002;
  ksUnion = $00000003;

// Constants for enum ksSnapTypeEnum
type
  ksSnapTypeEnum = TOleEnum;
const
  ksSTUnknown = $FFFFFFFF;
  ksSTUndefine = $00000000;
  ksSTNearestPoint = $00000001;
  ksSTNearestMiddle = $00000002;
  ksSTObjectCentre = $00000003;
  ksSTIntersect = $00000004;
  ksSTGrid = $00000005;
  ksSTXYAlign = $00000006;
  ksSTAngleSnap = $00000007;
  ksSTPointOnCurve = $00000008;
  ksSTNormalToCurve = $00000009;
  ksSTTangentToCurve = $0000000A;

// Constants for enum ksNewDocumentSettingsTypeEnum
type
  ksNewDocumentSettingsTypeEnum = TOleEnum;
const
  ksNewPartDocumentSettings = $00000001;

// Constants for enum ksMaterialPropertyTypeEnum
type
  ksMaterialPropertyTypeEnum = TOleEnum;
const
  ksMPNewPartDocumentSettings = $00000001;

// Constants for enum ksVariantMarkingTypeEnum
type
  ksVariantMarkingTypeEnum = TOleEnum;
const
  ksVMFullMarking = $FFFFFFFF;
  ksVMBaseMarking = $00000001;
  ksVMEmbodimentNumber = $00000002;
  ksVMAdditionalNumber = $00000004;
  ksVMCode = $00000008;

// Constants for enum ksReportTypeEnum
type
  ksReportTypeEnum = TOleEnum;
const
  ksRTPropertiesReport = $00000000;
  ksRTEmbodimentsReport = $00000001;
  ksRTPatternWithVariablesTableReport = $00000002;
  ksRTAdditionNumbersReport = $00000003;

// Constants for enum ksValueFormatEnum
type
  ksValueFormatEnum = TOleEnum;
const
  ksVFVariableValue = $00000009;
  ksVFvvfToleranceDiv = $0000000E;
  ksVFvvfFullValue = $0000000F;
  ksVFvvfGridFullValue = $00000007;
  ksVFBooleanValue = $00000001;
  ksVFBooleanYesNo = $00000002;
  ksVFBooleanPlusMinus = $00000003;
  ksVFFullMarking = $00000001;
  ksVFOnlyAdditionMarking = $00000002;

// Constants for enum ksGroupeTypeEnum
type
  ksGroupeTypeEnum = TOleEnum;
const
  ksGTNone = $00000000;
  ksGTMatch = $00000001;
  ksGTSum = $00000002;
  ksGTRange = $00000003;
  ksGTEnum = $00000004;

// Constants for enum ksNumberingTypeEnum
type
  ksNumberingTypeEnum = TOleEnum;
const
  ksNTArabicNumerals = $00000000;
  ksNTRomanNumerals = $00000001;
  ksNTUpperRegEnglish = $00000002;
  ksNTLowerRegEnglish = $00000003;
  ksNTUpperRegRussian = $00000004;
  ksNTLowerRegRussian = $00000005;

// Constants for enum ksRowsNumberingTypeEnum
type
  ksRowsNumberingTypeEnum = TOleEnum;
const
  ksRNTNone = $00000000;
  ksRNTSimple = $00000001;
  ksRNTMultiLevel = $00000002;

// Constants for enum ksReportStyleInitEnum
type
  ksReportStyleInitEnum = TOleEnum;
const
  ksRSIDefault = $00000000;

// Constants for enum ksSheetTypeEnum
type
  ksSheetTypeEnum = TOleEnum;
const
  ksDocumentSheet = $00000000;
  ksFrontAdditionalSheet = $00000001;
  ksLastAdditionalSheet = $00000002;

// Constants for enum ksDrawInScreenPlaneEnum
type
  ksDrawInScreenPlaneEnum = TOleEnum;
const
  ksDrawNone = $00000000;
  ksDrawInScreenPlane = $00000001;
  ksDrawProjectToScreen = $00000002;
  ksDrawProjectFromScreen = $00000003;

// Constants for enum ksTextAlignEnum
type
  ksTextAlignEnum = TOleEnum;
const
  ksTALeft = $00000000;
  ksTARight = $00000002;
  ksTAHCenter = $00000006;
  ksTATop = $00000000;
  ksTABottom = $00000008;
  ksTABaseline = $00000018;
  ksTAVCenter = $00000038;

// Constants for enum ksReportBuildingTypeEnum
type
  ksReportBuildingTypeEnum = TOleEnum;
const
  ksRBAllObjects = $00000000;
  ksRBChooseObjects = $00000001;
  ksRBCurrentView = $00000002;
  ksRBChoiceToLevel = $00000003;

// Constants for enum ksPageLayoutTypeEnum
type
  ksPageLayoutTypeEnum = TOleEnum;
const
  ksRPLayoutDefault = $00000000;
  ksRPLayout1 = $00000001;

// Constants for enum ksObjectPropertyControlTypeEnum
type
  ksObjectPropertyControlTypeEnum = TOleEnum;
const
  ksOPControlGroup = $00000000;
  ksOPControlPointCoord = $00000001;
  ksOPControlPointStyle = $00000002;
  ksOPControlLineStyle = $00000004;
  ksOPControlHatchStyle = $00000005;
  ksOPControlColor = $00000006;
  ksOPControlEditDouble = $00000007;
  ksOPControlEditInt = $0000000A;
  ksOPControlListDouble = $0000000B;
  ksOPControlListInt = $0000000E;
  ksOPControlListCheck = $0000000F;
  ksOPControlListBmp = $00000010;
  ksOPControlListString = $00000011;
  ksOPControlSimpleText = $00000013;
  ksOPControlText = $00000019;
  ksOPControlEdit = $0000001F;
  ksOPControlExternalEdit = $00000022;
  ksOPControlExternalStringEdit = $00000023;
  ksOPControlFontImageList = $00000026;
  ksOPControlExternalText = $0000002C;
  ksOPControlExternalMultyText = $0000002D;

// Constants for enum ksPrinterTypeEnum
type
  ksPrinterTypeEnum = TOleEnum;
const
  ksPTPrintPreviewPrinter = $00000000;
  ksPTSpecialPrinter = $00000001;

// Constants for enum ksSpecificationStyleDifferenceTypeEnum
type
  ksSpecificationStyleDifferenceTypeEnum = TOleEnum;
const
  ksSpcStyleEqual = $00000000;
  ksSpcStyleDistinguish = $00000001;
  ksSpcStyleNotFound = $FFFFFFFF;

// Constants for enum ksSlaveDocumentTypeEnum
type
  ksSlaveDocumentTypeEnum = TOleEnum;
const
  ksSDSketchMode = $000003E8;
  ksSDSpecificationSlave = $000003E9;

// Constants for enum ksNurbsByPointsBuildingTypeEnum
type
  ksNurbsByPointsBuildingTypeEnum = TOleEnum;
const
  ksNByPBTUndefined = $00000000;
  ksNByPBLinear = $00000001;
  ksNByPBChordLength = $00000002;
  ksNByPBCentripetal = $00000003;

// Constants for enum ksNurbsByPointsPointConstraintsEnum
type
  ksNurbsByPointsPointConstraintsEnum = TOleEnum;
const
  ksNByPBPCNone = $00000000;
  ksNByPBPCTangent = $00000001;
  ksNByPBPCSmoothG2 = $00000002;

// Constants for enum ksNurbsByPointsAproximationTypeEnum
type
  ksNurbsByPointsAproximationTypeEnum = TOleEnum;
const
  ksNBPAproximationStepByCurvature = $00000000;
  ksNBPAproximationStepByDeviation = $00000001;

// Constants for enum ksKompasVariantEnum
type
  ksKompasVariantEnum = TOleEnum;
const
  ksKompasPro = $00000000;
  ksKompasHome = $00000001;
  ksKompasViewer = $00000002;
  ksKompasSpds = $00000004;
  ksKompasGraphic = $00000100;
  ksKompasInvisible = $00000200;
  ksKompasLatin = $00000400;
  ksKompasConsumer = $00001000;
  ksKompasStudy = $00002000;

// Constants for enum ksCheckBoxVisualStyleEnum
type
  ksCheckBoxVisualStyleEnum = TOleEnum;
const
  ksCheckBoxDefault = $00000000;
  ksCheckBoxSwitcher = $00000001;

// Constants for enum ksPhantomTypeEnum
type
  ksPhantomTypeEnum = TOleEnum;
const
  ksUnknownPhantom = $00000000;
  ksMoveGroupPhantom = $00000001;
  ksLineSegPhantom = $00000002;
  ksRectanglePhantom = $00000003;
  ksAngleLineSegPhantom = $00000004;
  ksHalfRectanglePhantom = $00000005;
  ksUserPhantom = $00000006;
  ksCirclePhantom = $00000007;

// Constants for enum ksProcess2DTypeEnum
type
  ksProcess2DTypeEnum = TOleEnum;
const
  ksProcess2DCursor = $00000001;
  ksProcess2DPlacement = $00000002;

// Constants for enum ksProcess2DNotifyEnum
type
  ksProcess2DNotifyEnum = TOleEnum;
const
  ksProcess2DPlacementChanged = $00000001;
  ksProcess2DExecuteCommand = $00000002;
  ksProcess2DRun = $00000003;
  ksProcess2DStop = $00000004;
  ksProcess2DActivate = $00000005;
  ksProcess2DDeactivate = $00000006;
  ksProcess2DEndProcess = $00000007;

// Constants for enum ksProcess3DNotifyEnum
type
  ksProcess3DNotifyEnum = TOleEnum;
const
  ksProcess3DPlacementChanged = $00000001;
  ksProcess3DExecuteCommand = $00000002;
  ksProcess3DRun = $00000003;
  ksProcess3DStop = $00000004;
  ksProcess3DActivate = $00000005;
  ksProcess3DDeactivate = $00000006;
  ksProcess3DFilterObjects = $00000007;
  ksProcess3DCreateTakeObject = $00000008;
  ksProcess3DEndProcess = $00000009;

// Constants for enum ksProcess3DTypeEnum
type
  ksProcess3DTypeEnum = TOleEnum;
const
  ksProcess3DPlacementAndEntity = $00000001;
  ksProcess3DSelectEntity = $00000002;

// Constants for enum ksTwinSwitcherValueEnum
type
  ksTwinSwitcherValueEnum = TOleEnum;
const
  ksTwinSwitcherPos1 = $00000001;
  ksTwinSwitcherPos2 = $00000002;

// Constants for enum ksToleranceArrowType
type
  ksToleranceArrowType = TOleEnum;
const
  ksTANone = $00000000;
  ksTAArrow = $00000001;
  ksTATriangle = $00000002;

// Constants for enum ksProcessContextMenuType
type
  ksProcessContextMenuType = TOleEnum;
const
  ksProcessDefaultContextMenu = $00000000;
  ksProcessContextMenuHide = $FFFFFFFE;
  ksProcessContextPanel = $FFFFFFFD;
  ksProcessContextIconMenu = $FFFFFFFC;

// Constants for enum ksEnterButtonIconTypeEnum
type
  ksEnterButtonIconTypeEnum = TOleEnum;
const
  ksEnterCheckIcon = $00000000;
  ksEnterFloppyIcon = $00000001;
  ksEnterNewInputIcon = $00000002;
  ksEnterApplyIcon = $00000003;

// Constants for enum ksShowHideTmpObjTypeEnum
type
  ksShowHideTmpObjTypeEnum = TOleEnum;
const
  ksTmpObjHide = $00000000;
  ksTmpObjShow = $00000001;
  ksTmpObjShowPhantom = $00000002;

// Constants for enum ksDocumentsLibraryInsertionTypeEnum
type
  ksDocumentsLibraryInsertionTypeEnum = TOleEnum;
const
  ksInsertionUnknown = $00000000;
  ksInsertionFragment = $00000002;
  ksInsertionPart = $00000004;
  ksInsertionAssembly = $00000005;
  ksInsertionTextual = $00000006;
  ksInsertionRaster = $00000014;
  ksInsertionTable = $00000015;
  ksInsertionTxtFile = $00000016;

// Constants for enum ksRedrawDocumentModeEnum
type
  ksRedrawDocumentModeEnum = TOleEnum;
const
  ksRedrawFull = $00000000;
  ksRedrawAnimation = $00000001;
  ksRedrawSelection = $00000002;
  ksRedrawOperationPhantom = $00000003;
  ksRedrawDimensions = $00000004;
  ksRedrawPhantomObjects = $00000005;
  ksRedrawHighlightObjects = $00000006;
  ksRedrawWidgets = $00000007;

implementation

uses ComObj;

end.

unit Kompas6Constants_TLB;

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
// File generated on 19.05.2009 15:08:42 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Program Files\ASCON\KOMPAS-3D V10\Bin\ksConstants.TLB (1)
// LIBID: {75C9F5D0-B5B8-4526-8681-9903C567D2ED}
// LCID: 0
// Helpfile: C:\Program Files\ASCON\KOMPAS-3D V10\Bin\sdk.hlp
// HelpString: 
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\system32\stdole2.tlb)
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

// Constants for enum ksStampNotifyEnum
type
  ksStampNotifyEnum = TOleEnum;
const
  kdBeginEditStamp = $00000001;
  kdEndEditStamp = $00000002;
  kdStampCellDblClick = $00000003;
  kdStampCellBeginEdit = $00000004;

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

// Constants for enum SpecPropertyToolBarEnum
type
  SpecPropertyToolBarEnum = TOleEnum;
const
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
  ksObjectUserDataStoragesMng = $00002904;
  ksObjectUserDataStorages = $00002905;
  ksObjectUserDataStorage = $00002906;
  ksObjectParametriticConstraint = $00002907;
  ksObjectText = $000029CC;
  ksObjectTextLine = $000029CD;
  ksObjectTextItem = $000029CE;
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
  prInsertScetch = $00004E55;
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
  prEditSelectedObject = $00008B98;

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
  ksDrStraightAxis = $00000038;
  ksDrCircleAxis = $0000003A;
  ksDrArcAxis = $0000003B;
  ksDrCutUnitMarking = $0000003C;
  ksDrUnitMarking = $0000003D;
  ksDrMultiTextLeader = $0000003E;
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
  ksCMCloseAll = $000080F0;
  ksCMRepeatFind = $000081B7;
  ksCMStop = $000081B6;
  ksCMEscape = $000081BB;
  ksCMCreateObject = $000083A4;
  ksCMCansel = $000083A5;
  ksCMSpcObjectsSort = $00008404;
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
  ksCMBuildTreeView = $0000908C;
  ksCMParameters = $000092E8;
  ksCMZoomUndo = $00009682;
  ksCMZoomRedo = $00009683;
  ksCMCreateSheetFromModel = $00009DB5;
  ksCMSelectedObjectProperties = $00009E0D;
  ksCMSelectedObjectOwnerProperties = $00009E0E;
  ksCMSelectedCompanentProperties = $00009E0F;
  ksCMSelectedCompanentInstanceProperties = $00009E10;
  ksCMViewFeatureInTree = $00009E4C;
  ksCMLODOn = $00009EA2;
  ksCM3DArrayDestroy = $00009EA7;
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
  ksCMFileNew = $0000E100;
  ksCMFileOpen = $0000E101;
  ksCMFileClose = $0000E102;
  ksCMFileSave = $0000E103;
  ksCMFileCloseAs = $0000E104;
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
  ksMFormRectangle = $00000002;
  ksMFormSquare = $00000003;

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

// Constants for enum ksContourFormEnum
type
  ksContourFormEnum = TOleEnum;
const
  ksUFormCirle = $00000000;
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


implementation

uses ComObj;

end.

unit Kompas6Constants3D_TLB;

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
// Type Lib: C:\Program Files\ASCON\KOMPAS-3D V10\Bin\ksConstants3D.TLB (1)
// LIBID: {2CAF168C-7961-4B90-9DA2-701419BEEFE3}
// LCID: 0
// Helpfile: 
// HelpString: 
// DepndLst: None
// Parent TypeLibrary:
//   (0) v1.0 KompasAPI7, (C:\Program Files\ASCON\KOMPAS-3D V10\Bin\kAPI7.TLB)
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
  Kompas6Constants3DMajorVersion = 1;
  Kompas6Constants3DMinorVersion = 0;

  LIBID_Kompas6Constants3D: TGUID = '{2CAF168C-7961-4B90-9DA2-701419BEEFE3}';


// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum Obj3dType
type
  Obj3dType = TOleEnum;
const
  o3d_unknown = $00000000;
  o3d_planeXOY = $00000001;
  o3d_planeXOZ = $00000002;
  o3d_planeYOZ = $00000003;
  o3d_pointCS = $00000004;
  o3d_sketch = $00000005;
  o3d_face = $00000006;
  o3d_edge = $00000007;
  o3d_vertex = $00000008;
  o3d_axis2Planes = $00000009;
  o3d_axis2Points = $0000000A;
  o3d_axisConeFace = $0000000B;
  o3d_axisEdge = $0000000C;
  o3d_axisOperation = $0000000D;
  o3d_planeOffset = $0000000E;
  o3d_planeAngle = $0000000F;
  o3d_plane3Points = $00000010;
  o3d_planeNormal = $00000011;
  o3d_planeTangent = $00000012;
  o3d_planeEdgePoint = $00000013;
  o3d_planeParallel = $00000014;
  o3d_planePerpendicular = $00000015;
  o3d_planeLineToEdge = $00000016;
  o3d_planeLineToPlane = $00000017;
  o3d_baseExtrusion = $00000018;
  o3d_bossExtrusion = $00000019;
  o3d_cutExtrusion = $0000001A;
  o3d_baseRotated = $0000001B;
  o3d_bossRotated = $0000001C;
  o3d_cutRotated = $0000001D;
  o3d_baseLoft = $0000001E;
  o3d_bossLoft = $0000001F;
  o3d_cutLoft = $00000020;
  o3d_chamfer = $00000021;
  o3d_fillet = $00000022;
  o3d_meshCopy = $00000023;
  o3d_circularCopy = $00000024;
  o3d_curveCopy = $00000025;
  o3d_circPartArray = $00000026;
  o3d_meshPartArray = $00000027;
  o3d_curvePartArray = $00000028;
  o3d_derivPartArray = $00000029;
  o3d_incline = $0000002A;
  o3d_shellOperation = $0000002B;
  o3d_ribOperation = $0000002C;
  o3d_baseEvolution = $0000002D;
  o3d_bossEvolution = $0000002E;
  o3d_cutEvolution = $0000002F;
  o3d_mirrorOperation = $00000030;
  o3d_mirrorAllOperation = $00000031;
  o3d_cutByPlane = $00000032;
  o3d_cutBySketch = $00000033;
  o3d_holeOperation = $00000034;
  o3d_polyline = $00000035;
  o3d_conicSpiral = $00000036;
  o3d_spline = $00000037;
  o3d_cylindricSpiral = $00000038;
  o3d_importedSurface = $00000039;
  o3d_thread = $0000003A;
  o3d_EvolutionSurface = $0000003B;
  o3d_ExtrusionSurface = $0000003C;
  o3d_RotatedSurface = $0000003D;
  o3d_LoftSurface = $0000003E;
  o3d_MacroObject = $0000003F;
  o3d_UnionComponents = $00000040;
  o3d_MoldCavity = $00000041;
  o3d_planeMiddle = $00000042;
  o3d_controlPoint = $00000043;
  o3d_conjunctivePoint = $00000044;
  o3d_aggregate = $00000045;
  o3d_point3D = $00000046;
  o3d_axisOX = $00000047;
  o3d_axisOY = $00000048;
  o3d_axisOZ = $00000049;
  o3d_sheetMetalBody = $0000004A;
  o3d_sheetMetalBend = $0000004B;
  o3d_sheetMetalLineBend = $0000004C;
  o3d_sheetMetalHole = $0000004D;
  o3d_sheetMetalCut = $0000004E;
  o3d_UnHistoried = $0000004F;
  o3d_lastEntityElement = $00000050;
  o3d_variable = $00000064;
  o3d_placement = $00000065;
  o3d_entityCollection = $00000066;
  o3d_document = $00000067;
  o3d_part = $00000068;
  o3d_entity = $00000069;
  o3d_mateConstraint = $0000006A;
  o3d_mateConstraintCollection = $0000006B;
  o3d_partCollection = $0000006C;
  o3d_constrElement = $0000006D;
  o3d_operationElement = $0000006E;
  o3d_curveElement = $0000006F;
  o3d_rasterFormat = $00000070;
  o3d_additionFormat = $00000071;
  o3d_bodyCollection = $00000072;
  o3d_body = $00000073;
  o3d_faceCollection = $00000074;
  o3d_tessellation = $00000075;
  o3d_facet = $00000076;
  o3d_featureCollection = $00000077;
  o3d_feature = $00000078;
  o3d_edgeCollection = $00000079;
  o3d_orientedEdge = $0000007A;
  o3d_orientedEdgeCollection = $0000007B;
  o3d_loop = $0000007C;
  o3d_loopCollection = $0000007D;
  o3d_curve3D = $0000007E;
  o3d_surface = $0000007F;
  o3d_massInertiaParam = $00000080;
  o3d_lineseg3dParam = $00000081;
  o3d_circle3dParam = $00000082;
  o3d_ellipse3dParam = $00000083;
  o3d_nurbsPoint3dParam = $00000084;
  o3d_nurbsPoint3dCollection = $00000085;
  o3d_nurbsPoint3dCollCollection = $00000086;
  o3d_nurbsKnotCollection = $00000087;
  o3d_nurbs3dParam = $00000088;
  o3d_planeParam = $00000089;
  o3d_coneParam = $0000008A;
  o3d_cylinderParam = $0000008B;
  o3d_sphereParam = $0000008C;
  o3d_torusParam = $0000008D;
  o3d_nurbsSurfaceParam = $0000008E;
  o3d_mateConstraintGroup = $0000008F;
  o3d_measurer = $00000090;
  o3d_selectionMng = $00000091;
  o3d_chooseMng = $00000092;
  o3d_arc3dParam = $00000093;
  o3d_deletedCopyCollection = $00000094;
  o3d_viewProjection = $00000095;
  o3d_viewProjectionCollection = $00000096;
  o3d_attribute = $00000097;
  o3d_attributeCollection = $00000098;
  o3d_componentPositioner = $00000099;
  o3d_modelLibrary = $0000009A;
  o3d_ObjectsFilter3D = $0000009B;
  o3d_coordinate3dCollection = $0000009C;
  o3d_intersectionResult = $0000009D;
  o3d_PolygonalLineVertexParam = $0000009E;
  o3d_variableCollection = $0000009F;

// Constants for enum ErrorType3d
type
  ErrorType3d = TOleEnum;
const
  et3dNo3dDocument = $FFFFFFF9;
  et3dAbort = $FFFFFFFF;
  et3dError1 = $00000001;
  et3dError2 = $00000002;
  et3dError3 = $00000003;
  et3dError4 = $00000004;
  et3dError5 = $00000005;
  et3dError6 = $00000006;
  et3dError7 = $00000007;
  et3dError8 = $00000008;
  et3dError9 = $00000009;
  et3dError10 = $0000000A;
  et3dError11 = $0000000B;
  et3dError12 = $0000000C;
  et3dError13 = $0000000D;
  et3dError14 = $0000000E;
  et3dError15 = $0000000F;
  et3dError16 = $00000010;
  et3dError17 = $00000011;
  et3dError18 = $00000012;
  et3dError19 = $00000013;
  et3dError20 = $00000014;
  et3dError21 = $00000015;
  et3dError22 = $00000016;
  et3dError23 = $00000017;
  et3dError24 = $00000018;
  et3dError25 = $00000019;
  et3dError26 = $0000001A;
  et3dError27 = $0000001B;
  et3dError28 = $0000001C;
  et3dError29 = $0000001D;
  et3dError30 = $0000001E;
  et3dError31 = $0000001F;
  et3dError32 = $00000020;
  et3dError33 = $00000021;
  et3dError34 = $00000022;
  et3dError35 = $00000023;
  et3dError36 = $00000024;
  et3dError37 = $00000025;
  et3dError38 = $00000026;
  et3dError39 = $00000027;
  et3dError40 = $00000028;
  et3dError41 = $00000029;
  et3dError42 = $0000002A;
  et3dError43 = $0000002B;
  et3dError44 = $0000002C;
  et3dError45 = $0000002D;
  et3dError46 = $0000002E;
  et3dError47 = $0000002F;
  et3dError48 = $00000030;
  et3dError49 = $00000031;
  et3dError50 = $00000032;
  et3dError51 = $00000033;
  et3dError52 = $00000034;
  et3dError53 = $00000035;
  et3dError54 = $00000036;
  et3dError55 = $00000037;
  et3dError56 = $00000038;
  et3dError57 = $00000039;
  et3dError58 = $0000003A;
  et3dError59 = $0000003B;
  et3dError60 = $0000003C;
  et3dError61 = $0000003D;
  et3dError62 = $0000003E;
  et3dError63 = $0000003F;
  et3dError64 = $00000040;
  et3dError65 = $00000041;
  et3dError66 = $00000042;
  et3dError67 = $00000043;
  et3dError68 = $00000044;
  et3dError69 = $00000045;
  et3dError70 = $00000046;
  et3dError71 = $00000047;
  et3dError72 = $00000048;
  et3dError73 = $00000049;
  et3dError74 = $0000004A;
  et3dError75 = $0000004B;
  et3dError76 = $0000004C;
  et3dError77 = $0000004D;
  et3dError78 = $0000004E;
  et3dError79 = $0000004F;
  et3dError80 = $00000050;
  et3dError81 = $00000051;
  et3dError82 = $00000052;
  et3dError83 = $00000053;
  et3dError84 = $00000054;
  et3dError85 = $00000055;
  et3dError86 = $00000056;
  et3dError87 = $00000057;
  et3dError88 = $00000058;
  et3dError89 = $00000059;
  et3dError90 = $0000005A;
  et3dError91 = $0000005B;
  et3dError92 = $0000005C;
  et3dError93 = $0000005D;
  et3dError94 = $0000005E;
  et3dError95 = $0000005F;
  et3dError96 = $00000060;
  et3dError97 = $00000061;
  et3dError98 = $00000062;
  et3dError99 = $00000063;
  et3dError100 = $00000064;
  et3dError101 = $00000065;
  et3dError102 = $00000066;
  et3dError103 = $00000067;
  et3dError104 = $00000068;
  et3dError105 = $00000069;
  et3dError106 = $0000006A;
  et3dError107 = $0000006B;
  et3dError108 = $0000006C;
  et3dError109 = $0000006D;
  et3dError110 = $0000006E;
  et3dError111 = $0000006F;
  et3dError112 = $00000070;
  et3dError113 = $00000071;
  et3dError114 = $00000072;
  et3dError115 = $00000073;
  et3dError116 = $00000074;
  et3dError117 = $00000075;
  et3dError118 = $00000076;
  et3dError119 = $00000077;
  et3dError120 = $00000078;
  et3dError121 = $00000079;
  et3dError122 = $0000007A;

// Constants for enum Direction_Type
type
  Direction_Type = TOleEnum;
const
  dtNormal = $00000000;
  dtReverse = $00000001;
  dtBoth = $00000002;
  dtMiddlePlane = $00000003;

// Constants for enum End_Type
type
  End_Type = TOleEnum;
const
  etBlind = $00000000;
  etThroughAll = $00000001;
  etUpToVertexTo = $00000002;
  etUpToVertexFrom = $00000003;
  etUpToSurfaceTo = $00000004;
  etUpToSurfaceFrom = $00000005;
  etUpToNearSurface = $00000006;

// Constants for enum Part_Type
type
  Part_Type = TOleEnum;
const
  pInPlace_Part = $FFFFFFFC;
  pNew_Part = $FFFFFFFD;
  pEdit_Part = $FFFFFFFE;
  pTop_Part = $FFFFFFFF;

// Constants for enum MateConstraintType
type
  MateConstraintType = TOleEnum;
const
  mc_Coincidence = $00000000;
  mc_Parallel = $00000001;
  mc_Perpendicular = $00000002;
  mc_Tangency = $00000003;
  mc_Concentric = $00000004;
  mc_Distance = $00000005;
  mc_Angle = $00000006;
  mc_InPlace = $00000007;

// Constants for enum ViewMode
type
  ViewMode = TOleEnum;
const
  vm_Wireframe = $00000000;
  vm_HiddenRemoved = $00000001;
  vm_HiddenThin = $00000002;
  vm_Shaded = $00000003;

// Constants for enum ProjectionType
type
  ProjectionType = TOleEnum;
const
  vp_None = $FFFFFFFF;
  vp_NormalTo = $00000000;
  vp_Front = $00000001;
  vp_Rear = $00000002;
  vp_Up = $00000003;
  vp_Down = $00000004;
  vp_Left = $00000005;
  vp_Right = $00000006;
  vp_IsoXYZ = $00000007;
  vp_IsoYZX = $00000008;
  vp_IsoZXY = $00000009;
  vp_Dio = $0000000A;

// Constants for enum D3FormatConvType
type
  D3FormatConvType = TOleEnum;
const
  format_SAT = $00000001;
  format_XT = $00000002;
  format_STEP = $00000003;
  format_IGES = $00000004;
  format_VRML = $00000005;
  format_STL = $00000006;

// Constants for enum UseColor
type
  UseColor = TOleEnum;
const
  useColorUnknown = $FFFFFFFF;
  useColorOur = $00000000;
  useColorOwner = $00000001;
  useColorSource = $00000002;

// Constants for enum Positioner_Type
type
  Positioner_Type = TOleEnum;
const
  pnMove = $00000000;
  pnRotate = $00000001;

// Constants for enum Intersection_Type
type
  Intersection_Type = TOleEnum;
const
  itTangentPoint = $00000001;
  itTangentCurve = $00000002;
  itTangentSurface = $00000003;
  itBody = $00000004;

// Constants for enum ksMateType
type
  ksMateType = TOleEnum;
const
  ksMateUnknown = $00000000;
  ksMatePoint = $00000001;
  ksMateLine = $00000002;
  ksMatePlane = $00000003;
  ksMateCylinder = $00000004;
  ksMateCone = $00000005;
  ksMateSphere = $00000006;
  ksMateTorus = $00000007;

// Constants for enum ksChooseBodiesType
type
  ksChooseBodiesType = TOleEnum;
const
  ksNewBody = $00000000;
  ksAutomaticDefinition = $00000001;
  ksManualEditing = $00000002;
  ksAllBodies = $00000003;

// Constants for enum ksBooleanType
type
  ksBooleanType = TOleEnum;
const
  ksBooleanUnknown = $00000000;
  ksIntersect = $00000001;
  ksDifference = $00000002;
  ksUnion = $00000003;

// Constants for enum ksLineBuildingType
type
  ksLineBuildingType = TOleEnum;
const
  ksLBTByPoint = $00000000;
  ksLBTXDirection = $00000001;
  ksLBTYDirection = $00000002;
  ksLBTZDirection = $00000003;
  ksLBTParallel = $00000004;
  ksLBTPerpendicular = $00000005;

// Constants for enum ksPart7CollectionTypeEnum
type
  ksPart7CollectionTypeEnum = TOleEnum;
const
  ksAllParts = $00000000;
  ksUniqueParts = $00000001;

// Constants for enum ksUnfoldTypeEnum
type
  ksUnfoldTypeEnum = TOleEnum;
const
  ksCoefficient = $00000000;
  ksValueBend = $00000001;
  ksDecreaseBend = $00000002;
  ksTableBends = $00000003;

// Constants for enum ksBendDisposalEnum
type
  ksBendDisposalEnum = TOleEnum;
const
  ksBendDisposalAllLength = $00000000;
  ksBendDisposalCentre = $00000001;
  ksBendDisposalLeft = $00000002;
  ksBendDisposalRight = $00000003;
  ksBendDisposalTwo = $00000004;
  ksBendDisposalLeftAndWidth = $00000005;
  ksBendDisposalRightAndWidth = $00000006;

// Constants for enum ksBendLengthTypeEnum
type
  ksBendLengthTypeEnum = TOleEnum;
const
  ksBendLengthByContinue = $00000000;
  ksBendLengthByContour = $00000001;
  ksBendLengthByTouch = $00000002;

// Constants for enum ksBendOffsetTypeEnum
type
  ksBendOffsetTypeEnum = TOleEnum;
const
  ksBendOffsetIn = $00000000;
  ksBendOffsetOut = $00000001;
  ksBendOffsetLineOutside = $00000002;
  ksBendOffsetLineInside = $00000003;
  ksBendOffsetByTouch = $00000004;

// Constants for enum ksBendSideTypeEnum
type
  ksBendSideTypeEnum = TOleEnum;
const
  ksBendSideByAngle = $00000000;
  ksBendSideByWidening = $00000001;

// Constants for enum ksBendReleaseTypeEnum
type
  ksBendReleaseTypeEnum = TOleEnum;
const
  ksBendReleaseByRect = $00000000;
  ksBendReleaseByCircle = $00000001;

// Constants for enum ksBendAngleReleaseTypeEnum
type
  ksBendAngleReleaseTypeEnum = TOleEnum;
const
  ksBendAngleBendOnly = $00000000;
  ksBendAngleIn = $00000001;
  ksBendAngleAllBends = $00000002;

// Constants for enum ksBendTypeEnum
type
  ksBendTypeEnum = TOleEnum;
const
  ksLineBend = $00000000;
  ksBendLineOutside = $00000001;
  ksBendLineInside = $00000002;
  ksBendByTouch = $00000003;

// Constants for enum ksHoleCutTypeEnum
type
  ksHoleCutTypeEnum = TOleEnum;
const
  ksHoleCutByWidth = $00000000;
  ksHoleCutByDepth = $00000001;
  ksHoleCutUpToSurface = $00000002;

// Constants for enum ksChoosePartsType
type
  ksChoosePartsType = TOleEnum;
const
  ksChAutomaticDefinition = $00000001;
  ksChManualEditing = $00000002;
  ksChAllParts = $00000003;
  ksChNoLibraryParts = $00000004;

// Constants for enum ksChooseType
type
  ksChooseType = TOleEnum;
const
  ksChBodiesAndParts = $00000001;
  ksChParts = $00000002;
  ksChBodies = $00000003;

// Constants for enum ksPoint3DTypeEnum
type
  ksPoint3DTypeEnum = TOleEnum;
const
  ksPUnknown = $00000000;
  ksPParamCoord = $00000001;
  ksPDisplace = $00000002;
  ksPIntersect = $00000003;
  ksPCenter = $00000004;
  ksPCurve = $00000005;
  ksPSurface = $00000006;
  ksPProjection = $00000007;

// Constants for enum ksPoint3DCurveParamTypeEnum
type
  ksPoint3DCurveParamTypeEnum = TOleEnum;
const
  ksOffsetByU = $00000001;
  ksOffsetByLen = $00000002;
  ksOffsetByAngle = $00000003;

// Constants for enum ksPoint3DSurfaceParamTypeEnum
type
  ksPoint3DSurfaceParamTypeEnum = TOleEnum;
const
  ksOffsetByUV = $00000001;
  ksOffsetByLenFromObj = $00000002;

type

// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//

  ksObj3dTypeEnum = Obj3dType; 
  ksDirectionTypeEnum = Direction_Type; 
  ksEndTypeEnum = End_Type; 

implementation

uses ComObj;

end.

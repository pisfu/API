unit LDefin3D;

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
// File generated on 09.02.2017 18:52:20 from Type Library described below.

// ************************************************************************  //
// Type Lib: ksConstants3D.tlb (1)
// LIBID: {2CAF168C-7961-4B90-9DA2-701419BEEFE3}
// LCID: 0
// Helpfile: 
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
  o3d_baselineDimension3D = $00000050;
  o3d_lineDimension3D = $00000051;
  o3d_radialDimension3D = $00000052;
  o3d_diametralDimension3D = $00000053;
  o3d_angleDimension3D = $00000054;
  o3d_localCoordinateSystem = $00000055;
  o3d_leader3D = $00000056;
  o3d_markLeader3D = $00000057;
  o3d_rough3D = $00000058;
  o3d_positionLeader3D = $00000059;
  o3d_brandLeader3D = $0000005A;
  o3d_base3D = $0000005B;
  o3d_tolerance3D = $0000005C;
  o3d_SplitLine = $0000005D;
  o3d_SurfacePatch = $0000005E;
  o3d_FaceRemover = $0000005F;
  o3d_SurfaceSewer = $00000060;
  o3d_NurbsSurface = $00000061;
  o3d_SurfacesIntersectionCurve = $00000062;
  o3d_lastEntityElement = $00000063;
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
  o3d_sTrackingPointsMeasurer = $000000A0;
  o3d_surfaceElement = $000000A1;
  o3d_designationElement = $000000A2;
  o3d_copyleftObject = $000000A3;
  o3d_Embodiment = $000000A4;
  o3d_userMateConstraint = $000000A5;
  o3d_firstEntityElement2 = $000001F4;
  o3d_Equidistant3D = $000001F5;
  o3d_TrimmedCurve = $000001F6;
  o3d_TrimmedCurveObject = $000001F7;
  o3d_AuxMeshCopy = $000001F8;
  o3d_AuxCircularCopy = $000001F9;
  o3d_AuxCurveCopy = $000001FA;
  o3d_PointDrivenPattern = $000001FB;
  o3d_PartsPointDrivenPattern = $000001FC;
  o3d_AuxMirrorOperation = $000001FD;
  o3d_ConnectCurve = $000001FE;
  o3d_ConnectCurveObject = $000001FF;
  o3d_FilletCurve = $00000200;
  o3d_FilletCurveObject = $00000201;
  o3d_EquidistantSurface = $00000202;
  o3d_RuledSurface = $00000203;
  o3d_TrimmedSurface = $00000204;
  o3d_ExtensionSurface = $00000205;
  o3d_SurfaceThickening = $00000206;
  o3d_Arc3D = $00000207;
  o3d_AuxPointDrivenPattern = $00000208;
  o3d_BodiesPointDrivenPattern = $00000209;
  o3d_TablePattern = $0000020A;
  o3d_PartsTablePattern = $0000020B;
  o3d_AuxTablePattern = $0000020C;
  o3d_BodiesTablePattern = $0000020D;
  o3d_MeshPointsSurface = $0000020E;
  o3d_CloudPointsSurface = $0000020F;
  o3d_BodiesMeshCopy = $00000210;
  o3d_BodiesCircularCopy = $00000211;
  o3d_BodiesCurveCopy = $00000212;
  o3d_Scaling3D = $00000213;
  o3d_MirrorPart = $00000214;
  o3d_sheetMetalUndercut = $00000215;
  o3d_sheetMetalPlate = $00000216;
  o3d_sheetMetalCombinedBend = $00000217;
  o3d_sheetMetalBendStraighten = $00000218;
  o3d_sheetMetalBendBended = $00000219;
  o3d_sheetMetalBendUnfold = $0000021A;
  o3d_sheetMetalClosedCorner = $0000021B;
  o3d_sheetMetalBendObject = $0000021C;
  o3d_sheetMetalDimpleCutout = $0000021D;
  o3d_sheetMetalDrawnCutout = $0000021E;
  o3d_sheetMetalBeat = $0000021F;
  o3d_sheetMetalLouver = $00000220;
  o3d_sheetMetalCowling = $00000221;
  o3d_PointsArrOnCurve = $00000222;
  o3d_PointsArrFromFile = $00000223;
  o3d_PointsArrOnSurface = $00000224;
  o3d_ArrayExemplar = $00000225;
  o3d_AuxGeomArrayExemplar = $00000226;
  o3d_BodyArrayExemplar = $00000227;
  o3d_NurbsSurfaceByCurvesMesh = $00000228;
  o3d_PlaneByPointAndTangentToFace = $00000229;
  o3d_PlaneByPlaneCurve = $0000022A;
  o3d_JointSurface = $0000022B;
  o3d_DistanceAngleMeasure = $0000022C;
  o3d_EdgeLengthMeasure = $0000022D;
  o3d_AreaMeasure = $0000022E;
  o3d_AxisFromPointByDirection = $0000022F;
  o3d_Curve3DWithoutHistory = $00000230;
  o3d_CurveBy2Projections = $00000231;
  o3d_CurveByLaw = $00000232;
  o3d_IsoparametricCurve = $00000233;
  o3d_CurveOutLine = $00000234;
  o3d_SplineOnSurface = $00000235;
  o3d_IsoparametricCurvesSet = $00000236;
  o3d_ProjectionCurve = $00000237;
  o3d_Contour3D = $00000238;
  o3d_BodyReposition = $00000239;
  o3d_LineSegment3D = $0000023A;
  o3d_Billet = $0000023B;
  o3d_PolyLine3DPoint = $0000023C;
  o3d_OperationLinearDimension = $0000023D;
  o3d_OperationAngularDimension = $0000023E;
  o3d_OperationRadialDimension = $0000023F;
  o3d_OperationDiametralDimension = $00000240;
  o3d_SketchLinearDimension = $00000241;
  o3d_SketchAngularDimension = $00000242;
  o3d_SketchBreakAngularDimension = $00000243;
  o3d_SketchRadialDimension = $00000244;
  o3d_SketchBreakRadialDimension = $00000245;
  o3d_SketchDiametralDimension = $00000246;
  o3d_Hole3D = $00000247;
  o3d_UserObjectOperation = $00000248;
  o3d_Zone3D = $00000249;
  o3d_Zone3DDivision = $0000024A;
  o3d_Zones3D = $0000024B;
  o3d_WireFrame3D = $0000024C;
  o3d_CopyGeometry = $0000024D;
  o3d_CollectionGeometry = $0000024E;
  o3d_MeshPatternAnyCopy = $0000024F;
  o3d_CircularPatternAnyCopy = $00000250;
  o3d_CurvePatternAnyCopy = $00000251;
  o3d_PointDrivenPatternAnyCopy = $00000253;
  o3d_TablePatternAnyCopy = $00000254;
  o3d_LinearUnhistoriedDimension = $00000255;
  o3d_AngularUnhistoriedDimension = $00000256;
  o3d_RadialUnhistoriedDimension = $00000257;
  o3d_DiametralUnhistoriedDimension = $00000258;
  o3d_FaceLift = $00000259;
  o3d_UserWireFrame3D = $0000025A;
  o3d_UndefPartObject = $0000025B;
  o3d_SpecRough3D = $0000025C;
  o3d_SketchBreakLinearDimension = $0000025D;
  o3d_sheetMetalRuledCowling = $0000025E;
  o3d_UserDesignationObject3D = $0000025F;
  o3d_SplineFormOperation = $00000260;
  o3d_UnhistoriedBase3D = $00000261;
  o3d_UnhistoriedThread = $00000262;
  o3d_lastEntityElement2 = $000005DC;

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
  et3dError123 = $0000007B;
  et3dError124 = $0000007C;
  et3dError125 = $0000007D;
  et3dError126 = $0000007E;
  et3dError127 = $0000007F;
  et3dError128 = $00000080;
  et3dError129 = $00000081;
  et3dError130 = $00000082;
  et3dError131 = $00000083;
  et3dError132 = $00000084;
  et3dError133 = $00000085;
  et3dError134 = $00000086;
  et3dError135 = $00000087;
  et3dError136 = $00000088;
  et3dError137 = $00000089;
  et3dError138 = $0000008A;
  et3dError139 = $0000008B;
  et3dError140 = $0000008C;
  et3dError141 = $0000008D;
  et3dError142 = $0000008E;
  et3dError143 = $0000008F;
  et3dError144 = $00000090;
  et3dError145 = $00000091;
  et3dError146 = $00000092;
  et3dError147 = $00000093;
  et3dError148 = $00000094;
  et3dError149 = $00000095;
  et3dError150 = $00000096;
  et3dError151 = $00000097;
  et3dError152 = $00000098;
  et3dError153 = $00000099;
  et3dError154 = $0000009A;
  et3dError155 = $0000009B;
  et3dError156 = $0000009C;
  et3dError157 = $0000009D;
  et3dError158 = $0000009E;
  et3dError159 = $0000009F;
  et3dError160 = $000000A0;
  et3dError161 = $000000A1;
  et3dError162 = $000000A2;
  et3dError163 = $000000A3;
  et3dError164 = $000000A4;
  et3dError165 = $000000A5;
  et3dError166 = $000000A6;
  et3dError167 = $000000A7;
  et3dError168 = $000000A8;
  et3dError169 = $000000A9;
  et3dError170 = $000000AA;
  et3dError171 = $000000AB;
  et3dError172 = $000000AC;
  et3dError173 = $000000AD;
  et3dError174 = $000000AE;
  et3dError175 = $000000AF;
  et3dError176 = $000000B0;
  et3dError177 = $000000B1;
  et3dError179 = $000000B3;
  et3dError180 = $000000B4;
  et3dError181 = $000000B5;
  et3dError182 = $000000B6;
  et3dError183 = $000000B7;
  et3dError184 = $000000B8;
  et3dError185 = $000000B9;
  et3dError186 = $000000BA;
  et3dError187 = $000000BB;
  et3dError188 = $000000BC;
  et3dError189 = $000000BD;
  et3dError190 = $000000BE;
  et3dError191 = $000000BF;
  et3dError192 = $000000C0;
  et3dError193 = $000000C1;
  et3dError194 = $000000C2;
  et3dError195 = $000000C3;
  et3dError196 = $000000C4;
  et3dError197 = $000000C5;

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
  mc_Unknown = $FFFFFFFF;
  mc_Coincidence = $00000000;
  mc_Parallel = $00000001;
  mc_Perpendicular = $00000002;
  mc_Tangency = $00000003;
  mc_Concentric = $00000004;
  mc_Distance = $00000005;
  mc_Angle = $00000006;
  mc_InPlace = $00000007;
  mc_Transmission = $00000009;
  mc_CamGear = $0000000A;
  mc_Symmetric = $0000000B;
  mc_Dependent = $0000000E;

// Constants for enum ViewMode
type
  ViewMode = TOleEnum;
const
  vm_Wireframe = $00000000;
  vm_HiddenRemoved = $00000001;
  vm_HiddenThin = $00000002;
  vm_Shaded = $00000003;

// Constants for enum D3FormatConvType
type
  D3FormatConvType = TOleEnum;
const
  load_format_SAT = $FFFFFFFF;
  load_format_XT = $FFFFFFFE;
  load_format_STEP = $FFFFFFFD;
  load_format_IGES = $FFFFFFFC;
  load_format_STL = $FFFFFFFA;
  load_format_JT = $FFFFFFF8;
  format_Unknown = $00000000;
  format_SAT = $00000001;
  format_XT = $00000002;
  format_STEP = $00000003;
  format_IGES = $00000004;
  format_VRML = $00000005;
  format_STL = $00000006;
  format_C3D = $00000007;
  format_JT = $00000008;
  format_STEP_AP203 = $000000CB;
  format_STEP_AP214 = $000000D6;
  format_STEP_AP242 = $000000F2;

// Constants for enum UseColor
type
  UseColor = TOleEnum;
const
  useColorUnknown = $FFFFFFFF;
  useColorOur = $00000000;
  useColorOwner = $00000001;
  useColorSource = $00000002;
  useColorLayer = $00000003;

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
  ksMateCircle = $00000008;

// Constants for enum ksChooseBodiesType
type
  ksChooseBodiesType = TOleEnum;
const
  ksNewBody = $00000000;
  ksAutomaticDefinition = $00000001;
  ksManualEditing = $00000002;
  ksAllBodies = $00000003;

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
  ksLBTByPoint3DParams = $00000006;

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
  ksBendLengthByContourInternal = $00000003;
  ksBendLengthByTangentInternal = $00000004;

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
  ksPCylindrCoord = $00000008;
  ksPSphericCoord = $00000009;

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
  ksOffsetByCoords = $00000003;
  ksOffsetByCylinderCoords = $00000004;
  ksOffsetBySphereCoords = $00000005;

// Constants for enum ksMeasureResultEnum
type
  ksMeasureResultEnum = TOleEnum;
const
  ksMResUnknown = $00000000;
  ksMResAxisAxisCoaxial = $00000001;
  ksMResAxisAxisParallel = $00000002;
  ksMResAxisAxisIntersect = $00000003;
  ksMResAxisAxisDistant = $00000004;
  ksMResAxisSurfColinear = $00000005;
  ksMResAxisSurfParallel = $00000006;
  ksMResAxisSurfIntersect = $00000007;
  ksMResAxisSurfDistant = $00000008;
  ksMResSurfSurfColinear = $00000009;
  ksMResSurfSurfParallel = $0000000A;

// Constants for enum ksOrientationTypeEnum
type
  ksOrientationTypeEnum = TOleEnum;
const
  ksAxisOrientation = $00000000;
  ksEulerCorners = $00000001;
  ksOrientByObject = $00000002;

// Constants for enum ksModelObjectParamTypeEnum
type
  ksModelObjectParamTypeEnum = TOleEnum;
const
  ksMOAllParam = $00000001;
  ksMOPartAllParam = $00000002;
  ksMOCurrentLSKAllParam = $00000003;

// Constants for enum ks3DLineStyle
type
  ks3DLineStyle = TOleEnum;
const
  ksCS3DNoDrawing = $00000000;
  ksCS3DSolid = $00000001;
  ksCS3DDashed = $00000002;
  ksCS3DDotted = $00000003;
  ksCS3DDashDot = $00000004;
  ksCS3DDashDotLDash2Dots = $00000005;

// Constants for enum ksLoadStateEnum
type
  ksLoadStateEnum = TOleEnum;
const
  ksLUnknown = $FFFFFFFF;
  ksLCompletely = $00000000;
  ksLUnload = $00000001;
  ksLPartially = $00000002;

// Constants for enum ksFacetCullingMode
type
  ksFacetCullingMode = TOleEnum;
const
  ksFSMNone = $00000000;
  ksFSMFront = $00000001;
  ksFSMBack = $00000002;
  ksFSMAll = $00000003;

// Constants for enum ksEquidistant3DCutModeEnum
type
  ksEquidistant3DCutModeEnum = TOleEnum;
const
  ksECMUnknown = $00000000;
  ksECMLineSeg = $00000001;
  ksECMCircle = $00000002;

// Constants for enum ksPatternBasePointTypeEnum
type
  ksPatternBasePointTypeEnum = TOleEnum;
const
  ksCRAuto = $00000000;
  ksCRManual = $00000001;
  ksCRFirstObject = $00000002;

// Constants for enum ksExtensionSurfaceTypeEnum
type
  ksExtensionSurfaceTypeEnum = TOleEnum;
const
  ksESTUnknown = $FFFFFFFF;
  ksESTSelf = $00000000;
  ksESTTangent = $00000001;
  ksESTDirection = $00000002;

// Constants for enum ksExtensionLimitTypeEnum
type
  ksExtensionLimitTypeEnum = TOleEnum;
const
  ksETLUnknown = $FFFFFFFF;
  ksETLength = $00000000;
  ksETLVertex = $00000001;

// Constants for enum ksVector3DParametersTypeEnum
type
  ksVector3DParametersTypeEnum = TOleEnum;
const
  ksVector3DUnknown = $00000000;
  ksVector3D2Vertex = $00000001;
  ksVector3DCSAngle = $00000002;
  ksVector3DAxis = $00000003;
  ksVector3DCoefficients = $00000004;
  ksVector3D2Angles = $00000005;
  ksVector3DEdge = $00000006;
  ksVector3DPlane = $00000007;
  ksVector3DSurface = $00000008;
  ksVector3DCurve = $00000009;
  ksVector3DScreen = $0000000A;

// Constants for enum ksBasisVectorTypeEnum
type
  ksBasisVectorTypeEnum = TOleEnum;
const
  ksTangentVector = $00000000;
  ksNormalVector = $00000001;
  ksBinormalVector = $00000002;

// Constants for enum ksConnectTypeEnum
type
  ksConnectTypeEnum = TOleEnum;
const
  ksCTUnknown = $FFFFFFFF;
  ksCTPosition = $00000000;
  ksCTTangent = $00000001;
  ksCTNormal = $00000002;
  ksCTSmooth = $00000003;

// Constants for enum ksArc3DBuildingTypeEnum
type
  ksArc3DBuildingTypeEnum = TOleEnum;
const
  ksArc3DByPoints = $00000000;
  ksArc3DByCentre = $00000001;
  ksArc3DByDirrection = $00000002;
  ksArc3DByTanCurve = $00000003;

// Constants for enum ksArc3DParameterEnum
type
  ksArc3DParameterEnum = TOleEnum;
const
  ksArc3DCenter = $00000000;
  ksArc3DPoint1 = $00000001;
  ksArc3DPoint2 = $00000002;
  ksArc3DPoint3 = $00000003;
  ksArc3DAngle1 = $00000001;
  ksArc3DAngle2 = $00000002;
  ksArc3DRadius = $00000003;

// Constants for enum ksRotatedTypeEnum
type
  ksRotatedTypeEnum = TOleEnum;
const
  ksRTAngle = $00000000;
  ksRTVertex = $00000001;
  ksRTSurface = $00000002;

// Constants for enum ksLinearPatternBuildingTypeEnum
type
  ksLinearPatternBuildingTypeEnum = TOleEnum;
const
  ksLPSaveAll = $00000000;
  ksLPSaveAlongPerimeter = $00000001;
  ksLPSaveAlongAxially = $00000002;
  ksLPChessOrderByAxis1 = $00000003;
  ksLPChessOrderByAxis2 = $00000004;

// Constants for enum ksPartAccessTypeEnum
type
  ksPartAccessTypeEnum = TOleEnum;
const
  ksATUncertainty = $FFFFFFFF;
  ksATEditable = $00000000;
  ksATReadOnly = $00000001;
  ksATDisable = $00000002;

// Constants for enum ksMeshPointsSurfaceBuildingTypeEnum
type
  ksMeshPointsSurfaceBuildingTypeEnum = TOleEnum;
const
  ksMPByPoints = $00000000;
  ksMPByPole = $00000001;

// Constants for enum ksCloudPointsSurfaceBuildingTypeEnum
type
  ksCloudPointsSurfaceBuildingTypeEnum = TOleEnum;
const
  ksCLByPoints = $00000000;
  ksCLByPole = $00000001;
  ksCLPolyhedral = $00000002;

// Constants for enum ksCloudTypeEnum
type
  ksCloudTypeEnum = TOleEnum;
const
  ksCLAuto = $00000000;
  ksCLLocalCS = $00000001;
  ksCLScreen = $00000002;

// Constants for enum ksObjectsFilter3DEnum
type
  ksObjectsFilter3DEnum = TOleEnum;
const
  ksFilterAll = $00000000;
  ksFilterFaces = $00000001;
  ksFilterEdges = $00000002;
  ksFilterVertexs = $00000003;
  ksFilterCPlanes = $00000004;
  ksFilterCAxis = $00000005;
  ksFilterParts = $00000006;
  ksFilterBodies = $00000007;
  ksFilterSurfaces = $00000008;
  ksFilterSketches = $00000009;
  ksFilterCurves = $0000000A;
  ksFilterCS = $0000000B;
  ksFilterControlPoints = $0000000C;
  ksFilterPoints3D = $0000000D;
  ksFilterDesignations = $0000000E;
  ksFilterThread = $0000000F;

// Constants for enum ksCoordLawEnum
type
  ksCoordLawEnum = TOleEnum;
const
  ksCLawX = $00000000;
  ksCLawY = $00000001;
  ksCLawZ = $00000002;

// Constants for enum ksLawTypeEnum
type
  ksLawTypeEnum = TOleEnum;
const
  ksTLawConst = $00000000;
  ksTLawLinear = $00000001;
  ksTLawCube = $00000002;
  ksTLawByExpression = $00000003;

// Constants for enum ksCircularPatternBuildingTypeEnum
type
  ksCircularPatternBuildingTypeEnum = TOleEnum;
const
  ksCPSaveAll = $00000000;
  ksCPChessOrderByAxis1 = $00000001;
  ksCPChessOrderByAxis2 = $00000002;

// Constants for enum ksSplineTangentEnum
type
  ksSplineTangentEnum = TOleEnum;
const
  ksSTNone = $00000000;
  ksSTByDirection = $00000001;
  ksSTCurveU = $00000002;
  ksSTCurveV = $00000003;
  ksSTSurfaceCurve = $00000004;

// Constants for enum ksCurveProjectionTypeEnum
type
  ksCurveProjectionTypeEnum = TOleEnum;
const
  ksCPNearest = $00000000;
  ksCPNearestByDirection = $00000001;

// Constants for enum ksContour3DTypeEnum
type
  ksContour3DTypeEnum = TOleEnum;
const
  ksCTAuto = $00000000;
  ksCTSpace = $00000001;
  ksCTSurface = $00000002;
  ksCTSketch = $00000003;

// Constants for enum ksLineSegment3DTypeEnum
type
  ksLineSegment3DTypeEnum = TOleEnum;
const
  ksLSTTwoPoints = $00000000;
  ksLSTPointLenghtAngle = $00000001;

// Constants for enum ksConjunctivePointTypeEnum
type
  ksConjunctivePointTypeEnum = TOleEnum;
const
  ksCPByObject = $00000000;
  ksCPManualDirection = $00000001;

// Constants for enum ksContour3DBuildingTypeTypeEnum
type
  ksContour3DBuildingTypeTypeEnum = TOleEnum;
const
  ksCBTUnknown = $00000000;
  ksCBTEdges = $00000001;
  ksCBTEquidistant = $00000002;

// Constants for enum ksRelationTypeEnum
type
  ksRelationTypeEnum = TOleEnum;
const
  ksRTUnknown = $00000000;
  ksRTIndifferent = $00000001;
  ksRTStrong = $00000002;

// Constants for enum ksSpiral3DHeightTypeEnum
type
  ksSpiral3DHeightTypeEnum = TOleEnum;
const
  ksSHTByValue = $00000000;
  ksSHTByObject = $00000001;

// Constants for enum ksSpline3DBuildingTypeEnum
type
  ksSpline3DBuildingTypeEnum = TOleEnum;
const
  ksSBTByStepAndTurnCount = $00000000;
  ksSBTByStepAndHeight = $00000001;
  ksSBTByTurnCountAndHeight = $00000002;

// Constants for enum ksSpline3DDiameterTypeEnum
type
  ksSpline3DDiameterTypeEnum = TOleEnum;
const
  ksSDTByValue = $00000000;
  ksSDTByObject = $00000001;
  ksSDTByGeneratrixTiltAngle = $00000002;

// Constants for enum ksPointsArrOnCurveTypeEnum
type
  ksPointsArrOnCurveTypeEnum = TOleEnum;
const
  ksPAOCByPointsCount = $00000000;
  ksPAOCByStep = $00000001;
  ksPAOCByParametricStep = $00000002;

// Constants for enum ksPointsArrOnSurfaceTypeEnum
type
  ksPointsArrOnSurfaceTypeEnum = TOleEnum;
const
  ksPAOSByPointsUVCount = $FFFFFFFF;
  ksPAOSByLinearDeflection = $00000000;
  ksPAOSByAngularDeflection = $00000001;
  ksPAOSByMeshAroundPoint = $00000002;

// Constants for enum ksMeshAroundPointTypeEnum
type
  ksMeshAroundPointTypeEnum = TOleEnum;
const
  ksMALinear = $00000000;
  ksMAUVLinear = $00000001;
  ksMACircular = $00000002;
  ksMAHexagonal = $00000003;

// Constants for enum ksEditColorTypeEnum
type
  ksEditColorTypeEnum = TOleEnum;
const
  ksECSelectObject = $00000000;
  ksECChooseObject1 = $00000001;
  ksECChooseObject2 = $00000002;
  ksECChooseObject3 = $00000003;
  ksECPassiveParts = $00000004;
  ksECFacePhantom = $00000005;
  ksECLabelsPhantom = $00000006;
  ksECDimensions = $00000007;

// Constants for enum ksProjectionOptionEnum
type
  ksProjectionOptionEnum = TOleEnum;
const
  ksPOUndefined = $FFFFFFFF;
  ksPODisable = $00000000;
  ksPOEnable = $00000001;
  ksPOByLayer = $00000002;

// Constants for enum ksVisibleStateEnum
type
  ksVisibleStateEnum = TOleEnum;
const
  ksVSUndefined = $FFFFFFFF;
  ksVSVisible = $00000000;
  ksVSHidden = $00000001;
  ksVSByLayer = $00000002;

// Constants for enum ksEditableStateEnum
type
  ksEditableStateEnum = TOleEnum;
const
  ksESUndefined = $FFFFFFFF;
  ksESDisable = $00000000;
  ksESEnable = $00000001;
  ksESByLayer = $00000002;

// Constants for enum ksToleranceRecalcsEnum
type
  ksToleranceRecalcsEnum = TOleEnum;
const
  ksTRUnknown = $00000000;
  ksTRLowerLimit = $00000001;
  ksTRTopLimit = $00000002;
  ksTRMiddle = $00000003;
  ksTRCoefficient = $00000004;
  ksTRUser = $00000005;

// Constants for enum ksSpecRoughPlacementEnum
type
  ksSpecRoughPlacementEnum = TOleEnum;
const
  ksRPTopLeft = $00000000;
  ksRPTopRight = $00000001;
  ksRPBottomRight = $00000002;

// Constants for enum ksMathCurve3DTypeEnum
type
  ksMathCurve3DTypeEnum = TOleEnum;
const
  ks3DCurve = $00000000;
  ksLine3D = $00000001;
  ksLineSegment3D = $00000002;
  ksArc3D = $00000003;
  ksSpiral = $00000004;
  ksConeSpiral = $00000005;
  ksCurveSpiral = $00000006;
  ksCrookedSpiral = $00000007;
  ksPolyCurve3D = $00000008;
  ksPolyline3D = $00000009;
  ksNurbs3D = $0000000A;
  ksBezier3D = $0000000B;
  ksHermit3D = $0000000C;
  ksCubicSpline3D = $0000000D;
  ksPlaneCurve = $0000000E;
  ksOffsetCurve3D = $0000000F;
  ksTrimmedCurve3D = $00000010;
  ksReparamCurve3D = $00000011;
  ksBridgeCurve3D = $00000012;
  ksCharacterCurve3D = $00000013;
  ksContourOnSurface = $00000014;
  ksContourOnPlane = $00000015;
  ksSurfaceCurve = $00000016;
  ksSilhouetteCurve = $00000017;
  ksSurfaceIntersectionCurve = $00000018;
  ksBSpline = $00000019;
  ksContour3D = $0000001A;

// Constants for enum ksMathSurface3DTypeEnum
type
  ksMathSurface3DTypeEnum = TOleEnum;
const
  ks3DSurface = $00000000;
  ksElementarySurface = $00000001;
  ksPlane = $00000002;
  ksConeSurface = $00000003;
  ksCylinderSurface = $00000004;
  ksSphereSurface = $00000005;
  ksTorusSurface = $00000006;
  ksSweptSurface = $00000007;
  ksExtrusionSurface = $00000008;
  ksRevolutionSurface = $00000009;
  ksEvolutionSurface = $0000000A;
  ksExactionSurface = $0000000B;
  ksExpansionSurface = $0000000C;
  ksElevationSurface = $0000000D;
  ksSpiralSurface = $0000000E;
  ksRuledSurface = $0000000F;
  ksSectorSurface = $00000010;
  ksPolySurface = $00000011;
  ksHermitSurface = $00000012;
  ksSplineSurface = $00000013;
  ksGridSurface = $00000014;
  ksTriBezierSurface = $00000015;
  ksTriSplineSurface = $00000016;
  ksOffsetSurface = $00000017;
  ksDeformedSurface = $00000018;
  ksNurbsSurface = $00000019;
  ksCornerSurface = $0000001A;
  ksCoverSurface = $0000001B;
  ksCoonsPatchSurface = $0000001C;
  ksMeshSurface = $0000001D;
  ksLoftedSurface = $0000001E;
  ksSmoothSurface = $0000001F;
  ksChamferSurface = $00000020;
  ksFilletSurface = $00000021;
  ksChannelSurface = $00000022;
  ksJoinSurface = $00000023;
  ksCurveBoundedSurface = $00000024;
  ksBendedUnbendedSurface = $00000025;
  ksCylindricBendedSurface = $00000026;
  ksCylindricUnbendedSurface = $00000027;
  ksConicBendedSurface = $00000028;
  ksConicUnbendedSurface = $00000029;
  ksFreeSurface = $0000002A;

// Constants for enum ksLengthBuildingTypeEnum
type
  ksLengthBuildingTypeEnum = TOleEnum;
const
  ksLBDistance = $00000000;
  ksLBToVertex = $00000002;
  ksLBToSurface = $00000003;

// Constants for enum ksPatternExemplarsOrientationTypeEnum
type
  ksPatternExemplarsOrientationTypeEnum = TOleEnum;
const
  ksOrientationSave = $00000000;
  ksOrientationByNormal = $00000001;
  ksOrientationByObject = $00000002;

// Constants for enum ksModelDrawingElementsEnum
type
  ksModelDrawingElementsEnum = TOleEnum;
const
  ksModelDrawingElementNone = $00000000;
  ksModelDrawingElementBackground = $00000001;
  ksModelDrawingElementCompBodies = $00000010;
  ksModelDrawingElementCompObjs = $00000020;
  ksModelDrawingElementAuxObjs = $00000100;
  ksModelDrawingElementNotifyLibs = $00000200;
  ksModelDrawingElementEditor = $00001000;
  ksModelDrawingElementWidgets = $00002000;
  ksModelDrawingElementMeshCutter = $00004000;
  ksModelDrawingElementAll = $0000FFFF;

// Constants for enum ksMateConstraintAlignmentEnum
type
  ksMateConstraintAlignmentEnum = TOleEnum;
const
  ksMCAlignmentOpposite = $FFFFFFFF;
  ksMCAlignmentClosest = $00000000;
  ksMCAlignmentCooriented = $00000001;
  ksMCAlignmentUnknown = $00000002;
  ksMCAlignment_1 = $00000003;
  ksMCAlignment_2 = $00000004;
  ksMCAlignment_3 = $00000005;
  ksMCReverse_1 = $00000006;
  ksMCReverse_2 = $00000007;
  ksMCReverse_3 = $00000008;

// Constants for enum ksMateFixedTypeEnum
type
  ksMateFixedTypeEnum = TOleEnum;
const
  ksMFixedUnknown = $00000000;
  ksMFixedPart1 = $00000001;
  ksMFixedPart2 = $00000002;

// Constants for enum ksMateTangentTypeEnum
type
  ksMateTangentTypeEnum = TOleEnum;
const
  ksMTangentUnknown = $00000000;
  ksMTangentByPoint = $00000001;
  ksMTangentByGeneratrixLine = $00000002;
  ksMTangentByCircle = $00000003;

// Constants for enum ksViewProjectionType
type
  ksViewProjectionType = TOleEnum;
const
  ksVPNone = $FFFFFFFF;
  ksVPNormalTo = $00000000;
  ksVPFront = $00000001;
  ksVPRear = $00000002;
  ksVPUp = $00000003;
  ksVPDown = $00000004;
  ksVPLeft = $00000005;
  ksVPRight = $00000006;
  ksVPIsometric = $00000007;
  ksVPDimetric = $00000008;
  ksVPUnfold = $00000009;
  ksVPUser = $0000000A;

// Constants for enum ksDepthTypeEnum
type
  ksDepthTypeEnum = TOleEnum;
const
  ksDTValue = $00000000;
  ksDTReachThrough = $00000001;
  ksDTObject = $00000002;

// Constants for enum ksEndFaceTypeEnum
type
  ksEndFaceTypeEnum = TOleEnum;
const
  ksEFFlat = $00000000;
  ksEFConic = $00000001;
  ksEFSphere = $00000002;

// Constants for enum ksHoleTypeEnum
type
  ksHoleTypeEnum = TOleEnum;
const
  ksHTBase = $00000000;
  ksHTCounterbore = $00000001;
  ksHTCountersinking = $00000002;
  ksHTCounterdrill = $00000003;
  ksHTConic = $00000004;

// Constants for enum ksCountersinkTypeEnum
type
  ksCountersinkTypeEnum = TOleEnum;
const
  ksCTDiameterAngle = $00000000;
  ksCTDepthAngle = $00000001;
  ksCTDiameterDepth = $00000002;

// Constants for enum ksConicTypeEnum
type
  ksConicTypeEnum = TOleEnum;
const
  ksCNDiameter = $00000000;
  ksCNAngle = $00000001;

// Constants for enum ksViewProjectionScheme
type
  ksViewProjectionScheme = TOleEnum;
const
  ksVPSUnknown = $FFFFFFFF;
  ksVPSUser = $00000000;
  ksVPSZAxonometric = $00000001;
  ksVPSYAxonometric = $00000002;
  ksVPSXAxonometric = $00000003;
  ksVPSZ90AxonometricISO = $00000004;
  ksVPSY90AxonometricISO = $00000005;
  ksVPSX90AxonometricISO = $00000006;

// Constants for enum ksMateMotionTypeEnum
type
  ksMateMotionTypeEnum = TOleEnum;
const
  ksMMotionUnknown = $00000000;
  ksMMotionLinear = $00000001;
  ksMMotionRotation = $00000002;

// Constants for enum ksD3ConverterOptionsEnum
type
  ksD3ConverterOptionsEnum = TOleEnum;
const
  ksD3COBodyes = $00000000;
  ksD3COSurfaces = $00000002;
  ksD3COCurves = $00000004;
  ksD3COSketches = $00000006;
  ksD3COInvisibleObjects = $00000008;
  ksD3COPoints = $0000000A;
  ksD3CODocumentProperties = $0000000C;
  ksD3COTechnicalDemand = $0000000E;
  ksD3CODimensions = $00000010;
  ksD3COAttributes = $00000012;
  ksD3CBRep = $00000014;
  ksD3CPolygonal = $00000016;
  ksD3CPolygonalLOD0 = $00000018;
  ksD3CAssociated = $0000001A;
  ksD3COStyle = $0000001C;

// Constants for enum ksStepTypeEnum
type
  ksStepTypeEnum = TOleEnum;
const
  ksSpaceStep = $00000001;
  ksDeviationStep = $00000002;
  ksMetricStep = $00000004;
  ksParamStep = $00000008;
  ksCollisionStep = $00000010;
  ksMipStep = $00000020;

// Constants for enum ksTextExportFormEnum
type
  ksTextExportFormEnum = TOleEnum;
const
  ksTEFTextOnly = $00000000;
  ksTEFGeometryOnly = $00000001;

// Constants for enum ksFeatureStateEnum
type
  ksFeatureStateEnum = TOleEnum;
const
  ksFSNone = $00000000;
  ksFSLocked = $00000001;
  ksFSRebuild = $00000002;
  ksFSInside3dMacro = $00000004;
  ksFSLCSDependent = $00000008;
  ksFSComprisedOfParts = $00000010;
  ksFSCurrent = $00000020;
  ksFSReadOnlyAccessM3d = $00000040;
  ksFSDetailedFold = $00000080;
  ksFSSketchUndefined = $00000100;
  ksFSSketchDefined = $00000200;
  ksFSSketchRedefined = $00000400;
  ksFSEditRestricted = $00000800;
  ksFSEditImpossible = $00001000;
  ksFSFixedComponent = $00002000;
  ksFSPutInRecalcState = $00004000;
  ksFSReadOnlyAccessA3d = $00008000;
  ksFSUncuttable = $00010000;

type

// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//

  ksObj3dTypeEnum = Obj3dType; 
  ksDirectionTypeEnum = Direction_Type; 
  ksEndTypeEnum = End_Type; 
  ksUseColorEnum = UseColor; 

implementation

uses ComObj;

end.

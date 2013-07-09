Attribute VB_Name = "cGEO_Structure"
Public Const GEO_CONST_MODEL_TYPE_IMAGE         As Integer = 1
Public Const GEO_CONST_MODEL_TYPE_CROSS         As Integer = 2
Public Const GEO_CONST_MODEL_TYPE_CIRCLE        As Integer = 3
Public Const GEO_CONST_MODEL_TYPE_RACTANGLE     As Integer = 4
Public Const GEO_CONST_MODEL_TYPE_ELLIPSE       As Integer = 5
Public Const GEO_CONST_MODEL_TYPE_RING          As Integer = 6
Public Const GEO_CONST_MODEL_TYPE_SQUARE        As Integer = 7
Public Const GEO_CONST_MODEL_TYPE_DxF           As Integer = 8

Public Type GeometryPara
    cCross_HorThickness As Double
    cCross_VerThickness As Double
    cRing_InRadius As Double
    cRing_OutRadius As Double
    cDxF_FilaPath As String
    
    'Model/Global para
    cModelFinderType As Long
    cTotalNumberOfOccurrences As Long
    cSmoothnessLevel As Double
    cDetailLevel As Long
    cSpeed As Long
    cAccuracy As Long
    cSearchAngleEnabled As Boolean
    cSearchScaleEnabled As Boolean
    cSharedEdges As Boolean
    cTimeout As Double
    cForground As Long
    
    'Model/Attribute
    cUserLabel As Long
    cNumberOfOccurrences As Long
    cAcceptance As Double
    cAcceptanceTarget As Double
    cCertainty As Double
    cCertaintyTarget As Double
    
    'Model/Advanced
    cMinimumSeparationX As Double
    cMinimumSeparationY As Double
    cMinimumSeparationAngle As Double
    cMinimumSeparationScale As Double
    cPolarity As Long
    cFitErrorWeightingFactor As Double
    
    'Model/Degree Of Freedom
    cDOF_Angle As Double
    cDOF_AngleNegative As Double
    cDOF_AnglePositive As Double
    cDOF_Scale As Double
    cDOF_ScaleMinimum As Double
    cDOF_ScaleMaximum As Double
End Type

Public Type GeometryResults
    cScore As Double
    cAngle As Double
    cPositionX As Double
    cPositionY As Double
    cWidth As Double
    cHeight As Double
    cRadius As Double
End Type
Public GeometryResult_SearchedModelQuantity As Long

Public rtnGeoResults() As GeometryResults
Public set_GeoPara As GeometryPara

Attribute VB_Name = "cPTRN_Structure"
Public Type rtn_PTRN_Result
    Start_X As Double
    Start_Y As Double
    Center_X As Double
    Center_Y As Double
    Size_X As Double
    Size_Y As Double
    Degree As Double
    cScore As Double
End Type

Type set_PTRN_Para
    NumberOfMatchs As Integer
    AcceptanceThreshold As Double
    ToleranceAngle As Double
    AccuracyAngle As Double
    Angle As Double
    NEG_DeltaAngle As Double
    POS_DeltaAngle As Double
End Type
Public ipSetPara As set_PTRN_Para
Public Ptrn_Result() As rtn_PTRN_Result
Public Ptrn_Result_Quantity As Long

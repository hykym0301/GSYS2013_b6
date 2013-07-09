Attribute VB_Name = "cBLOB_Structure"
Public Type BlobCoord
    Center_X As Double
    Center_Y As Double
    Pos_X As Double
    Pos_Y As Double
    Size_X As Double
    Size_Y As Double
    Area As Double
    cCompactness As Double
End Type
Public rtnBlobResult() As BlobCoord
Public rtnBlobResult_BlobQTY_per_OneRef As Double

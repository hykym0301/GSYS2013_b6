VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "IMGPROC_DISP"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Attribute VB_Ext_KEY = "SavedWithClassBuilder6" ,"Yes"
Attribute VB_Ext_KEY = "Top_Level" ,"Yes"
'****************************************************************************
'*                   Visoion 표준화 - DC Draw 관련 Class                    *
'*                       2007/11/22           이혁진                        *
'****************************************************************************
Public ROI_XPOS     As Double
Public ROI_YPOS     As Double
Public ROI_XMOV     As Double
Public ROI_YMOV     As Double
Public ROI_WIDTH    As Double
Public ROI_HEIGHT   As Double
Public Sub CrossLIne_Draw(ipLine_Hor As Object, ipLine_Ver As Object, ipImageBuffer As Object)
'CCD Display화면 상에 십자선을 그린다.

    ipLine_Hor.X1 = 0: ipLine_Hor.Y1 = (ipImageBuffer.SizeY / 2) * Screen.TwipsPerPixelY
    ipLine_Hor.X2 = (ipImageBuffer.SizeX) * Screen.TwipsPerPixelX: ipLine_Hor.Y2 = (ipImageBuffer.SizeY / 2) * Screen.TwipsPerPixelY
    ipLine_Ver.X1 = (ipImageBuffer.SizeX / 2) * Screen.TwipsPerPixelX: ipLine_Ver.Y1 = 0
    ipLine_Ver.X2 = (ipImageBuffer.SizeX / 2) * Screen.TwipsPerPixelX: ipLine_Ver.Y2 = (ipImageBuffer.SizeY) * Screen.TwipsPerPixelY
    ipLine_Hor.Visible = True: ipLine_Ver.Visible = True
    
End Sub
Public Sub Roi_Draw(ipShape As Object, ipMoveX As Long, ipMoveY As Long, fl_RoiStart As Boolean)
'CCD Display화면 상에 Roi Box를 그린다.

    If fl_RoiStart = True Then
    
        ROI_XPOS = ipMoveX
        ROI_YPOS = ipMoveY
        
    Else
    
        ROI_WIDTH = Abs(ipMoveX - ROI_XPOS)
        ROI_HEIGHT = Abs(ipMoveY - ROI_YPOS)
        If ((ROI_XPOS < ipMoveX) And (ROI_YPOS > ipMoveY)) Then
            ROI_XMOV = ROI_XPOS
            ROI_YMOV = ipMoveY
        ElseIf ((ROI_XPOS > ipMoveX) And (ROI_YPOS > ipMoveY)) Then
            ROI_XMOV = ipMoveX
            ROI_YMOV = ipMoveY
        ElseIf ((ROI_XPOS < ipMoveX) And (ROI_YPOS < ipMoveY)) Then
            ROI_XMOV = ROI_XPOS
            ROI_YMOV = ROI_YPOS
        ElseIf ((ROI_XPOS > ipMoveX) And (ROI_YPOS < ipMoveY)) Then
            ROI_XMOV = ipMoveX
            ROI_YMOV = ROI_YPOS
        End If
        
        ipShape.Visible = True
        ipShape.Move ROI_XMOV * Screen.TwipsPerPixelX, ROI_YMOV * Screen.TwipsPerPixelY, _
                            ROI_WIDTH * Screen.TwipsPerPixelX, ROI_HEIGHT * Screen.TwipsPerPixelY
    End If

End Sub


VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "IMGPROC_BUF"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
'****************************************************************************
'*              Visoion 표준화 - Child Buffer 관련 Class                    *
'*                             - 영역지정:Shape Control                     *
'*                       2007/11/22           이혁진                        *
'****************************************************************************

Public Sub Create_Child_ImageBuffer(ipParentBuf As Object, ipChildBuf As Object, ipAreaShape As Object)
    
    Dim dRef_X As Double
    Dim dRef_Y As Double
    Dim dRef_W As Double
    Dim dRef_H As Double
    
    'On Error Resume Next
    
    dRef_X = ipAreaShape.Left / Screen.TwipsPerPixelX
    dRef_Y = ipAreaShape.Top / Screen.TwipsPerPixelY
    dRef_W = ipAreaShape.Width / Screen.TwipsPerPixelX
    dRef_H = ipAreaShape.Height / Screen.TwipsPerPixelY
    
    If dRef_X < 0 Then dRef_X = 0
    If dRef_Y < 0 Then dRef_Y = 0
    If dRef_W > ipParentBuf.SizeX Then dRef_W = ipParentBuf.SizeX
    If dRef_H > ipParentBuf.SizeY Then dRef_H = ipParentBuf.SizeY
    
    If ipChildBuf.IsAllocated = True Then
        ipChildBuf.Free
    End If
    ipChildBuf.ParentImage = ipParentBuf
    ipChildBuf.ChildRegion.Mode = roiOffsetSize
    ipChildBuf.ChildRegion.OffsetX = dRef_X
    ipChildBuf.ChildRegion.OffsetY = dRef_Y
    ipChildBuf.ChildRegion.SizeX = dRef_W
    ipChildBuf.ChildRegion.SizeY = dRef_H
    If ipChildBuf.IsAllocated = False Then
        ipChildBuf.Allocate
    End If
    
End Sub


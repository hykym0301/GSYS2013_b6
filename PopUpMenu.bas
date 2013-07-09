Attribute VB_Name = "PopUpMenu"
Declare Function GetMenu Lib "user32" (ByVal hWnd As Long) As Long
Declare Function GetSubMenu Lib "user32" (ByVal hMenu As Long, ByVal nPos As Long) As Long
Declare Function GetMenuItemID Lib "user32" (ByVal hMenu As Long, ByVal nPos As Long) As Long
Declare Function SetMenuItemBitmaps Lib "user32" (ByVal hMenu As Long, ByVal nPosition As Long, _
                            ByVal wFlags As Long, ByVal hBitmapUnchecked As Long, ByVal hBitmapChecked As Long) As Long

Public Type MENUITEMINFO
    cbSize As Long
    fMask As Long
    fType As Long
    fState As Long
    wID As Long
    hSubMenu As Long
    hbmpChecked As Long
    hbmpUnchecked As Long
    dwItemData As Long
    dwTypeData As String
    cch As Long
End Type

Declare Function GetMenuItemCount Lib "user32" (ByVal hMenu As Long) As Long
Declare Function GetMenuItemInfo Lib "user32" Alias "GetMenuItemInfoA" (ByVal hMenu As Long, _
                        ByVal un As Long, ByVal b As Boolean, lpMenuItemInfo As MENUITEMINFO) As Boolean


Public Declare Function LockWindowUpdate Lib "user32" (ByVal hwndLock As Long) As Long

Public Const MIIM_ID = &H2
Public Const MIIM_TYPE = &H10
Public Const MFT_STRING = &H0&
Public Const MF_BITMAP = &H4&

Sub PopUpMenu_ImageLoad(ipForm As Form, ipMenuIndex As Integer, ipPictureBox As Control)

    hMenu& = GetMenu(ipForm.hWnd)

    hSubMenu& = GetSubMenu(hMenu&, 0)
    hID& = GetMenuItemID(hSubMenu&, ipMenuIndex)
    rtn_lng& = SetMenuItemBitmaps(hMenu&, hID&, MF_BITMAP, ipPictureBox.Picture, ipPictureBox.Picture)

End Sub
Sub User_PopUpMenu(ipForm As Form, ipMenu As Object, ipFocusingComponent As Control)
    
    DoEvents
    LockWindowUpdate ipFocusingComponent.hWnd
    ipFocusingComponent.Enabled = False
    DoEvents
    ipForm.PopUpMenu ipMenu, 2
    ipFocusingComponent.Enabled = True
    LockWindowUpdate 0&
    
End Sub

VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "ThisWorkbook"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = True
Option Base 0
Option Explicit

' the addin object
Private addin As COMAddIn

' the sample function to call the addin
Public Sub exampleFunction()

    If addin Is Nothing Then
        Set addin = Application.COMAddIns("myComAddin")
    End If
    
    Dim automationObject As Object
    Set automationObject = addin.Object
    Call automationObject.exampleFunction
    
End Sub

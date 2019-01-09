Imports System.Web.Script.Serialization
Partial Class EF_wfDBData
  Inherits SIS.SYS.UpdateBase
  Public Property Editable() As Boolean
    Get
      If ViewState("Editable") IsNot Nothing Then
        Return CType(ViewState("Editable"), Boolean)
      End If
      Return True
    End Get
    Set(ByVal value As Boolean)
      ViewState.Add("Editable", value)
    End Set
  End Property
  Public Property Deleteable() As Boolean
    Get
      If ViewState("Deleteable") IsNot Nothing Then
        Return CType(ViewState("Deleteable"), Boolean)
      End If
      Return True
    End Get
    Set(ByVal value As Boolean)
      ViewState.Add("Deleteable", value)
    End Set
  End Property
  Public Property PrimaryKey() As String
    Get
      If ViewState("PrimaryKey") IsNot Nothing Then
        Return CType(ViewState("PrimaryKey"), String)
      End If
      Return True
    End Get
    Set(ByVal value As String)
      ViewState.Add("PrimaryKey", value)
    End Set
  End Property
  Protected Sub ODSwfDBData_Selected(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.ObjectDataSourceStatusEventArgs) Handles ODSwfDBData.Selected
    Dim tmp As SIS.WF.wfDBData = CType(e.ReturnValue, SIS.WF.wfDBData)
    Editable = tmp.Editable
    Deleteable = tmp.Deleteable
    PrimaryKey = tmp.PrimaryKey
  End Sub
  Protected Sub FVwfDBData_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles FVwfDBData.Init
    DataClassName = "EwfDBData"
    SetFormView = FVwfDBData
  End Sub
  Protected Sub TBLwfDBData_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles TBLwfDBData.Init
    SetToolBar = TBLwfDBData
  End Sub
  Protected Sub FVwfDBData_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles FVwfDBData.PreRender
    TBLwfDBData.EnableSave = Editable
    TBLwfDBData.EnableDelete = Deleteable
    Dim mStr As String = ""
    Dim oTR As IO.StreamReader = New IO.StreamReader(HttpContext.Current.Server.MapPath("~/WF_Main/App_Edit") & "/EF_wfDBData.js")
    mStr = oTR.ReadToEnd
    oTR.Close()
    oTR.Dispose()
    If Not Page.ClientScript.IsClientScriptBlockRegistered("scriptwfDBData") Then
      Page.ClientScript.RegisterClientScriptBlock(GetType(System.String), "scriptwfDBData", mStr)
    End If
  End Sub

End Class

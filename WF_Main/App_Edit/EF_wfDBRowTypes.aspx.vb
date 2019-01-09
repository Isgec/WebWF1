Imports System.Web.Script.Serialization
Partial Class EF_wfDBRowTypes
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
  Protected Sub ODSwfDBRowTypes_Selected(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.ObjectDataSourceStatusEventArgs) Handles ODSwfDBRowTypes.Selected
    Dim tmp As SIS.WF.wfDBRowTypes = CType(e.ReturnValue, SIS.WF.wfDBRowTypes)
    Editable = tmp.Editable
    Deleteable = tmp.Deleteable
    PrimaryKey = tmp.PrimaryKey
  End Sub
  Protected Sub FVwfDBRowTypes_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles FVwfDBRowTypes.Init
    DataClassName = "EwfDBRowTypes"
    SetFormView = FVwfDBRowTypes
  End Sub
  Protected Sub TBLwfDBRowTypes_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles TBLwfDBRowTypes.Init
    SetToolBar = TBLwfDBRowTypes
  End Sub
  Protected Sub FVwfDBRowTypes_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles FVwfDBRowTypes.PreRender
    TBLwfDBRowTypes.EnableSave = Editable
    TBLwfDBRowTypes.EnableDelete = Deleteable
    Dim mStr As String = ""
    Dim oTR As IO.StreamReader = New IO.StreamReader(HttpContext.Current.Server.MapPath("~/WF_Main/App_Edit") & "/EF_wfDBRowTypes.js")
    mStr = oTR.ReadToEnd
    oTR.Close()
    oTR.Dispose()
    If Not Page.ClientScript.IsClientScriptBlockRegistered("scriptwfDBRowTypes") Then
      Page.ClientScript.RegisterClientScriptBlock(GetType(System.String), "scriptwfDBRowTypes", mStr)
    End If
  End Sub

End Class

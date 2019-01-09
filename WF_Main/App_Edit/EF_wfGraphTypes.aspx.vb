Imports System.Web.Script.Serialization
Partial Class EF_wfGraphTypes
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
  Protected Sub ODSwfGraphTypes_Selected(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.ObjectDataSourceStatusEventArgs) Handles ODSwfGraphTypes.Selected
    Dim tmp As SIS.WF.wfGraphTypes = CType(e.ReturnValue, SIS.WF.wfGraphTypes)
    Editable = tmp.Editable
    Deleteable = tmp.Deleteable
    PrimaryKey = tmp.PrimaryKey
  End Sub
  Protected Sub FVwfGraphTypes_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles FVwfGraphTypes.Init
    DataClassName = "EwfGraphTypes"
    SetFormView = FVwfGraphTypes
  End Sub
  Protected Sub TBLwfGraphTypes_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles TBLwfGraphTypes.Init
    SetToolBar = TBLwfGraphTypes
  End Sub
  Protected Sub FVwfGraphTypes_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles FVwfGraphTypes.PreRender
    TBLwfGraphTypes.EnableSave = Editable
    TBLwfGraphTypes.EnableDelete = Deleteable
    Dim mStr As String = ""
    Dim oTR As IO.StreamReader = New IO.StreamReader(HttpContext.Current.Server.MapPath("~/WF_Main/App_Edit") & "/EF_wfGraphTypes.js")
    mStr = oTR.ReadToEnd
    oTR.Close()
    oTR.Dispose()
    If Not Page.ClientScript.IsClientScriptBlockRegistered("scriptwfGraphTypes") Then
      Page.ClientScript.RegisterClientScriptBlock(GetType(System.String), "scriptwfGraphTypes", mStr)
    End If
  End Sub

End Class

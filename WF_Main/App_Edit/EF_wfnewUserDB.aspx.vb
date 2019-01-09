Imports System.Web.Script.Serialization
Partial Class EF_wfnewUserDB
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
  Protected Sub ODSwfnewUserDB_Selected(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.ObjectDataSourceStatusEventArgs) Handles ODSwfnewUserDB.Selected
    Dim tmp As SIS.WF.wfnewUserDB = CType(e.ReturnValue, SIS.WF.wfnewUserDB)
    Editable = tmp.Editable
    Deleteable = tmp.Deleteable
    PrimaryKey = tmp.PrimaryKey
  End Sub
  Protected Sub FVwfnewUserDB_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles FVwfnewUserDB.Init
    DataClassName = "EwfnewUserDB"
    SetFormView = FVwfnewUserDB
  End Sub
  Protected Sub TBLwfnewUserDB_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles TBLwfnewUserDB.Init
    SetToolBar = TBLwfnewUserDB
  End Sub
  Protected Sub FVwfnewUserDB_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles FVwfnewUserDB.PreRender
    TBLwfnewUserDB.EnableSave = Editable
    TBLwfnewUserDB.EnableDelete = Deleteable
    Dim mStr As String = ""
    Dim oTR As IO.StreamReader = New IO.StreamReader(HttpContext.Current.Server.MapPath("~/WF_Main/App_Edit") & "/EF_wfnewUserDB.js")
    mStr = oTR.ReadToEnd
    oTR.Close()
    oTR.Dispose()
    If Not Page.ClientScript.IsClientScriptBlockRegistered("scriptwfnewUserDB") Then
      Page.ClientScript.RegisterClientScriptBlock(GetType(System.String), "scriptwfnewUserDB", mStr)
    End If
  End Sub

End Class

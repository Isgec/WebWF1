Imports System.Web.Script.Serialization
Partial Class EF_wfDBRowCols
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
  Protected Sub ODSwfDBRowCols_Selected(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.ObjectDataSourceStatusEventArgs) Handles ODSwfDBRowCols.Selected
    Dim tmp As SIS.WF.wfDBRowCols = CType(e.ReturnValue, SIS.WF.wfDBRowCols)
    Editable = tmp.Editable
    Deleteable = tmp.Deleteable
    PrimaryKey = tmp.PrimaryKey
  End Sub
  Protected Sub FVwfDBRowCols_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles FVwfDBRowCols.Init
    DataClassName = "EwfDBRowCols"
    SetFormView = FVwfDBRowCols
  End Sub
  Protected Sub TBLwfDBRowCols_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles TBLwfDBRowCols.Init
    SetToolBar = TBLwfDBRowCols
  End Sub
  Protected Sub FVwfDBRowCols_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles FVwfDBRowCols.PreRender
    TBLwfDBRowCols.EnableSave = Editable
    TBLwfDBRowCols.EnableDelete = Deleteable
    Dim mStr As String = ""
    Dim oTR As IO.StreamReader = New IO.StreamReader(HttpContext.Current.Server.MapPath("~/WF_Main/App_Edit") & "/EF_wfDBRowCols.js")
    mStr = oTR.ReadToEnd
    oTR.Close()
    oTR.Dispose()
    If Not Page.ClientScript.IsClientScriptBlockRegistered("scriptwfDBRowCols") Then
      Page.ClientScript.RegisterClientScriptBlock(GetType(System.String), "scriptwfDBRowCols", mStr)
    End If
  End Sub

End Class

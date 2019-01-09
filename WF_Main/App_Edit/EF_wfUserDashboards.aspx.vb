Imports System.Web.Script.Serialization
Partial Class EF_wfUserDashboards
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
  Protected Sub ODSwfUserDashboards_Selected(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.ObjectDataSourceStatusEventArgs) Handles ODSwfUserDashboards.Selected
    Dim tmp As SIS.WF.wfUserDashboards = CType(e.ReturnValue, SIS.WF.wfUserDashboards)
    Editable = tmp.Editable
    Deleteable = tmp.Deleteable
    PrimaryKey = tmp.PrimaryKey
  End Sub
  Protected Sub FVwfUserDashboards_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles FVwfUserDashboards.Init
    DataClassName = "EwfUserDashboards"
    SetFormView = FVwfUserDashboards
  End Sub
  Protected Sub TBLwfUserDashboards_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles TBLwfUserDashboards.Init
    SetToolBar = TBLwfUserDashboards
  End Sub
  Protected Sub FVwfUserDashboards_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles FVwfUserDashboards.PreRender
    TBLwfUserDashboards.EnableSave = Editable
    TBLwfUserDashboards.EnableDelete = Deleteable
    Dim mStr As String = ""
    Dim oTR As IO.StreamReader = New IO.StreamReader(HttpContext.Current.Server.MapPath("~/WF_Main/App_Edit") & "/EF_wfUserDashboards.js")
    mStr = oTR.ReadToEnd
    oTR.Close()
    oTR.Dispose()
    If Not Page.ClientScript.IsClientScriptBlockRegistered("scriptwfUserDashboards") Then
      Page.ClientScript.RegisterClientScriptBlock(GetType(System.String), "scriptwfUserDashboards", mStr)
    End If
  End Sub
  Partial Class gvBase
    Inherits SIS.SYS.GridBase
  End Class
  Private WithEvents gvwfUserDBRowsCC As New gvBase
  Protected Sub GVwfUserDBRows_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles GVwfUserDBRows.Init
    gvwfUserDBRowsCC.DataClassName = "GwfUserDBRows"
    gvwfUserDBRowsCC.SetGridView = GVwfUserDBRows
  End Sub
  Protected Sub TBLwfUserDBRows_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles TBLwfUserDBRows.Init
    gvwfUserDBRowsCC.SetToolBar = TBLwfUserDBRows
  End Sub
  Protected Sub GVwfUserDBRows_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GVwfUserDBRows.RowCommand
    If e.CommandName.ToLower = "lgedit".ToLower Then
      Try
        Dim UserID As String = GVwfUserDBRows.DataKeys(e.CommandArgument).Values("UserID")  
        Dim DashboardID As Int32 = GVwfUserDBRows.DataKeys(e.CommandArgument).Values("DashboardID")  
        Dim DBRows As Int32 = GVwfUserDBRows.DataKeys(e.CommandArgument).Values("DBRows")  
        Dim RedirectUrl As String = TBLwfUserDBRows.EditUrl & "?UserID=" & UserID & "&DashboardID=" & DashboardID & "&DBRows=" & DBRows
        Response.Redirect(RedirectUrl)
      Catch ex As Exception
        ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "", "alert('" & New JavaScriptSerializer().Serialize(ex.Message) & "');", True)
      End Try
    End If
  End Sub
  Protected Sub TBLwfUserDBRows_AddClicked(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles TBLwfUserDBRows.AddClicked
    Dim UserID As String = CType(FVwfUserDashboards.FindControl("F_UserID"),TextBox).Text
    Dim DashboardID As Int32 = CType(FVwfUserDashboards.FindControl("F_DashboardID"),TextBox).Text
    TBLwfUserDBRows.AddUrl &= "?UserID=" & UserID
    TBLwfUserDBRows.AddUrl &= "&DashboardID=" & DashboardID
  End Sub

End Class

Imports System.Web.Script.Serialization
Partial Class EF_wfDashboards
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
  Protected Sub ODSwfDashboards_Selected(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.ObjectDataSourceStatusEventArgs) Handles ODSwfDashboards.Selected
    Dim tmp As SIS.WF.wfDashboards = CType(e.ReturnValue, SIS.WF.wfDashboards)
    Editable = tmp.Editable
    Deleteable = tmp.Deleteable
    PrimaryKey = tmp.PrimaryKey
  End Sub
  Protected Sub FVwfDashboards_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles FVwfDashboards.Init
    DataClassName = "EwfDashboards"
    SetFormView = FVwfDashboards
  End Sub
  Protected Sub TBLwfDashboards_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles TBLwfDashboards.Init
    SetToolBar = TBLwfDashboards
  End Sub
  Protected Sub FVwfDashboards_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles FVwfDashboards.PreRender
    TBLwfDashboards.EnableSave = Editable
    TBLwfDashboards.EnableDelete = Deleteable
    Dim mStr As String = ""
    Dim oTR As IO.StreamReader = New IO.StreamReader(HttpContext.Current.Server.MapPath("~/WF_Main/App_Edit") & "/EF_wfDashboards.js")
    mStr = oTR.ReadToEnd
    oTR.Close()
    oTR.Dispose()
    If Not Page.ClientScript.IsClientScriptBlockRegistered("scriptwfDashboards") Then
      Page.ClientScript.RegisterClientScriptBlock(GetType(System.String), "scriptwfDashboards", mStr)
    End If
  End Sub
  Partial Class gvBase
    Inherits SIS.SYS.GridBase
  End Class
  Private WithEvents gvwfDBRowsCC As New gvBase
  Protected Sub GVwfDBRows_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles GVwfDBRows.Init
    gvwfDBRowsCC.DataClassName = "GwfDBRows"
    gvwfDBRowsCC.SetGridView = GVwfDBRows
  End Sub
  Protected Sub TBLwfDBRows_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles TBLwfDBRows.Init
    gvwfDBRowsCC.SetToolBar = TBLwfDBRows
  End Sub
  Protected Sub GVwfDBRows_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GVwfDBRows.RowCommand
    If e.CommandName.ToLower = "lgedit".ToLower Then
      Try
        Dim DashboardID As Int32 = GVwfDBRows.DataKeys(e.CommandArgument).Values("DashboardID")
        Dim DBRows As Int32 = GVwfDBRows.DataKeys(e.CommandArgument).Values("DBRows")
        Dim RedirectUrl As String = TBLwfDBRows.EditUrl & "?DashboardID=" & DashboardID & "&DBRows=" & DBRows
        Response.Redirect(RedirectUrl)
      Catch ex As Exception
        ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "", "alert('" & New JavaScriptSerializer().Serialize(ex.Message) & "');", True)
      End Try
    End If
    If e.CommandName.ToLower = "CopyWF".ToLower Then
      Try
        Dim DashboardID As Int32 = GVwfDBRows.DataKeys(e.CommandArgument).Values("DashboardID")
        Dim DBRows As Int32 = GVwfDBRows.DataKeys(e.CommandArgument).Values("DBRows")
        Dim tmpDBRows As SIS.WF.wfDBRows = SIS.WF.wfDBRows.CopyWF(DashboardID, DBRows)
        Dim RedirectUrl As String = TBLwfDBRows.EditUrl & "?DashboardID=" & tmpDBRows.DashboardID & "&DBRows=" & tmpDBRows.DBRows
        Response.Redirect(RedirectUrl)
      Catch ex As Exception
        ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "", "alert('" & New JavaScriptSerializer().Serialize(ex.Message) & "');", True)
      End Try
    End If
    If e.CommandName.ToLower = "DAwf".ToLower Then
      Try
        Dim DashboardID As Int32 = GVwfDBRows.DataKeys(e.CommandArgument).Values("DashboardID")
        Dim DBRows As Int32 = GVwfDBRows.DataKeys(e.CommandArgument).Values("DBRows")
        SIS.WF.wfDBRows.DAWF(DashboardID, DBRows)
        GVwfDBRows.DataBind()
      Catch ex As Exception
        ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "", "alert('" & New JavaScriptSerializer().Serialize(ex.Message) & "');", True)
      End Try
    End If
    If e.CommandName.ToLower = "AAwf".ToLower Then
      Try
        Dim DashboardID As Int32 = GVwfDBRows.DataKeys(e.CommandArgument).Values("DashboardID")
        Dim DBRows As Int32 = GVwfDBRows.DataKeys(e.CommandArgument).Values("DBRows")
        SIS.WF.wfDBRows.AAWF(DashboardID, DBRows)
        GVwfDBRows.DataBind()
      Catch ex As Exception
        ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "", "alert('" & New JavaScriptSerializer().Serialize(ex.Message) & "');", True)
      End Try
    End If
    If e.CommandName.ToLower = "RAwf".ToLower Then
      Try
        Dim DashboardID As Int32 = GVwfDBRows.DataKeys(e.CommandArgument).Values("DashboardID")
        Dim DBRows As Int32 = GVwfDBRows.DataKeys(e.CommandArgument).Values("DBRows")
        SIS.WF.wfDBRows.RAWF(DashboardID, DBRows)
        GVwfDBRows.DataBind()
      Catch ex As Exception
        ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "", "alert('" & New JavaScriptSerializer().Serialize(ex.Message) & "');", True)
      End Try
    End If
    If e.CommandName.ToLower = "Deletewf".ToLower Then
      Try
        Dim DashboardID As Int32 = GVwfDBRows.DataKeys(e.CommandArgument).Values("DashboardID")
        Dim DBRows As Int32 = GVwfDBRows.DataKeys(e.CommandArgument).Values("DBRows")
        SIS.WF.wfDBRows.DeleteWF(DashboardID, DBRows)
        GVwfDBRows.DataBind()
      Catch ex As Exception
        ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "", "alert('" & New JavaScriptSerializer().Serialize(ex.Message) & "');", True)
      End Try
    End If
  End Sub
  Protected Sub TBLwfDBRows_AddClicked(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles TBLwfDBRows.AddClicked
    Dim DashboardID As Int32 = CType(FVwfDashboards.FindControl("F_DashboardID"), TextBox).Text
    TBLwfDBRows.AddUrl &= "&DashboardID=" & DashboardID
  End Sub
  <System.Web.Services.WebMethod()>
  <System.Web.Script.Services.ScriptMethod()>
  Public Shared Function DBIconIDCompletionList(ByVal prefixText As String, ByVal count As Integer, ByVal contextKey As String) As String()
    Return SIS.WF.wfDBIcons.SelectwfDBIconsAutoCompleteList(prefixText, count, contextKey)
  End Function
  <System.Web.Services.WebMethod()>
  Public Shared Function validate_FK_WF_Dashboards_DBIconID(ByVal value As String) As String
    Dim aVal() As String = value.Split(",".ToCharArray)
    Dim mRet As String = "0|" & aVal(0)
    Dim DBIconID As Int32 = CType(aVal(1), Int32)
    Dim oVar As SIS.WF.wfDBIcons = SIS.WF.wfDBIcons.wfDBIconsGetByID(DBIconID)
    If oVar Is Nothing Then
      mRet = "1|" & aVal(0) & "|Record not found."
    Else
      mRet = "0|" & aVal(0) & "|" & oVar.DisplayField
    End If
    Return mRet
  End Function

End Class

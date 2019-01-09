Imports System.Web.Script.Serialization
Partial Class GF_wfDashboards
  Inherits SIS.SYS.GridBase
  Protected Sub GVwfDashboards_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GVwfDashboards.RowCommand
    If e.CommandName.ToLower = "lgedit".ToLower Then
      Try
        Dim DashboardID As Int32 = GVwfDashboards.DataKeys(e.CommandArgument).Values("DashboardID")
        Dim RedirectUrl As String = TBLwfDashboards.EditUrl & "?DashboardID=" & DashboardID
        Response.Redirect(RedirectUrl)
      Catch ex As Exception
        ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "", "alert('" & New JavaScriptSerializer().Serialize(ex.Message) & "');", True)
      End Try
    End If
    If e.CommandName.ToLower = "CopyWF".ToLower Then
      Try
        Dim DashboardID As Int32 = GVwfDashboards.DataKeys(e.CommandArgument).Values("DashboardID")
        Dim tmpDB As SIS.WF.wfDashboards = SIS.WF.wfDashboards.CopyWF(DashboardID)
        Dim RedirectUrl As String = TBLwfDashboards.EditUrl & "?DashboardID=" & tmpDB.DashboardID
        Response.Redirect(RedirectUrl)
      Catch ex As Exception
        ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "", "alert('" & New JavaScriptSerializer().Serialize(ex.Message) & "');", True)
      End Try
    End If
    If e.CommandName.ToLower = "DAwf".ToLower Then
      Try
        Dim DashboardID As Int32 = GVwfDashboards.DataKeys(e.CommandArgument).Values("DashboardID")
        SIS.WF.wfDashboards.DAWF(DashboardID)
        GVwfDashboards.DataBind()
      Catch ex As Exception
        ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "", "alert('" & New JavaScriptSerializer().Serialize(ex.Message) & "');", True)
      End Try
    End If
    If e.CommandName.ToLower = "AAwf".ToLower Then
      Try
        Dim DashboardID As Int32 = GVwfDashboards.DataKeys(e.CommandArgument).Values("DashboardID")
        SIS.WF.wfDashboards.AAWF(DashboardID)
        GVwfDashboards.DataBind()
      Catch ex As Exception
        ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "", "alert('" & New JavaScriptSerializer().Serialize(ex.Message) & "');", True)
      End Try
    End If
    If e.CommandName.ToLower = "RAwf".ToLower Then
      Try
        Dim DashboardID As Int32 = GVwfDashboards.DataKeys(e.CommandArgument).Values("DashboardID")
        SIS.WF.wfDashboards.RAWF(DashboardID)
        GVwfDashboards.DataBind()
      Catch ex As Exception
        ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "", "alert('" & New JavaScriptSerializer().Serialize(ex.Message) & "');", True)
      End Try
    End If
    If e.CommandName.ToLower = "SHwf".ToLower Then
      Try
        Dim DashboardID As Int32 = GVwfDashboards.DataKeys(e.CommandArgument).Values("DashboardID")
        SIS.WF.wfDashboards.SHWF(DashboardID)
        GVwfDashboards.DataBind()
      Catch ex As Exception
        ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "", "alert('" & New JavaScriptSerializer().Serialize(ex.Message) & "');", True)
      End Try
    End If
    If e.CommandName.ToLower = "SRwf".ToLower Then
      Try
        Dim DashboardID As Int32 = GVwfDashboards.DataKeys(e.CommandArgument).Values("DashboardID")
        SIS.WF.wfDashboards.SRWF(DashboardID)
        GVwfDashboards.DataBind()
      Catch ex As Exception
        ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "", "alert('" & New JavaScriptSerializer().Serialize(ex.Message) & "');", True)
      End Try
    End If
    If e.CommandName.ToLower = "DeleteWF".ToLower Then
      Try
        Dim DashboardID As Int32 = GVwfDashboards.DataKeys(e.CommandArgument).Values("DashboardID")
        SIS.WF.wfDashboards.DeleteWF(DashboardID)
        GVwfDashboards.DataBind()
      Catch ex As Exception
        ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "", "alert('" & New JavaScriptSerializer().Serialize(ex.Message) & "');", True)
      End Try
    End If
  End Sub
  Protected Sub GVwfDashboards_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles GVwfDashboards.Init
    DataClassName = "GwfDashboards"
    SetGridView = GVwfDashboards
  End Sub
  Protected Sub TBLwfDashboards_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles TBLwfDashboards.Init
    SetToolBar = TBLwfDashboards
  End Sub
  Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
  End Sub
End Class

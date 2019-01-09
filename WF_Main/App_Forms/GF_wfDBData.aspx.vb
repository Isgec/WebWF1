Imports System.Web.Script.Serialization
Partial Class GF_wfDBData
  Inherits SIS.SYS.GridBase
  Private _InfoUrl As String = "~/WF_Main/App_Display/DF_wfDBData.aspx"
  Protected Sub Info_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)
    Dim oBut As ImageButton = CType(sender, ImageButton)
    Dim aVal() As String = oBut.CommandArgument.ToString.Split(",".ToCharArray)
    Dim RedirectUrl As String = _InfoUrl  & "?DBDataID=" & aVal(0)
    Response.Redirect(RedirectUrl)
  End Sub
  Protected Sub GVwfDBData_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GVwfDBData.RowCommand
    If e.CommandName.ToLower = "lgedit".ToLower Then
      Try
        Dim DBDataID As Int32 = GVwfDBData.DataKeys(e.CommandArgument).Values("DBDataID")  
        Dim RedirectUrl As String = TBLwfDBData.EditUrl & "?DBDataID=" & DBDataID
        Response.Redirect(RedirectUrl)
      Catch ex As Exception
        ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "", "alert('" & New JavaScriptSerializer().Serialize(ex.Message) & "');", True)
      End Try
    End If
    If e.CommandName.ToLower = "Copywf".ToLower Then
      Try
        Dim DBDataID As Int32 = GVwfDBData.DataKeys(e.CommandArgument).Values("DBDataID")  
        SIS.WF.wfDBData.CopyWF(DBDataID)
        GVwfDBData.DataBind()
      Catch ex As Exception
        ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "", "alert('" & New JavaScriptSerializer().Serialize(ex.Message) & "');", True)
      End Try
    End If
    If e.CommandName.ToLower = "Deletewf".ToLower Then
      Try
        Dim DBDataID As Int32 = GVwfDBData.DataKeys(e.CommandArgument).Values("DBDataID")  
        SIS.WF.wfDBData.DeleteWF(DBDataID)
        GVwfDBData.DataBind()
      Catch ex As Exception
        ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "", "alert('" & New JavaScriptSerializer().Serialize(ex.Message) & "');", True)
      End Try
    End If
  End Sub
  Protected Sub GVwfDBData_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles GVwfDBData.Init
    DataClassName = "GwfDBData"
    SetGridView = GVwfDBData
  End Sub
  Protected Sub TBLwfDBData_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles TBLwfDBData.Init
    SetToolBar = TBLwfDBData
  End Sub
  Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
  End Sub
End Class

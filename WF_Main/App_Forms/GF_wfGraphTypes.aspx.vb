Imports System.Web.Script.Serialization
Partial Class GF_wfGraphTypes
  Inherits SIS.SYS.GridBase
  Private _InfoUrl As String = "~/WF_Main/App_Display/DF_wfGraphTypes.aspx"
  Protected Sub Info_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)
    Dim oBut As ImageButton = CType(sender, ImageButton)
    Dim aVal() As String = oBut.CommandArgument.ToString.Split(",".ToCharArray)
    Dim RedirectUrl As String = _InfoUrl  & "?GraphTypeID=" & aVal(0)
    Response.Redirect(RedirectUrl)
  End Sub
  Protected Sub GVwfGraphTypes_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GVwfGraphTypes.RowCommand
    If e.CommandName.ToLower = "lgedit".ToLower Then
      Try
        Dim GraphTypeID As Int32 = GVwfGraphTypes.DataKeys(e.CommandArgument).Values("GraphTypeID")  
        Dim RedirectUrl As String = TBLwfGraphTypes.EditUrl & "?GraphTypeID=" & GraphTypeID
        Response.Redirect(RedirectUrl)
      Catch ex As Exception
        ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "", "alert('" & New JavaScriptSerializer().Serialize(ex.Message) & "');", True)
      End Try
    End If
  End Sub
  Protected Sub GVwfGraphTypes_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles GVwfGraphTypes.Init
    DataClassName = "GwfGraphTypes"
    SetGridView = GVwfGraphTypes
  End Sub
  Protected Sub TBLwfGraphTypes_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles TBLwfGraphTypes.Init
    SetToolBar = TBLwfGraphTypes
  End Sub
  Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
  End Sub
End Class

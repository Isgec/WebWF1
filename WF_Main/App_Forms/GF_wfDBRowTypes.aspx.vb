Imports System.Web.Script.Serialization
Partial Class GF_wfDBRowTypes
  Inherits SIS.SYS.GridBase
  Private _InfoUrl As String = "~/WF_Main/App_Display/DF_wfDBRowTypes.aspx"
  Protected Sub Info_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)
    Dim oBut As ImageButton = CType(sender, ImageButton)
    Dim aVal() As String = oBut.CommandArgument.ToString.Split(",".ToCharArray)
    Dim RedirectUrl As String = _InfoUrl  & "?RowTypeID=" & aVal(0)
    Response.Redirect(RedirectUrl)
  End Sub
  Protected Sub GVwfDBRowTypes_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GVwfDBRowTypes.RowCommand
    If e.CommandName.ToLower = "lgedit".ToLower Then
      Try
        Dim RowTypeID As Int32 = GVwfDBRowTypes.DataKeys(e.CommandArgument).Values("RowTypeID")  
        Dim RedirectUrl As String = TBLwfDBRowTypes.EditUrl & "?RowTypeID=" & RowTypeID
        Response.Redirect(RedirectUrl)
      Catch ex As Exception
        ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "", "alert('" & New JavaScriptSerializer().Serialize(ex.Message) & "');", True)
      End Try
    End If
  End Sub
  Protected Sub GVwfDBRowTypes_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles GVwfDBRowTypes.Init
    DataClassName = "GwfDBRowTypes"
    SetGridView = GVwfDBRowTypes
  End Sub
  Protected Sub TBLwfDBRowTypes_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles TBLwfDBRowTypes.Init
    SetToolBar = TBLwfDBRowTypes
  End Sub
  Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
  End Sub
End Class

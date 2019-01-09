Partial Class AF_wfDashboards
  Inherits SIS.SYS.InsertBase
  Protected Sub FVwfDashboards_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles FVwfDashboards.Init
    DataClassName = "AwfDashboards"
    SetFormView = FVwfDashboards
  End Sub
  Protected Sub TBLwfDashboards_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles TBLwfDashboards.Init
    SetToolBar = TBLwfDashboards
  End Sub
  Protected Sub ODSwfDashboards_Inserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.ObjectDataSourceStatusEventArgs) Handles ODSwfDashboards.Inserted
    If e.Exception Is Nothing Then
      Dim oDC As SIS.WF.wfDashboards = CType(e.ReturnValue, SIS.WF.wfDashboards)
      Dim tmpURL As String = "?tmp=1"
      tmpURL &= "&DashboardID=" & oDC.DashboardID
      TBLwfDashboards.AfterInsertURL &= tmpURL
    End If
  End Sub
  Protected Sub FVwfDashboards_DataBound(ByVal sender As Object, ByVal e As System.EventArgs) Handles FVwfDashboards.DataBound
    SIS.WF.wfDashboards.SetDefaultValues(sender, e)
  End Sub
  Protected Sub FVwfDashboards_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles FVwfDashboards.PreRender
    Dim oF_DBIconID_Display As Label = FVwfDashboards.FindControl("F_DBIconID_Display")
    Dim oF_DBIconID As TextBox = FVwfDashboards.FindControl("F_DBIconID")
    Dim mStr As String = ""
    Dim oTR As IO.StreamReader = New IO.StreamReader(HttpContext.Current.Server.MapPath("~/WF_Main/App_Create") & "/AF_wfDashboards.js")
    mStr = oTR.ReadToEnd
    oTR.Close()
    oTR.Dispose()
    If Not Page.ClientScript.IsClientScriptBlockRegistered("scriptwfDashboards") Then
      Page.ClientScript.RegisterClientScriptBlock(GetType(System.String), "scriptwfDashboards", mStr)
    End If
    If Request.QueryString("DashboardID") IsNot Nothing Then
      CType(FVwfDashboards.FindControl("F_DashboardID"), TextBox).Text = Request.QueryString("DashboardID")
      CType(FVwfDashboards.FindControl("F_DashboardID"), TextBox).Enabled = False
    End If
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

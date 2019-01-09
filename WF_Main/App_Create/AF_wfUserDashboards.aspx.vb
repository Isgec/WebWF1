Partial Class AF_wfUserDashboards
  Inherits SIS.SYS.InsertBase
  Protected Sub FVwfUserDashboards_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles FVwfUserDashboards.Init
    DataClassName = "AwfUserDashboards"
    SetFormView = FVwfUserDashboards
  End Sub
  Protected Sub TBLwfUserDashboards_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles TBLwfUserDashboards.Init
    SetToolBar = TBLwfUserDashboards
  End Sub
  Protected Sub ODSwfUserDashboards_Inserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.ObjectDataSourceStatusEventArgs) Handles ODSwfUserDashboards.Inserted
    If e.Exception Is Nothing Then
      Dim oDC As SIS.WF.wfUserDashboards = CType(e.ReturnValue,SIS.WF.wfUserDashboards)
      Dim tmpURL As String = "?tmp=1"
      tmpURL &= "&UserID=" & oDC.UserID
      tmpURL &= "&DashboardID=" & oDC.DashboardID
      TBLwfUserDashboards.AfterInsertURL &= tmpURL 
    End If
  End Sub
  Protected Sub FVwfUserDashboards_DataBound(ByVal sender As Object, ByVal e As System.EventArgs) Handles FVwfUserDashboards.DataBound
    SIS.WF.wfUserDashboards.SetDefaultValues(sender, e) 
  End Sub
  Protected Sub FVwfUserDashboards_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles FVwfUserDashboards.PreRender
    Dim oF_UserID_Display As Label  = FVwfUserDashboards.FindControl("F_UserID_Display")
    oF_UserID_Display.Text = String.Empty
    If Not Session("F_UserID_Display") Is Nothing Then
      If Session("F_UserID_Display") <> String.Empty Then
        oF_UserID_Display.Text = Session("F_UserID_Display")
      End If
    End If
    Dim oF_UserID As TextBox  = FVwfUserDashboards.FindControl("F_UserID")
    oF_UserID.Enabled = True
    oF_UserID.Text = String.Empty
    If Not Session("F_UserID") Is Nothing Then
      If Session("F_UserID") <> String.Empty Then
        oF_UserID.Text = Session("F_UserID")
      End If
    End If
    Dim oF_DashboardID_Display As Label  = FVwfUserDashboards.FindControl("F_DashboardID_Display")
    oF_DashboardID_Display.Text = String.Empty
    If Not Session("F_DashboardID_Display") Is Nothing Then
      If Session("F_DashboardID_Display") <> String.Empty Then
        oF_DashboardID_Display.Text = Session("F_DashboardID_Display")
      End If
    End If
    Dim oF_DashboardID As TextBox  = FVwfUserDashboards.FindControl("F_DashboardID")
    oF_DashboardID.Enabled = True
    oF_DashboardID.Text = String.Empty
    If Not Session("F_DashboardID") Is Nothing Then
      If Session("F_DashboardID") <> String.Empty Then
        oF_DashboardID.Text = Session("F_DashboardID")
      End If
    End If
    Dim mStr As String = ""
    Dim oTR As IO.StreamReader = New IO.StreamReader(HttpContext.Current.Server.MapPath("~/WF_Main/App_Create") & "/AF_wfUserDashboards.js")
    mStr = oTR.ReadToEnd
    oTR.Close()
    oTR.Dispose()
    If Not Page.ClientScript.IsClientScriptBlockRegistered("scriptwfUserDashboards") Then
      Page.ClientScript.RegisterClientScriptBlock(GetType(System.String), "scriptwfUserDashboards", mStr)
    End If
    If Request.QueryString("UserID") IsNot Nothing Then
      CType(FVwfUserDashboards.FindControl("F_UserID"), TextBox).Text = Request.QueryString("UserID")
      CType(FVwfUserDashboards.FindControl("F_UserID"), TextBox).Enabled = False
    End If
    If Request.QueryString("DashboardID") IsNot Nothing Then
      CType(FVwfUserDashboards.FindControl("F_DashboardID"), TextBox).Text = Request.QueryString("DashboardID")
      CType(FVwfUserDashboards.FindControl("F_DashboardID"), TextBox).Enabled = False
    End If
  End Sub
  <System.Web.Services.WebMethod()> _
  <System.Web.Script.Services.ScriptMethod()> _
  Public Shared Function UserIDCompletionList(ByVal prefixText As String, ByVal count As Integer, ByVal contextKey As String) As String()
    Return SIS.QCM.qcmUsers.SelectqcmUsersAutoCompleteList(prefixText, count, contextKey)
  End Function
  <System.Web.Services.WebMethod()> _
  <System.Web.Script.Services.ScriptMethod()> _
  Public Shared Function DashboardIDCompletionList(ByVal prefixText As String, ByVal count As Integer, ByVal contextKey As String) As String()
    Return SIS.WF.wfDashboards.SelectwfDashboardsAutoCompleteList(prefixText, count, contextKey)
  End Function
  <System.Web.Services.WebMethod()> _
  Public Shared Function validate_FK_WF_UserDashboards_UserID(ByVal value As String) As String
    Dim aVal() As String = value.Split(",".ToCharArray)
    Dim mRet As String="0|" & aVal(0)
    Dim UserID As String = CType(aVal(1),String)
    Dim oVar As SIS.QCM.qcmUsers = SIS.QCM.qcmUsers.qcmUsersGetByID(UserID)
    If oVar Is Nothing Then
      mRet = "1|" & aVal(0) & "|Record not found." 
    Else
      mRet = "0|" & aVal(0) & "|" & oVar.DisplayField 
    End If
    Return mRet
  End Function
  <System.Web.Services.WebMethod()> _
  Public Shared Function validate_FK_WF_UserDashboards_DashboardID(ByVal value As String) As String
    Dim aVal() As String = value.Split(",".ToCharArray)
    Dim mRet As String="0|" & aVal(0)
    Dim DashboardID As Int32 = CType(aVal(1),Int32)
    Dim oVar As SIS.WF.wfDashboards = SIS.WF.wfDashboards.wfDashboardsGetByID(DashboardID)
    If oVar Is Nothing Then
      mRet = "1|" & aVal(0) & "|Record not found." 
    Else
      mRet = "0|" & aVal(0) & "|" & oVar.DisplayField 
    End If
    Return mRet
  End Function

End Class

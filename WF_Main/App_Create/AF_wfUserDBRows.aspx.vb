Partial Class AF_wfUserDBRows
  Inherits SIS.SYS.InsertBase
  Protected Sub FVwfUserDBRows_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles FVwfUserDBRows.Init
    DataClassName = "AwfUserDBRows"
    SetFormView = FVwfUserDBRows
  End Sub
  Protected Sub TBLwfUserDBRows_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles TBLwfUserDBRows.Init
    SetToolBar = TBLwfUserDBRows
  End Sub
  Protected Sub FVwfUserDBRows_DataBound(ByVal sender As Object, ByVal e As System.EventArgs) Handles FVwfUserDBRows.DataBound
    SIS.WF.wfUserDBRows.SetDefaultValues(sender, e) 
  End Sub
  Protected Sub FVwfUserDBRows_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles FVwfUserDBRows.PreRender
    Dim oF_UserID_Display As Label  = FVwfUserDBRows.FindControl("F_UserID_Display")
    oF_UserID_Display.Text = String.Empty
    If Not Session("F_UserID_Display") Is Nothing Then
      If Session("F_UserID_Display") <> String.Empty Then
        oF_UserID_Display.Text = Session("F_UserID_Display")
      End If
    End If
    Dim oF_UserID As TextBox  = FVwfUserDBRows.FindControl("F_UserID")
    oF_UserID.Enabled = True
    oF_UserID.Text = String.Empty
    If Not Session("F_UserID") Is Nothing Then
      If Session("F_UserID") <> String.Empty Then
        oF_UserID.Text = Session("F_UserID")
      End If
    End If
    Dim oF_DashboardID_Display As Label  = FVwfUserDBRows.FindControl("F_DashboardID_Display")
    oF_DashboardID_Display.Text = String.Empty
    If Not Session("F_DashboardID_Display") Is Nothing Then
      If Session("F_DashboardID_Display") <> String.Empty Then
        oF_DashboardID_Display.Text = Session("F_DashboardID_Display")
      End If
    End If
    Dim oF_DashboardID As TextBox  = FVwfUserDBRows.FindControl("F_DashboardID")
    oF_DashboardID.Enabled = True
    oF_DashboardID.Text = String.Empty
    If Not Session("F_DashboardID") Is Nothing Then
      If Session("F_DashboardID") <> String.Empty Then
        oF_DashboardID.Text = Session("F_DashboardID")
      End If
    End If
    Dim oF_DBRows_Display As Label  = FVwfUserDBRows.FindControl("F_DBRows_Display")
    Dim oF_DBRows As TextBox  = FVwfUserDBRows.FindControl("F_DBRows")
    Dim oF_ReminderCountDBDataID_Display As Label  = FVwfUserDBRows.FindControl("F_ReminderCountDBDataID_Display")
    Dim oF_ReminderCountDBDataID As TextBox  = FVwfUserDBRows.FindControl("F_ReminderCountDBDataID")
    Dim oF_ReminderAvgDBDataID_Display As Label  = FVwfUserDBRows.FindControl("F_ReminderAvgDBDataID_Display")
    Dim oF_ReminderAvgDBDataID As TextBox  = FVwfUserDBRows.FindControl("F_ReminderAvgDBDataID")
    Dim oF_ReminderMaxDBDataID_Display As Label  = FVwfUserDBRows.FindControl("F_ReminderMaxDBDataID_Display")
    Dim oF_ReminderMaxDBDataID As TextBox  = FVwfUserDBRows.FindControl("F_ReminderMaxDBDataID")
    Dim mStr As String = ""
    Dim oTR As IO.StreamReader = New IO.StreamReader(HttpContext.Current.Server.MapPath("~/WF_Main/App_Create") & "/AF_wfUserDBRows.js")
    mStr = oTR.ReadToEnd
    oTR.Close()
    oTR.Dispose()
    If Not Page.ClientScript.IsClientScriptBlockRegistered("scriptwfUserDBRows") Then
      Page.ClientScript.RegisterClientScriptBlock(GetType(System.String), "scriptwfUserDBRows", mStr)
    End If
    If Request.QueryString("UserID") IsNot Nothing Then
      CType(FVwfUserDBRows.FindControl("F_UserID"), TextBox).Text = Request.QueryString("UserID")
      CType(FVwfUserDBRows.FindControl("F_UserID"), TextBox).Enabled = False
    End If
    If Request.QueryString("DashboardID") IsNot Nothing Then
      CType(FVwfUserDBRows.FindControl("F_DashboardID"), TextBox).Text = Request.QueryString("DashboardID")
      CType(FVwfUserDBRows.FindControl("F_DashboardID"), TextBox).Enabled = False
    End If
    If Request.QueryString("DBRows") IsNot Nothing Then
      CType(FVwfUserDBRows.FindControl("F_DBRows"), TextBox).Text = Request.QueryString("DBRows")
      CType(FVwfUserDBRows.FindControl("F_DBRows"), TextBox).Enabled = False
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
    Return SIS.WF.wfUserDashboards.SelectwfUserDashboardsAutoCompleteList(prefixText, count, contextKey)
  End Function
  <System.Web.Services.WebMethod()> _
  <System.Web.Script.Services.ScriptMethod()> _
  Public Shared Function DBRowsCompletionList(ByVal prefixText As String, ByVal count As Integer, ByVal contextKey As String) As String()
    Return SIS.WF.wfDBRows.SelectwfDBRowsAutoCompleteList(prefixText, count, contextKey)
  End Function
  <System.Web.Services.WebMethod()> _
  <System.Web.Script.Services.ScriptMethod()> _
  Public Shared Function ReminderCountDBDataIDCompletionList(ByVal prefixText As String, ByVal count As Integer, ByVal contextKey As String) As String()
    Return SIS.WF.wfDBData.SelectwfDBDataAutoCompleteList(prefixText, count, contextKey)
  End Function
  <System.Web.Services.WebMethod()> _
  <System.Web.Script.Services.ScriptMethod()> _
  Public Shared Function ReminderAvgDBDataIDCompletionList(ByVal prefixText As String, ByVal count As Integer, ByVal contextKey As String) As String()
    Return SIS.WF.wfDBData.SelectwfDBDataAutoCompleteList(prefixText, count, contextKey)
  End Function
  <System.Web.Services.WebMethod()> _
  <System.Web.Script.Services.ScriptMethod()> _
  Public Shared Function ReminderMaxDBDataIDCompletionList(ByVal prefixText As String, ByVal count As Integer, ByVal contextKey As String) As String()
    Return SIS.WF.wfDBData.SelectwfDBDataAutoCompleteList(prefixText, count, contextKey)
  End Function
  <System.Web.Services.WebMethod()> _
  Public Shared Function validate_FK_WF_UserDBRows_UserID(ByVal value As String) As String
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
  Public Shared Function validate_FK_WF_UserDBRows_DBRows(ByVal value As String) As String
    Dim aVal() As String = value.Split(",".ToCharArray)
    Dim mRet As String="0|" & aVal(0)
    Dim DashboardID As Int32 = CType(aVal(1),Int32)
    Dim DBRows As Int32 = CType(aVal(2),Int32)
    Dim oVar As SIS.WF.wfDBRows = SIS.WF.wfDBRows.wfDBRowsGetByID(DashboardID,DBRows)
    If oVar Is Nothing Then
      mRet = "1|" & aVal(0) & "|Record not found." 
    Else
      mRet = "0|" & aVal(0) & "|" & oVar.DisplayField 
    End If
    Return mRet
  End Function
  <System.Web.Services.WebMethod()> _
  Public Shared Function validate_FK_WF_UserDBRows_UserDashboard(ByVal value As String) As String
    Dim aVal() As String = value.Split(",".ToCharArray)
    Dim mRet As String="0|" & aVal(0)
    Dim UserID As String = CType(aVal(1),String)
    Dim DashboardID As Int32 = CType(aVal(2),Int32)
    Dim oVar As SIS.WF.wfUserDashboards = SIS.WF.wfUserDashboards.wfUserDashboardsGetByID(UserID,DashboardID)
    If oVar Is Nothing Then
      mRet = "1|" & aVal(0) & "|Record not found." 
    Else
      mRet = "0|" & aVal(0) & "|" & oVar.DisplayField 
    End If
    Return mRet
  End Function
  <System.Web.Services.WebMethod()> _
  Public Shared Function validate_FK_WF_UserDBRows_ReminderCountDBDataID(ByVal value As String) As String
    Dim aVal() As String = value.Split(",".ToCharArray)
    Dim mRet As String="0|" & aVal(0)
    Dim ReminderCountDBDataID As Int32 = CType(aVal(1),Int32)
    Dim oVar As SIS.WF.wfDBData = SIS.WF.wfDBData.wfDBDataGetByID(ReminderCountDBDataID)
    If oVar Is Nothing Then
      mRet = "1|" & aVal(0) & "|Record not found." 
    Else
      mRet = "0|" & aVal(0) & "|" & oVar.DisplayField 
    End If
    Return mRet
  End Function
  <System.Web.Services.WebMethod()> _
  Public Shared Function validate_FK_WF_UserDBRows_ReminderAvgDBDataID(ByVal value As String) As String
    Dim aVal() As String = value.Split(",".ToCharArray)
    Dim mRet As String="0|" & aVal(0)
    Dim ReminderAvgDBDataID As Int32 = CType(aVal(1),Int32)
    Dim oVar As SIS.WF.wfDBData = SIS.WF.wfDBData.wfDBDataGetByID(ReminderAvgDBDataID)
    If oVar Is Nothing Then
      mRet = "1|" & aVal(0) & "|Record not found." 
    Else
      mRet = "0|" & aVal(0) & "|" & oVar.DisplayField 
    End If
    Return mRet
  End Function
  <System.Web.Services.WebMethod()> _
  Public Shared Function validate_FK_WF_UserDBRows_ReminderMaxDBDataID(ByVal value As String) As String
    Dim aVal() As String = value.Split(",".ToCharArray)
    Dim mRet As String="0|" & aVal(0)
    Dim ReminderMaxDBDataID As Int32 = CType(aVal(1),Int32)
    Dim oVar As SIS.WF.wfDBData = SIS.WF.wfDBData.wfDBDataGetByID(ReminderMaxDBDataID)
    If oVar Is Nothing Then
      mRet = "1|" & aVal(0) & "|Record not found." 
    Else
      mRet = "0|" & aVal(0) & "|" & oVar.DisplayField 
    End If
    Return mRet
  End Function

End Class

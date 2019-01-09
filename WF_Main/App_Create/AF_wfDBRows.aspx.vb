Partial Class AF_wfDBRows
  Inherits SIS.SYS.InsertBase
  Protected Sub FVwfDBRows_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles FVwfDBRows.Init
    DataClassName = "AwfDBRows"
    SetFormView = FVwfDBRows
  End Sub
  Protected Sub TBLwfDBRows_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles TBLwfDBRows.Init
    SetToolBar = TBLwfDBRows
  End Sub
  Protected Sub ODSwfDBRows_Inserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.ObjectDataSourceStatusEventArgs) Handles ODSwfDBRows.Inserted
    If e.Exception Is Nothing Then
      Dim oDC As SIS.WF.wfDBRows = CType(e.ReturnValue,SIS.WF.wfDBRows)
      Dim tmpURL As String = "?tmp=1"
      tmpURL &= "&DashboardID=" & oDC.DashboardID
      tmpURL &= "&DBRows=" & oDC.DBRows
      TBLwfDBRows.AfterInsertURL &= tmpURL 
    End If
  End Sub
  Protected Sub FVwfDBRows_DataBound(ByVal sender As Object, ByVal e As System.EventArgs) Handles FVwfDBRows.DataBound
    SIS.WF.wfDBRows.SetDefaultValues(sender, e) 
  End Sub
  Protected Sub FVwfDBRows_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles FVwfDBRows.PreRender
    Dim oF_DashboardID_Display As Label  = FVwfDBRows.FindControl("F_DashboardID_Display")
    oF_DashboardID_Display.Text = String.Empty
    If Not Session("F_DashboardID_Display") Is Nothing Then
      If Session("F_DashboardID_Display") <> String.Empty Then
        oF_DashboardID_Display.Text = Session("F_DashboardID_Display")
      End If
    End If
    Dim oF_DashboardID As TextBox  = FVwfDBRows.FindControl("F_DashboardID")
    oF_DashboardID.Enabled = True
    oF_DashboardID.Text = String.Empty
    If Not Session("F_DashboardID") Is Nothing Then
      If Session("F_DashboardID") <> String.Empty Then
        oF_DashboardID.Text = Session("F_DashboardID")
      End If
    End If
    Dim oF_ParentDBRows_Display As Label  = FVwfDBRows.FindControl("F_ParentDBRows_Display")
    Dim oF_ParentDBRows As TextBox  = FVwfDBRows.FindControl("F_ParentDBRows")
    Dim mStr As String = ""
    Dim oTR As IO.StreamReader = New IO.StreamReader(HttpContext.Current.Server.MapPath("~/WF_Main/App_Create") & "/AF_wfDBRows.js")
    mStr = oTR.ReadToEnd
    oTR.Close()
    oTR.Dispose()
    If Not Page.ClientScript.IsClientScriptBlockRegistered("scriptwfDBRows") Then
      Page.ClientScript.RegisterClientScriptBlock(GetType(System.String), "scriptwfDBRows", mStr)
    End If
    If Request.QueryString("DashboardID") IsNot Nothing Then
      CType(FVwfDBRows.FindControl("F_DashboardID"), TextBox).Text = Request.QueryString("DashboardID")
      CType(FVwfDBRows.FindControl("F_DashboardID"), TextBox).Enabled = False
    End If
    If Request.QueryString("DBRows") IsNot Nothing Then
      CType(FVwfDBRows.FindControl("F_DBRows"), TextBox).Text = Request.QueryString("DBRows")
      CType(FVwfDBRows.FindControl("F_DBRows"), TextBox).Enabled = False
    End If
  End Sub
  <System.Web.Services.WebMethod()>
  <System.Web.Script.Services.ScriptMethod()>
  Public Shared Function DashboardIDCompletionList(ByVal prefixText As String, ByVal count As Integer, ByVal contextKey As String) As String()
    Return SIS.WF.wfDashboards.SelectwfDashboardsAutoCompleteList(prefixText, count, contextKey)
  End Function
  <System.Web.Services.WebMethod()>
  <System.Web.Script.Services.ScriptMethod()>
  Public Shared Function ParentDBRowsCompletionList(ByVal prefixText As String, ByVal count As Integer, ByVal contextKey As String) As String()
    Return SIS.WF.wfDBRows.SelectwfDBRowsAutoCompleteList(prefixText, count, contextKey)
  End Function
  <System.Web.Services.WebMethod()>
  <System.Web.Script.Services.ScriptMethod()>
  Public Shared Function MainDBDataIDCompletionList(ByVal prefixText As String, ByVal count As Integer, ByVal contextKey As String) As String()
    Return SIS.WF.wfDBData.SelectwfDBDataAutoCompleteList(prefixText, count, contextKey)
  End Function
  <System.Web.Services.WebMethod()>
  <System.Web.Script.Services.ScriptMethod()>
  Public Shared Function MainDBIconIDCompletionList(ByVal prefixText As String, ByVal count As Integer, ByVal contextKey As String) As String()
    Return SIS.WF.wfDBIcons.SelectwfDBIconsAutoCompleteList(prefixText, count, contextKey)
  End Function
  <System.Web.Services.WebMethod()>
  <System.Web.Script.Services.ScriptMethod()>
  Public Shared Function DVDBIconIDCompletionList(ByVal prefixText As String, ByVal count As Integer, ByVal contextKey As String) As String()
    Return SIS.WF.wfDBIcons.SelectwfDBIconsAutoCompleteList(prefixText, count, contextKey)
  End Function
  <System.Web.Services.WebMethod()>
  <System.Web.Script.Services.ScriptMethod()>
  Public Shared Function DVDBDataIDCompletionList(ByVal prefixText As String, ByVal count As Integer, ByVal contextKey As String) As String()
    Return SIS.WF.wfDBData.SelectwfDBDataAutoCompleteList(prefixText, count, contextKey)
  End Function
  <System.Web.Services.WebMethod()>
  <System.Web.Script.Services.ScriptMethod()>
  Public Shared Function DVRemarksDBIconIDCompletionList(ByVal prefixText As String, ByVal count As Integer, ByVal contextKey As String) As String()
    Return SIS.WF.wfDBIcons.SelectwfDBIconsAutoCompleteList(prefixText, count, contextKey)
  End Function
  <System.Web.Services.WebMethod()>
  <System.Web.Script.Services.ScriptMethod()>
  Public Shared Function DVFDBIconIDCompletionList(ByVal prefixText As String, ByVal count As Integer, ByVal contextKey As String) As String()
    Return SIS.WF.wfDBIcons.SelectwfDBIconsAutoCompleteList(prefixText, count, contextKey)
  End Function
  <System.Web.Services.WebMethod()>
  <System.Web.Script.Services.ScriptMethod()>
  Public Shared Function DVForwardDBDataIDCompletionList(ByVal prefixText As String, ByVal count As Integer, ByVal contextKey As String) As String()
    Return SIS.WF.wfDBData.SelectwfDBDataAutoCompleteList(prefixText, count, contextKey)
  End Function
  <System.Web.Services.WebMethod()>
  <System.Web.Script.Services.ScriptMethod()>
  Public Shared Function DVRDBIconIDCompletionList(ByVal prefixText As String, ByVal count As Integer, ByVal contextKey As String) As String()
    Return SIS.WF.wfDBIcons.SelectwfDBIconsAutoCompleteList(prefixText, count, contextKey)
  End Function
  <System.Web.Services.WebMethod()>
  <System.Web.Script.Services.ScriptMethod()>
  Public Shared Function DVReverseDBDataIDCompletionList(ByVal prefixText As String, ByVal count As Integer, ByVal contextKey As String) As String()
    Return SIS.WF.wfDBData.SelectwfDBDataAutoCompleteList(prefixText, count, contextKey)
  End Function
  <System.Web.Services.WebMethod()>
  <System.Web.Script.Services.ScriptMethod()>
  Public Shared Function DVAttachmentDBIconIDCompletionList(ByVal prefixText As String, ByVal count As Integer, ByVal contextKey As String) As String()
    Return SIS.WF.wfDBIcons.SelectwfDBIconsAutoCompleteList(prefixText, count, contextKey)
  End Function
  <System.Web.Services.WebMethod()>
  <System.Web.Script.Services.ScriptMethod()>
  Public Shared Function DVFEMailDBDataIDCompletionList(ByVal prefixText As String, ByVal count As Integer, ByVal contextKey As String) As String()
    Return SIS.WF.wfDBData.SelectwfDBDataAutoCompleteList(prefixText, count, contextKey)
  End Function
  <System.Web.Services.WebMethod()>
  <System.Web.Script.Services.ScriptMethod()>
  Public Shared Function DVFSMSDBDataIDCompletionList(ByVal prefixText As String, ByVal count As Integer, ByVal contextKey As String) As String()
    Return SIS.WF.wfDBData.SelectwfDBDataAutoCompleteList(prefixText, count, contextKey)
  End Function
  <System.Web.Services.WebMethod()>
  <System.Web.Script.Services.ScriptMethod()>
  Public Shared Function DVREMailDBDataIDCompletionList(ByVal prefixText As String, ByVal count As Integer, ByVal contextKey As String) As String()
    Return SIS.WF.wfDBData.SelectwfDBDataAutoCompleteList(prefixText, count, contextKey)
  End Function
  <System.Web.Services.WebMethod()>
  <System.Web.Script.Services.ScriptMethod()>
  Public Shared Function DVRSMSDBDataIDCompletionList(ByVal prefixText As String, ByVal count As Integer, ByVal contextKey As String) As String()
    Return SIS.WF.wfDBData.SelectwfDBDataAutoCompleteList(prefixText, count, contextKey)
  End Function
  <System.Web.Services.WebMethod()>
  <System.Web.Script.Services.ScriptMethod()>
  Public Shared Function ReminderCountDBDataIDCompletionList(ByVal prefixText As String, ByVal count As Integer, ByVal contextKey As String) As String()
    Return SIS.WF.wfDBData.SelectwfDBDataAutoCompleteList(prefixText, count, contextKey)
  End Function
  <System.Web.Services.WebMethod()>
  <System.Web.Script.Services.ScriptMethod()>
  Public Shared Function ReminderAvgDBDataIDCompletionList(ByVal prefixText As String, ByVal count As Integer, ByVal contextKey As String) As String()
    Return SIS.WF.wfDBData.SelectwfDBDataAutoCompleteList(prefixText, count, contextKey)
  End Function
  <System.Web.Services.WebMethod()>
  <System.Web.Script.Services.ScriptMethod()>
  Public Shared Function ReminderMaxDBDataIDCompletionList(ByVal prefixText As String, ByVal count As Integer, ByVal contextKey As String) As String()
    Return SIS.WF.wfDBData.SelectwfDBDataAutoCompleteList(prefixText, count, contextKey)
  End Function
  <System.Web.Services.WebMethod()>
  <System.Web.Script.Services.ScriptMethod()>
  Public Shared Function ReminderEMailDBDataIDCompletionList(ByVal prefixText As String, ByVal count As Integer, ByVal contextKey As String) As String()
    Return SIS.WF.wfDBData.SelectwfDBDataAutoCompleteList(prefixText, count, contextKey)
  End Function
  <System.Web.Services.WebMethod()>
  <System.Web.Script.Services.ScriptMethod()>
  Public Shared Function ReminderSMSDBDataIDCompletionList(ByVal prefixText As String, ByVal count As Integer, ByVal contextKey As String) As String()
    Return SIS.WF.wfDBData.SelectwfDBDataAutoCompleteList(prefixText, count, contextKey)
  End Function
  <System.Web.Services.WebMethod()>
  <System.Web.Script.Services.ScriptMethod()>
  Public Shared Function TotSqlIDLeftCompletionList(ByVal prefixText As String, ByVal count As Integer, ByVal contextKey As String) As String()
    Return SIS.WF.wfDBData.SelectwfDBDataAutoCompleteList(prefixText, count, contextKey)
  End Function
  <System.Web.Services.WebMethod()>
  <System.Web.Script.Services.ScriptMethod()>
  Public Shared Function RedSqlIDLeftCompletionList(ByVal prefixText As String, ByVal count As Integer, ByVal contextKey As String) As String()
    Return SIS.WF.wfDBData.SelectwfDBDataAutoCompleteList(prefixText, count, contextKey)
  End Function
  <System.Web.Services.WebMethod()>
  <System.Web.Script.Services.ScriptMethod()>
  Public Shared Function AmbSqlIDLeftCompletionList(ByVal prefixText As String, ByVal count As Integer, ByVal contextKey As String) As String()
    Return SIS.WF.wfDBData.SelectwfDBDataAutoCompleteList(prefixText, count, contextKey)
  End Function
  <System.Web.Services.WebMethod()>
  <System.Web.Script.Services.ScriptMethod()>
  Public Shared Function GreSqlIDLeftCompletionList(ByVal prefixText As String, ByVal count As Integer, ByVal contextKey As String) As String()
    Return SIS.WF.wfDBData.SelectwfDBDataAutoCompleteList(prefixText, count, contextKey)
  End Function
  <System.Web.Services.WebMethod()>
  <System.Web.Script.Services.ScriptMethod()>
  Public Shared Function TotSqlIDRightCompletionList(ByVal prefixText As String, ByVal count As Integer, ByVal contextKey As String) As String()
    Return SIS.WF.wfDBData.SelectwfDBDataAutoCompleteList(prefixText, count, contextKey)
  End Function
  <System.Web.Services.WebMethod()>
  <System.Web.Script.Services.ScriptMethod()>
  Public Shared Function RedSqlIDRightCompletionList(ByVal prefixText As String, ByVal count As Integer, ByVal contextKey As String) As String()
    Return SIS.WF.wfDBData.SelectwfDBDataAutoCompleteList(prefixText, count, contextKey)
  End Function
  <System.Web.Services.WebMethod()>
  <System.Web.Script.Services.ScriptMethod()>
  Public Shared Function AmbSqlIDRightCompletionList(ByVal prefixText As String, ByVal count As Integer, ByVal contextKey As String) As String()
    Return SIS.WF.wfDBData.SelectwfDBDataAutoCompleteList(prefixText, count, contextKey)
  End Function
  <System.Web.Services.WebMethod()>
  <System.Web.Script.Services.ScriptMethod()>
  Public Shared Function GreSqlIDRightCompletionList(ByVal prefixText As String, ByVal count As Integer, ByVal contextKey As String) As String()
    Return SIS.WF.wfDBData.SelectwfDBDataAutoCompleteList(prefixText, count, contextKey)
  End Function
  <System.Web.Services.WebMethod()>
  Public Shared Function validate_FK_WF_DBRows_DashboardID(ByVal value As String) As String
    Dim aVal() As String = value.Split(",".ToCharArray)
    Dim mRet As String = "0|" & aVal(0)
    Dim DashboardID As Int32 = CType(aVal(1), Int32)
    Dim oVar As SIS.WF.wfDashboards = SIS.WF.wfDashboards.wfDashboardsGetByID(DashboardID)
    If oVar Is Nothing Then
      mRet = "1|" & aVal(0) & "|Record not found."
    Else
      mRet = "0|" & aVal(0) & "|" & oVar.DisplayField
    End If
    Return mRet
  End Function
  <System.Web.Services.WebMethod()>
  Public Shared Function validate_FK_WF_DBRows_ParentDBRows(ByVal value As String) As String
    Dim aVal() As String = value.Split(",".ToCharArray)
    Dim mRet As String = "0|" & aVal(0)
    Dim DashboardID As Int32 = CType(aVal(1), Int32)
    Dim ParentDBRows As Int32 = CType(aVal(2), Int32)
    Dim oVar As SIS.WF.wfDBRows = SIS.WF.wfDBRows.wfDBRowsGetByID(DashboardID, ParentDBRows)
    If oVar Is Nothing Then
      mRet = "1|" & aVal(0) & "|Record not found."
    Else
      mRet = "0|" & aVal(0) & "|" & oVar.DisplayField
    End If
    Return mRet
  End Function
  <System.Web.Services.WebMethod()>
  Public Shared Function validate_FK_WF_DBRows_DVReverseDBDataID(ByVal value As String) As String
    Dim aVal() As String = value.Split(",".ToCharArray)
    Dim mRet As String = "0|" & aVal(0)
    Dim DVReverseDBDataID As Int32 = CType(aVal(1), Int32)
    Dim oVar As SIS.WF.wfDBData = SIS.WF.wfDBData.wfDBDataGetByID(DVReverseDBDataID)
    If oVar Is Nothing Then
      mRet = "1|" & aVal(0) & "|Record not found."
    Else
      mRet = "0|" & aVal(0) & "|" & oVar.DisplayField
    End If
    Return mRet
  End Function
  <System.Web.Services.WebMethod()>
  Public Shared Function validate_FK_WF_DBRows_DVFEMailDBDataID(ByVal value As String) As String
    Dim aVal() As String = value.Split(",".ToCharArray)
    Dim mRet As String = "0|" & aVal(0)
    Dim DVFEMailDBDataID As Int32 = CType(aVal(1), Int32)
    Dim oVar As SIS.WF.wfDBData = SIS.WF.wfDBData.wfDBDataGetByID(DVFEMailDBDataID)
    If oVar Is Nothing Then
      mRet = "1|" & aVal(0) & "|Record not found."
    Else
      mRet = "0|" & aVal(0) & "|" & oVar.DisplayField
    End If
    Return mRet
  End Function
  <System.Web.Services.WebMethod()>
  Public Shared Function validate_FK_WF_DBRows_DVFSMSDBDataID(ByVal value As String) As String
    Dim aVal() As String = value.Split(",".ToCharArray)
    Dim mRet As String = "0|" & aVal(0)
    Dim DVFSMSDBDataID As Int32 = CType(aVal(1), Int32)
    Dim oVar As SIS.WF.wfDBData = SIS.WF.wfDBData.wfDBDataGetByID(DVFSMSDBDataID)
    If oVar Is Nothing Then
      mRet = "1|" & aVal(0) & "|Record not found."
    Else
      mRet = "0|" & aVal(0) & "|" & oVar.DisplayField
    End If
    Return mRet
  End Function
  <System.Web.Services.WebMethod()>
  Public Shared Function validate_FK_WF_DBRows_DVREMailDBDataID(ByVal value As String) As String
    Dim aVal() As String = value.Split(",".ToCharArray)
    Dim mRet As String = "0|" & aVal(0)
    Dim DVREMailDBDataID As Int32 = CType(aVal(1), Int32)
    Dim oVar As SIS.WF.wfDBData = SIS.WF.wfDBData.wfDBDataGetByID(DVREMailDBDataID)
    If oVar Is Nothing Then
      mRet = "1|" & aVal(0) & "|Record not found."
    Else
      mRet = "0|" & aVal(0) & "|" & oVar.DisplayField
    End If
    Return mRet
  End Function
  <System.Web.Services.WebMethod()>
  Public Shared Function validate_FK_WF_DBRows_DVRSMSDBDataID(ByVal value As String) As String
    Dim aVal() As String = value.Split(",".ToCharArray)
    Dim mRet As String = "0|" & aVal(0)
    Dim DVRSMSDBDataID As Int32 = CType(aVal(1), Int32)
    Dim oVar As SIS.WF.wfDBData = SIS.WF.wfDBData.wfDBDataGetByID(DVRSMSDBDataID)
    If oVar Is Nothing Then
      mRet = "1|" & aVal(0) & "|Record not found."
    Else
      mRet = "0|" & aVal(0) & "|" & oVar.DisplayField
    End If
    Return mRet
  End Function
  <System.Web.Services.WebMethod()>
  Public Shared Function validate_FK_WF_DBRows_ReminderCountDBDataID(ByVal value As String) As String
    Dim aVal() As String = value.Split(",".ToCharArray)
    Dim mRet As String = "0|" & aVal(0)
    Dim ReminderCountDBDataID As Int32 = CType(aVal(1), Int32)
    Dim oVar As SIS.WF.wfDBData = SIS.WF.wfDBData.wfDBDataGetByID(ReminderCountDBDataID)
    If oVar Is Nothing Then
      mRet = "1|" & aVal(0) & "|Record not found."
    Else
      mRet = "0|" & aVal(0) & "|" & oVar.DisplayField
    End If
    Return mRet
  End Function
  <System.Web.Services.WebMethod()>
  Public Shared Function validate_FK_WF_DBRows_ReminderAVGDBDataID(ByVal value As String) As String
    Dim aVal() As String = value.Split(",".ToCharArray)
    Dim mRet As String = "0|" & aVal(0)
    Dim ReminderAvgDBDataID As Int32 = CType(aVal(1), Int32)
    Dim oVar As SIS.WF.wfDBData = SIS.WF.wfDBData.wfDBDataGetByID(ReminderAvgDBDataID)
    If oVar Is Nothing Then
      mRet = "1|" & aVal(0) & "|Record not found."
    Else
      mRet = "0|" & aVal(0) & "|" & oVar.DisplayField
    End If
    Return mRet
  End Function
  <System.Web.Services.WebMethod()>
  Public Shared Function validate_FK_WF_DBRows_ReminderMaxDBDataID(ByVal value As String) As String
    Dim aVal() As String = value.Split(",".ToCharArray)
    Dim mRet As String = "0|" & aVal(0)
    Dim ReminderMaxDBDataID As Int32 = CType(aVal(1), Int32)
    Dim oVar As SIS.WF.wfDBData = SIS.WF.wfDBData.wfDBDataGetByID(ReminderMaxDBDataID)
    If oVar Is Nothing Then
      mRet = "1|" & aVal(0) & "|Record not found."
    Else
      mRet = "0|" & aVal(0) & "|" & oVar.DisplayField
    End If
    Return mRet
  End Function
  <System.Web.Services.WebMethod()>
  Public Shared Function validate_FK_WF_DBRows_MainDBID(ByVal value As String) As String
    Dim aVal() As String = value.Split(",".ToCharArray)
    Dim mRet As String = "0|" & aVal(0)
    Dim MainDBDataID As Int32 = CType(aVal(1), Int32)
    Dim oVar As SIS.WF.wfDBData = SIS.WF.wfDBData.wfDBDataGetByID(MainDBDataID)
    If oVar Is Nothing Then
      mRet = "1|" & aVal(0) & "|Record not found."
    Else
      mRet = "0|" & aVal(0) & "|" & oVar.DisplayField
    End If
    Return mRet
  End Function
  <System.Web.Services.WebMethod()>
  Public Shared Function validate_FK_WF_DBRows_DVDBDataID(ByVal value As String) As String
    Dim aVal() As String = value.Split(",".ToCharArray)
    Dim mRet As String = "0|" & aVal(0)
    Dim DVDBDataID As Int32 = CType(aVal(1), Int32)
    Dim oVar As SIS.WF.wfDBData = SIS.WF.wfDBData.wfDBDataGetByID(DVDBDataID)
    If oVar Is Nothing Then
      mRet = "1|" & aVal(0) & "|Record not found."
    Else
      mRet = "0|" & aVal(0) & "|" & oVar.DisplayField
    End If
    Return mRet
  End Function
  <System.Web.Services.WebMethod()>
  Public Shared Function validate_FK_WF_DBRows_DVForwardDBDataID(ByVal value As String) As String
    Dim aVal() As String = value.Split(",".ToCharArray)
    Dim mRet As String = "0|" & aVal(0)
    Dim DVForwardDBDataID As Int32 = CType(aVal(1), Int32)
    Dim oVar As SIS.WF.wfDBData = SIS.WF.wfDBData.wfDBDataGetByID(DVForwardDBDataID)
    If oVar Is Nothing Then
      mRet = "1|" & aVal(0) & "|Record not found."
    Else
      mRet = "0|" & aVal(0) & "|" & oVar.DisplayField
    End If
    Return mRet
  End Function
  <System.Web.Services.WebMethod()>
  Public Shared Function validate_FK_WF_DBRows_MainDBIconID(ByVal value As String) As String
    Dim aVal() As String = value.Split(",".ToCharArray)
    Dim mRet As String = "0|" & aVal(0)
    Dim MainDBIconID As Int32 = CType(aVal(1), Int32)
    Dim oVar As SIS.WF.wfDBIcons = SIS.WF.wfDBIcons.wfDBIconsGetByID(MainDBIconID)
    If oVar Is Nothing Then
      mRet = "1|" & aVal(0) & "|Record not found."
    Else
      mRet = "0|" & aVal(0) & "|" & oVar.DisplayField
    End If
    Return mRet
  End Function
  <System.Web.Services.WebMethod()>
  Public Shared Function validate_FK_WF_DBRows_DVDBIconID(ByVal value As String) As String
    Dim aVal() As String = value.Split(",".ToCharArray)
    Dim mRet As String = "0|" & aVal(0)
    Dim DVDBIconID As Int32 = CType(aVal(1), Int32)
    Dim oVar As SIS.WF.wfDBIcons = SIS.WF.wfDBIcons.wfDBIconsGetByID(DVDBIconID)
    If oVar Is Nothing Then
      mRet = "1|" & aVal(0) & "|Record not found."
    Else
      mRet = "0|" & aVal(0) & "|" & oVar.DisplayField
    End If
    Return mRet
  End Function
  <System.Web.Services.WebMethod()>
  Public Shared Function validate_FK_WF_DBRows_DVRemarksDBIconID(ByVal value As String) As String
    Dim aVal() As String = value.Split(",".ToCharArray)
    Dim mRet As String = "0|" & aVal(0)
    Dim DVRemarksDBIconID As Int32 = CType(aVal(1), Int32)
    Dim oVar As SIS.WF.wfDBIcons = SIS.WF.wfDBIcons.wfDBIconsGetByID(DVRemarksDBIconID)
    If oVar Is Nothing Then
      mRet = "1|" & aVal(0) & "|Record not found."
    Else
      mRet = "0|" & aVal(0) & "|" & oVar.DisplayField
    End If
    Return mRet
  End Function
  <System.Web.Services.WebMethod()>
  Public Shared Function validate_FK_WF_DBRows_DVFDBIconID(ByVal value As String) As String
    Dim aVal() As String = value.Split(",".ToCharArray)
    Dim mRet As String = "0|" & aVal(0)
    Dim DVFDBIconID As Int32 = CType(aVal(1), Int32)
    Dim oVar As SIS.WF.wfDBIcons = SIS.WF.wfDBIcons.wfDBIconsGetByID(DVFDBIconID)
    If oVar Is Nothing Then
      mRet = "1|" & aVal(0) & "|Record not found."
    Else
      mRet = "0|" & aVal(0) & "|" & oVar.DisplayField
    End If
    Return mRet
  End Function
  <System.Web.Services.WebMethod()>
  Public Shared Function validate_FK_WF_DBRows_DVRDBIconID(ByVal value As String) As String
    Dim aVal() As String = value.Split(",".ToCharArray)
    Dim mRet As String = "0|" & aVal(0)
    Dim DVRDBIconID As Int32 = CType(aVal(1), Int32)
    Dim oVar As SIS.WF.wfDBIcons = SIS.WF.wfDBIcons.wfDBIconsGetByID(DVRDBIconID)
    If oVar Is Nothing Then
      mRet = "1|" & aVal(0) & "|Record not found."
    Else
      mRet = "0|" & aVal(0) & "|" & oVar.DisplayField
    End If
    Return mRet
  End Function
  <System.Web.Services.WebMethod()>
  Public Shared Function validate_FK_WF_DBRows_DVAttachmentDBIconID(ByVal value As String) As String
    Dim aVal() As String = value.Split(",".ToCharArray)
    Dim mRet As String = "0|" & aVal(0)
    Dim DVAttachmentDBIconID As Int32 = CType(aVal(1), Int32)
    Dim oVar As SIS.WF.wfDBIcons = SIS.WF.wfDBIcons.wfDBIconsGetByID(DVAttachmentDBIconID)
    If oVar Is Nothing Then
      mRet = "1|" & aVal(0) & "|Record not found."
    Else
      mRet = "0|" & aVal(0) & "|" & oVar.DisplayField
    End If
    Return mRet
  End Function
  <System.Web.Services.WebMethod()>
  Public Shared Function validate_FK_WF_DBRows_ReminderEMailDBDataID(ByVal value As String) As String
    Dim aVal() As String = value.Split(",".ToCharArray)
    Dim mRet As String = "0|" & aVal(0)
    Dim ReminderEMailDBDataID As Int32 = CType(aVal(1), Int32)
    Dim oVar As SIS.WF.wfDBData = SIS.WF.wfDBData.wfDBDataGetByID(ReminderEMailDBDataID)
    If oVar Is Nothing Then
      mRet = "1|" & aVal(0) & "|Record not found."
    Else
      mRet = "0|" & aVal(0) & "|" & oVar.DisplayField
    End If
    Return mRet
  End Function
  <System.Web.Services.WebMethod()>
  Public Shared Function validate_FK_WF_DBRows_ReminderSMSDBDataID(ByVal value As String) As String
    Dim aVal() As String = value.Split(",".ToCharArray)
    Dim mRet As String = "0|" & aVal(0)
    Dim ReminderSMSDBDataID As Int32 = CType(aVal(1), Int32)
    Dim oVar As SIS.WF.wfDBData = SIS.WF.wfDBData.wfDBDataGetByID(ReminderSMSDBDataID)
    If oVar Is Nothing Then
      mRet = "1|" & aVal(0) & "|Record not found."
    Else
      mRet = "0|" & aVal(0) & "|" & oVar.DisplayField
    End If
    Return mRet
  End Function
  <System.Web.Services.WebMethod()>
  Public Shared Function validate_FK_WF_DBRows_TotSqlIDLeft(ByVal value As String) As String
    Dim aVal() As String = value.Split(",".ToCharArray)
    Dim mRet As String = "0|" & aVal(0)
    Dim TotSqlIDLeft As Int32 = CType(aVal(1), Int32)
    Dim oVar As SIS.WF.wfDBData = SIS.WF.wfDBData.wfDBDataGetByID(TotSqlIDLeft)
    If oVar Is Nothing Then
      mRet = "1|" & aVal(0) & "|Record not found."
    Else
      mRet = "0|" & aVal(0) & "|" & oVar.DisplayField
    End If
    Return mRet
  End Function
  <System.Web.Services.WebMethod()>
  Public Shared Function validate_FK_WF_DBRows_RedSqlIDLeft(ByVal value As String) As String
    Dim aVal() As String = value.Split(",".ToCharArray)
    Dim mRet As String = "0|" & aVal(0)
    Dim RedSqlIDLeft As Int32 = CType(aVal(1), Int32)
    Dim oVar As SIS.WF.wfDBData = SIS.WF.wfDBData.wfDBDataGetByID(RedSqlIDLeft)
    If oVar Is Nothing Then
      mRet = "1|" & aVal(0) & "|Record not found."
    Else
      mRet = "0|" & aVal(0) & "|" & oVar.DisplayField
    End If
    Return mRet
  End Function
  <System.Web.Services.WebMethod()>
  Public Shared Function validate_FK_WF_DBRows_AmbSqlIDLeft(ByVal value As String) As String
    Dim aVal() As String = value.Split(",".ToCharArray)
    Dim mRet As String = "0|" & aVal(0)
    Dim AmbSqlIDLeft As Int32 = CType(aVal(1), Int32)
    Dim oVar As SIS.WF.wfDBData = SIS.WF.wfDBData.wfDBDataGetByID(AmbSqlIDLeft)
    If oVar Is Nothing Then
      mRet = "1|" & aVal(0) & "|Record not found."
    Else
      mRet = "0|" & aVal(0) & "|" & oVar.DisplayField
    End If
    Return mRet
  End Function
  <System.Web.Services.WebMethod()>
  Public Shared Function validate_FK_WF_DBRows_GreSqlIDLeft(ByVal value As String) As String
    Dim aVal() As String = value.Split(",".ToCharArray)
    Dim mRet As String = "0|" & aVal(0)
    Dim GreSqlIDLeft As Int32 = CType(aVal(1), Int32)
    Dim oVar As SIS.WF.wfDBData = SIS.WF.wfDBData.wfDBDataGetByID(GreSqlIDLeft)
    If oVar Is Nothing Then
      mRet = "1|" & aVal(0) & "|Record not found."
    Else
      mRet = "0|" & aVal(0) & "|" & oVar.DisplayField
    End If
    Return mRet
  End Function
  <System.Web.Services.WebMethod()>
  Public Shared Function validate_FK_WF_DBRows_TotSqlIDRight(ByVal value As String) As String
    Dim aVal() As String = value.Split(",".ToCharArray)
    Dim mRet As String = "0|" & aVal(0)
    Dim TotSqlIDRight As Int32 = CType(aVal(1), Int32)
    Dim oVar As SIS.WF.wfDBData = SIS.WF.wfDBData.wfDBDataGetByID(TotSqlIDRight)
    If oVar Is Nothing Then
      mRet = "1|" & aVal(0) & "|Record not found."
    Else
      mRet = "0|" & aVal(0) & "|" & oVar.DisplayField
    End If
    Return mRet
  End Function
  <System.Web.Services.WebMethod()>
  Public Shared Function validate_FK_WF_DBRows_AmbSqlIDRight(ByVal value As String) As String
    Dim aVal() As String = value.Split(",".ToCharArray)
    Dim mRet As String = "0|" & aVal(0)
    Dim AmbSqlIDRight As Int32 = CType(aVal(1), Int32)
    Dim oVar As SIS.WF.wfDBData = SIS.WF.wfDBData.wfDBDataGetByID(AmbSqlIDRight)
    If oVar Is Nothing Then
      mRet = "1|" & aVal(0) & "|Record not found."
    Else
      mRet = "0|" & aVal(0) & "|" & oVar.DisplayField
    End If
    Return mRet
  End Function
  <System.Web.Services.WebMethod()>
  Public Shared Function validate_FK_WF_DBRows_GreSqlIDRight(ByVal value As String) As String
    Dim aVal() As String = value.Split(",".ToCharArray)
    Dim mRet As String = "0|" & aVal(0)
    Dim GreSqlIDRight As Int32 = CType(aVal(1), Int32)
    Dim oVar As SIS.WF.wfDBData = SIS.WF.wfDBData.wfDBDataGetByID(GreSqlIDRight)
    If oVar Is Nothing Then
      mRet = "1|" & aVal(0) & "|Record not found."
    Else
      mRet = "0|" & aVal(0) & "|" & oVar.DisplayField
    End If
    Return mRet
  End Function
  <System.Web.Services.WebMethod()>
  Public Shared Function validate_FK_WF_DBRows_RedSqlIDRight(ByVal value As String) As String
    Dim aVal() As String = value.Split(",".ToCharArray)
    Dim mRet As String = "0|" & aVal(0)
    Dim RedSqlIDRight As Int32 = CType(aVal(1), Int32)
    Dim oVar As SIS.WF.wfDBData = SIS.WF.wfDBData.wfDBDataGetByID(RedSqlIDRight)
    If oVar Is Nothing Then
      mRet = "1|" & aVal(0) & "|Record not found."
    Else
      mRet = "0|" & aVal(0) & "|" & oVar.DisplayField
    End If
    Return mRet
  End Function

End Class

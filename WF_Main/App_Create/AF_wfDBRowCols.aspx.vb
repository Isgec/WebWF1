Partial Class AF_wfDBRowCols
  Inherits SIS.SYS.InsertBase
  Protected Sub FVwfDBRowCols_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles FVwfDBRowCols.Init
    DataClassName = "AwfDBRowCols"
    SetFormView = FVwfDBRowCols
  End Sub
  Protected Sub TBLwfDBRowCols_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles TBLwfDBRowCols.Init
    SetToolBar = TBLwfDBRowCols
  End Sub
  Protected Sub FVwfDBRowCols_DataBound(ByVal sender As Object, ByVal e As System.EventArgs) Handles FVwfDBRowCols.DataBound
    SIS.WF.wfDBRowCols.SetDefaultValues(sender, e) 
  End Sub
  Protected Sub FVwfDBRowCols_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles FVwfDBRowCols.PreRender
    Dim oF_DashboardID_Display As Label  = FVwfDBRowCols.FindControl("F_DashboardID_Display")
    oF_DashboardID_Display.Text = String.Empty
    If Not Session("F_DashboardID_Display") Is Nothing Then
      If Session("F_DashboardID_Display") <> String.Empty Then
        oF_DashboardID_Display.Text = Session("F_DashboardID_Display")
      End If
    End If
    Dim oF_DashboardID As TextBox  = FVwfDBRowCols.FindControl("F_DashboardID")
    oF_DashboardID.Enabled = True
    oF_DashboardID.Text = String.Empty
    If Not Session("F_DashboardID") Is Nothing Then
      If Session("F_DashboardID") <> String.Empty Then
        oF_DashboardID.Text = Session("F_DashboardID")
      End If
    End If
    Dim oF_DBRows_Display As Label  = FVwfDBRowCols.FindControl("F_DBRows_Display")
    oF_DBRows_Display.Text = String.Empty
    If Not Session("F_DBRows_Display") Is Nothing Then
      If Session("F_DBRows_Display") <> String.Empty Then
        oF_DBRows_Display.Text = Session("F_DBRows_Display")
      End If
    End If
    Dim oF_DBRows As TextBox  = FVwfDBRowCols.FindControl("F_DBRows")
    oF_DBRows.Enabled = True
    oF_DBRows.Text = String.Empty
    If Not Session("F_DBRows") Is Nothing Then
      If Session("F_DBRows") <> String.Empty Then
        oF_DBRows.Text = Session("F_DBRows")
      End If
    End If
    Dim mStr As String = ""
    Dim oTR As IO.StreamReader = New IO.StreamReader(HttpContext.Current.Server.MapPath("~/WF_Main/App_Create") & "/AF_wfDBRowCols.js")
    mStr = oTR.ReadToEnd
    oTR.Close()
    oTR.Dispose()
    If Not Page.ClientScript.IsClientScriptBlockRegistered("scriptwfDBRowCols") Then
      Page.ClientScript.RegisterClientScriptBlock(GetType(System.String), "scriptwfDBRowCols", mStr)
    End If
    If Request.QueryString("DashboardID") IsNot Nothing Then
      CType(FVwfDBRowCols.FindControl("F_DashboardID"), TextBox).Text = Request.QueryString("DashboardID")
      CType(FVwfDBRowCols.FindControl("F_DashboardID"), TextBox).Enabled = False
    End If
    If Request.QueryString("DBRows") IsNot Nothing Then
      CType(FVwfDBRowCols.FindControl("F_DBRows"), TextBox).Text = Request.QueryString("DBRows")
      CType(FVwfDBRowCols.FindControl("F_DBRows"), TextBox).Enabled = False
    End If
    If Request.QueryString("DBCols") IsNot Nothing Then
      CType(FVwfDBRowCols.FindControl("F_DBCols"), TextBox).Text = Request.QueryString("DBCols")
      CType(FVwfDBRowCols.FindControl("F_DBCols"), TextBox).Enabled = False
    End If
  End Sub
  <System.Web.Services.WebMethod()> _
  <System.Web.Script.Services.ScriptMethod()> _
  Public Shared Function DashboardIDCompletionList(ByVal prefixText As String, ByVal count As Integer, ByVal contextKey As String) As String()
    Return SIS.WF.wfDashboards.SelectwfDashboardsAutoCompleteList(prefixText, count, contextKey)
  End Function
  <System.Web.Services.WebMethod()> _
  <System.Web.Script.Services.ScriptMethod()> _
  Public Shared Function DBRowsCompletionList(ByVal prefixText As String, ByVal count As Integer, ByVal contextKey As String) As String()
    Return SIS.WF.wfDBRows.SelectwfDBRowsAutoCompleteList(prefixText, count, contextKey)
  End Function
  <System.Web.Services.WebMethod()> _
  Public Shared Function validate_FK_WF_DBRowCols_DashboardID(ByVal value As String) As String
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
  <System.Web.Services.WebMethod()> _
  Public Shared Function validate_FK_WF_DBRowCols_DBRows(ByVal value As String) As String
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

End Class

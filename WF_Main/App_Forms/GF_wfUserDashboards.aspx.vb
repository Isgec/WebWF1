Imports System.Web.Script.Serialization
Partial Class GF_wfUserDashboards
  Inherits SIS.SYS.GridBase
  Protected Sub GVwfUserDashboards_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GVwfUserDashboards.RowCommand
    If e.CommandName.ToLower = "lgedit".ToLower Then
      Try
        Dim UserID As String = GVwfUserDashboards.DataKeys(e.CommandArgument).Values("UserID")
        Dim DashboardID As Int32 = GVwfUserDashboards.DataKeys(e.CommandArgument).Values("DashboardID")
        Dim RedirectUrl As String = TBLwfUserDashboards.EditUrl & "?UserID=" & UserID & "&DashboardID=" & DashboardID
        Response.Redirect(RedirectUrl)
      Catch ex As Exception
        ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "", "alert('" & New JavaScriptSerializer().Serialize(ex.Message) & "');", True)
      End Try
    End If
  End Sub
  Protected Sub GVwfUserDashboards_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles GVwfUserDashboards.Init
    DataClassName = "GwfUserDashboards"
    SetGridView = GVwfUserDashboards
  End Sub
  Protected Sub TBLwfUserDashboards_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles TBLwfUserDashboards.Init
    SetToolBar = TBLwfUserDashboards
  End Sub
  Protected Sub F_UserID_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles F_UserID.TextChanged
    Session("F_UserID") = F_UserID.Text
    Session("F_UserID_Display") = F_UserID_Display.Text
    InitGridPage()
  End Sub
  <System.Web.Services.WebMethod()> _
  <System.Web.Script.Services.ScriptMethod()> _
  Public Shared Function UserIDCompletionList(ByVal prefixText As String, ByVal count As Integer, ByVal contextKey As String) As String()
    Return SIS.QCM.qcmUsers.SelectqcmUsersAutoCompleteList(prefixText, count, contextKey)
  End Function
  Protected Sub F_DashboardID_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles F_DashboardID.TextChanged
    Session("F_DashboardID") = F_DashboardID.Text
    Session("F_DashboardID_Display") = F_DashboardID_Display.Text
    InitGridPage()
  End Sub
  <System.Web.Services.WebMethod()> _
  <System.Web.Script.Services.ScriptMethod()> _
  Public Shared Function DashboardIDCompletionList(ByVal prefixText As String, ByVal count As Integer, ByVal contextKey As String) As String()
    Return SIS.WF.wfDashboards.SelectwfDashboardsAutoCompleteList(prefixText, count, contextKey)
  End Function
  Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
    F_UserID_Display.Text = String.Empty
    If Not Session("F_UserID_Display") Is Nothing Then
      If Session("F_UserID_Display") <> String.Empty Then
        F_UserID_Display.Text = Session("F_UserID_Display")
      End If
    End If
    F_UserID.Text = String.Empty
    If Not Session("F_UserID") Is Nothing Then
      If Session("F_UserID") <> String.Empty Then
        F_UserID.Text = Session("F_UserID")
      End If
    End If
    Dim strScriptUserID As String = "<script type=""text/javascript""> " & _
      "function ACEUserID_Selected(sender, e) {" & _
      "  var F_UserID = $get('" & F_UserID.ClientID & "');" & _
      "  var F_UserID_Display = $get('" & F_UserID_Display.ClientID & "');" & _
      "  var retval = e.get_value();" & _
      "  var p = retval.split('|');" & _
      "  F_UserID.value = p[0];" & _
      "  F_UserID_Display.innerHTML = e.get_text();" & _
      "}" & _
      "</script>"
      If Not Page.ClientScript.IsClientScriptBlockRegistered("F_UserID") Then
        Page.ClientScript.RegisterClientScriptBlock(GetType(System.String), "F_UserID", strScriptUserID)
      End If
    Dim strScriptPopulatingUserID As String = "<script type=""text/javascript""> " & _
      "function ACEUserID_Populating(o,e) {" & _
      "  var p = $get('" & F_UserID.ClientID & "');" & _
      "  p.style.backgroundImage  = 'url(../../images/loader.gif)';" & _
      "  p.style.backgroundRepeat= 'no-repeat';" & _
      "  p.style.backgroundPosition = 'right';" & _
      "  o._contextKey = '';" & _
      "}" & _
      "function ACEUserID_Populated(o,e) {" & _
      "  var p = $get('" & F_UserID.ClientID & "');" & _
      "  p.style.backgroundImage  = 'none';" & _
      "}" & _
      "</script>"
      If Not Page.ClientScript.IsClientScriptBlockRegistered("F_UserIDPopulating") Then
        Page.ClientScript.RegisterClientScriptBlock(GetType(System.String), "F_UserIDPopulating", strScriptPopulatingUserID)
      End If
    F_DashboardID_Display.Text = String.Empty
    If Not Session("F_DashboardID_Display") Is Nothing Then
      If Session("F_DashboardID_Display") <> String.Empty Then
        F_DashboardID_Display.Text = Session("F_DashboardID_Display")
      End If
    End If
    F_DashboardID.Text = String.Empty
    If Not Session("F_DashboardID") Is Nothing Then
      If Session("F_DashboardID") <> String.Empty Then
        F_DashboardID.Text = Session("F_DashboardID")
      End If
    End If
    Dim strScriptDashboardID As String = "<script type=""text/javascript""> " & _
      "function ACEDashboardID_Selected(sender, e) {" & _
      "  var F_DashboardID = $get('" & F_DashboardID.ClientID & "');" & _
      "  var F_DashboardID_Display = $get('" & F_DashboardID_Display.ClientID & "');" & _
      "  var retval = e.get_value();" & _
      "  var p = retval.split('|');" & _
      "  F_DashboardID.value = p[0];" & _
      "  F_DashboardID_Display.innerHTML = e.get_text();" & _
      "}" & _
      "</script>"
      If Not Page.ClientScript.IsClientScriptBlockRegistered("F_DashboardID") Then
        Page.ClientScript.RegisterClientScriptBlock(GetType(System.String), "F_DashboardID", strScriptDashboardID)
      End If
    Dim strScriptPopulatingDashboardID As String = "<script type=""text/javascript""> " & _
      "function ACEDashboardID_Populating(o,e) {" & _
      "  var p = $get('" & F_DashboardID.ClientID & "');" & _
      "  p.style.backgroundImage  = 'url(../../images/loader.gif)';" & _
      "  p.style.backgroundRepeat= 'no-repeat';" & _
      "  p.style.backgroundPosition = 'right';" & _
      "  o._contextKey = '';" & _
      "}" & _
      "function ACEDashboardID_Populated(o,e) {" & _
      "  var p = $get('" & F_DashboardID.ClientID & "');" & _
      "  p.style.backgroundImage  = 'none';" & _
      "}" & _
      "</script>"
      If Not Page.ClientScript.IsClientScriptBlockRegistered("F_DashboardIDPopulating") Then
        Page.ClientScript.RegisterClientScriptBlock(GetType(System.String), "F_DashboardIDPopulating", strScriptPopulatingDashboardID)
      End If
    Dim validateScriptUserID As String = "<script type=""text/javascript"">" & _
      "  function validate_UserID(o) {" & _
      "    validated_FK_WF_UserDashboards_UserID_main = true;" & _
      "    validate_FK_WF_UserDashboards_UserID(o);" & _
      "  }" & _
      "</script>"
    If Not Page.ClientScript.IsClientScriptBlockRegistered("validateUserID") Then
      Page.ClientScript.RegisterClientScriptBlock(GetType(System.String), "validateUserID", validateScriptUserID)
    End If
    Dim validateScriptDashboardID As String = "<script type=""text/javascript"">" & _
      "  function validate_DashboardID(o) {" & _
      "    validated_FK_WF_UserDashboards_DashboardID_main = true;" & _
      "    validate_FK_WF_UserDashboards_DashboardID(o);" & _
      "  }" & _
      "</script>"
    If Not Page.ClientScript.IsClientScriptBlockRegistered("validateDashboardID") Then
      Page.ClientScript.RegisterClientScriptBlock(GetType(System.String), "validateDashboardID", validateScriptDashboardID)
    End If
    Dim validateScriptFK_WF_UserDashboards_UserID As String = "<script type=""text/javascript"">" & _
      "  function validate_FK_WF_UserDashboards_UserID(o) {" & _
      "    var value = o.id;" & _
      "    var UserID = $get('" & F_UserID.ClientID & "');" & _
      "    try{" & _
      "    if(UserID.value==''){" & _
      "      if(validated_FK_WF_UserDashboards_UserID.main){" & _
      "        var o_d = $get(o.id +'_Display');" & _
      "        try{o_d.innerHTML = '';}catch(ex){}" & _
      "      }" & _
      "    }" & _
      "    value = value + ',' + UserID.value ;" & _
      "    }catch(ex){}" & _
      "    o.style.backgroundImage  = 'url(../../images/pkloader.gif)';" & _
      "    o.style.backgroundRepeat= 'no-repeat';" & _
      "    o.style.backgroundPosition = 'right';" & _
      "    PageMethods.validate_FK_WF_UserDashboards_UserID(value, validated_FK_WF_UserDashboards_UserID);" & _
      "  }" & _
      "  validated_FK_WF_UserDashboards_UserID_main = false;" & _
      "  function validated_FK_WF_UserDashboards_UserID(result) {" & _
      "    var p = result.split('|');" & _
      "    var o = $get(p[1]);" & _
      "    var o_d = $get(p[1]+'_Display');" & _
      "    try{o_d.innerHTML = p[2];}catch(ex){}" & _
      "    o.style.backgroundImage  = 'none';" & _
      "    if(p[0]=='1'){" & _
      "      o.value='';" & _
      "      try{o_d.innerHTML = '';}catch(ex){}" & _
      "      __doPostBack(o.id, o.value);" & _
      "    }" & _
      "    else" & _
      "      __doPostBack(o.id, o.value);" & _
      "  }" & _
      "</script>"
    If Not Page.ClientScript.IsClientScriptBlockRegistered("validateFK_WF_UserDashboards_UserID") Then
      Page.ClientScript.RegisterClientScriptBlock(GetType(System.String), "validateFK_WF_UserDashboards_UserID", validateScriptFK_WF_UserDashboards_UserID)
    End If
    Dim validateScriptFK_WF_UserDashboards_DashboardID As String = "<script type=""text/javascript"">" & _
      "  function validate_FK_WF_UserDashboards_DashboardID(o) {" & _
      "    var value = o.id;" & _
      "    var DashboardID = $get('" & F_DashboardID.ClientID & "');" & _
      "    try{" & _
      "    if(DashboardID.value==''){" & _
      "      if(validated_FK_WF_UserDashboards_DashboardID.main){" & _
      "        var o_d = $get(o.id +'_Display');" & _
      "        try{o_d.innerHTML = '';}catch(ex){}" & _
      "      }" & _
      "    }" & _
      "    value = value + ',' + DashboardID.value ;" & _
      "    }catch(ex){}" & _
      "    o.style.backgroundImage  = 'url(../../images/pkloader.gif)';" & _
      "    o.style.backgroundRepeat= 'no-repeat';" & _
      "    o.style.backgroundPosition = 'right';" & _
      "    PageMethods.validate_FK_WF_UserDashboards_DashboardID(value, validated_FK_WF_UserDashboards_DashboardID);" & _
      "  }" & _
      "  validated_FK_WF_UserDashboards_DashboardID_main = false;" & _
      "  function validated_FK_WF_UserDashboards_DashboardID(result) {" & _
      "    var p = result.split('|');" & _
      "    var o = $get(p[1]);" & _
      "    var o_d = $get(p[1]+'_Display');" & _
      "    try{o_d.innerHTML = p[2];}catch(ex){}" & _
      "    o.style.backgroundImage  = 'none';" & _
      "    if(p[0]=='1'){" & _
      "      o.value='';" & _
      "      try{o_d.innerHTML = '';}catch(ex){}" & _
      "      __doPostBack(o.id, o.value);" & _
      "    }" & _
      "    else" & _
      "      __doPostBack(o.id, o.value);" & _
      "  }" & _
      "</script>"
    If Not Page.ClientScript.IsClientScriptBlockRegistered("validateFK_WF_UserDashboards_DashboardID") Then
      Page.ClientScript.RegisterClientScriptBlock(GetType(System.String), "validateFK_WF_UserDashboards_DashboardID", validateScriptFK_WF_UserDashboards_DashboardID)
    End If
  End Sub
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

  Private Sub cmdNewUserDB_Click(sender As Object, e As EventArgs) Handles cmdNewUserDB.Click
    Dim UserID As String = F_UserID.Text
    Dim DashboardID As String = F_DashboardID.Text
    If DashboardID = "" Then
      DashboardID = "0"
    End If
    Dim mPage As Integer = 0
    Dim mSize As Integer = 20
    Dim uDBs As List(Of SIS.WF.wfUserDashboards) = SIS.WF.wfUserDashboards.UZ_wfUserDashboardsSelectList(mPage, mSize, "", False, "", UserID, DashboardID)
    Do While uDBs.Count > 0
      For Each uDB As SIS.WF.wfUserDashboards In uDBs
        '1.Delete all user db rows
        Dim uDBrs As List(Of SIS.WF.wfnewUserDB) = SIS.WF.wfnewUserDB.UZ_wfnewUserDBSelectList(0, 9999, "", False, "", uDB.UserID, uDB.DashboardID, 0)
        For Each uDBr As SIS.WF.wfnewUserDB In uDBrs
          SIS.WF.wfnewUserDB.UZ_wfnewUserDBDelete(uDBr)
        Next
        '2. Get Dashboard Def
        'Dim db As SIS.WF.wfDashboards = uDB.FK_WF_UserDashboards_DashboardID
        '3. Get Dashboard Rows Def
        Dim dbRs As List(Of SIS.WF.wfDBRows) = SIS.WF.wfDBRows.UZ_wfDBRowsSelectList(0, 9999, "", False, "", uDB.DashboardID)
        '4. Create new rows for user where dbrowtype is box
        For Each dbr As SIS.WF.wfDBRows In dbRs
          If dbr.DBRowTypeID <> wfRowTypes.BoxType Then Continue For
          Dim tmp As New SIS.WF.wfnewUserDB
          Try
            With tmp
              .UserID = uDB.UserID
              .DashboardID = dbr.DashboardID
              .DBRows = dbr.DBRows
              .IsLeft = dbr.IsLeft
              If dbr.IsLeft Then
                .DataSource = IIf(dbr.FK_WF_DBRows_TotSqlIDLeft.FromERP, "BaaN", "Joomla")
                .AppName_Left = dbr.AppNameLeft
                Try
                  .vTOTSQLl = dbr.FK_WF_DBRows_TotSqlIDLeft.getDataSQL(uDB.UserID)
                Catch ex As Exception
                  .vTOTSQLl = "select 1 as [COUNT]"
                End Try
                Try
                  .vREDSQLl = dbr.FK_WF_DBRows_RedSqlIDLeft.getDataSQL(uDB.UserID)
                Catch ex As Exception
                  .vREDSQLl = "select 1 as [COUNT]"
                End Try
                Try
                  .vAMBSQLl = dbr.FK_WF_DBRows_AmbSqlIDLeft.getDataSQL(uDB.UserID)
                Catch ex As Exception
                  .vAMBSQLl = "select 1 as [COUNT]"
                End Try
                Try
                  .vGRESQLl = dbr.FK_WF_DBRows_GreSqlIDLeft.getDataSQL(uDB.UserID)
                Catch ex As Exception
                  .vGRESQLl = "select 1 as [COUNT]"
                End Try
              End If
              .IsRight = dbr.IsRight
              If dbr.IsRight Then
                .DataSource = IIf(dbr.FK_WF_DBRows_TotSqlIDRight.FromERP, "BaaN", "Joomla")
                .AppName_Right = dbr.AppNameRight
                Try
                  .vTOTSQLr = dbr.FK_WF_DBRows_TotSqlIDRight.getDataSQL(uDB.UserID)
                Catch ex As Exception
                  .vTOTSQLr = "select 1 as [COUNT]"
                End Try
                Try
                  .vREDSQLr = dbr.FK_WF_DBRows_RedSqlIDRight.getDataSQL(uDB.UserID)
                Catch ex As Exception
                  .vREDSQLr = "select 1 as [COUNT]"
                End Try
                Try
                  .vAMBSQLr = dbr.FK_WF_DBRows_AmbSqlIDRight.getDataSQL(uDB.UserID)
                Catch ex As Exception
                  .vAMBSQLr = "select 1 as [COUNT]"
                End Try
                Try
                  .vGRESQLr = dbr.FK_WF_DBRows_GreSqlIDRight.getDataSQL(uDB.UserID)
                Catch ex As Exception
                  .vGRESQLr = "select 1 as [COUNT]"
                End Try
              End If
            End With
            SIS.WF.wfnewUserDB.InsertData(tmp)
          Catch ex As Exception
            Dim aa As String = ex.Message
          End Try
        Next
      Next
      mPage += mSize
      uDBs = SIS.WF.wfUserDashboards.UZ_wfUserDashboardsSelectList(mPage, mSize, "", False, "", UserID, DashboardID)
    Loop
  End Sub
End Class

Imports System.Web.Script.Serialization
Partial Class GF_wfnewUserDB
  Inherits SIS.SYS.GridBase
  Private _InfoUrl As String = "~/WF_Main/App_Display/DF_wfnewUserDB.aspx"
  Protected Sub Info_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)
    Dim oBut As ImageButton = CType(sender, ImageButton)
    Dim aVal() As String = oBut.CommandArgument.ToString.Split(",".ToCharArray)
    Dim RedirectUrl As String = _InfoUrl  & "?UserID=" & aVal(0) & "&DashboardID=" & aVal(1) & "&DBRows=" & aVal(2)
    Response.Redirect(RedirectUrl)
  End Sub
  Protected Sub GVwfnewUserDB_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GVwfnewUserDB.RowCommand
    If e.CommandName.ToLower = "lgedit".ToLower Then
      Try
        Dim UserID As String = GVwfnewUserDB.DataKeys(e.CommandArgument).Values("UserID")  
        Dim DashboardID As Int32 = GVwfnewUserDB.DataKeys(e.CommandArgument).Values("DashboardID")  
        Dim DBRows As Int32 = GVwfnewUserDB.DataKeys(e.CommandArgument).Values("DBRows")  
        Dim RedirectUrl As String = TBLwfnewUserDB.EditUrl & "?UserID=" & UserID & "&DashboardID=" & DashboardID & "&DBRows=" & DBRows
        Response.Redirect(RedirectUrl)
      Catch ex As Exception
        ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "", "alert('" & New JavaScriptSerializer().Serialize(ex.Message) & "');", True)
      End Try
    End If
  End Sub
  Protected Sub GVwfnewUserDB_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles GVwfnewUserDB.Init
    DataClassName = "GwfnewUserDB"
    SetGridView = GVwfnewUserDB
  End Sub
  Protected Sub TBLwfnewUserDB_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles TBLwfnewUserDB.Init
    SetToolBar = TBLwfnewUserDB
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
  Protected Sub F_DBRows_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles F_DBRows.TextChanged
    Session("F_DBRows") = F_DBRows.Text
    Session("F_DBRows_Display") = F_DBRows_Display.Text
    InitGridPage()
  End Sub
  <System.Web.Services.WebMethod()> _
  <System.Web.Script.Services.ScriptMethod()> _
  Public Shared Function DBRowsCompletionList(ByVal prefixText As String, ByVal count As Integer, ByVal contextKey As String) As String()
    Return SIS.WF.wfDBRows.SelectwfDBRowsAutoCompleteList(prefixText, count, contextKey)
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
    F_DBRows_Display.Text = String.Empty
    If Not Session("F_DBRows_Display") Is Nothing Then
      If Session("F_DBRows_Display") <> String.Empty Then
        F_DBRows_Display.Text = Session("F_DBRows_Display")
      End If
    End If
    F_DBRows.Text = String.Empty
    If Not Session("F_DBRows") Is Nothing Then
      If Session("F_DBRows") <> String.Empty Then
        F_DBRows.Text = Session("F_DBRows")
      End If
    End If
    Dim strScriptDBRows As String = "<script type=""text/javascript""> " & _
      "function ACEDBRows_Selected(sender, e) {" & _
      "  var F_DBRows = $get('" & F_DBRows.ClientID & "');" & _
      "  var F_DBRows_Display = $get('" & F_DBRows_Display.ClientID & "');" & _
      "  var retval = e.get_value();" & _
      "  var p = retval.split('|');" & _
      "  F_DBRows.value = p[1];" & _
      "  F_DBRows_Display.innerHTML = e.get_text();" & _
      "}" & _
      "</script>"
      If Not Page.ClientScript.IsClientScriptBlockRegistered("F_DBRows") Then
        Page.ClientScript.RegisterClientScriptBlock(GetType(System.String), "F_DBRows", strScriptDBRows)
      End If
    Dim strScriptPopulatingDBRows As String = "<script type=""text/javascript""> " & _
      "function ACEDBRows_Populating(o,e) {" & _
      "  var p = $get('" & F_DBRows.ClientID & "');" & _
      "  p.style.backgroundImage  = 'url(../../images/loader.gif)';" & _
      "  p.style.backgroundRepeat= 'no-repeat';" & _
      "  p.style.backgroundPosition = 'right';" & _
      "  o._contextKey = '';" & _
      "}" & _
      "function ACEDBRows_Populated(o,e) {" & _
      "  var p = $get('" & F_DBRows.ClientID & "');" & _
      "  p.style.backgroundImage  = 'none';" & _
      "}" & _
      "</script>"
      If Not Page.ClientScript.IsClientScriptBlockRegistered("F_DBRowsPopulating") Then
        Page.ClientScript.RegisterClientScriptBlock(GetType(System.String), "F_DBRowsPopulating", strScriptPopulatingDBRows)
      End If
    Dim validateScriptUserID As String = "<script type=""text/javascript"">" & _
      "  function validate_UserID(o) {" & _
      "    validated_FK_WF_newUserDB_UserID_main = true;" & _
      "    validate_FK_WF_newUserDB_UserID(o);" & _
      "  }" & _
      "</script>"
    If Not Page.ClientScript.IsClientScriptBlockRegistered("validateUserID") Then
      Page.ClientScript.RegisterClientScriptBlock(GetType(System.String), "validateUserID", validateScriptUserID)
    End If
    Dim validateScriptDashboardID As String = "<script type=""text/javascript"">" & _
      "  function validate_DashboardID(o) {" & _
      "    validated_FK_WF_newUserDB_DashboardID_main = true;" & _
      "    validate_FK_WF_newUserDB_DashboardID(o);" & _
      "  }" & _
      "</script>"
    If Not Page.ClientScript.IsClientScriptBlockRegistered("validateDashboardID") Then
      Page.ClientScript.RegisterClientScriptBlock(GetType(System.String), "validateDashboardID", validateScriptDashboardID)
    End If
    Dim validateScriptDBRows As String = "<script type=""text/javascript"">" & _
      "  function validate_DBRows(o) {" & _
      "    validated_FK_WF_newUserDB_DBRows_main = true;" & _
      "    validate_FK_WF_newUserDB_DBRows(o);" & _
      "  }" & _
      "</script>"
    If Not Page.ClientScript.IsClientScriptBlockRegistered("validateDBRows") Then
      Page.ClientScript.RegisterClientScriptBlock(GetType(System.String), "validateDBRows", validateScriptDBRows)
    End If
    Dim validateScriptFK_WF_newUserDB_UserID As String = "<script type=""text/javascript"">" & _
      "  function validate_FK_WF_newUserDB_UserID(o) {" & _
      "    var value = o.id;" & _
      "    var UserID = $get('" & F_UserID.ClientID & "');" & _
      "    try{" & _
      "    if(UserID.value==''){" & _
      "      if(validated_FK_WF_newUserDB_UserID.main){" & _
      "        var o_d = $get(o.id +'_Display');" & _
      "        try{o_d.innerHTML = '';}catch(ex){}" & _
      "      }" & _
      "    }" & _
      "    value = value + ',' + UserID.value ;" & _
      "    }catch(ex){}" & _
      "    o.style.backgroundImage  = 'url(../../images/pkloader.gif)';" & _
      "    o.style.backgroundRepeat= 'no-repeat';" & _
      "    o.style.backgroundPosition = 'right';" & _
      "    PageMethods.validate_FK_WF_newUserDB_UserID(value, validated_FK_WF_newUserDB_UserID);" & _
      "  }" & _
      "  validated_FK_WF_newUserDB_UserID_main = false;" & _
      "  function validated_FK_WF_newUserDB_UserID(result) {" & _
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
    If Not Page.ClientScript.IsClientScriptBlockRegistered("validateFK_WF_newUserDB_UserID") Then
      Page.ClientScript.RegisterClientScriptBlock(GetType(System.String), "validateFK_WF_newUserDB_UserID", validateScriptFK_WF_newUserDB_UserID)
    End If
    Dim validateScriptFK_WF_newUserDB_DashboardID As String = "<script type=""text/javascript"">" & _
      "  function validate_FK_WF_newUserDB_DashboardID(o) {" & _
      "    var value = o.id;" & _
      "    var DashboardID = $get('" & F_DashboardID.ClientID & "');" & _
      "    try{" & _
      "    if(DashboardID.value==''){" & _
      "      if(validated_FK_WF_newUserDB_DashboardID.main){" & _
      "        var o_d = $get(o.id +'_Display');" & _
      "        try{o_d.innerHTML = '';}catch(ex){}" & _
      "      }" & _
      "    }" & _
      "    value = value + ',' + DashboardID.value ;" & _
      "    }catch(ex){}" & _
      "    o.style.backgroundImage  = 'url(../../images/pkloader.gif)';" & _
      "    o.style.backgroundRepeat= 'no-repeat';" & _
      "    o.style.backgroundPosition = 'right';" & _
      "    PageMethods.validate_FK_WF_newUserDB_DashboardID(value, validated_FK_WF_newUserDB_DashboardID);" & _
      "  }" & _
      "  validated_FK_WF_newUserDB_DashboardID_main = false;" & _
      "  function validated_FK_WF_newUserDB_DashboardID(result) {" & _
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
    If Not Page.ClientScript.IsClientScriptBlockRegistered("validateFK_WF_newUserDB_DashboardID") Then
      Page.ClientScript.RegisterClientScriptBlock(GetType(System.String), "validateFK_WF_newUserDB_DashboardID", validateScriptFK_WF_newUserDB_DashboardID)
    End If
    Dim validateScriptFK_WF_newUserDB_DBRows As String = "<script type=""text/javascript"">" & _
      "  function validate_FK_WF_newUserDB_DBRows(o) {" & _
      "    var value = o.id;" & _
      "    var DashboardID = $get('" & F_DashboardID.ClientID & "');" & _
      "    try{" & _
      "    if(DashboardID.value==''){" & _
      "      if(validated_FK_WF_newUserDB_DBRows.main){" & _
      "        var o_d = $get(o.id +'_Display');" & _
      "        try{o_d.innerHTML = '';}catch(ex){}" & _
      "      }" & _
      "    }" & _
      "    value = value + ',' + DashboardID.value ;" & _
      "    }catch(ex){}" & _
      "    var DBRows = $get('" & F_DBRows.ClientID & "');" & _
      "    try{" & _
      "    if(DBRows.value==''){" & _
      "      if(validated_FK_WF_newUserDB_DBRows.main){" & _
      "        var o_d = $get(o.id +'_Display');" & _
      "        try{o_d.innerHTML = '';}catch(ex){}" & _
      "      }" & _
      "    }" & _
      "    value = value + ',' + DBRows.value ;" & _
      "    }catch(ex){}" & _
      "    o.style.backgroundImage  = 'url(../../images/pkloader.gif)';" & _
      "    o.style.backgroundRepeat= 'no-repeat';" & _
      "    o.style.backgroundPosition = 'right';" & _
      "    PageMethods.validate_FK_WF_newUserDB_DBRows(value, validated_FK_WF_newUserDB_DBRows);" & _
      "  }" & _
      "  validated_FK_WF_newUserDB_DBRows_main = false;" & _
      "  function validated_FK_WF_newUserDB_DBRows(result) {" & _
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
    If Not Page.ClientScript.IsClientScriptBlockRegistered("validateFK_WF_newUserDB_DBRows") Then
      Page.ClientScript.RegisterClientScriptBlock(GetType(System.String), "validateFK_WF_newUserDB_DBRows", validateScriptFK_WF_newUserDB_DBRows)
    End If
  End Sub
  <System.Web.Services.WebMethod()> _
  Public Shared Function validate_FK_WF_newUserDB_UserID(ByVal value As String) As String
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
  Public Shared Function validate_FK_WF_newUserDB_DashboardID(ByVal value As String) As String
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
  Public Shared Function validate_FK_WF_newUserDB_DBRows(ByVal value As String) As String
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

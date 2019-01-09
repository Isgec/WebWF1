Imports System.Web.Script.Serialization
Partial Class GF_wfDBRows
  Inherits SIS.SYS.GridBase
  Private _InfoUrl As String = "~/WF_Main/App_Display/DF_wfDBRows.aspx"
  Protected Sub Info_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs)
    Dim oBut As ImageButton = CType(sender, ImageButton)
    Dim aVal() As String = oBut.CommandArgument.ToString.Split(",".ToCharArray)
    Dim RedirectUrl As String = _InfoUrl  & "?DashboardID=" & aVal(0) & "&DBRows=" & aVal(1)
    Response.Redirect(RedirectUrl)
  End Sub
  Protected Sub GVwfDBRows_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GVwfDBRows.RowCommand
    If e.CommandName.ToLower = "lgedit".ToLower Then
      Try
        Dim DashboardID As Int32 = GVwfDBRows.DataKeys(e.CommandArgument).Values("DashboardID")  
        Dim DBRows As Int32 = GVwfDBRows.DataKeys(e.CommandArgument).Values("DBRows")  
        Dim RedirectUrl As String = TBLwfDBRows.EditUrl & "?DashboardID=" & DashboardID & "&DBRows=" & DBRows
        Response.Redirect(RedirectUrl)
      Catch ex As Exception
        ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "", "alert('" & New JavaScriptSerializer().Serialize(ex.Message) & "');", True)
      End Try
    End If
  End Sub
  Protected Sub GVwfDBRows_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles GVwfDBRows.Init
    DataClassName = "GwfDBRows"
    SetGridView = GVwfDBRows
  End Sub
  Protected Sub TBLwfDBRows_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles TBLwfDBRows.Init
    SetToolBar = TBLwfDBRows
  End Sub
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
    Dim validateScriptDashboardID As String = "<script type=""text/javascript"">" & _
      "  function validate_DashboardID(o) {" & _
      "    validated_FK_WF_DBRows_DashboardID_main = true;" & _
      "    validate_FK_WF_DBRows_DashboardID(o);" & _
      "  }" & _
      "</script>"
    If Not Page.ClientScript.IsClientScriptBlockRegistered("validateDashboardID") Then
      Page.ClientScript.RegisterClientScriptBlock(GetType(System.String), "validateDashboardID", validateScriptDashboardID)
    End If
    Dim validateScriptFK_WF_DBRows_DashboardID As String = "<script type=""text/javascript"">" & _
      "  function validate_FK_WF_DBRows_DashboardID(o) {" & _
      "    var value = o.id;" & _
      "    var DashboardID = $get('" & F_DashboardID.ClientID & "');" & _
      "    try{" & _
      "    if(DashboardID.value==''){" & _
      "      if(validated_FK_WF_DBRows_DashboardID.main){" & _
      "        var o_d = $get(o.id +'_Display');" & _
      "        try{o_d.innerHTML = '';}catch(ex){}" & _
      "      }" & _
      "    }" & _
      "    value = value + ',' + DashboardID.value ;" & _
      "    }catch(ex){}" & _
      "    o.style.backgroundImage  = 'url(../../images/pkloader.gif)';" & _
      "    o.style.backgroundRepeat= 'no-repeat';" & _
      "    o.style.backgroundPosition = 'right';" & _
      "    PageMethods.validate_FK_WF_DBRows_DashboardID(value, validated_FK_WF_DBRows_DashboardID);" & _
      "  }" & _
      "  validated_FK_WF_DBRows_DashboardID_main = false;" & _
      "  function validated_FK_WF_DBRows_DashboardID(result) {" & _
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
    If Not Page.ClientScript.IsClientScriptBlockRegistered("validateFK_WF_DBRows_DashboardID") Then
      Page.ClientScript.RegisterClientScriptBlock(GetType(System.String), "validateFK_WF_DBRows_DashboardID", validateScriptFK_WF_DBRows_DashboardID)
    End If
  End Sub
  <System.Web.Services.WebMethod()> _
  Public Shared Function validate_FK_WF_DBRows_DashboardID(ByVal value As String) As String
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

<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="AF_wfUserDashboards.aspx.vb" Inherits="AF_wfUserDashboards" title="Add: User Dashboards" %>
<asp:Content ID="CPHwfUserDashboards" ContentPlaceHolderID="cph1" Runat="Server">
<div id="div1" class="ui-widget-content page">
<div id="div2" class="caption">
    <asp:Label ID="LabelwfUserDashboards" runat="server" Text="&nbsp;Add: User Dashboards"></asp:Label>
</div>
<div id="div3" class="pagedata">
<asp:UpdatePanel ID="UPNLwfUserDashboards" runat="server" >
  <ContentTemplate>
  <LGM:ToolBar0 
    ID = "TBLwfUserDashboards"
    ToolType = "lgNMAdd"
    InsertAndStay = "False"
    AfterInsertURL = "~/WF_Main/App_Edit/EF_wfUserDashboards.aspx"
    ValidationGroup = "wfUserDashboards"
    runat = "server" />
<asp:FormView ID="FVwfUserDashboards"
  runat = "server"
  DataKeyNames = "UserID,DashboardID"
  DataSourceID = "ODSwfUserDashboards"
  DefaultMode = "Insert" CssClass="sis_formview">
  <InsertItemTemplate>
    <div id="frmdiv" class="ui-widget-content minipage">
    <asp:Label ID="L_ErrMsgwfUserDashboards" runat="server" ForeColor="Red" Font-Bold="true" Text=""></asp:Label>
    <table style="margin:auto;border: solid 1pt lightgrey">
      <tr>
        <td class="alignright">
          <b><asp:Label ID="L_UserID" ForeColor="#CC6633" runat="server" Text="User :" /><span style="color:red">*</span></b>
        </td>
        <td colspan="3">
          <asp:TextBox
            ID = "F_UserID"
            CssClass = "mypktxt"
            Width="72px"
            Text='<%# Bind("UserID") %>'
            AutoCompleteType = "None"
            onfocus = "return this.select();"
            ToolTip="Enter value for User."
            ValidationGroup = "wfUserDashboards"
            onblur= "script_wfUserDashboards.validate_UserID(this);"
            Runat="Server" />
          <asp:RequiredFieldValidator 
            ID = "RFVUserID"
            runat = "server"
            ControlToValidate = "F_UserID"
            ErrorMessage = "<div class='errorLG'>Required!</div>"
            Display = "Dynamic"
            EnableClientScript = "true"
            ValidationGroup = "wfUserDashboards"
            SetFocusOnError="true" />
          <asp:Label
            ID = "F_UserID_Display"
            Text='<%# Eval("aspnet_users1_UserFullName") %>'
            CssClass="myLbl"
            Runat="Server" />
          <AJX:AutoCompleteExtender
            ID="ACEUserID"
            BehaviorID="B_ACEUserID"
            ContextKey=""
            UseContextKey="true"
            ServiceMethod="UserIDCompletionList"
            TargetControlID="F_UserID"
            EnableCaching="false"
            CompletionInterval="100"
            FirstRowSelected="true"
            MinimumPrefixLength="1"
            OnClientItemSelected="script_wfUserDashboards.ACEUserID_Selected"
            OnClientPopulating="script_wfUserDashboards.ACEUserID_Populating"
            OnClientPopulated="script_wfUserDashboards.ACEUserID_Populated"
            CompletionSetCount="10"
            CompletionListCssClass = "autocomplete_completionListElement"
            CompletionListItemCssClass = "autocomplete_listItem"
            CompletionListHighlightedItemCssClass = "autocomplete_highlightedListItem"
            Runat="Server" />
        </td>
      </tr>
      <tr>
        <td class="alignright">
          <b><asp:Label ID="L_DashboardID" ForeColor="#CC6633" runat="server" Text="Dashboard :" /><span style="color:red">*</span></b>
        </td>
        <td colspan="3">
          <asp:TextBox
            ID = "F_DashboardID"
            CssClass = "mypktxt"
            Width="88px"
            Text='<%# Bind("DashboardID") %>'
            AutoCompleteType = "None"
            onfocus = "return this.select();"
            ToolTip="Enter value for Dashboard."
            ValidationGroup = "wfUserDashboards"
            onblur= "script_wfUserDashboards.validate_DashboardID(this);"
            Runat="Server" />
          <asp:RequiredFieldValidator 
            ID = "RFVDashboardID"
            runat = "server"
            ControlToValidate = "F_DashboardID"
            ErrorMessage = "<div class='errorLG'>Required!</div>"
            Display = "Dynamic"
            EnableClientScript = "true"
            ValidationGroup = "wfUserDashboards"
            SetFocusOnError="true" />
          <asp:Label
            ID = "F_DashboardID_Display"
            Text='<%# Eval("WF_Dashboards2_DBDescription") %>'
            CssClass="myLbl"
            Runat="Server" />
          <AJX:AutoCompleteExtender
            ID="ACEDashboardID"
            BehaviorID="B_ACEDashboardID"
            ContextKey=""
            UseContextKey="true"
            ServiceMethod="DashboardIDCompletionList"
            TargetControlID="F_DashboardID"
            EnableCaching="false"
            CompletionInterval="100"
            FirstRowSelected="true"
            MinimumPrefixLength="1"
            OnClientItemSelected="script_wfUserDashboards.ACEDashboardID_Selected"
            OnClientPopulating="script_wfUserDashboards.ACEDashboardID_Populating"
            OnClientPopulated="script_wfUserDashboards.ACEDashboardID_Populated"
            CompletionSetCount="10"
            CompletionListCssClass = "autocomplete_completionListElement"
            CompletionListItemCssClass = "autocomplete_listItem"
            CompletionListHighlightedItemCssClass = "autocomplete_highlightedListItem"
            Runat="Server" />
        </td>
      </tr>
      <tr>
        <td class="alignright">
          <asp:Label ID="L_Active" runat="server" Text="Active :" />&nbsp;
        </td>
        <td colspan="3">
          <asp:CheckBox ID="F_Active"
           Checked='<%# Bind("Active") %>'
           CssClass = "mychk"
           runat="server" />
        </td>
      </tr>
      <tr>
        <td class="alignright">
          <asp:Label ID="L_ActionAllowed" runat="server" Text="Action Allowed :" />&nbsp;
        </td>
        <td colspan="3">
          <asp:CheckBox ID="F_ActionAllowed"
           Checked='<%# Bind("ActionAllowed") %>'
           CssClass = "mychk"
           runat="server" />
        </td>
      </tr>
      <tr>
        <td class="alignright">
          <asp:Label ID="L_UpdateAllowed" runat="server" Text="Update Allowed :" />&nbsp;
        </td>
        <td colspan="3">
          <asp:CheckBox ID="F_UpdateAllowed"
           Checked='<%# Bind("UpdateAllowed") %>'
           CssClass = "mychk"
           runat="server" />
        </td>
      </tr>
    </table>
    </div>
  </InsertItemTemplate>
</asp:FormView>
  </ContentTemplate>
</asp:UpdatePanel>
<asp:ObjectDataSource 
  ID = "ODSwfUserDashboards"
  DataObjectTypeName = "SIS.WF.wfUserDashboards"
  InsertMethod="UZ_wfUserDashboardsInsert"
  OldValuesParameterFormatString = "original_{0}"
  TypeName = "SIS.WF.wfUserDashboards"
  SelectMethod = "GetNewRecord"
  runat = "server" >
</asp:ObjectDataSource>
</div>
</div>
</asp:Content>

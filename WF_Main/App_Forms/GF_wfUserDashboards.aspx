<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="False" CodeFile="GF_wfUserDashboards.aspx.vb" Inherits="GF_wfUserDashboards" title="Maintain List: User Dashboards" %>
<asp:Content ID="CPHwfUserDashboards" ContentPlaceHolderID="cph1" Runat="Server">
<div class="ui-widget-content page">
<div class="caption">
    <asp:Label ID="LabelwfUserDashboards" runat="server" Text="&nbsp;List: User Dashboards"></asp:Label>
</div>
<div class="pagedata">
<asp:UpdatePanel ID="UPNLwfUserDashboards" runat="server">
  <ContentTemplate>
    <table width="100%"><tr><td class="sis_formview"> 
    <LGM:ToolBar0 
      ID = "TBLwfUserDashboards"
      ToolType = "lgNMGrid"
      EditUrl = "~/WF_Main/App_Edit/EF_wfUserDashboards.aspx"
      AddUrl = "~/WF_Main/App_Create/AF_wfUserDashboards.aspx?skip=1"
      ValidationGroup = "wfUserDashboards"
      runat = "server" />
    <asp:UpdateProgress ID="UPGSwfUserDashboards" runat="server" AssociatedUpdatePanelID="UPNLwfUserDashboards" DisplayAfter="100">
      <ProgressTemplate>
        <span style="color: #ff0033">Loading...</span>
      </ProgressTemplate>
    </asp:UpdateProgress>
    <asp:Panel ID="pnlH" runat="server" CssClass="cph_filter">
      <div style="padding: 5px; cursor: pointer; vertical-align: middle;">
        <div style="float: left;">Filter Records </div>
        <div style="float: left; margin-left: 20px;">
          <asp:Label ID="lblH" runat="server">(Show Filters...)</asp:Label>
        </div>
        <div style="float: right; vertical-align: middle;">
          <asp:ImageButton ID="imgH" runat="server" ImageUrl="~/images/ua.png" AlternateText="(Show Filters...)" />
        </div>
      </div>
    </asp:Panel>
    <asp:Panel ID="pnlD" runat="server" CssClass="cp_filter" Height="0">
    <table>
      <tr>
        <td class="alignright">
          <b><asp:Label ID="L_UserID" runat="server" Text="User :" /></b>
        </td>
        <td>
          <asp:TextBox
            ID = "F_UserID"
            CssClass = "mypktxt"
            Width="72px"
            Text=""
            onfocus = "return this.select();"
            AutoCompleteType = "None"
            onblur= "validate_UserID(this);"
            Runat="Server" />
          <asp:Label
            ID = "F_UserID_Display"
            Text=""
            Runat="Server" />
          <AJX:AutoCompleteExtender
            ID="ACEUserID"
            BehaviorID="B_ACEUserID"
            ContextKey=""
            UseContextKey="true"
            ServiceMethod="UserIDCompletionList"
            TargetControlID="F_UserID"
            CompletionInterval="100"
            FirstRowSelected="true"
            MinimumPrefixLength="1"
            OnClientItemSelected="ACEUserID_Selected"
            OnClientPopulating="ACEUserID_Populating"
            OnClientPopulated="ACEUserID_Populated"
            CompletionSetCount="10"
            CompletionListCssClass = "autocomplete_completionListElement"
            CompletionListItemCssClass = "autocomplete_listItem"
            CompletionListHighlightedItemCssClass = "autocomplete_highlightedListItem"
            Runat="Server" />
        </td>
      </tr>
      <tr>
        <td class="alignright">
          <b><asp:Label ID="L_DashboardID" runat="server" Text="Dashboard :" /></b>
        </td>
        <td>
          <asp:TextBox
            ID = "F_DashboardID"
            CssClass = "mypktxt"
            Width="88px"
            Text=""
            onfocus = "return this.select();"
            AutoCompleteType = "None"
            onblur= "validate_DashboardID(this);"
            Runat="Server" />
          <asp:Label
            ID = "F_DashboardID_Display"
            Text=""
            Runat="Server" />
          <AJX:AutoCompleteExtender
            ID="ACEDashboardID"
            BehaviorID="B_ACEDashboardID"
            ContextKey=""
            UseContextKey="true"
            ServiceMethod="DashboardIDCompletionList"
            TargetControlID="F_DashboardID"
            CompletionInterval="100"
            FirstRowSelected="true"
            MinimumPrefixLength="1"
            OnClientItemSelected="ACEDashboardID_Selected"
            OnClientPopulating="ACEDashboardID_Populating"
            OnClientPopulated="ACEDashboardID_Populated"
            CompletionSetCount="10"
            CompletionListCssClass = "autocomplete_completionListElement"
            CompletionListItemCssClass = "autocomplete_listItem"
            CompletionListHighlightedItemCssClass = "autocomplete_highlightedListItem"
            Runat="Server" />
        </td>
      </tr>
      <tr>
        <td colspan="2">
          <asp:Button ID="cmdNewUserDB" runat="server" OnClientClick="return confirm('Update New Users Table ? Check Filters, if Blank it will Re-Generate for all users.');" Text="Update Box Type Data for Users [As per above Filter-Blank for All]" />
        </td>
      </tr>
    </table>
    </asp:Panel>
    <AJX:CollapsiblePanelExtender ID="cpe1" runat="Server" TargetControlID="pnlD" ExpandControlID="pnlH" CollapseControlID="pnlH" Collapsed="True" TextLabelID="lblH" ImageControlID="imgH" ExpandedText="(Hide Filters...)" CollapsedText="(Show Filters...)" ExpandedImage="~/images/ua.png" CollapsedImage="~/images/da.png" SuppressPostBack="true" />
    <asp:GridView ID="GVwfUserDashboards" SkinID="gv_silver" runat="server" DataSourceID="ODSwfUserDashboards" DataKeyNames="UserID,DashboardID">
      <Columns>
        <asp:TemplateField HeaderText="EDIT">
          <ItemTemplate>
            <asp:ImageButton ID="cmdEditPage" ValidationGroup="Edit" runat="server" Visible='<%# EVal("Visible") %>' Enabled='<%# EVal("Enable") %>' AlternateText="Edit" ToolTip="Edit the record." SkinID="Edit" CommandName="lgEdit" CommandArgument='<%# Container.DataItemIndex %>' />
          </ItemTemplate>
          <ItemStyle CssClass="alignCenter" />
          <HeaderStyle HorizontalAlign="Center" Width="30px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="User" SortExpression="aspnet_users1_UserFullName">
          <ItemTemplate>
             <asp:Label ID="L_UserID" runat="server" ForeColor='<%# EVal("ForeColor") %>' Title='<%# EVal("UserID") %>' Text='<%# Eval("aspnet_users1_UserFullName") %>'></asp:Label>
          </ItemTemplate>
          <HeaderStyle Width="100px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Dashboard" SortExpression="WF_Dashboards2_DBDescription">
          <ItemTemplate>
             <asp:Label ID="L_DashboardID" runat="server" ForeColor='<%# EVal("ForeColor") %>' Title='<%# EVal("DashboardID") %>' Text='<%# Eval("WF_Dashboards2_DBDescription") %>'></asp:Label>
          </ItemTemplate>
          <HeaderStyle Width="100px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Active" SortExpression="Active">
          <ItemTemplate>
            <asp:Label ID="LabelActive" runat="server" ForeColor='<%# EVal("ForeColor") %>' Text='<%# Bind("Active") %>'></asp:Label>
          </ItemTemplate>
          <ItemStyle CssClass="alignCenter" />
        <HeaderStyle CssClass="alignCenter" Width="50px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Action Allowed" SortExpression="ActionAllowed">
          <ItemTemplate>
            <asp:Label ID="LabelActionAllowed" runat="server" ForeColor='<%# EVal("ForeColor") %>' Text='<%# Bind("ActionAllowed") %>'></asp:Label>
          </ItemTemplate>
          <ItemStyle CssClass="alignCenter" />
        <HeaderStyle CssClass="alignCenter" Width="50px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Update Allowed" SortExpression="UpdateAllowed">
          <ItemTemplate>
            <asp:Label ID="LabelUpdateAllowed" runat="server" ForeColor='<%# EVal("ForeColor") %>' Text='<%# Bind("UpdateAllowed") %>'></asp:Label>
          </ItemTemplate>
          <ItemStyle CssClass="alignCenter" />
        <HeaderStyle CssClass="alignCenter" Width="50px" />
        </asp:TemplateField>
      </Columns>
      <EmptyDataTemplate>
        <asp:Label ID="LabelEmpty" runat="server" Font-Size="Small" ForeColor="Red" Text="No record found !!!"></asp:Label>
      </EmptyDataTemplate>
    </asp:GridView>
    <asp:ObjectDataSource 
      ID = "ODSwfUserDashboards"
      runat = "server"
      DataObjectTypeName = "SIS.WF.wfUserDashboards"
      OldValuesParameterFormatString = "original_{0}"
      SelectMethod = "UZ_wfUserDashboardsSelectList"
      TypeName = "SIS.WF.wfUserDashboards"
      SelectCountMethod = "wfUserDashboardsSelectCount"
      SortParameterName="OrderBy" EnablePaging="True">
      <SelectParameters >
        <asp:ControlParameter ControlID="F_UserID" PropertyName="Text" Name="UserID" Type="String" Size="8" />
        <asp:ControlParameter ControlID="F_DashboardID" PropertyName="Text" Name="DashboardID" Type="Int32" Size="10" />
        <asp:Parameter Name="SearchState" Type="Boolean" Direction="Input" DefaultValue="false" />
        <asp:Parameter Name="SearchText" Type="String" Direction="Input" DefaultValue="" />
      </SelectParameters>
    </asp:ObjectDataSource>
    <br />
  </td></tr></table>
  </ContentTemplate>
  <Triggers>
    <asp:AsyncPostBackTrigger ControlID="GVwfUserDashboards" EventName="PageIndexChanged" />
    <asp:AsyncPostBackTrigger ControlID="F_UserID" />
    <asp:AsyncPostBackTrigger ControlID="F_DashboardID" />
  </Triggers>
</asp:UpdatePanel>
</div>
</div>
</asp:Content>

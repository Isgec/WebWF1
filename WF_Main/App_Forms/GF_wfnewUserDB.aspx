<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="False" CodeFile="GF_wfnewUserDB.aspx.vb" Inherits="GF_wfnewUserDB" title="Maintain List: User DB Rows [New]" %>
<asp:Content ID="CPHwfnewUserDB" ContentPlaceHolderID="cph1" Runat="Server">
<div class="ui-widget-content page">
<div class="caption">
    <asp:Label ID="LabelwfnewUserDB" runat="server" Text="&nbsp;List: User DB Rows [New]"></asp:Label>
</div>
<div class="pagedata">
<asp:UpdatePanel ID="UPNLwfnewUserDB" runat="server">
  <ContentTemplate>
    <table width="100%"><tr><td class="sis_formview"> 
    <LGM:ToolBar0 
      ID = "TBLwfnewUserDB"
      ToolType = "lgNMGrid"
      EditUrl = "~/WF_Main/App_Edit/EF_wfnewUserDB.aspx"
      AddUrl = "~/WF_Main/App_Create/AF_wfnewUserDB.aspx"
      ValidationGroup = "wfnewUserDB"
      runat = "server" />
    <asp:UpdateProgress ID="UPGSwfnewUserDB" runat="server" AssociatedUpdatePanelID="UPNLwfnewUserDB" DisplayAfter="100">
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
          <b><asp:Label ID="L_UserID" runat="server" Text="UserID :" /></b>
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
          <b><asp:Label ID="L_DashboardID" runat="server" Text="DashboardID :" /></b>
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
        <td class="alignright">
          <b><asp:Label ID="L_DBRows" runat="server" Text="DBRows :" /></b>
        </td>
        <td>
          <asp:TextBox
            ID = "F_DBRows"
            CssClass = "mypktxt"
            Width="88px"
            Text=""
            onfocus = "return this.select();"
            AutoCompleteType = "None"
            onblur= "validate_DBRows(this);"
            Runat="Server" />
          <asp:Label
            ID = "F_DBRows_Display"
            Text=""
            Runat="Server" />
          <AJX:AutoCompleteExtender
            ID="ACEDBRows"
            BehaviorID="B_ACEDBRows"
            ContextKey=""
            UseContextKey="true"
            ServiceMethod="DBRowsCompletionList"
            TargetControlID="F_DBRows"
            CompletionInterval="100"
            FirstRowSelected="true"
            MinimumPrefixLength="1"
            OnClientItemSelected="ACEDBRows_Selected"
            OnClientPopulating="ACEDBRows_Populating"
            OnClientPopulated="ACEDBRows_Populated"
            CompletionSetCount="10"
            CompletionListCssClass = "autocomplete_completionListElement"
            CompletionListItemCssClass = "autocomplete_listItem"
            CompletionListHighlightedItemCssClass = "autocomplete_highlightedListItem"
            Runat="Server" />
        </td>
      </tr>
    </table>
    </asp:Panel>
    <AJX:CollapsiblePanelExtender ID="cpe1" runat="Server" TargetControlID="pnlD" ExpandControlID="pnlH" CollapseControlID="pnlH" Collapsed="True" TextLabelID="lblH" ImageControlID="imgH" ExpandedText="(Hide Filters...)" CollapsedText="(Show Filters...)" ExpandedImage="~/images/ua.png" CollapsedImage="~/images/da.png" SuppressPostBack="true" />
    <asp:GridView ID="GVwfnewUserDB" SkinID="gv_silver" runat="server" DataSourceID="ODSwfnewUserDB" DataKeyNames="UserID,DashboardID,DBRows">
      <Columns>
        <asp:TemplateField HeaderText="EDIT">
          <ItemTemplate>
            <asp:ImageButton ID="cmdEditPage" ValidationGroup="Edit" runat="server" Visible='<%# EVal("Visible") %>' Enabled='<%# EVal("Enable") %>' AlternateText="Edit" ToolTip="Edit the record." SkinID="Edit" CommandName="lgEdit" CommandArgument='<%# Container.DataItemIndex %>' />
          </ItemTemplate>
          <ItemStyle CssClass="alignCenter" />
          <HeaderStyle HorizontalAlign="Center" Width="30px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="UserID" SortExpression="aspnet_users1_UserFullName">
          <ItemTemplate>
             <asp:Label ID="L_UserID" runat="server" ForeColor='<%# EVal("ForeColor") %>' Title='<%# EVal("UserID") %>' Text='<%# Eval("aspnet_users1_UserFullName") %>'></asp:Label>
          </ItemTemplate>
          <HeaderStyle Width="100px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="DashboardID" SortExpression="WF_Dashboards2_DBDescription">
          <ItemTemplate>
             <asp:Label ID="L_DashboardID" runat="server" ForeColor='<%# EVal("ForeColor") %>' Title='<%# EVal("DashboardID") %>' Text='<%# Eval("WF_Dashboards2_DBDescription") %>'></asp:Label>
          </ItemTemplate>
          <HeaderStyle Width="100px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="DBRows" SortExpression="WF_DBRows3_Description">
          <ItemTemplate>
             <asp:Label ID="L_DBRows" runat="server" ForeColor='<%# EVal("ForeColor") %>' Title='<%# EVal("DBRows") %>' Text='<%# Eval("WF_DBRows3_Description") %>'></asp:Label>
          </ItemTemplate>
          <HeaderStyle Width="100px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="IsLeft" SortExpression="IsLeft">
          <ItemTemplate>
            <asp:Label ID="LabelIsLeft" runat="server" ForeColor='<%# EVal("ForeColor") %>' Text='<%# Bind("IsLeft") %>'></asp:Label>
          </ItemTemplate>
          <ItemStyle CssClass="alignCenter" />
        <HeaderStyle CssClass="alignCenter" Width="50px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="AppName_Left" SortExpression="AppName_Left">
          <ItemTemplate>
            <asp:Label ID="LabelAppName_Left" runat="server" ForeColor='<%# EVal("ForeColor") %>' Text='<%# Bind("AppName_Left") %>'></asp:Label>
          </ItemTemplate>
          <ItemStyle CssClass="alignCenter" />
        <HeaderStyle CssClass="alignCenter" Width="100px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="IsRight" SortExpression="IsRight">
          <ItemTemplate>
            <asp:Label ID="LabelIsRight" runat="server" ForeColor='<%# EVal("ForeColor") %>' Text='<%# Bind("IsRight") %>'></asp:Label>
          </ItemTemplate>
          <ItemStyle CssClass="alignCenter" />
        <HeaderStyle CssClass="alignCenter" Width="50px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="AppName_Right" SortExpression="AppName_Right">
          <ItemTemplate>
            <asp:Label ID="LabelAppName_Right" runat="server" ForeColor='<%# EVal("ForeColor") %>' Text='<%# Bind("AppName_Right") %>'></asp:Label>
          </ItemTemplate>
          <ItemStyle CssClass="alignCenter" />
        <HeaderStyle CssClass="alignCenter" Width="100px" />
        </asp:TemplateField>
      </Columns>
      <EmptyDataTemplate>
        <asp:Label ID="LabelEmpty" runat="server" Font-Size="Small" ForeColor="Red" Text="No record found !!!"></asp:Label>
      </EmptyDataTemplate>
    </asp:GridView>
    <asp:ObjectDataSource 
      ID = "ODSwfnewUserDB"
      runat = "server"
      DataObjectTypeName = "SIS.WF.wfnewUserDB"
      OldValuesParameterFormatString = "original_{0}"
      SelectMethod = "UZ_wfnewUserDBSelectList"
      TypeName = "SIS.WF.wfnewUserDB"
      SelectCountMethod = "wfnewUserDBSelectCount"
      SortParameterName="OrderBy" EnablePaging="True">
      <SelectParameters >
        <asp:ControlParameter ControlID="F_UserID" PropertyName="Text" Name="UserID" Type="String" Size="8" />
        <asp:ControlParameter ControlID="F_DashboardID" PropertyName="Text" Name="DashboardID" Type="Int32" Size="10" />
        <asp:ControlParameter ControlID="F_DBRows" PropertyName="Text" Name="DBRows" Type="Int32" Size="10" />
        <asp:Parameter Name="SearchState" Type="Boolean" Direction="Input" DefaultValue="false" />
        <asp:Parameter Name="SearchText" Type="String" Direction="Input" DefaultValue="" />
      </SelectParameters>
    </asp:ObjectDataSource>
    <br />
  </td></tr></table>
  </ContentTemplate>
  <Triggers>
    <asp:AsyncPostBackTrigger ControlID="GVwfnewUserDB" EventName="PageIndexChanged" />
    <asp:AsyncPostBackTrigger ControlID="F_UserID" />
    <asp:AsyncPostBackTrigger ControlID="F_DashboardID" />
    <asp:AsyncPostBackTrigger ControlID="F_DBRows" />
  </Triggers>
</asp:UpdatePanel>
</div>
</div>
</asp:Content>

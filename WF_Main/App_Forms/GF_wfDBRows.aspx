<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="False" CodeFile="GF_wfDBRows.aspx.vb" Inherits="GF_wfDBRows" title="Maintain List: DB Rows" %>
<asp:Content ID="CPHwfDBRows" ContentPlaceHolderID="cph1" Runat="Server">
<div class="ui-widget-content page">
<div class="caption">
    <asp:Label ID="LabelwfDBRows" runat="server" Text="&nbsp;List: DB Rows"></asp:Label>
</div>
<div class="pagedata">
<asp:UpdatePanel ID="UPNLwfDBRows" runat="server">
  <ContentTemplate>
    <table width="100%"><tr><td class="sis_formview"> 
    <LGM:ToolBar0 
      ID = "TBLwfDBRows"
      ToolType = "lgNMGrid"
      EditUrl = "~/WF_Main/App_Edit/EF_wfDBRows.aspx"
      AddUrl = "~/WF_Main/App_Create/AF_wfDBRows.aspx?skip=1"
      AddPostBack = "True"
      ValidationGroup = "wfDBRows"
      runat = "server" />
    <asp:UpdateProgress ID="UPGSwfDBRows" runat="server" AssociatedUpdatePanelID="UPNLwfDBRows" DisplayAfter="100">
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
          <b><asp:Label ID="L_DashboardID" runat="server" Text="Dashboard ID :" /></b>
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
    </table>
    </asp:Panel>
    <AJX:CollapsiblePanelExtender ID="cpe1" runat="Server" TargetControlID="pnlD" ExpandControlID="pnlH" CollapseControlID="pnlH" Collapsed="True" TextLabelID="lblH" ImageControlID="imgH" ExpandedText="(Hide Filters...)" CollapsedText="(Show Filters...)" ExpandedImage="~/images/ua.png" CollapsedImage="~/images/da.png" SuppressPostBack="true" />
    <asp:GridView ID="GVwfDBRows" SkinID="gv_silver" runat="server" DataSourceID="ODSwfDBRows" DataKeyNames="DashboardID,DBRows">
      <Columns>
        <asp:TemplateField HeaderText="EDIT">
          <ItemTemplate>
            <asp:ImageButton ID="cmdEditPage" ValidationGroup="Edit" runat="server" Visible='<%# EVal("Visible") %>' Enabled='<%# EVal("Enable") %>' AlternateText="Edit" ToolTip="Edit the record." SkinID="Edit" CommandName="lgEdit" CommandArgument='<%# Container.DataItemIndex %>' />
          </ItemTemplate>
          <ItemStyle CssClass="alignCenter" />
          <HeaderStyle CssClass="alignCenter" Width="30px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Dashboard ID" SortExpression="WF_Dashboards1_DBDescription">
          <ItemTemplate>
             <asp:Label ID="L_DashboardID" runat="server" ForeColor='<%# EVal("ForeColor") %>' Title='<%# EVal("DashboardID") %>' Text='<%# Eval("WF_Dashboards1_DBDescription") %>'></asp:Label>
          </ItemTemplate>
          <HeaderStyle Width="100px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="DB Rows" SortExpression="DBRows">
          <ItemTemplate>
            <asp:Label ID="LabelDBRows" runat="server" ForeColor='<%# EVal("ForeColor") %>' Text='<%# Bind("DBRows") %>'></asp:Label>
          </ItemTemplate>
          <ItemStyle CssClass="alignright" />
          <HeaderStyle CssClass="alignright" Width="40px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Description" SortExpression="Description">
          <ItemTemplate>
            <asp:Label ID="LabelDescription" runat="server" ForeColor='<%# EVal("ForeColor") %>' Text='<%# Bind("Description") %>'></asp:Label>
          </ItemTemplate>
          <ItemStyle CssClass="" />
        <HeaderStyle CssClass="" Width="100px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Parent DB Rows" SortExpression="WF_DBRows2_Description">
          <ItemTemplate>
             <asp:Label ID="L_ParentDBRows" runat="server" ForeColor='<%# EVal("ForeColor") %>' Title='<%# EVal("ParentDBRows") %>' Text='<%# Eval("WF_DBRows2_Description") %>'></asp:Label>
          </ItemTemplate>
          <HeaderStyle Width="100px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="css Row" SortExpression="cssRow">
          <ItemTemplate>
            <asp:Label ID="LabelcssRow" runat="server" ForeColor='<%# EVal("ForeColor") %>' Text='<%# Bind("cssRow") %>'></asp:Label>
          </ItemTemplate>
          <ItemStyle CssClass="" />
        <HeaderStyle CssClass="" Width="100px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Sequence" SortExpression="Sequence">
          <ItemTemplate>
            <asp:Label ID="LabelSequence" runat="server" ForeColor='<%# EVal("ForeColor") %>' Text='<%# Bind("Sequence") %>'></asp:Label>
          </ItemTemplate>
          <ItemStyle CssClass="alignright" />
          <HeaderStyle CssClass="alignright" Width="80px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Convert For Graph" SortExpression="ConvertForGraph">
          <ItemTemplate>
            <asp:Label ID="LabelConvertForGraph" runat="server" ForeColor='<%# EVal("ForeColor") %>' Text='<%# Bind("ConvertForGraph") %>'></asp:Label>
          </ItemTemplate>
          <ItemStyle CssClass="" />
        <HeaderStyle CssClass="" Width="50px" />
        </asp:TemplateField>
      </Columns>
      <EmptyDataTemplate>
        <asp:Label ID="LabelEmpty" runat="server" Font-Size="Small" ForeColor="Red" Text="No record found !!!"></asp:Label>
      </EmptyDataTemplate>
    </asp:GridView>
    <asp:ObjectDataSource 
      ID = "ODSwfDBRows"
      runat = "server"
      DataObjectTypeName = "SIS.WF.wfDBRows"
      OldValuesParameterFormatString = "original_{0}"
      SelectMethod = "UZ_wfDBRowsSelectList"
      TypeName = "SIS.WF.wfDBRows"
      SelectCountMethod = "wfDBRowsSelectCount"
      SortParameterName="OrderBy" EnablePaging="True">
      <SelectParameters >
        <asp:ControlParameter ControlID="F_DashboardID" PropertyName="Text" Name="DashboardID" Type="Int32" Size="10" />
        <asp:Parameter Name="SearchState" Type="Boolean" Direction="Input" DefaultValue="false" />
        <asp:Parameter Name="SearchText" Type="String" Direction="Input" DefaultValue="" />
      </SelectParameters>
    </asp:ObjectDataSource>
    <br />
  </td></tr></table>
  </ContentTemplate>
  <Triggers>
    <asp:AsyncPostBackTrigger ControlID="GVwfDBRows" EventName="PageIndexChanged" />
    <asp:AsyncPostBackTrigger ControlID="F_DashboardID" />
  </Triggers>
</asp:UpdatePanel>
</div>
</div>
</asp:Content>

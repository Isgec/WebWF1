<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="False" CodeFile="GF_wfDBData.aspx.vb" Inherits="GF_wfDBData" title="Maintain List: Data Handlers" %>
<asp:Content ID="CPHwfDBData" ContentPlaceHolderID="cph1" Runat="Server">
<div class="ui-widget-content page">
<div class="caption">
    <asp:Label ID="LabelwfDBData" runat="server" Text="&nbsp;List: Data Handlers"></asp:Label>
</div>
<div class="pagedata">
<asp:UpdatePanel ID="UPNLwfDBData" runat="server">
  <ContentTemplate>
    <table width="100%"><tr><td class="sis_formview"> 
    <LGM:ToolBar0 
      ID = "TBLwfDBData"
      ToolType = "lgNMGrid"
      EditUrl = "~/WF_Main/App_Edit/EF_wfDBData.aspx"
      AddUrl = "~/WF_Main/App_Create/AF_wfDBData.aspx"
      ValidationGroup = "wfDBData"
      runat = "server" />
    <asp:UpdateProgress ID="UPGSwfDBData" runat="server" AssociatedUpdatePanelID="UPNLwfDBData" DisplayAfter="100">
      <ProgressTemplate>
        <span style="color: #ff0033">Loading...</span>
      </ProgressTemplate>
    </asp:UpdateProgress>
    <asp:GridView ID="GVwfDBData" SkinID="gv_silver" runat="server" DataSourceID="ODSwfDBData" DataKeyNames="DBDataID">
      <Columns>
        <asp:TemplateField HeaderText="EDIT">
          <ItemTemplate>
            <asp:ImageButton ID="cmdEditPage" ValidationGroup="Edit" runat="server" Visible='<%# EVal("Visible") %>' Enabled='<%# EVal("Enable") %>' AlternateText="Edit" ToolTip="Edit the record." SkinID="Edit" CommandName="lgEdit" CommandArgument='<%# Container.DataItemIndex %>' />
          </ItemTemplate>
          <ItemStyle CssClass="alignCenter" />
          <HeaderStyle CssClass="alignCenter" Width="30px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="DB Data ID" SortExpression="DBDataID">
          <ItemTemplate>
            <asp:Label ID="LabelDBDataID" runat="server" ForeColor='<%# EVal("ForeColor") %>' Text='<%# Bind("DBDataID") %>'></asp:Label>
          </ItemTemplate>
          <ItemStyle CssClass="alignCenter" />
          <HeaderStyle CssClass="alignCenter" Width="40px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Description" SortExpression="Description">
          <ItemTemplate>
            <asp:Label ID="LabelDescription" runat="server" ForeColor='<%# EVal("ForeColor") %>' Text='<%# Bind("Description") %>'></asp:Label>
          </ItemTemplate>
        <HeaderStyle CssClass="alignCenter" Width="100px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Is Procedure" SortExpression="IsProcedure">
          <ItemTemplate>
            <asp:Label ID="LabelIsProcedure" runat="server" ForeColor='<%# EVal("ForeColor") %>' Text='<%# Bind("IsProcedure") %>'></asp:Label>
          </ItemTemplate>
          <ItemStyle CssClass="alignCenter" />
        <HeaderStyle CssClass="alignCenter" Width="50px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="From ERP" SortExpression="FromERP">
          <ItemTemplate>
            <asp:Label ID="LabelFromERP" runat="server" ForeColor='<%# EVal("ForeColor") %>' Text='<%# Bind("FromERP") %>'></asp:Label>
          </ItemTemplate>
          <ItemStyle CssClass="alignCenter" />
        <HeaderStyle CssClass="alignCenter" Width="50px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Is Fixed List" SortExpression="IsList">
          <ItemTemplate>
            <asp:Label ID="LabelIsList" runat="server" ForeColor='<%# EVal("ForeColor") %>' Text='<%# Bind("IsList") %>'></asp:Label>
          </ItemTemplate>
          <ItemStyle CssClass="alignCenter" />
        <HeaderStyle CssClass="alignCenter" Width="50px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Is ERP AFS Call" SortExpression="IsErpAFSCall">
          <ItemTemplate>
            <asp:Label ID="LabelIsErpAFSCall" runat="server" ForeColor='<%# EVal("ForeColor") %>' Text='<%# Bind("IsErpAFSCall") %>'></asp:Label>
          </ItemTemplate>
          <ItemStyle CssClass="alignCenter" />
        <HeaderStyle CssClass="alignCenter" Width="50px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Copy">
          <ItemTemplate>
            <asp:ImageButton ID="cmdCopy" ValidationGroup='<%# "Copy" & Container.DataItemIndex %>' CausesValidation="true" runat="server" Visible='<%# EVal("CopyWFVisible") %>' Enabled='<%# EVal("CopyWFEnable") %>' AlternateText='<%# EVal("PrimaryKey") %>' ToolTip="Copy" SkinID="Copy" OnClientClick='<%# "return Page_ClientValidate(""Copy" & Container.DataItemIndex & """) && confirm(""Copy record ?"");" %>' CommandName="CopyWF" CommandArgument='<%# Container.DataItemIndex %>' />
          </ItemTemplate>
          <ItemStyle CssClass="alignCenter" />
          <HeaderStyle CssClass="alignCenter" Width="30px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Delete">
          <ItemTemplate>
            <asp:ImageButton ID="cmdDelete" ValidationGroup='<%# "Delete" & Container.DataItemIndex %>' CausesValidation="true" runat="server" Visible='<%# EVal("DeleteWFVisible") %>' Enabled='<%# EVal("DeleteWFEnable") %>' AlternateText='<%# EVal("PrimaryKey") %>' ToolTip="Delete" SkinID="Delete" OnClientClick='<%# "return Page_ClientValidate(""Delete" & Container.DataItemIndex & """) && confirm(""Delete record ?"");" %>' CommandName="DeleteWF" CommandArgument='<%# Container.DataItemIndex %>' />
          </ItemTemplate>
          <ItemStyle CssClass="alignCenter" />
          <HeaderStyle CssClass="alignCenter" Width="30px" />
        </asp:TemplateField>
      </Columns>
      <EmptyDataTemplate>
        <asp:Label ID="LabelEmpty" runat="server" Font-Size="Small" ForeColor="Red" Text="No record found !!!"></asp:Label>
      </EmptyDataTemplate>
    </asp:GridView>
    <asp:ObjectDataSource 
      ID = "ODSwfDBData"
      runat = "server"
      DataObjectTypeName = "SIS.WF.wfDBData"
      OldValuesParameterFormatString = "original_{0}"
      SelectMethod = "UZ_wfDBDataSelectList"
      TypeName = "SIS.WF.wfDBData"
      SelectCountMethod = "wfDBDataSelectCount"
      SortParameterName="OrderBy" EnablePaging="True">
      <SelectParameters >
        <asp:Parameter Name="SearchState" Type="Boolean" Direction="Input" DefaultValue="false" />
        <asp:Parameter Name="SearchText" Type="String" Direction="Input" DefaultValue="" />
      </SelectParameters>
    </asp:ObjectDataSource>
    <br />
  </td></tr></table>
  </ContentTemplate>
  <Triggers>
    <asp:AsyncPostBackTrigger ControlID="GVwfDBData" EventName="PageIndexChanged" />
  </Triggers>
</asp:UpdatePanel>
</div>
</div>
</asp:Content>

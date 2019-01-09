<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="False" CodeFile="GF_wfDBRowTypes.aspx.vb" Inherits="GF_wfDBRowTypes" title="Maintain List: DB Row Types" %>
<asp:Content ID="CPHwfDBRowTypes" ContentPlaceHolderID="cph1" Runat="Server">
<div class="ui-widget-content page">
<div class="caption">
    <asp:Label ID="LabelwfDBRowTypes" runat="server" Text="&nbsp;List: DB Row Types"></asp:Label>
</div>
<div class="pagedata">
<asp:UpdatePanel ID="UPNLwfDBRowTypes" runat="server">
  <ContentTemplate>
    <table width="100%"><tr><td class="sis_formview"> 
    <LGM:ToolBar0 
      ID = "TBLwfDBRowTypes"
      ToolType = "lgNMGrid"
      EditUrl = "~/WF_Main/App_Edit/EF_wfDBRowTypes.aspx"
      AddUrl = "~/WF_Main/App_Create/AF_wfDBRowTypes.aspx"
      ValidationGroup = "wfDBRowTypes"
      runat = "server" />
    <asp:UpdateProgress ID="UPGSwfDBRowTypes" runat="server" AssociatedUpdatePanelID="UPNLwfDBRowTypes" DisplayAfter="100">
      <ProgressTemplate>
        <span style="color: #ff0033">Loading...</span>
      </ProgressTemplate>
    </asp:UpdateProgress>
    <asp:GridView ID="GVwfDBRowTypes" SkinID="gv_silver" runat="server" DataSourceID="ODSwfDBRowTypes" DataKeyNames="RowTypeID">
      <Columns>
        <asp:TemplateField HeaderText="EDIT">
          <ItemTemplate>
            <asp:ImageButton ID="cmdEditPage" ValidationGroup="Edit" runat="server" Visible='<%# EVal("Visible") %>' Enabled='<%# EVal("Enable") %>' AlternateText="Edit" ToolTip="Edit the record." SkinID="Edit" CommandName="lgEdit" CommandArgument='<%# Container.DataItemIndex %>' />
          </ItemTemplate>
          <ItemStyle CssClass="alignCenter" />
          <HeaderStyle CssClass="alignCenter" Width="30px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Row Type" SortExpression="RowTypeID">
          <ItemTemplate>
            <asp:Label ID="LabelRowTypeID" runat="server" ForeColor='<%# EVal("ForeColor") %>' Text='<%# Bind("RowTypeID") %>'></asp:Label>
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
        <asp:TemplateField HeaderText="cssClass" SortExpression="cssClass">
          <ItemTemplate>
            <asp:Label ID="LabelcssClass" runat="server" ForeColor='<%# EVal("ForeColor") %>' Text='<%# Bind("cssClass") %>'></asp:Label>
          </ItemTemplate>
          <ItemStyle CssClass="" />
        <HeaderStyle CssClass="" Width="100px" />
        </asp:TemplateField>
      </Columns>
      <EmptyDataTemplate>
        <asp:Label ID="LabelEmpty" runat="server" Font-Size="Small" ForeColor="Red" Text="No record found !!!"></asp:Label>
      </EmptyDataTemplate>
    </asp:GridView>
    <asp:ObjectDataSource 
      ID = "ODSwfDBRowTypes"
      runat = "server"
      DataObjectTypeName = "SIS.WF.wfDBRowTypes"
      OldValuesParameterFormatString = "original_{0}"
      SelectMethod = "wfDBRowTypesSelectList"
      TypeName = "SIS.WF.wfDBRowTypes"
      SelectCountMethod = "wfDBRowTypesSelectCount"
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
    <asp:AsyncPostBackTrigger ControlID="GVwfDBRowTypes" EventName="PageIndexChanged" />
  </Triggers>
</asp:UpdatePanel>
</div>
</div>
</asp:Content>

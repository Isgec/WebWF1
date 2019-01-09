<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="False" CodeFile="GF_wfGraphTypes.aspx.vb" Inherits="GF_wfGraphTypes" title="Maintain List: Graph Types" %>
<asp:Content ID="CPHwfGraphTypes" ContentPlaceHolderID="cph1" Runat="Server">
<div class="ui-widget-content page">
<div class="caption">
    <asp:Label ID="LabelwfGraphTypes" runat="server" Text="&nbsp;List: Graph Types"></asp:Label>
</div>
<div class="pagedata">
<asp:UpdatePanel ID="UPNLwfGraphTypes" runat="server">
  <ContentTemplate>
    <table width="100%"><tr><td class="sis_formview"> 
    <LGM:ToolBar0 
      ID = "TBLwfGraphTypes"
      ToolType = "lgNMGrid"
      EditUrl = "~/WF_Main/App_Edit/EF_wfGraphTypes.aspx"
      AddUrl = "~/WF_Main/App_Create/AF_wfGraphTypes.aspx"
      ValidationGroup = "wfGraphTypes"
      runat = "server" />
    <asp:UpdateProgress ID="UPGSwfGraphTypes" runat="server" AssociatedUpdatePanelID="UPNLwfGraphTypes" DisplayAfter="100">
      <ProgressTemplate>
        <span style="color: #ff0033">Loading...</span>
      </ProgressTemplate>
    </asp:UpdateProgress>
    <asp:GridView ID="GVwfGraphTypes" SkinID="gv_silver" runat="server" DataSourceID="ODSwfGraphTypes" DataKeyNames="GraphTypeID">
      <Columns>
        <asp:TemplateField HeaderText="EDIT">
          <ItemTemplate>
            <asp:ImageButton ID="cmdEditPage" ValidationGroup="Edit" runat="server" Visible='<%# EVal("Visible") %>' Enabled='<%# EVal("Enable") %>' AlternateText="Edit" ToolTip="Edit the record." SkinID="Edit" CommandName="lgEdit" CommandArgument='<%# Container.DataItemIndex %>' />
          </ItemTemplate>
          <ItemStyle CssClass="alignCenter" />
          <HeaderStyle CssClass="alignCenter" Width="30px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Graph Type" SortExpression="GraphTypeID">
          <ItemTemplate>
            <asp:Label ID="LabelGraphTypeID" runat="server" ForeColor='<%# EVal("ForeColor") %>' Text='<%# Bind("GraphTypeID") %>'></asp:Label>
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
      </Columns>
      <EmptyDataTemplate>
        <asp:Label ID="LabelEmpty" runat="server" Font-Size="Small" ForeColor="Red" Text="No record found !!!"></asp:Label>
      </EmptyDataTemplate>
    </asp:GridView>
    <asp:ObjectDataSource 
      ID = "ODSwfGraphTypes"
      runat = "server"
      DataObjectTypeName = "SIS.WF.wfGraphTypes"
      OldValuesParameterFormatString = "original_{0}"
      SelectMethod = "wfGraphTypesSelectList"
      TypeName = "SIS.WF.wfGraphTypes"
      SelectCountMethod = "wfGraphTypesSelectCount"
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
    <asp:AsyncPostBackTrigger ControlID="GVwfGraphTypes" EventName="PageIndexChanged" />
  </Triggers>
</asp:UpdatePanel>
</div>
</div>
</asp:Content>

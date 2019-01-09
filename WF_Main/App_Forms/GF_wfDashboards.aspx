<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="False" CodeFile="GF_wfDashboards.aspx.vb" Inherits="GF_wfDashboards" title="Maintain List: Dashboards" %>
<asp:Content ID="CPHwfDashboards" ContentPlaceHolderID="cph1" Runat="Server">
<div class="ui-widget-content page">
<div class="caption">
    <asp:Label ID="LabelwfDashboards" runat="server" Text="&nbsp;List: Dashboards"></asp:Label>
</div>
<div class="pagedata">
<asp:UpdatePanel ID="UPNLwfDashboards" runat="server">
  <ContentTemplate>
    <table width="100%"><tr><td class="sis_formview"> 
    <LGM:ToolBar0 
      ID = "TBLwfDashboards"
      ToolType = "lgNMGrid"
      EditUrl = "~/WF_Main/App_Edit/EF_wfDashboards.aspx"
      AddUrl = "~/WF_Main/App_Create/AF_wfDashboards.aspx?skip=1"
      ValidationGroup = "wfDashboards"
      runat = "server" />
    <asp:UpdateProgress ID="UPGSwfDashboards" runat="server" AssociatedUpdatePanelID="UPNLwfDashboards" DisplayAfter="100">
      <ProgressTemplate>
        <span style="color: #ff0033">Loading...</span>
      </ProgressTemplate>
    </asp:UpdateProgress>
    <asp:GridView ID="GVwfDashboards" SkinID="gv_silver" runat="server" DataSourceID="ODSwfDashboards" DataKeyNames="DashboardID">
      <Columns>
        <asp:TemplateField HeaderText="EDIT">
          <ItemTemplate>
            <asp:LinkButton ID="cmdEditPage" ValidationGroup="Edit" runat="server" Visible='<%# Eval("Visible") %>' Enabled='<%# EVal("Enable") %>' AlternateText="Edit" ToolTip="Edit the record." CommandName="lgEdit" CommandArgument='<%# Container.DataItemIndex %>' ><div class="btn btn-sm btn-success"><i class="fa fa-1x fa-edit"></i></div></asp:LinkButton>
          </ItemTemplate>
          <ItemStyle CssClass="alignCenter" />
          <HeaderStyle CssClass="alignCenter" Width="30px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="COPY">
          <ItemTemplate>
            <asp:LinkButton ID="cmdCopy" ValidationGroup='<%# "Copy" & Container.DataItemIndex %>' CausesValidation="true" runat="server" Visible='<%# EVal("CopyWFVisible") %>' Enabled='<%# EVal("CopyWFEnable") %>' AlternateText='<%# EVal("PrimaryKey") %>' ToolTip="Copy dashboard" OnClientClick='<%# "return Page_ClientValidate(""Copy" & Container.DataItemIndex & """) && confirm(""Copy dashboard ?"");" %>' CommandName="CopyWF" CommandArgument='<%# Container.DataItemIndex %>' ><div class="btn btn-sm btn-info"><i class="fa fa-1x fa-copy "></i></div></asp:LinkButton>
          </ItemTemplate>
          <ItemStyle CssClass="alignCenter" />
          <HeaderStyle CssClass="alignCenter" Width="30px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Dashboard" SortExpression="DashboardID">
          <ItemTemplate>
            <asp:Label ID="LabelDashboardID" runat="server" ForeColor='<%# Eval("ForeColor") %>' Text='<%# Bind("DashboardID") %>'></asp:Label>
          </ItemTemplate>
          <ItemStyle CssClass="alignCenter" />
          <HeaderStyle CssClass="alignCenter" Width="40px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="DB Description" SortExpression="DBDescription">
          <ItemTemplate>
            <asp:Label ID="LabelDBDescription" runat="server" ForeColor='<%# Eval("ForeColor") %>' Text='<%# Bind("DBDescription") %>'></asp:Label>
          </ItemTemplate>
          <HeaderStyle Width="100px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="DB Title" SortExpression="DBTitle">
          <ItemTemplate>
            <asp:Label ID="LabelDBTitle" runat="server" ForeColor='<%# EVal("ForeColor") %>' Text='<%# Bind("DBTitle") %>'></asp:Label>
          </ItemTemplate>
          <ItemStyle CssClass="alignCenter" />
        <HeaderStyle CssClass="alignCenter" Width="100px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Draw Type" SortExpression="WF_DBRowTypes1_Description">
          <ItemTemplate>
             <asp:Label ID="L_DBRowTypeID" runat="server" ForeColor='<%# EVal("ForeColor") %>' Title='<%# EVal("DBRowTypeID") %>' Text='<%# Eval("WF_DBRowTypes1_Description") %>'></asp:Label>
          </ItemTemplate>
          <HeaderStyle Width="100px" />
        </asp:TemplateField>
<%--        <asp:TemplateField HeaderText="Icon Name" SortExpression="IconName">
          <ItemTemplate>
            <asp:Label ID="LabelIconName" runat="server" ForeColor='<%# EVal("ForeColor") %>' Text='<%# Bind("IconName") %>'></asp:Label>
          </ItemTemplate>
          <ItemStyle CssClass="alignCenter" />
        <HeaderStyle CssClass="alignCenter" Width="100px" />
        </asp:TemplateField>--%>
        <asp:TemplateField HeaderText="Active" SortExpression="Active">
          <ItemTemplate>
            <asp:Label ID="LabelActive" runat="server" ForeColor='<%# Eval("ForeColor") %>' Text='<%# Bind("Active") %>'></asp:Label>
          </ItemTemplate>
          <ItemStyle CssClass="alignCenter" />
        <HeaderStyle CssClass="alignCenter" Width="50px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Initialized By Me" SortExpression="InitializedByMe">
          <ItemTemplate>
            <asp:Label ID="LabelInitializedByMe" runat="server" ForeColor='<%# Eval("ForeColor") %>' Text='<%# Bind("InitializedByMe") %>'></asp:Label>
          </ItemTemplate>
          <ItemStyle CssClass="alignCenter" />
        <HeaderStyle CssClass="alignCenter" Width="50px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="NO ALL">
          <ItemTemplate>
            <asp:LinkButton ID="cmdDA" ValidationGroup='<%# "DA" & Container.DataItemIndex %>' CausesValidation="true" runat="server" Visible='<%# EVal("DAWFVisible") %>' Enabled='<%# EVal("DAWFEnable") %>' AlternateText='<%# EVal("PrimaryKey") %>' ToolTip="Diactivate for ALL users." OnClientClick='<%# "return Page_ClientValidate(""DA" & Container.DataItemIndex & """) && confirm(""Deactivate for ALL users ?"");" %>' CommandName="DAWF" CommandArgument='<%# Container.DataItemIndex %>' ><div class="btn btn-sm btn-danger"><i class="fa fa-1x  fa-arrow-circle-o-left"></i></div></asp:LinkButton>
          </ItemTemplate>
          <ItemStyle CssClass="alignCenter" />
          <HeaderStyle CssClass="alignCenter" Width="30px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="YES ALL">
          <ItemTemplate>
            <asp:LinkButton ID="cmdAA" ValidationGroup='<%# "AA" & Container.DataItemIndex %>' CausesValidation="true" runat="server" Visible='<%# EVal("AAWFVisible") %>' Enabled='<%# EVal("AAWFEnable") %>' AlternateText='<%# EVal("PrimaryKey") %>' ToolTip="Activate for ALL users" OnClientClick='<%# "return Page_ClientValidate(""AA" & Container.DataItemIndex & """) && confirm(""Activate for ALL users ?"");" %>' CommandName="AAWF" CommandArgument='<%# Container.DataItemIndex %>' ><div class="btn btn-sm btn-success"><i class="fa fa-1x fa-arrow-circle-o-right"></i></div></asp:LinkButton>
          </ItemTemplate>
          <ItemStyle CssClass="alignCenter" />
          <HeaderStyle CssClass="alignCenter" Width="30px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="REM ALL">
          <ItemTemplate>
            <asp:LinkButton ID="cmdRA" ValidationGroup='<%# "RA" & Container.DataItemIndex %>' CausesValidation="true" runat="server" Visible='<%# EVal("RAWFVisible") %>' Enabled='<%# EVal("RAWFEnable") %>' AlternateText='<%# EVal("PrimaryKey") %>' ToolTip="Remove from All users" OnClientClick='<%# "return Page_ClientValidate(""RA" & Container.DataItemIndex & """) && confirm(""Remove from All users ?"");" %>' CommandName="RAWF" CommandArgument='<%# Container.DataItemIndex %>' ><div class="btn btn-sm btn-info"><i class="fa fa-1x fa-arrow-circle-up "></i></div></asp:LinkButton>
          </ItemTemplate>
          <ItemStyle CssClass="alignCenter" />
          <HeaderStyle CssClass="alignCenter" Width="30px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="UPD ALL">
          <ItemTemplate>
            <asp:LinkButton ID="cmdSH" ValidationGroup='<%# "SH" & Container.DataItemIndex %>' CausesValidation="true" runat="server" Visible='<%# EVal("SHWFVisible") %>' Enabled='<%# EVal("SHWFEnable") %>' AlternateText='<%# EVal("PrimaryKey") %>' ToolTip="Update dashboard with all authorized users" OnClientClick='<%# "return Page_ClientValidate(""SH" & Container.DataItemIndex & """) && confirm(""Update dashboard with all authorized users ?"");" %>' CommandName="SHWF" CommandArgument='<%# Container.DataItemIndex %>' ><div class="btn btn-sm btn-warning"><i class="fa fa-1x fa-anchor"></i></div></asp:LinkButton>
          </ItemTemplate>
          <ItemStyle CssClass="alignCenter" />
          <HeaderStyle CssClass="alignCenter" Width="30px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="DEL ALL">
          <ItemTemplate>
            <asp:LinkButton ID="cmdDelete" ValidationGroup='<%# "Delete" & Container.DataItemIndex %>' CausesValidation="true" runat="server" Visible='<%# EVal("DeleteWFVisible") %>' Enabled='<%# EVal("DeleteWFEnable") %>' AlternateText='<%# EVal("PrimaryKey") %>' ToolTip="Delete dashboard. [It will also remove from all users] ?" OnClientClick='<%# "return Page_ClientValidate(""Delete" & Container.DataItemIndex & """) && confirm(""Delete dashboard. [It will also remove from all users] ?"");" %>' CommandName="DeleteWF" CommandArgument='<%# Container.DataItemIndex %>' ><div class="btn btn-sm btn-danger"><i class="fa fa-1x fa-remove"></i></div></asp:LinkButton>
          </ItemTemplate>
          <ItemStyle CssClass="alignCenter" />
          <HeaderStyle CssClass="alignCenter" Width="30px" />
        </asp:TemplateField>
<%--        <asp:TemplateField HeaderText="SyncR">
          <ItemTemplate>
            <asp:LinkButton ID="cmdSR" ValidationGroup='<%# "SR" & Container.DataItemIndex %>' CausesValidation="true" runat="server" Visible='<%# EVal("SRWFVisible") %>' Enabled='<%# EVal("SRWFEnable") %>' AlternateText='<%# EVal("PrimaryKey") %>' ToolTip="Sync Rows with all users" OnClientClick='<%# "return Page_ClientValidate(""SR" & Container.DataItemIndex & """) && confirm(""Sync Rows with all users ?"");" %>' CommandName="SRWF" CommandArgument='<%# Container.DataItemIndex %>' ><div class="btn btn-sm btn-warning"><i class="fa fa-1x fa-angellist "></i></div></asp:LinkButton>
          </ItemTemplate>
          <ItemStyle CssClass="alignCenter" />
          <HeaderStyle CssClass="alignCenter" Width="30px" />
        </asp:TemplateField>--%>
      </Columns>
      <EmptyDataTemplate>
        <asp:Label ID="LabelEmpty" runat="server" Font-Size="Small" ForeColor="Red" Text="No record found !!!"></asp:Label>
      </EmptyDataTemplate>
    </asp:GridView>
    <asp:ObjectDataSource 
      ID = "ODSwfDashboards"
      runat = "server"
      DataObjectTypeName = "SIS.WF.wfDashboards"
      OldValuesParameterFormatString = "original_{0}"
      SelectMethod = "UZ_wfDashboardsSelectList"
      TypeName = "SIS.WF.wfDashboards"
      SelectCountMethod = "wfDashboardsSelectCount"
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
    <asp:AsyncPostBackTrigger ControlID="GVwfDashboards" EventName="PageIndexChanged" />
  </Triggers>
</asp:UpdatePanel>
</div>
</div>
</asp:Content>

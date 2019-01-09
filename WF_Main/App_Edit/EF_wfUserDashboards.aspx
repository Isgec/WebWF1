<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="EF_wfUserDashboards.aspx.vb" Inherits="EF_wfUserDashboards" title="Edit: User Dashboards" %>
<asp:Content ID="CPHwfUserDashboards" ContentPlaceHolderID="cph1" Runat="Server">
<div id="div1" class="ui-widget-content page">
<div id="div2" class="caption">
    <asp:Label ID="LabelwfUserDashboards" runat="server" Text="&nbsp;Edit: User Dashboards"></asp:Label>
</div>
<div id="div3" class="pagedata">
<asp:UpdatePanel ID="UPNLwfUserDashboards" runat="server" >
<ContentTemplate>
  <LGM:ToolBar0 
    ID = "TBLwfUserDashboards"
    ToolType = "lgNMEdit"
    UpdateAndStay = "False"
    ValidationGroup = "wfUserDashboards"
    runat = "server" />
<asp:FormView ID="FVwfUserDashboards"
  runat = "server"
  DataKeyNames = "UserID,DashboardID"
  DataSourceID = "ODSwfUserDashboards"
  DefaultMode = "Edit" CssClass="sis_formview">
  <EditItemTemplate>
    <div id="frmdiv" class="ui-widget-content minipage">
    <table style="margin:auto;border: solid 1pt lightgrey">
      <tr>
        <td class="alignright">
          <b><asp:Label ID="L_UserID" runat="server" ForeColor="#CC6633" Text="User :" /><span style="color:red">*</span></b>
        </td>
        <td colspan="3">
          <asp:TextBox
            ID = "F_UserID"
            Width="72px"
            Text='<%# Bind("UserID") %>'
            CssClass = "mypktxt"
            Enabled = "False"
            ToolTip="Value of User."
            Runat="Server" />
          <asp:Label
            ID = "F_UserID_Display"
            Text='<%# Eval("aspnet_users1_UserFullName") %>'
            CssClass="myLbl"
            Runat="Server" />
        </td>
      </tr>
      <tr><td colspan="4" style="border-top: solid 1pt LightGrey" ></td></tr>
      <tr>
        <td class="alignright">
          <b><asp:Label ID="L_DashboardID" runat="server" ForeColor="#CC6633" Text="Dashboard :" /><span style="color:red">*</span></b>
        </td>
        <td colspan="3">
          <asp:TextBox
            ID = "F_DashboardID"
            Width="88px"
            Text='<%# Bind("DashboardID") %>'
            CssClass = "mypktxt"
            Enabled = "False"
            ToolTip="Value of Dashboard."
            Runat="Server" />
          <asp:Label
            ID = "F_DashboardID_Display"
            Text='<%# Eval("WF_Dashboards2_DBDescription") %>'
            CssClass="myLbl"
            Runat="Server" />
        </td>
      </tr>
      <tr><td colspan="4" style="border-top: solid 1pt LightGrey" ></td></tr>
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
      <tr><td colspan="4" style="border-top: solid 1pt LightGrey" ></td></tr>
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
      <tr><td colspan="4" style="border-top: solid 1pt LightGrey" ></td></tr>
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
      <tr><td colspan="4" style="border-top: solid 1pt LightGrey" ></td></tr>
    </table>
  </div>
<fieldset class="ui-widget-content page">
<legend>
    <asp:Label ID="LabelwfUserDBRows" runat="server" Text="&nbsp;List: User DB Rows"></asp:Label>
</legend>
<div class="pagedata">
<asp:UpdatePanel ID="UPNLwfUserDBRows" runat="server">
  <ContentTemplate>
    <table width="100%"><tr><td class="sis_formview"> 
    <LGM:ToolBar0 
      ID = "TBLwfUserDBRows"
      ToolType = "lgNMGrid"
      EditUrl = "~/WF_Main/App_Edit/EF_wfUserDBRows.aspx"
      EnableAdd = "False"
      EnableExit = "false"
      ValidationGroup = "wfUserDBRows"
      runat = "server" />
    <asp:UpdateProgress ID="UPGSwfUserDBRows" runat="server" AssociatedUpdatePanelID="UPNLwfUserDBRows" DisplayAfter="100">
      <ProgressTemplate>
        <span style="color: #ff0033">Loading...</span>
      </ProgressTemplate>
    </asp:UpdateProgress>
    <asp:GridView ID="GVwfUserDBRows" SkinID="gv_silver" runat="server" DataSourceID="ODSwfUserDBRows" DataKeyNames="UserID,DashboardID,DBRows">
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
        <asp:TemplateField HeaderText="Dashboard" SortExpression="WF_UserDashboards3_DashboardID">
          <ItemTemplate>
             <asp:Label ID="L_DashboardID" runat="server" ForeColor='<%# EVal("ForeColor") %>' Title='<%# EVal("DashboardID") %>' Text='<%# Eval("WF_UserDashboards3_DashboardID") %>'></asp:Label>
          </ItemTemplate>
          <HeaderStyle Width="100px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="DB Rows" SortExpression="WF_DBRows2_Description">
          <ItemTemplate>
             <asp:Label ID="L_DBRows" runat="server" ForeColor='<%# EVal("ForeColor") %>' Title='<%# EVal("DBRows") %>' Text='<%# Eval("WF_DBRows2_Description") %>'></asp:Label>
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
        <asp:TemplateField HeaderText="Run Date" SortExpression="RunDate">
          <ItemTemplate>
            <asp:Label ID="LabelRunDate" runat="server" ForeColor='<%# EVal("ForeColor") %>' Text='<%# Bind("RunDate") %>'></asp:Label>
          </ItemTemplate>
          <ItemStyle CssClass="alignCenter" />
        <HeaderStyle CssClass="alignCenter" Width="90px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Next Run Date" SortExpression="NextRunDate">
          <ItemTemplate>
            <asp:Label ID="LabelNextRunDate" runat="server" ForeColor='<%# EVal("ForeColor") %>' Text='<%# Bind("NextRunDate") %>'></asp:Label>
          </ItemTemplate>
          <ItemStyle CssClass="alignCenter" />
        <HeaderStyle CssClass="alignCenter" Width="90px" />
        </asp:TemplateField>
      </Columns>
      <EmptyDataTemplate>
        <asp:Label ID="LabelEmpty" runat="server" Font-Size="Small" ForeColor="Red" Text="No record found !!!"></asp:Label>
      </EmptyDataTemplate>
    </asp:GridView>
    <asp:ObjectDataSource 
      ID = "ODSwfUserDBRows"
      runat = "server"
      DataObjectTypeName = "SIS.WF.wfUserDBRows"
      OldValuesParameterFormatString = "original_{0}"
      SelectMethod = "UZ_wfUserDBRowsSelectList"
      TypeName = "SIS.WF.wfUserDBRows"
      SelectCountMethod = "wfUserDBRowsSelectCount"
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
    <asp:AsyncPostBackTrigger ControlID="GVwfUserDBRows" EventName="PageIndexChanged" />
  </Triggers>
</asp:UpdatePanel>
</div>
</fieldset>
  </EditItemTemplate>
</asp:FormView>
  </ContentTemplate>
</asp:UpdatePanel>
<asp:ObjectDataSource 
  ID = "ODSwfUserDashboards"
  DataObjectTypeName = "SIS.WF.wfUserDashboards"
  SelectMethod = "wfUserDashboardsGetByID"
  UpdateMethod="UZ_wfUserDashboardsUpdate"
  DeleteMethod="UZ_wfUserDashboardsDelete"
  OldValuesParameterFormatString = "original_{0}"
  TypeName = "SIS.WF.wfUserDashboards"
  runat = "server" >
<SelectParameters>
  <asp:QueryStringParameter DefaultValue="0" QueryStringField="UserID" Name="UserID" Type="String" />
  <asp:QueryStringParameter DefaultValue="0" QueryStringField="DashboardID" Name="DashboardID" Type="Int32" />
</SelectParameters>
</asp:ObjectDataSource>
</div>
</div>
</asp:Content>

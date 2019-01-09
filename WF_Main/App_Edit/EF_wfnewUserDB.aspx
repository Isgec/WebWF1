<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="EF_wfnewUserDB.aspx.vb" Inherits="EF_wfnewUserDB" title="Edit: User DB Rows [New]" %>
<asp:Content ID="CPHwfnewUserDB" ContentPlaceHolderID="cph1" Runat="Server">
<div id="div1" class="ui-widget-content page">
<div id="div2" class="caption">
    <asp:Label ID="LabelwfnewUserDB" runat="server" Text="&nbsp;Edit: User DB Rows [New]"></asp:Label>
</div>
<div id="div3" class="pagedata">
<asp:UpdatePanel ID="UPNLwfnewUserDB" runat="server" >
<ContentTemplate>
  <LGM:ToolBar0 
    ID = "TBLwfnewUserDB"
    ToolType = "lgNMEdit"
    UpdateAndStay = "False"
    ValidationGroup = "wfnewUserDB"
    runat = "server" />
<asp:FormView ID="FVwfnewUserDB"
  runat = "server"
  DataKeyNames = "UserID,DashboardID,DBRows"
  DataSourceID = "ODSwfnewUserDB"
  DefaultMode = "Edit" CssClass="sis_formview">
  <EditItemTemplate>
    <div id="frmdiv" class="ui-widget-content minipage">
    <table style="margin:auto;border: solid 1pt lightgrey">
      <tr>
        <td class="alignright">
          <b><asp:Label ID="L_UserID" runat="server" ForeColor="#CC6633" Text="UserID :" /><span style="color:red">*</span></b>
        </td>
        <td>
          <asp:TextBox
            ID = "F_UserID"
            Width="72px"
            Text='<%# Bind("UserID") %>'
            CssClass = "mypktxt"
            Enabled = "False"
            ToolTip="Value of UserID."
            Runat="Server" />
          <asp:Label
            ID = "F_UserID_Display"
            Text='<%# Eval("aspnet_users1_UserFullName") %>'
            CssClass="myLbl"
            Runat="Server" />
        </td>
        <td class="alignright">
          <b><asp:Label ID="L_DashboardID" runat="server" ForeColor="#CC6633" Text="DashboardID :" /><span style="color:red">*</span></b>
        </td>
        <td>
          <asp:TextBox
            ID = "F_DashboardID"
            Width="88px"
            Text='<%# Bind("DashboardID") %>'
            CssClass = "mypktxt"
            Enabled = "False"
            ToolTip="Value of DashboardID."
            Runat="Server" />
          <asp:Label
            ID = "F_DashboardID_Display"
            Text='<%# Eval("WF_Dashboards2_DBDescription") %>'
            CssClass="myLbl"
            Runat="Server" />
        </td>
      </tr>
      <tr>
        <td class="alignright">
          <b><asp:Label ID="L_DBRows" runat="server" ForeColor="#CC6633" Text="DBRows :" /><span style="color:red">*</span></b>
        </td>
        <td>
          <asp:TextBox
            ID = "F_DBRows"
            Width="88px"
            Text='<%# Bind("DBRows") %>'
            CssClass = "mypktxt"
            Enabled = "False"
            ToolTip="Value of DBRows."
            Runat="Server" />
          <asp:Label
            ID = "F_DBRows_Display"
            Text='<%# Eval("WF_DBRows3_Description") %>'
            CssClass="myLbl"
            Runat="Server" />
        </td>
      <td></td><td></td></tr>
      <tr><td colspan="4" style="border-top: solid 1pt LightGrey" ></td></tr>
      <tr>
        <td class="alignright">
          <asp:Label ID="L_Sequence" runat="server" Text="Sequence :" /><span style="color:red">*</span>
        </td>
        <td>
          <asp:TextBox ID="F_Sequence"
            Text='<%# Bind("Sequence") %>'
            style="text-align: right"
            Width="96px"
            CssClass = "mytxt"
            ValidationGroup= "wfnewUserDB"
            MaxLength="11"
            onfocus = "return this.select();"
            runat="server" />
          <AJX:MaskedEditExtender 
            ID = "MEESequence"
            runat = "server"
            mask = "99999999.999"
            AcceptNegative = "Left"
            MaskType="Number"
            MessageValidatorTip="true"
            InputDirection="RightToLeft"
            ErrorTooltipEnabled="true"
            TargetControlID="F_Sequence" />
          <AJX:MaskedEditValidator 
            ID = "MEVSequence"
            runat = "server"
            ControlToValidate = "F_Sequence"
            ControlExtender = "MEESequence"
            EmptyValueBlurredText = "<div class='errorLG'>Required!</div>"
            Display = "Dynamic"
            EnableClientScript = "true"
            ValidationGroup = "wfnewUserDB"
            IsValidEmpty = "false"
            MinimumValue = "0.01"
            SetFocusOnError="true" />
        </td>
        <td class="alignright">
          <asp:Label ID="L_DataSource" runat="server" Text="DataSource :" />&nbsp;
        </td>
        <td>
          <asp:TextBox ID="F_DataSource"
            Text='<%# Bind("DataSource") %>'
            Width="88px"
            CssClass = "mytxt"
            onfocus = "return this.select();"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for DataSource."
            MaxLength="10"
            runat="server" />
        </td>
      </tr>
      <tr><td colspan="4" style="border-top: solid 1pt LightGrey" ></td></tr>
      <tr>
        <td class="alignright">
          <asp:Label ID="L_IsLeft" runat="server" Text="IsLeft :" />&nbsp;
        </td>
        <td>
          <asp:CheckBox ID="F_IsLeft"
            Checked='<%# Bind("IsLeft") %>'
            CssClass = "mychk"
            runat="server" />
        </td>
        <td class="alignright">
          <asp:Label ID="L_AppName_Left" runat="server" Text="AppName_Left :" />&nbsp;
        </td>
        <td>
          <asp:TextBox ID="F_AppName_Left"
            Text='<%# Bind("AppName_Left") %>'
            Width="350px"
            CssClass = "mytxt"
            onfocus = "return this.select();"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for AppName_Left."
            MaxLength="100"
            runat="server" />
        </td>
      </tr>
      <tr>
        <td class="alignright">
          <asp:Label ID="L_vTOTSQLl" runat="server" Text="vTOTSQLl :" />&nbsp;
        </td>
        <td>
          <asp:TextBox ID="F_vTOTSQLl"
            Text='<%# Bind("vTOTSQLl") %>'
            Width="350px"
            CssClass = "mytxt"
            onfocus = "return this.select();"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for vTOTSQLl."
            MaxLength="4000"
            runat="server" />
        </td>
        <td class="alignright">
          <asp:Label ID="L_vREDSQLl" runat="server" Text="vREDSQLl :" />&nbsp;
        </td>
        <td>
          <asp:TextBox ID="F_vREDSQLl"
            Text='<%# Bind("vREDSQLl") %>'
            Width="350px"
            CssClass = "mytxt"
            onfocus = "return this.select();"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for vREDSQLl."
            MaxLength="4000"
            runat="server" />
        </td>
      </tr>
      <tr>
        <td class="alignright">
          <asp:Label ID="L_vAMBSQLl" runat="server" Text="vAMBSQLl :" />&nbsp;
        </td>
        <td>
          <asp:TextBox ID="F_vAMBSQLl"
            Text='<%# Bind("vAMBSQLl") %>'
            Width="350px"
            CssClass = "mytxt"
            onfocus = "return this.select();"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for vAMBSQLl."
            MaxLength="4000"
            runat="server" />
        </td>
        <td class="alignright">
          <asp:Label ID="L_vGRESQLl" runat="server" Text="vGRESQLl :" />&nbsp;
        </td>
        <td>
          <asp:TextBox ID="F_vGRESQLl"
            Text='<%# Bind("vGRESQLl") %>'
            Width="350px"
            CssClass = "mytxt"
            onfocus = "return this.select();"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for vGRESQLl."
            MaxLength="4000"
            runat="server" />
        </td>
      </tr>
      <tr><td colspan="4" style="border-top: solid 1pt LightGrey" ></td></tr>
      <tr>
        <td class="alignright">
          <asp:Label ID="L_IsRight" runat="server" Text="IsRight :" />&nbsp;
        </td>
        <td>
          <asp:CheckBox ID="F_IsRight"
            Checked='<%# Bind("IsRight") %>'
            CssClass = "mychk"
            runat="server" />
        </td>
        <td class="alignright">
          <asp:Label ID="L_AppName_Right" runat="server" Text="AppName_Right :" />&nbsp;
        </td>
        <td>
          <asp:TextBox ID="F_AppName_Right"
            Text='<%# Bind("AppName_Right") %>'
            Width="350px"
            CssClass = "mytxt"
            onfocus = "return this.select();"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for AppName_Right."
            MaxLength="100"
            runat="server" />
        </td>
      </tr>
      <tr>
        <td class="alignright">
          <asp:Label ID="L_vTOTSQLr" runat="server" Text="vTOTSQLr :" />&nbsp;
        </td>
        <td>
          <asp:TextBox ID="F_vTOTSQLr"
            Text='<%# Bind("vTOTSQLr") %>'
            Width="350px"
            CssClass = "mytxt"
            onfocus = "return this.select();"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for vTOTSQLr."
            MaxLength="4000"
            runat="server" />
        </td>
        <td class="alignright">
          <asp:Label ID="L_vREDSQLr" runat="server" Text="vREDSQLr :" />&nbsp;
        </td>
        <td>
          <asp:TextBox ID="F_vREDSQLr"
            Text='<%# Bind("vREDSQLr") %>'
            Width="350px"
            CssClass = "mytxt"
            onfocus = "return this.select();"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for vREDSQLr."
            MaxLength="4000"
            runat="server" />
        </td>
      </tr>
      <tr>
        <td class="alignright">
          <asp:Label ID="L_vAMBSQLr" runat="server" Text="vAMBSQLr :" />&nbsp;
        </td>
        <td>
          <asp:TextBox ID="F_vAMBSQLr"
            Text='<%# Bind("vAMBSQLr") %>'
            Width="350px"
            CssClass = "mytxt"
            onfocus = "return this.select();"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for vAMBSQLr."
            MaxLength="4000"
            runat="server" />
        </td>
        <td class="alignright">
          <asp:Label ID="L_vGRESQLr" runat="server" Text="vGRESQLr :" />&nbsp;
        </td>
        <td>
          <asp:TextBox ID="F_vGRESQLr"
            Text='<%# Bind("vGRESQLr") %>'
            Width="350px"
            CssClass = "mytxt"
            onfocus = "return this.select();"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for vGRESQLr."
            MaxLength="4000"
            runat="server" />
        </td>
      </tr>
      <tr><td colspan="4" style="border-top: solid 1pt LightGrey" ></td></tr>
    </table>
  </div>
  </EditItemTemplate>
</asp:FormView>
  </ContentTemplate>
</asp:UpdatePanel>
<asp:ObjectDataSource 
  ID = "ODSwfnewUserDB"
  DataObjectTypeName = "SIS.WF.wfnewUserDB"
  SelectMethod = "wfnewUserDBGetByID"
  UpdateMethod="UZ_wfnewUserDBUpdate"
  DeleteMethod="UZ_wfnewUserDBDelete"
  OldValuesParameterFormatString = "original_{0}"
  TypeName = "SIS.WF.wfnewUserDB"
  runat = "server" >
<SelectParameters>
  <asp:QueryStringParameter DefaultValue="0" QueryStringField="UserID" Name="UserID" Type="String" />
  <asp:QueryStringParameter DefaultValue="0" QueryStringField="DashboardID" Name="DashboardID" Type="Int32" />
  <asp:QueryStringParameter DefaultValue="0" QueryStringField="DBRows" Name="DBRows" Type="Int32" />
</SelectParameters>
</asp:ObjectDataSource>
</div>
</div>
</asp:Content>

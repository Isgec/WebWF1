<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="AF_wfnewUserDB.aspx.vb" Inherits="AF_wfnewUserDB" title="Add: User DB Rows [New]" %>
<asp:Content ID="CPHwfnewUserDB" ContentPlaceHolderID="cph1" Runat="Server">
<div id="div1" class="ui-widget-content page">
<div id="div2" class="caption">
    <asp:Label ID="LabelwfnewUserDB" runat="server" Text="&nbsp;Add: User DB Rows [New]"></asp:Label>
</div>
<div id="div3" class="pagedata">
<asp:UpdatePanel ID="UPNLwfnewUserDB" runat="server" >
  <ContentTemplate>
  <LGM:ToolBar0 
    ID = "TBLwfnewUserDB"
    ToolType = "lgNMAdd"
    InsertAndStay = "False"
    ValidationGroup = "wfnewUserDB"
    runat = "server" />
<asp:FormView ID="FVwfnewUserDB"
  runat = "server"
  DataKeyNames = "UserID,DashboardID,DBRows"
  DataSourceID = "ODSwfnewUserDB"
  DefaultMode = "Insert" CssClass="sis_formview">
  <InsertItemTemplate>
    <div id="frmdiv" class="ui-widget-content minipage">
    <asp:Label ID="L_ErrMsgwfnewUserDB" runat="server" ForeColor="Red" Font-Bold="true" Text=""></asp:Label>
    <table style="margin:auto;border: solid 1pt lightgrey">
      <tr>
        <td class="alignright">
          <b><asp:Label ID="L_UserID" ForeColor="#CC6633" runat="server" Text="UserID :" /><span style="color:red">*</span></b>
        </td>
        <td>
          <asp:TextBox
            ID = "F_UserID"
            CssClass = "mypktxt"
            Width="72px"
            Text='<%# Bind("UserID") %>'
            AutoCompleteType = "None"
            onfocus = "return this.select();"
            ToolTip="Enter value for UserID."
            ValidationGroup = "wfnewUserDB"
            onblur= "script_wfnewUserDB.validate_UserID(this);"
            Runat="Server" />
          <asp:RequiredFieldValidator 
            ID = "RFVUserID"
            runat = "server"
            ControlToValidate = "F_UserID"
            ErrorMessage = "<div class='errorLG'>Required!</div>"
            Display = "Dynamic"
            EnableClientScript = "true"
            ValidationGroup = "wfnewUserDB"
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
            OnClientItemSelected="script_wfnewUserDB.ACEUserID_Selected"
            OnClientPopulating="script_wfnewUserDB.ACEUserID_Populating"
            OnClientPopulated="script_wfnewUserDB.ACEUserID_Populated"
            CompletionSetCount="10"
            CompletionListCssClass = "autocomplete_completionListElement"
            CompletionListItemCssClass = "autocomplete_listItem"
            CompletionListHighlightedItemCssClass = "autocomplete_highlightedListItem"
            Runat="Server" />
        </td>
        <td class="alignright">
          <b><asp:Label ID="L_DashboardID" ForeColor="#CC6633" runat="server" Text="DashboardID :" /><span style="color:red">*</span></b>
        </td>
        <td>
          <asp:TextBox
            ID = "F_DashboardID"
            CssClass = "mypktxt"
            Width="88px"
            Text='<%# Bind("DashboardID") %>'
            AutoCompleteType = "None"
            onfocus = "return this.select();"
            ToolTip="Enter value for DashboardID."
            ValidationGroup = "wfnewUserDB"
            onblur= "script_wfnewUserDB.validate_DashboardID(this);"
            Runat="Server" />
          <asp:RequiredFieldValidator 
            ID = "RFVDashboardID"
            runat = "server"
            ControlToValidate = "F_DashboardID"
            ErrorMessage = "<div class='errorLG'>Required!</div>"
            Display = "Dynamic"
            EnableClientScript = "true"
            ValidationGroup = "wfnewUserDB"
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
            OnClientItemSelected="script_wfnewUserDB.ACEDashboardID_Selected"
            OnClientPopulating="script_wfnewUserDB.ACEDashboardID_Populating"
            OnClientPopulated="script_wfnewUserDB.ACEDashboardID_Populated"
            CompletionSetCount="10"
            CompletionListCssClass = "autocomplete_completionListElement"
            CompletionListItemCssClass = "autocomplete_listItem"
            CompletionListHighlightedItemCssClass = "autocomplete_highlightedListItem"
            Runat="Server" />
        </td>
      </tr>
      <tr>
        <td class="alignright">
          <b><asp:Label ID="L_DBRows" ForeColor="#CC6633" runat="server" Text="DBRows :" /><span style="color:red">*</span></b>
        </td>
        <td>
          <asp:TextBox
            ID = "F_DBRows"
            CssClass = "mypktxt"
            Width="88px"
            Text='<%# Bind("DBRows") %>'
            AutoCompleteType = "None"
            onfocus = "return this.select();"
            ToolTip="Enter value for DBRows."
            ValidationGroup = "wfnewUserDB"
            onblur= "script_wfnewUserDB.validate_DBRows(this);"
            Runat="Server" />
          <asp:RequiredFieldValidator 
            ID = "RFVDBRows"
            runat = "server"
            ControlToValidate = "F_DBRows"
            ErrorMessage = "<div class='errorLG'>Required!</div>"
            Display = "Dynamic"
            EnableClientScript = "true"
            ValidationGroup = "wfnewUserDB"
            SetFocusOnError="true" />
          <asp:Label
            ID = "F_DBRows_Display"
            Text='<%# Eval("WF_DBRows3_Description") %>'
            CssClass="myLbl"
            Runat="Server" />
          <AJX:AutoCompleteExtender
            ID="ACEDBRows"
            BehaviorID="B_ACEDBRows"
            ContextKey=""
            UseContextKey="true"
            ServiceMethod="DBRowsCompletionList"
            TargetControlID="F_DBRows"
            EnableCaching="false"
            CompletionInterval="100"
            FirstRowSelected="true"
            MinimumPrefixLength="1"
            OnClientItemSelected="script_wfnewUserDB.ACEDBRows_Selected"
            OnClientPopulating="script_wfnewUserDB.ACEDBRows_Populating"
            OnClientPopulated="script_wfnewUserDB.ACEDBRows_Populated"
            CompletionSetCount="10"
            CompletionListCssClass = "autocomplete_completionListElement"
            CompletionListItemCssClass = "autocomplete_listItem"
            CompletionListHighlightedItemCssClass = "autocomplete_highlightedListItem"
            Runat="Server" />
        </td>
      <td></td><td></td></tr>
      <tr><td colspan="4" style="border-top: solid 1pt LightGrey" ></td></tr>
      <tr>
        <td class="alignright">
          <asp:Label ID="L_DataSource" runat="server" Text="DataSource :" />&nbsp;
        </td>
        <td>
          <asp:TextBox ID="F_DataSource"
            Text='<%# Bind("DataSource") %>'
            CssClass = "mytxt"
            onfocus = "return this.select();"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for DataSource."
            MaxLength="10"
            Width="88px"
            runat="server" />
        </td>
        <td class="alignright">
          <asp:Label ID="L_Sequence" runat="server" Text="Sequence :" /><span style="color:red">*</span>
        </td>
        <td>
          <asp:TextBox ID="F_Sequence"
            Text='<%# Bind("Sequence") %>'
            Width="96px"
            CssClass = "mytxt"
            style="text-align: Right"
            ValidationGroup="wfnewUserDB"
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
      </tr>
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
            CssClass = "mytxt"
            onfocus = "return this.select();"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for AppName_Left."
            MaxLength="100"
            Width="350px"
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
            CssClass = "mytxt"
            onfocus = "return this.select();"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for vTOTSQLl."
            MaxLength="4000"
            Width="350px"
            runat="server" />
        </td>
        <td class="alignright">
          <asp:Label ID="L_vREDSQLl" runat="server" Text="vREDSQLl :" />&nbsp;
        </td>
        <td>
          <asp:TextBox ID="F_vREDSQLl"
            Text='<%# Bind("vREDSQLl") %>'
            CssClass = "mytxt"
            onfocus = "return this.select();"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for vREDSQLl."
            MaxLength="4000"
            Width="350px"
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
            CssClass = "mytxt"
            onfocus = "return this.select();"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for vAMBSQLl."
            MaxLength="4000"
            Width="350px"
            runat="server" />
        </td>
        <td class="alignright">
          <asp:Label ID="L_vGRESQLl" runat="server" Text="vGRESQLl :" />&nbsp;
        </td>
        <td>
          <asp:TextBox ID="F_vGRESQLl"
            Text='<%# Bind("vGRESQLl") %>'
            CssClass = "mytxt"
            onfocus = "return this.select();"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for vGRESQLl."
            MaxLength="4000"
            Width="350px"
            runat="server" />
        </td>
      </tr>
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
            CssClass = "mytxt"
            onfocus = "return this.select();"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for AppName_Right."
            MaxLength="100"
            Width="350px"
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
            CssClass = "mytxt"
            onfocus = "return this.select();"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for vTOTSQLr."
            MaxLength="4000"
            Width="350px"
            runat="server" />
        </td>
        <td class="alignright">
          <asp:Label ID="L_vREDSQLr" runat="server" Text="vREDSQLr :" />&nbsp;
        </td>
        <td>
          <asp:TextBox ID="F_vREDSQLr"
            Text='<%# Bind("vREDSQLr") %>'
            CssClass = "mytxt"
            onfocus = "return this.select();"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for vREDSQLr."
            MaxLength="4000"
            Width="350px"
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
            CssClass = "mytxt"
            onfocus = "return this.select();"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for vAMBSQLr."
            MaxLength="4000"
            Width="350px"
            runat="server" />
        </td>
        <td class="alignright">
          <asp:Label ID="L_vGRESQLr" runat="server" Text="vGRESQLr :" />&nbsp;
        </td>
        <td>
          <asp:TextBox ID="F_vGRESQLr"
            Text='<%# Bind("vGRESQLr") %>'
            CssClass = "mytxt"
            onfocus = "return this.select();"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for vGRESQLr."
            MaxLength="4000"
            Width="350px"
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
  ID = "ODSwfnewUserDB"
  DataObjectTypeName = "SIS.WF.wfnewUserDB"
  InsertMethod="UZ_wfnewUserDBInsert"
  OldValuesParameterFormatString = "original_{0}"
  TypeName = "SIS.WF.wfnewUserDB"
  SelectMethod = "GetNewRecord"
  runat = "server" >
</asp:ObjectDataSource>
</div>
</div>
</asp:Content>

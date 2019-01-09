<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="EF_wfUserDBRows.aspx.vb" Inherits="EF_wfUserDBRows" title="Edit: User DB Rows" %>
<asp:Content ID="CPHwfUserDBRows" ContentPlaceHolderID="cph1" Runat="Server">
<div id="div1" class="ui-widget-content page">
<div id="div2" class="caption">
    <asp:Label ID="LabelwfUserDBRows" runat="server" Text="&nbsp;Edit: User DB Rows"></asp:Label>
</div>
<div id="div3" class="pagedata">
<asp:UpdatePanel ID="UPNLwfUserDBRows" runat="server" >
<ContentTemplate>
  <LGM:ToolBar0 
    ID = "TBLwfUserDBRows"
    ToolType = "lgNMEdit"
    UpdateAndStay = "False"
    EnableDelete = "False"
    ValidationGroup = "wfUserDBRows"
    runat = "server" />
<asp:FormView ID="FVwfUserDBRows"
  runat = "server"
  DataKeyNames = "UserID,DashboardID,DBRows"
  DataSourceID = "ODSwfUserDBRows"
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
            Text='<%# Eval("WF_UserDashboards3_DashboardID") %>'
            CssClass="myLbl"
            Runat="Server" />
        </td>
      </tr>
      <tr><td colspan="4" style="border-top: solid 1pt LightGrey" ></td></tr>
      <tr>
        <td class="alignright">
          <b><asp:Label ID="L_DBRows" runat="server" ForeColor="#CC6633" Text="DB Rows :" /><span style="color:red">*</span></b>
        </td>
        <td colspan="3">
          <asp:TextBox
            ID = "F_DBRows"
            Width="88px"
            Text='<%# Bind("DBRows") %>'
            CssClass = "mypktxt"
            Enabled = "False"
            ToolTip="Value of DB Rows."
            Runat="Server" />
          <asp:Label
            ID = "F_DBRows_Display"
            Text='<%# Eval("WF_DBRows2_Description") %>'
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
      <tr>
        <td class="alignright">
          <asp:Label ID="L_ReminderOnCount" runat="server" Text="Reminder On Count :" />&nbsp;
        </td>
        <td>
          <asp:CheckBox ID="F_ReminderOnCount"
            Checked='<%# Bind("ReminderOnCount") %>'
            CssClass = "mychk"
            runat="server" />
        </td>
        <td class="alignright">
          <asp:Label ID="L_ReminderCountThreshold" runat="server" Text="Reminder Count Threshold :" />&nbsp;
        </td>
        <td>
          <asp:TextBox ID="F_ReminderCountThreshold"
            Text='<%# Bind("ReminderCountThreshold") %>'
            style="text-align: right"
            Width="88px"
            CssClass = "mytxt"
            MaxLength="10"
            onfocus = "return this.select();"
            runat="server" />
          <AJX:MaskedEditExtender 
            ID = "MEEReminderCountThreshold"
            runat = "server"
            mask = "9999999999"
            AcceptNegative = "Left"
            MaskType="Number"
            MessageValidatorTip="true"
            InputDirection="RightToLeft"
            ErrorTooltipEnabled="true"
            TargetControlID="F_ReminderCountThreshold" />
          <AJX:MaskedEditValidator 
            ID = "MEVReminderCountThreshold"
            runat = "server"
            ControlToValidate = "F_ReminderCountThreshold"
            ControlExtender = "MEEReminderCountThreshold"
            EmptyValueBlurredText = "<div class='errorLG'>Required!</div>"
            Display = "Dynamic"
            EnableClientScript = "true"
            IsValidEmpty = "True"
            SetFocusOnError="true" />
        </td>
      </tr>
      <tr>
        <td class="alignright">
          <asp:Label ID="L_ReminderCountDBDataID" runat="server" Text="Reminder Count Data :" />&nbsp;
        </td>
        <td>
          <asp:TextBox
            ID = "F_ReminderCountDBDataID"
            CssClass = "myfktxt"
            Text='<%# Bind("ReminderCountDBDataID") %>'
            AutoCompleteType = "None"
            Width="88px"
            onfocus = "return this.select();"
            ToolTip="Enter value for Reminder Count Data."
            onblur= "script_wfUserDBRows.validate_ReminderCountDBDataID(this);"
            Runat="Server" />
          <asp:Label
            ID = "F_ReminderCountDBDataID_Display"
            Text='<%# Eval("WF_DBData4_Description") %>'
            CssClass="myLbl"
            Runat="Server" />
          <AJX:AutoCompleteExtender
            ID="ACEReminderCountDBDataID"
            BehaviorID="B_ACEReminderCountDBDataID"
            ContextKey=""
            UseContextKey="true"
            ServiceMethod="ReminderCountDBDataIDCompletionList"
            TargetControlID="F_ReminderCountDBDataID"
            EnableCaching="false"
            CompletionInterval="100"
            FirstRowSelected="true"
            MinimumPrefixLength="1"
            OnClientItemSelected="script_wfUserDBRows.ACEReminderCountDBDataID_Selected"
            OnClientPopulating="script_wfUserDBRows.ACEReminderCountDBDataID_Populating"
            OnClientPopulated="script_wfUserDBRows.ACEReminderCountDBDataID_Populated"
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
          <asp:Label ID="L_ReminderOnAvg" runat="server" Text="Reminder On Avg :" />&nbsp;
        </td>
        <td>
          <asp:CheckBox ID="F_ReminderOnAvg"
            Checked='<%# Bind("ReminderOnAvg") %>'
            CssClass = "mychk"
            runat="server" />
        </td>
        <td class="alignright">
          <asp:Label ID="L_ReminderLapsDaysAvg" runat="server" Text="Reminder Laps Days Avg :" />&nbsp;
        </td>
        <td>
          <asp:TextBox ID="F_ReminderLapsDaysAvg"
            Text='<%# Bind("ReminderLapsDaysAvg") %>'
            style="text-align: right"
            Width="88px"
            CssClass = "mytxt"
            MaxLength="10"
            onfocus = "return this.select();"
            runat="server" />
          <AJX:MaskedEditExtender 
            ID = "MEEReminderLapsDaysAvg"
            runat = "server"
            mask = "9999999999"
            AcceptNegative = "Left"
            MaskType="Number"
            MessageValidatorTip="true"
            InputDirection="RightToLeft"
            ErrorTooltipEnabled="true"
            TargetControlID="F_ReminderLapsDaysAvg" />
          <AJX:MaskedEditValidator 
            ID = "MEVReminderLapsDaysAvg"
            runat = "server"
            ControlToValidate = "F_ReminderLapsDaysAvg"
            ControlExtender = "MEEReminderLapsDaysAvg"
            EmptyValueBlurredText = "<div class='errorLG'>Required!</div>"
            Display = "Dynamic"
            EnableClientScript = "true"
            IsValidEmpty = "True"
            SetFocusOnError="true" />
        </td>
      </tr>
      <tr>
        <td class="alignright">
          <asp:Label ID="L_ReminderAvgDBDataID" runat="server" Text="Reminder Avg Data :" />&nbsp;
        </td>
        <td>
          <asp:TextBox
            ID = "F_ReminderAvgDBDataID"
            CssClass = "myfktxt"
            Text='<%# Bind("ReminderAvgDBDataID") %>'
            AutoCompleteType = "None"
            Width="88px"
            onfocus = "return this.select();"
            ToolTip="Enter value for Reminder Avg Data."
            onblur= "script_wfUserDBRows.validate_ReminderAvgDBDataID(this);"
            Runat="Server" />
          <asp:Label
            ID = "F_ReminderAvgDBDataID_Display"
            Text='<%# Eval("WF_DBData5_Description") %>'
            CssClass="myLbl"
            Runat="Server" />
          <AJX:AutoCompleteExtender
            ID="ACEReminderAvgDBDataID"
            BehaviorID="B_ACEReminderAvgDBDataID"
            ContextKey=""
            UseContextKey="true"
            ServiceMethod="ReminderAvgDBDataIDCompletionList"
            TargetControlID="F_ReminderAvgDBDataID"
            EnableCaching="false"
            CompletionInterval="100"
            FirstRowSelected="true"
            MinimumPrefixLength="1"
            OnClientItemSelected="script_wfUserDBRows.ACEReminderAvgDBDataID_Selected"
            OnClientPopulating="script_wfUserDBRows.ACEReminderAvgDBDataID_Populating"
            OnClientPopulated="script_wfUserDBRows.ACEReminderAvgDBDataID_Populated"
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
          <asp:Label ID="L_ReminderOnMax" runat="server" Text="Reminder On Max :" />&nbsp;
        </td>
        <td>
          <asp:CheckBox ID="F_ReminderOnMax"
            Checked='<%# Bind("ReminderOnMax") %>'
            CssClass = "mychk"
            runat="server" />
        </td>
        <td class="alignright">
          <asp:Label ID="L_ReminderLapsDaysMax" runat="server" Text="Reminder Laps Days Max :" />&nbsp;
        </td>
        <td>
          <asp:TextBox ID="F_ReminderLapsDaysMax"
            Text='<%# Bind("ReminderLapsDaysMax") %>'
            style="text-align: right"
            Width="88px"
            CssClass = "mytxt"
            MaxLength="10"
            onfocus = "return this.select();"
            runat="server" />
          <AJX:MaskedEditExtender 
            ID = "MEEReminderLapsDaysMax"
            runat = "server"
            mask = "9999999999"
            AcceptNegative = "Left"
            MaskType="Number"
            MessageValidatorTip="true"
            InputDirection="RightToLeft"
            ErrorTooltipEnabled="true"
            TargetControlID="F_ReminderLapsDaysMax" />
          <AJX:MaskedEditValidator 
            ID = "MEVReminderLapsDaysMax"
            runat = "server"
            ControlToValidate = "F_ReminderLapsDaysMax"
            ControlExtender = "MEEReminderLapsDaysMax"
            EmptyValueBlurredText = "<div class='errorLG'>Required!</div>"
            Display = "Dynamic"
            EnableClientScript = "true"
            IsValidEmpty = "True"
            SetFocusOnError="true" />
        </td>
      </tr>
      <tr>
        <td class="alignright">
          <asp:Label ID="L_ReminderMaxDBDataID" runat="server" Text="Reminder Max Data :" />&nbsp;
        </td>
        <td>
          <asp:TextBox
            ID = "F_ReminderMaxDBDataID"
            CssClass = "myfktxt"
            Text='<%# Bind("ReminderMaxDBDataID") %>'
            AutoCompleteType = "None"
            Width="88px"
            onfocus = "return this.select();"
            ToolTip="Enter value for Reminder Max Data."
            onblur= "script_wfUserDBRows.validate_ReminderMaxDBDataID(this);"
            Runat="Server" />
          <asp:Label
            ID = "F_ReminderMaxDBDataID_Display"
            Text='<%# Eval("WF_DBData6_Description") %>'
            CssClass="myLbl"
            Runat="Server" />
          <AJX:AutoCompleteExtender
            ID="ACEReminderMaxDBDataID"
            BehaviorID="B_ACEReminderMaxDBDataID"
            ContextKey=""
            UseContextKey="true"
            ServiceMethod="ReminderMaxDBDataIDCompletionList"
            TargetControlID="F_ReminderMaxDBDataID"
            EnableCaching="false"
            CompletionInterval="100"
            FirstRowSelected="true"
            MinimumPrefixLength="1"
            OnClientItemSelected="script_wfUserDBRows.ACEReminderMaxDBDataID_Selected"
            OnClientPopulating="script_wfUserDBRows.ACEReminderMaxDBDataID_Populating"
            OnClientPopulated="script_wfUserDBRows.ACEReminderMaxDBDataID_Populated"
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
          <asp:Label ID="L_ReminderFrequencyDays" runat="server" Text="Reminder Frequency Days :" />&nbsp;
        </td>
        <td colspan="3">
          <asp:TextBox ID="F_ReminderFrequencyDays"
            Text='<%# Bind("ReminderFrequencyDays") %>'
            style="text-align: right"
            Width="88px"
            CssClass = "mytxt"
            MaxLength="10"
            onfocus = "return this.select();"
            runat="server" />
          <AJX:MaskedEditExtender 
            ID = "MEEReminderFrequencyDays"
            runat = "server"
            mask = "9999999999"
            AcceptNegative = "Left"
            MaskType="Number"
            MessageValidatorTip="true"
            InputDirection="RightToLeft"
            ErrorTooltipEnabled="true"
            TargetControlID="F_ReminderFrequencyDays" />
          <AJX:MaskedEditValidator 
            ID = "MEVReminderFrequencyDays"
            runat = "server"
            ControlToValidate = "F_ReminderFrequencyDays"
            ControlExtender = "MEEReminderFrequencyDays"
            EmptyValueBlurredText = "<div class='errorLG'>Required!</div>"
            Display = "Dynamic"
            EnableClientScript = "true"
            IsValidEmpty = "True"
            SetFocusOnError="true" />
        </td>
      </tr>
      <tr><td colspan="4" style="border-top: solid 1pt LightGrey" ></td></tr>
      <tr>
        <td class="alignright">
          <asp:Label ID="L_RunDate" runat="server" Text="Run Date :" />&nbsp;
        </td>
        <td>
          <asp:TextBox ID="F_RunDate"
            Text='<%# Bind("RunDate") %>'
            ToolTip="Value of Run Date."
            Enabled = "False"
            Width="168px"
            CssClass = "dmytxt"
            runat="server" />
        </td>
        <td class="alignright">
          <asp:Label ID="L_NextRunDate" runat="server" Text="Next Run Date :" />&nbsp;
        </td>
        <td>
          <asp:TextBox ID="F_NextRunDate"
            Text='<%# Bind("NextRunDate") %>'
            ToolTip="Value of Next Run Date."
            Enabled = "False"
            Width="168px"
            CssClass = "dmytxt"
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
  ID = "ODSwfUserDBRows"
  DataObjectTypeName = "SIS.WF.wfUserDBRows"
  SelectMethod = "wfUserDBRowsGetByID"
  UpdateMethod="UZ_wfUserDBRowsUpdate"
  OldValuesParameterFormatString = "original_{0}"
  TypeName = "SIS.WF.wfUserDBRows"
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

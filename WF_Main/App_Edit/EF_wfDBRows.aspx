<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="EF_wfDBRows.aspx.vb" Inherits="EF_wfDBRows" title="Edit: DB Rows" %>
<asp:Content ID="CPHwfDBRowsMain" ContentPlaceHolderID="cphMain" runat="server">
  <script src="../../jq3.3/jquery-3.3.1.min.js"></script>
  <link href="../../jq3.3/ui/themes/smoothness/jquery-ui.css" rel="stylesheet" />
  <script src="../../jq3.3/ui/jquery-ui.js"></script>
  <link href="../../fa47/css/font-awesome.min.css" rel="stylesheet" />
  <link href="../../bs4.0/css/bootstrap.min.css" rel="stylesheet" />
  <script src="../../Popper1.0/popper.js"></script>
  <script src="../../Popper1.0/tooltip.js"></script>
  <script src="../../bs4.0/js/bootstrap.min.js"></script>
  <script type="text/javascript">
    $(function () {
      $(".page").resizable();
    });
  </script>

</asp:Content>
<asp:Content ID="CPHwfDBRows" ContentPlaceHolderID="cph1" runat="Server">
  <div id="div1" class="ui-widget-content page">
    <div id="div2" class="caption">
      <asp:Label ID="LabelwfDBRows" runat="server" Text="&nbsp;Edit: DB Rows"></asp:Label>
    </div>
    <div id="div3" class="pagedata">
      <asp:UpdatePanel ID="UPNLwfDBRows" runat="server">
        <ContentTemplate>
          <LGM:ToolBar0
            ID="TBLwfDBRows"
            ToolType="lgNMEdit"
            UpdateAndStay="False"
            ValidationGroup="wfDBRows"
            runat="server" />
          <asp:FormView ID="FVwfDBRows"
            runat="server"
            DataKeyNames="DashboardID,DBRows"
            DataSourceID="ODSwfDBRows"
            DefaultMode="Edit" CssClass="sis_formview">
            <EditItemTemplate>
              <div id="frmdiv" class="ui-widget-content minipage">
                <table style="margin: auto; border: solid 1pt lightgrey">
                  <tr>
                    <td class="alignright">
                      <b>
                        <asp:Label ID="L_DashboardID" runat="server" ForeColor="#CC6633" Text="Dashboard ID :" /><span style="color: red">*</span></b>
                    </td>
                    <td>
                      <asp:TextBox
                        ID="F_DashboardID"
                        Width="88px"
                        Text='<%# Bind("DashboardID") %>'
                        CssClass="mypktxt"
                        Enabled="False"
                        ToolTip="Value of Dashboard ID."
                        runat="Server" />
                      <asp:Label
                        ID="F_DashboardID_Display"
                        Text='<%# Eval("WF_Dashboards1_DBDescription") %>'
                        CssClass="myLbl"
                        runat="Server" />
                    </td>
                    <td class="alignright">
                      <b>
                        <asp:Label ID="L_DBRows" runat="server" ForeColor="#CC6633" Text="DB Rows :" /><span style="color: red">*</span></b>
                    </td>
                    <td>
                      <asp:TextBox ID="F_DBRows"
                        Text='<%# Bind("DBRows") %>'
                        ToolTip="Value of DB Rows."
                        Enabled="False"
                        CssClass="mypktxt"
                        Width="88px"
                        Style="text-align: right"
                        runat="server" />
                    </td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_Description" runat="server" Text="Description :" /><span style="color: red">*</span>
                    </td>
                    <td>
                      <asp:TextBox ID="F_Description"
                        Text='<%# Bind("Description") %>'
                        Width="408px"
                        CssClass="mytxt"
                        onfocus="return this.select();"
                        ValidationGroup="wfDBRows"
                        onblur="this.value=this.value.replace(/\'/g,'');"
                        ToolTip="Enter value for Description."
                        MaxLength="50"
                        runat="server" />
                      <asp:RequiredFieldValidator
                        ID="RFVDescription"
                        runat="server"
                        ControlToValidate="F_Description"
                        ErrorMessage="<div class='errorLG'>Required!</div>"
                        Display="Dynamic"
                        EnableClientScript="true"
                        ValidationGroup="wfDBRows"
                        SetFocusOnError="true" />
                    </td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <td colspan="4" style="border-top: solid 1pt LightGrey"></td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_DBTitle" runat="server" Text="Row Title :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox ID="F_DBTitle"
                        Text='<%# Bind("DBTitle") %>'
                        Width="350px"
                        CssClass="mytxt"
                        onfocus="return this.select();"
                        onblur="this.value=this.value.replace(/\'/g,'');"
                        ToolTip="Enter value for Row Title."
                        MaxLength="100"
                        runat="server" />
                    </td>
                    <td class="alignright">
                      <asp:Label ID="L_TitleStyle" runat="server" Text="Title Style :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox ID="F_TitleStyle"
                        Text='<%# Bind("TitleStyle") %>'
                        Width="350px"
                        CssClass="mytxt"
                        onfocus="return this.select();"
                        onblur="this.value=this.value.replace(/\'/g,'');"
                        ToolTip="Enter value for Title Style."
                        MaxLength="250"
                        runat="server" />
                    </td>
                  </tr>
                  <tr>
                    <td colspan="4" style="border-top: solid 1pt LightGrey"></td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_cssRow" runat="server" Text="css Row :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox ID="F_cssRow"
                        Text='<%# Bind("cssRow") %>'
                        Width="408px"
                        CssClass="mytxt"
                        onfocus="return this.select();"
                        onblur="this.value=this.value.replace(/\'/g,'');"
                        ToolTip="Enter value for css Row."
                        MaxLength="50"
                        runat="server" />
                    </td>
                    <td class="alignright">
                      <asp:Label ID="L_Sequence" runat="server" Text="Sequence :" /><span style="color: red">*</span>
                    </td>
                    <td>
                      <asp:TextBox ID="F_Sequence"
                        Text='<%# Bind("Sequence") %>'
                        Style="text-align: right"
                        Width="88px"
                        CssClass="mytxt"
                        ValidationGroup="wfDBRows"
                        MaxLength="10"
                        onfocus="return this.select();"
                        runat="server" />
                      <AJX:MaskedEditExtender
                        ID="MEESequence"
                        runat="server"
                        Mask="9999999999"
                        AcceptNegative="Left"
                        MaskType="Number"
                        MessageValidatorTip="true"
                        InputDirection="RightToLeft"
                        ErrorTooltipEnabled="true"
                        TargetControlID="F_Sequence" />
                      <AJX:MaskedEditValidator
                        ID="MEVSequence"
                        runat="server"
                        ControlToValidate="F_Sequence"
                        ControlExtender="MEESequence"
                        EmptyValueBlurredText="<div class='errorLG'>Required!</div>"
                        Display="Dynamic"
                        EnableClientScript="true"
                        ValidationGroup="wfDBRows"
                        IsValidEmpty="false"
                        MinimumValue="1"
                        SetFocusOnError="true" />
                    </td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_ShowHeader" runat="server" Text="Show Header :" />&nbsp;
                    </td>
                    <td>
                      <asp:CheckBox ID="F_ShowHeader"
                        Checked='<%# Bind("ShowHeader") %>'
                        CssClass="mychk"
                        runat="server" />
                    </td>
                    <td class="alignright">
                      <asp:Label ID="L_GraphTypeID" runat="server" Text="Graph Type :" />&nbsp;
                    </td>
                    <td>
                      <LGM:LC_wfGraphTypes
                        ID="F_GraphTypeID"
                        SelectedValue='<%# Bind("GraphTypeID") %>'
                        OrderBy="DisplayField"
                        DataTextField="DisplayField"
                        DataValueField="PrimaryKey"
                        IncludeDefault="true"
                        DefaultText="-- Select --"
                        Width="200px"
                        CssClass="myddl"
                        Runat="Server" />
                    </td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_ConvertForGraph" runat="server" Text="Convert For Graph :" />&nbsp;
                    </td>
                    <td>
                      <asp:CheckBox ID="F_ConvertForGraph"
                        Checked='<%# Bind("ConvertForGraph") %>'
                        CssClass="mychk"
                        runat="server" />
                    </td>
                    <td class="alignright">
                      <asp:Label ID="L_NotToDraw" runat="server" Text="Do Not Draw :" />&nbsp;
                    </td>
                    <td>
                      <asp:CheckBox ID="F_NotToDraw"
                        Checked='<%# Bind("NotToDraw") %>'
                        CssClass="mychk"
                        runat="server" />
                    </td>
                  </tr>
                  <tr>
                    <td colspan="4" style="border-top: solid 1pt LightGrey"></td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_ParentDBRows" runat="server" Text="Parent DB Rows :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox
                        ID="F_ParentDBRows"
                        CssClass="myfktxt"
                        Text='<%# Bind("ParentDBRows") %>'
                        AutoCompleteType="None"
                        Width="88px"
                        onfocus="return this.select();"
                        ToolTip="Enter value for Parent DB Rows."
                        onblur="script_wfDBRows.validate_ParentDBRows(this);"
                        runat="Server" />
                      <asp:Label
                        ID="F_ParentDBRows_Display"
                        Text='<%# Eval("WF_DBRows2_Description") %>'
                        CssClass="myLbl"
                        runat="Server" />
                      <AJX:AutoCompleteExtender
                        ID="ACEParentDBRows"
                        BehaviorID="B_ACEParentDBRows"
                        ContextKey=""
                        UseContextKey="true"
                        ServiceMethod="ParentDBRowsCompletionList"
                        TargetControlID="F_ParentDBRows"
                        EnableCaching="false"
                        CompletionInterval="100"
                        FirstRowSelected="true"
                        MinimumPrefixLength="1"
                        OnClientItemSelected="script_wfDBRows.ACEParentDBRows_Selected"
                        OnClientPopulating="script_wfDBRows.ACEParentDBRows_Populating"
                        OnClientPopulated="script_wfDBRows.ACEParentDBRows_Populated"
                        CompletionSetCount="10"
                        CompletionListCssClass="autocomplete_completionListElement"
                        CompletionListItemCssClass="autocomplete_listItem"
                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                        runat="Server" />
                    </td>
                    <td class="alignright">
                      <asp:Label ID="L_DBRowTypeID" runat="server" Text="DB Row Type :" />&nbsp;
                    </td>
                    <td>
                      <LGM:LC_wfDBRowTypes
                        ID="F_DBRowTypeID"
                        SelectedValue='<%# Bind("DBRowTypeID") %>'
                        OrderBy="DisplayField"
                        DataTextField="DisplayField"
                        DataValueField="PrimaryKey"
                        IncludeDefault="true"
                        DefaultText="-- Select --"
                        Width="200px"
                        CssClass="myddl"
                        Runat="Server" />
                    </td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_MainDBDataID" runat="server" Text="MainDBDataID :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox
                        ID="F_MainDBDataID"
                        CssClass="myfktxt"
                        Text='<%# Bind("MainDBDataID") %>'
                        AutoCompleteType="None"
                        Width="88px"
                        onfocus="return this.select();"
                        ToolTip="Enter value for MainDBDataID."
                        onblur="script_wfDBRows.validate_MainDBDataID(this);"
                        runat="Server" />
                      <asp:Label
                        ID="F_MainDBDataID_Display"
                        Text='<%# Eval("WF_DBData14_Description") %>'
                        CssClass="myLbl"
                        runat="Server" />
                      <AJX:AutoCompleteExtender
                        ID="ACEMainDBDataID"
                        BehaviorID="B_ACEMainDBDataID"
                        ContextKey=""
                        UseContextKey="true"
                        ServiceMethod="MainDBDataIDCompletionList"
                        TargetControlID="F_MainDBDataID"
                        EnableCaching="false"
                        CompletionInterval="100"
                        FirstRowSelected="true"
                        MinimumPrefixLength="1"
                        OnClientItemSelected="script_wfDBRows.ACEMainDBDataID_Selected"
                        OnClientPopulating="script_wfDBRows.ACEMainDBDataID_Populating"
                        OnClientPopulated="script_wfDBRows.ACEMainDBDataID_Populated"
                        CompletionSetCount="10"
                        CompletionListCssClass="autocomplete_completionListElement"
                        CompletionListItemCssClass="autocomplete_listItem"
                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                        runat="Server" />
                    </td>
                    <td class="alignright">
                      <asp:Label ID="L_MainDBIconID" runat="server" Text="MainDBIconID :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox
                        ID="F_MainDBIconID"
                        CssClass="myfktxt"
                        Text='<%# Bind("MainDBIconID") %>'
                        AutoCompleteType="None"
                        Width="88px"
                        onfocus="return this.select();"
                        ToolTip="Enter value for MainDBIconID."
                        onblur="script_wfDBRows.validate_MainDBIconID(this);"
                        runat="Server" />
                      <asp:Label
                        ID="F_MainDBIconID_Display"
                        Text='<%# Eval("WF_DBIcons17_IconName") %>'
                        CssClass="myLbl"
                        runat="Server" />
                      <AJX:AutoCompleteExtender
                        ID="ACEMainDBIconID"
                        BehaviorID="B_ACEMainDBIconID"
                        ContextKey=""
                        UseContextKey="true"
                        ServiceMethod="MainDBIconIDCompletionList"
                        TargetControlID="F_MainDBIconID"
                        EnableCaching="false"
                        CompletionInterval="100"
                        FirstRowSelected="true"
                        MinimumPrefixLength="1"
                        OnClientItemSelected="script_wfDBRows.ACEMainDBIconID_Selected"
                        OnClientPopulating="script_wfDBRows.ACEMainDBIconID_Populating"
                        OnClientPopulated="script_wfDBRows.ACEMainDBIconID_Populated"
                        CompletionSetCount="10"
                        CompletionListCssClass="autocomplete_completionListElement"
                        CompletionListItemCssClass="autocomplete_listItem"
                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                        runat="Server" />
                    </td>
                  </tr>
                  <tr>
                    <td colspan="4" style="border-top: solid 1pt LightGrey"></td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_IsDV" runat="server" Text="Have Detail View :" />&nbsp;
                    </td>
                    <td>
                      <asp:CheckBox ID="F_IsDV"
                        Checked='<%# Bind("IsDV") %>'
                        CssClass="mychk"
                        runat="server" />
                    </td>
                    <td class="alignright">
                      <asp:Label ID="L_DVTypeID" runat="server" Text="DV Type :" />&nbsp;
                    </td>
                    <td>
                      <LGM:LC_wfDetailViewTypes
                        ID="F_DVTypeID"
                        SelectedValue='<%# Bind("DVTypeID") %>'
                        OrderBy="DisplayField"
                        DataTextField="DisplayField"
                        DataValueField="PrimaryKey"
                        IncludeDefault="true"
                        DefaultText="-- Select --"
                        Width="200px"
                        CssClass="myddl"
                        Runat="Server" />
                    </td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_IsDVURL" runat="server" Text="Is Detail View URL :" />&nbsp;
                    </td>
                    <td>
                      <asp:CheckBox ID="F_IsDVURL"
                        Checked='<%# Bind("IsDVURL") %>'
                        CssClass="mychk"
                        runat="server" />
                    </td>
                    <td class="alignright">
                      <asp:Label ID="L_DVURL" runat="server" Text="DV URL :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox ID="F_DVURL"
                        Text='<%# Bind("DVURL") %>'
                        CssClass="mytxt"
                        onfocus="return this.select();"
                        onblur="this.value=this.value.replace(/\'/g,'');"
                        ToolTip="Enter value for DV URL."
                        MaxLength="500"
                        Width="350px"
                        runat="server" />
                    </td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_DVDescription" runat="server" Text="DV Description :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox ID="F_DVDescription"
                        Text='<%# Bind("DVDescription") %>'
                        Width="350px"
                        CssClass="mytxt"
                        onfocus="return this.select();"
                        onblur="this.value=this.value.replace(/\'/g,'');"
                        ToolTip="Enter value for DV Description."
                        MaxLength="100"
                        runat="server" />
                    </td>
                    <td class="alignright">
                      <asp:Label ID="L_DVDBIconID" runat="server" Text="DV Icon :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox
                        ID="F_DVDBIconID"
                        CssClass="myfktxt"
                        Text='<%# Bind("DVDBIconID") %>'
                        AutoCompleteType="None"
                        Width="88px"
                        onfocus="return this.select();"
                        ToolTip="Enter value for DV Icon."
                        onblur="script_wfDBRows.validate_DVDBIconID(this);"
                        runat="Server" />
                      <asp:Label
                        ID="F_DVDBIconID_Display"
                        Text='<%# Eval("WF_DBIcons18_IconName") %>'
                        CssClass="myLbl"
                        runat="Server" />
                      <AJX:AutoCompleteExtender
                        ID="ACEDVDBIconID"
                        BehaviorID="B_ACEDVDBIconID"
                        ContextKey=""
                        UseContextKey="true"
                        ServiceMethod="DVDBIconIDCompletionList"
                        TargetControlID="F_DVDBIconID"
                        EnableCaching="false"
                        CompletionInterval="100"
                        FirstRowSelected="true"
                        MinimumPrefixLength="1"
                        OnClientItemSelected="script_wfDBRows.ACEDVDBIconID_Selected"
                        OnClientPopulating="script_wfDBRows.ACEDVDBIconID_Populating"
                        OnClientPopulated="script_wfDBRows.ACEDVDBIconID_Populated"
                        CompletionSetCount="10"
                        CompletionListCssClass="autocomplete_completionListElement"
                        CompletionListItemCssClass="autocomplete_listItem"
                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                        runat="Server" />
                    </td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_DVDBDataID" runat="server" Text="DV Data :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox
                        ID="F_DVDBDataID"
                        CssClass="myfktxt"
                        Text='<%# Bind("DVDBDataID") %>'
                        AutoCompleteType="None"
                        Width="88px"
                        onfocus="return this.select();"
                        ToolTip="Enter value for DV Data."
                        onblur="script_wfDBRows.validate_DVDBDataID(this);"
                        runat="Server" />
                      <asp:Label
                        ID="F_DVDBDataID_Display"
                        Text='<%# Eval("WF_DBData15_Description") %>'
                        CssClass="myLbl"
                        runat="Server" />
                      <AJX:AutoCompleteExtender
                        ID="ACEDVDBDataID"
                        BehaviorID="B_ACEDVDBDataID"
                        ContextKey=""
                        UseContextKey="true"
                        ServiceMethod="DVDBDataIDCompletionList"
                        TargetControlID="F_DVDBDataID"
                        EnableCaching="false"
                        CompletionInterval="100"
                        FirstRowSelected="true"
                        MinimumPrefixLength="1"
                        OnClientItemSelected="script_wfDBRows.ACEDVDBDataID_Selected"
                        OnClientPopulating="script_wfDBRows.ACEDVDBDataID_Populating"
                        OnClientPopulated="script_wfDBRows.ACEDVDBDataID_Populated"
                        CompletionSetCount="10"
                        CompletionListCssClass="autocomplete_completionListElement"
                        CompletionListItemCssClass="autocomplete_listItem"
                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                        runat="Server" />
                    </td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_AddNewURL" runat="server" Text="Add New Record URL :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox ID="F_AddNewURL"
                        Text='<%# Bind("AddNewURL") %>'
                        CssClass="mytxt"
                        onfocus="return this.select();"
                        onblur="this.value=this.value.replace(/\'/g,'');"
                        ToolTip="Enter value for Add New Record URL."
                        MaxLength="500"
                        Width="350px"
                        runat="server" />
                    </td>
                    <td class="alignright">
                      <asp:Label ID="L_DVLaunchURL" runat="server" Text="DV Launch URL :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox ID="F_DVLaunchURL"
                        Text='<%# Bind("DVLaunchURL") %>'
                        CssClass="mytxt"
                        onfocus="return this.select();"
                        onblur="this.value=this.value.replace(/\'/g,'');"
                        ToolTip="Enter value for DV Launch URL."
                        MaxLength="500"
                        Width="350px"
                        runat="server" />
                    </td>
                  </tr>
                  <tr>
                    <td colspan="4" style="border-top: solid 1pt LightGrey"></td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_IsDVUpdatable" runat="server" Text="Is DV Updatable :" />&nbsp;
                    </td>
                    <td>
                      <asp:CheckBox ID="F_IsDVUpdatable"
                        Checked='<%# Bind("IsDVUpdatable") %>'
                        CssClass="mychk"
                        runat="server" />
                    </td>
                    <td class="alignright">
                      <asp:Label ID="L_IsDVRemarks" runat="server" Text="Is DV Updates Remarks :" />&nbsp;
                    </td>
                    <td>
                      <asp:CheckBox ID="F_IsDVRemarks"
                        Checked='<%# Bind("IsDVRemarks") %>'
                        CssClass="mychk"
                        runat="server" />
                    </td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_DVRemarksText" runat="server" Text="DV RemarksText :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox ID="F_DVRemarksText"
                        Text='<%# Bind("DVRemarksText") %>'
                        Width="408px"
                        CssClass="mytxt"
                        onfocus="return this.select();"
                        onblur="this.value=this.value.replace(/\'/g,'');"
                        ToolTip="Enter value for DV RemarksText."
                        MaxLength="50"
                        runat="server" />
                    </td>
                    <td class="alignright">
                      <asp:Label ID="L_DVRemarksDBIconID" runat="server" Text="DV Remarks Icon :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox
                        ID="F_DVRemarksDBIconID"
                        CssClass="myfktxt"
                        Text='<%# Bind("DVRemarksDBIconID") %>'
                        AutoCompleteType="None"
                        Width="88px"
                        onfocus="return this.select();"
                        ToolTip="Enter value for DV Remarks Icon."
                        onblur="script_wfDBRows.validate_DVRemarksDBIconID(this);"
                        runat="Server" />
                      <asp:Label
                        ID="F_DVRemarksDBIconID_Display"
                        Text='<%# Eval("WF_DBIcons19_IconName") %>'
                        CssClass="myLbl"
                        runat="Server" />
                      <AJX:AutoCompleteExtender
                        ID="ACEDVRemarksDBIconID"
                        BehaviorID="B_ACEDVRemarksDBIconID"
                        ContextKey=""
                        UseContextKey="true"
                        ServiceMethod="DVRemarksDBIconIDCompletionList"
                        TargetControlID="F_DVRemarksDBIconID"
                        EnableCaching="false"
                        CompletionInterval="100"
                        FirstRowSelected="true"
                        MinimumPrefixLength="1"
                        OnClientItemSelected="script_wfDBRows.ACEDVRemarksDBIconID_Selected"
                        OnClientPopulating="script_wfDBRows.ACEDVRemarksDBIconID_Populating"
                        OnClientPopulated="script_wfDBRows.ACEDVRemarksDBIconID_Populated"
                        CompletionSetCount="10"
                        CompletionListCssClass="autocomplete_completionListElement"
                        CompletionListItemCssClass="autocomplete_listItem"
                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                        runat="Server" />
                    </td>
                  </tr>
                  <tr>
                    <td colspan="4" style="border-top: solid 1pt LightGrey"></td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_IsDVForward" runat="server" Text="Is DV Forward :" />&nbsp;
                    </td>
                    <td>
                      <asp:CheckBox ID="F_IsDVForward"
                        Checked='<%# Bind("IsDVForward") %>'
                        CssClass="mychk"
                        runat="server" />
                    </td>
                    <td class="alignright">
                      <asp:Label ID="L_DVForwardText" runat="server" Text="DV Forward Text :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox ID="F_DVForwardText"
                        Text='<%# Bind("DVForwardText") %>'
                        Width="408px"
                        CssClass="mytxt"
                        onfocus="return this.select();"
                        onblur="this.value=this.value.replace(/\'/g,'');"
                        ToolTip="Enter value for DV Forward Text."
                        MaxLength="50"
                        runat="server" />
                    </td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_DVFDBIconID" runat="server" Text="DV F Icon :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox
                        ID="F_DVFDBIconID"
                        CssClass="myfktxt"
                        Text='<%# Bind("DVFDBIconID") %>'
                        AutoCompleteType="None"
                        Width="88px"
                        onfocus="return this.select();"
                        ToolTip="Enter value for DV F Icon."
                        onblur="script_wfDBRows.validate_DVFDBIconID(this);"
                        runat="Server" />
                      <asp:Label
                        ID="F_DVFDBIconID_Display"
                        Text='<%# Eval("WF_DBIcons20_IconName") %>'
                        CssClass="myLbl"
                        runat="Server" />
                      <AJX:AutoCompleteExtender
                        ID="ACEDVFDBIconID"
                        BehaviorID="B_ACEDVFDBIconID"
                        ContextKey=""
                        UseContextKey="true"
                        ServiceMethod="DVFDBIconIDCompletionList"
                        TargetControlID="F_DVFDBIconID"
                        EnableCaching="false"
                        CompletionInterval="100"
                        FirstRowSelected="true"
                        MinimumPrefixLength="1"
                        OnClientItemSelected="script_wfDBRows.ACEDVFDBIconID_Selected"
                        OnClientPopulating="script_wfDBRows.ACEDVFDBIconID_Populating"
                        OnClientPopulated="script_wfDBRows.ACEDVFDBIconID_Populated"
                        CompletionSetCount="10"
                        CompletionListCssClass="autocomplete_completionListElement"
                        CompletionListItemCssClass="autocomplete_listItem"
                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                        runat="Server" />
                    </td>
                    <td class="alignright">
                      <asp:Label ID="L_DVForwardDBDataID" runat="server" Text="DV Forward Data :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox
                        ID="F_DVForwardDBDataID"
                        CssClass="myfktxt"
                        Text='<%# Bind("DVForwardDBDataID") %>'
                        AutoCompleteType="None"
                        Width="88px"
                        onfocus="return this.select();"
                        ToolTip="Enter value for DV Forward Data."
                        onblur="script_wfDBRows.validate_DVForwardDBDataID(this);"
                        runat="Server" />
                      <asp:Label
                        ID="F_DVForwardDBDataID_Display"
                        Text='<%# Eval("WF_DBData16_Description") %>'
                        CssClass="myLbl"
                        runat="Server" />
                      <AJX:AutoCompleteExtender
                        ID="ACEDVForwardDBDataID"
                        BehaviorID="B_ACEDVForwardDBDataID"
                        ContextKey=""
                        UseContextKey="true"
                        ServiceMethod="DVForwardDBDataIDCompletionList"
                        TargetControlID="F_DVForwardDBDataID"
                        EnableCaching="false"
                        CompletionInterval="100"
                        FirstRowSelected="true"
                        MinimumPrefixLength="1"
                        OnClientItemSelected="script_wfDBRows.ACEDVForwardDBDataID_Selected"
                        OnClientPopulating="script_wfDBRows.ACEDVForwardDBDataID_Populating"
                        OnClientPopulated="script_wfDBRows.ACEDVForwardDBDataID_Populated"
                        CompletionSetCount="10"
                        CompletionListCssClass="autocomplete_completionListElement"
                        CompletionListItemCssClass="autocomplete_listItem"
                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                        runat="Server" />
                    </td>
                  </tr>
                  <tr>
                    <td colspan="4" style="border-top: solid 1pt LightGrey"></td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_IsDVReverse" runat="server" Text="Is DV Reverse :" />&nbsp;
                    </td>
                    <td>
                      <asp:CheckBox ID="F_IsDVReverse"
                        Checked='<%# Bind("IsDVReverse") %>'
                        CssClass="mychk"
                        runat="server" />
                    </td>
                    <td class="alignright">
                      <asp:Label ID="L_DVReverseText" runat="server" Text="DV Reverse Text :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox ID="F_DVReverseText"
                        Text='<%# Bind("DVReverseText") %>'
                        Width="408px"
                        CssClass="mytxt"
                        onfocus="return this.select();"
                        onblur="this.value=this.value.replace(/\'/g,'');"
                        ToolTip="Enter value for DV Reverse Text."
                        MaxLength="50"
                        runat="server" />
                    </td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_DVRDBIconID" runat="server" Text="DV R Icon :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox
                        ID="F_DVRDBIconID"
                        CssClass="myfktxt"
                        Text='<%# Bind("DVRDBIconID") %>'
                        AutoCompleteType="None"
                        Width="88px"
                        onfocus="return this.select();"
                        ToolTip="Enter value for DV R Icon."
                        onblur="script_wfDBRows.validate_DVRDBIconID(this);"
                        runat="Server" />
                      <asp:Label
                        ID="F_DVRDBIconID_Display"
                        Text='<%# Eval("WF_DBIcons21_IconName") %>'
                        CssClass="myLbl"
                        runat="Server" />
                      <AJX:AutoCompleteExtender
                        ID="ACEDVRDBIconID"
                        BehaviorID="B_ACEDVRDBIconID"
                        ContextKey=""
                        UseContextKey="true"
                        ServiceMethod="DVRDBIconIDCompletionList"
                        TargetControlID="F_DVRDBIconID"
                        EnableCaching="false"
                        CompletionInterval="100"
                        FirstRowSelected="true"
                        MinimumPrefixLength="1"
                        OnClientItemSelected="script_wfDBRows.ACEDVRDBIconID_Selected"
                        OnClientPopulating="script_wfDBRows.ACEDVRDBIconID_Populating"
                        OnClientPopulated="script_wfDBRows.ACEDVRDBIconID_Populated"
                        CompletionSetCount="10"
                        CompletionListCssClass="autocomplete_completionListElement"
                        CompletionListItemCssClass="autocomplete_listItem"
                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                        runat="Server" />
                    </td>
                    <td class="alignright">
                      <asp:Label ID="L_DVReverseDBDataID" runat="server" Text="DV Reverse Data :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox
                        ID="F_DVReverseDBDataID"
                        CssClass="myfktxt"
                        Text='<%# Bind("DVReverseDBDataID") %>'
                        AutoCompleteType="None"
                        Width="88px"
                        onfocus="return this.select();"
                        ToolTip="Enter value for DV Reverse Data."
                        onblur="script_wfDBRows.validate_DVReverseDBDataID(this);"
                        runat="Server" />
                      <asp:Label
                        ID="F_DVReverseDBDataID_Display"
                        Text='<%# Eval("WF_DBData6_Description") %>'
                        CssClass="myLbl"
                        runat="Server" />
                      <AJX:AutoCompleteExtender
                        ID="ACEDVReverseDBDataID"
                        BehaviorID="B_ACEDVReverseDBDataID"
                        ContextKey=""
                        UseContextKey="true"
                        ServiceMethod="DVReverseDBDataIDCompletionList"
                        TargetControlID="F_DVReverseDBDataID"
                        EnableCaching="false"
                        CompletionInterval="100"
                        FirstRowSelected="true"
                        MinimumPrefixLength="1"
                        OnClientItemSelected="script_wfDBRows.ACEDVReverseDBDataID_Selected"
                        OnClientPopulating="script_wfDBRows.ACEDVReverseDBDataID_Populating"
                        OnClientPopulated="script_wfDBRows.ACEDVReverseDBDataID_Populated"
                        CompletionSetCount="10"
                        CompletionListCssClass="autocomplete_completionListElement"
                        CompletionListItemCssClass="autocomplete_listItem"
                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                        runat="Server" />
                    </td>
                  </tr>
                  <tr>
                    <td colspan="4" style="border-top: solid 1pt LightGrey"></td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_IsDVAttachment" runat="server" Text="Is DV Attachment :" />&nbsp;
                    </td>
                    <td>
                      <asp:CheckBox ID="F_IsDVAttachment"
                        Checked='<%# Bind("IsDVAttachment") %>'
                        CssClass="mychk"
                        runat="server" />
                    </td>
                    <td class="alignright">
                      <asp:Label ID="L_IsDVAttachmentMulti" runat="server" Text="Is DV Attachment Multiple :" />&nbsp;
                    </td>
                    <td>
                      <asp:CheckBox ID="F_IsDVAttachmentMulti"
                        Checked='<%# Bind("IsDVAttachmentMulti") %>'
                        CssClass="mychk"
                        runat="server" />
                    </td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_DVAttachmentText" runat="server" Text="DV Attachment Text :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox ID="F_DVAttachmentText"
                        Text='<%# Bind("DVAttachmentText") %>'
                        Width="408px"
                        CssClass="mytxt"
                        onfocus="return this.select();"
                        onblur="this.value=this.value.replace(/\'/g,'');"
                        ToolTip="Enter value for DV Attachment Text."
                        MaxLength="50"
                        runat="server" />
                    </td>
                    <td class="alignright">
                      <asp:Label ID="L_DVAttachmentDBIconID" runat="server" Text="DV Attachment Icon :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox
                        ID="F_DVAttachmentDBIconID"
                        CssClass="myfktxt"
                        Text='<%# Bind("DVAttachmentDBIconID") %>'
                        AutoCompleteType="None"
                        Width="88px"
                        onfocus="return this.select();"
                        ToolTip="Enter value for DV Attachment Icon."
                        onblur="script_wfDBRows.validate_DVAttachmentDBIconID(this);"
                        runat="Server" />
                      <asp:Label
                        ID="F_DVAttachmentDBIconID_Display"
                        Text='<%# Eval("WF_DBIcons22_IconName") %>'
                        CssClass="myLbl"
                        runat="Server" />
                      <AJX:AutoCompleteExtender
                        ID="ACEDVAttachmentDBIconID"
                        BehaviorID="B_ACEDVAttachmentDBIconID"
                        ContextKey=""
                        UseContextKey="true"
                        ServiceMethod="DVAttachmentDBIconIDCompletionList"
                        TargetControlID="F_DVAttachmentDBIconID"
                        EnableCaching="false"
                        CompletionInterval="100"
                        FirstRowSelected="true"
                        MinimumPrefixLength="1"
                        OnClientItemSelected="script_wfDBRows.ACEDVAttachmentDBIconID_Selected"
                        OnClientPopulating="script_wfDBRows.ACEDVAttachmentDBIconID_Populating"
                        OnClientPopulated="script_wfDBRows.ACEDVAttachmentDBIconID_Populated"
                        CompletionSetCount="10"
                        CompletionListCssClass="autocomplete_completionListElement"
                        CompletionListItemCssClass="autocomplete_listItem"
                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                        runat="Server" />
                    </td>
                  </tr>
                  <tr>
                    <td colspan="4" style="border-top: solid 1pt LightGrey"></td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_DVFAlert" runat="server" Text="DV Fwd Alert :" />&nbsp;
                    </td>
                    <td>
                      <asp:CheckBox ID="F_DVFAlert"
                        Checked='<%# Bind("DVFAlert") %>'
                        CssClass="mychk"
                        runat="server" />
                    </td>
                    <td class="alignright">
                      <asp:Label ID="L_DVFAlertEMail" runat="server" Text="DV Fwd Alert E-Mail :" />&nbsp;
                    </td>
                    <td>
                      <asp:CheckBox ID="F_DVFAlertEMail"
                        Checked='<%# Bind("DVFAlertEMail") %>'
                        CssClass="mychk"
                        runat="server" />
                    </td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_DVFASubject" runat="server" Text="DV FA Subject :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox ID="F_DVFASubject"
                        Text='<%# Bind("DVFASubject") %>'
                        Width="350px"
                        CssClass="mytxt"
                        onfocus="return this.select();"
                        onblur="this.value=this.value.replace(/\'/g,'');"
                        ToolTip="Enter value for DV FA Subject."
                        MaxLength="100"
                        runat="server" />
                    </td>
                    <td class="alignright">
                      <asp:Label ID="L_DVFABodyTemplate" runat="server" Text="DV FA Body Template :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox ID="F_DVFABodyTemplate"
                        Text='<%# Bind("DVFABodyTemplate") %>'
                        Width="350px"
                        CssClass="mytxt"
                        onfocus="return this.select();"
                        onblur="this.value=this.value.replace(/\'/g,'');"
                        ToolTip="Enter value for DV FA Body Template."
                        MaxLength="100"
                        runat="server" />
                    </td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_DVFEMailDBDataID" runat="server" Text="DV F E-Mail Data :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox
                        ID="F_DVFEMailDBDataID"
                        CssClass="myfktxt"
                        Text='<%# Bind("DVFEMailDBDataID") %>'
                        AutoCompleteType="None"
                        Width="88px"
                        onfocus="return this.select();"
                        ToolTip="Enter value for DV F E-Mail Data."
                        onblur="script_wfDBRows.validate_DVFEMailDBDataID(this);"
                        runat="Server" />
                      <asp:Label
                        ID="F_DVFEMailDBDataID_Display"
                        Text='<%# Eval("WF_DBData7_Description") %>'
                        CssClass="myLbl"
                        runat="Server" />
                      <AJX:AutoCompleteExtender
                        ID="ACEDVFEMailDBDataID"
                        BehaviorID="B_ACEDVFEMailDBDataID"
                        ContextKey=""
                        UseContextKey="true"
                        ServiceMethod="DVFEMailDBDataIDCompletionList"
                        TargetControlID="F_DVFEMailDBDataID"
                        EnableCaching="false"
                        CompletionInterval="100"
                        FirstRowSelected="true"
                        MinimumPrefixLength="1"
                        OnClientItemSelected="script_wfDBRows.ACEDVFEMailDBDataID_Selected"
                        OnClientPopulating="script_wfDBRows.ACEDVFEMailDBDataID_Populating"
                        OnClientPopulated="script_wfDBRows.ACEDVFEMailDBDataID_Populated"
                        CompletionSetCount="10"
                        CompletionListCssClass="autocomplete_completionListElement"
                        CompletionListItemCssClass="autocomplete_listItem"
                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                        runat="Server" />
                    </td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <td colspan="4" style="border-top: solid 1pt LightGrey"></td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_DVFAlertSMS" runat="server" Text="DV FA SMS :" />&nbsp;
                    </td>
                    <td>
                      <asp:CheckBox ID="F_DVFAlertSMS"
                        Checked='<%# Bind("DVFAlertSMS") %>'
                        CssClass="mychk"
                        runat="server" />
                    </td>
                    <td class="alignright">
                      <asp:Label ID="L_DVFASMSText" runat="server" Text="DV FA SMS Text :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox ID="F_DVFASMSText"
                        Text='<%# Bind("DVFASMSText") %>'
                        Width="350px"
                        CssClass="mytxt"
                        onfocus="return this.select();"
                        onblur="this.value=this.value.replace(/\'/g,'');"
                        ToolTip="Enter value for DV FA SMS Text."
                        MaxLength="500"
                        runat="server" />
                    </td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_DVFSMSDBDataID" runat="server" Text="DV F SMS Data :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox
                        ID="F_DVFSMSDBDataID"
                        CssClass="myfktxt"
                        Text='<%# Bind("DVFSMSDBDataID") %>'
                        AutoCompleteType="None"
                        Width="88px"
                        onfocus="return this.select();"
                        ToolTip="Enter value for DV F SMS Data."
                        onblur="script_wfDBRows.validate_DVFSMSDBDataID(this);"
                        runat="Server" />
                      <asp:Label
                        ID="F_DVFSMSDBDataID_Display"
                        Text='<%# Eval("WF_DBData8_Description") %>'
                        CssClass="myLbl"
                        runat="Server" />
                      <AJX:AutoCompleteExtender
                        ID="ACEDVFSMSDBDataID"
                        BehaviorID="B_ACEDVFSMSDBDataID"
                        ContextKey=""
                        UseContextKey="true"
                        ServiceMethod="DVFSMSDBDataIDCompletionList"
                        TargetControlID="F_DVFSMSDBDataID"
                        EnableCaching="false"
                        CompletionInterval="100"
                        FirstRowSelected="true"
                        MinimumPrefixLength="1"
                        OnClientItemSelected="script_wfDBRows.ACEDVFSMSDBDataID_Selected"
                        OnClientPopulating="script_wfDBRows.ACEDVFSMSDBDataID_Populating"
                        OnClientPopulated="script_wfDBRows.ACEDVFSMSDBDataID_Populated"
                        CompletionSetCount="10"
                        CompletionListCssClass="autocomplete_completionListElement"
                        CompletionListItemCssClass="autocomplete_listItem"
                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                        runat="Server" />
                    </td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <td colspan="4" style="border-top: solid 1pt LightGrey"></td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_DVRAlert" runat="server" Text="DV R Alert :" />&nbsp;
                    </td>
                    <td>
                      <asp:CheckBox ID="F_DVRAlert"
                        Checked='<%# Bind("DVRAlert") %>'
                        CssClass="mychk"
                        runat="server" />
                    </td>
                    <td class="alignright">
                      <asp:Label ID="L_DVRAlertEMail" runat="server" Text="DV R Alert E-Mail :" />&nbsp;
                    </td>
                    <td>
                      <asp:CheckBox ID="F_DVRAlertEMail"
                        Checked='<%# Bind("DVRAlertEMail") %>'
                        CssClass="mychk"
                        runat="server" />
                    </td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_DVRASubject" runat="server" Text="DV RA Subject :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox ID="F_DVRASubject"
                        Text='<%# Bind("DVRASubject") %>'
                        Width="350px"
                        CssClass="mytxt"
                        onfocus="return this.select();"
                        onblur="this.value=this.value.replace(/\'/g,'');"
                        ToolTip="Enter value for DV RA Subject."
                        MaxLength="100"
                        runat="server" />
                    </td>
                    <td class="alignright">
                      <asp:Label ID="L_DVRABodyTemplate" runat="server" Text="DV RA Body Template :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox ID="F_DVRABodyTemplate"
                        Text='<%# Bind("DVRABodyTemplate") %>'
                        Width="350px"
                        CssClass="mytxt"
                        onfocus="return this.select();"
                        onblur="this.value=this.value.replace(/\'/g,'');"
                        ToolTip="Enter value for DV RA Body Template."
                        MaxLength="100"
                        runat="server" />
                    </td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_DVREMailDBDataID" runat="server" Text="DV R E-Mail Data :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox
                        ID="F_DVREMailDBDataID"
                        CssClass="myfktxt"
                        Text='<%# Bind("DVREMailDBDataID") %>'
                        AutoCompleteType="None"
                        Width="88px"
                        onfocus="return this.select();"
                        ToolTip="Enter value for DV R E-Mail Data."
                        onblur="script_wfDBRows.validate_DVREMailDBDataID(this);"
                        runat="Server" />
                      <asp:Label
                        ID="F_DVREMailDBDataID_Display"
                        Text='<%# Eval("WF_DBData9_Description") %>'
                        CssClass="myLbl"
                        runat="Server" />
                      <AJX:AutoCompleteExtender
                        ID="ACEDVREMailDBDataID"
                        BehaviorID="B_ACEDVREMailDBDataID"
                        ContextKey=""
                        UseContextKey="true"
                        ServiceMethod="DVREMailDBDataIDCompletionList"
                        TargetControlID="F_DVREMailDBDataID"
                        EnableCaching="false"
                        CompletionInterval="100"
                        FirstRowSelected="true"
                        MinimumPrefixLength="1"
                        OnClientItemSelected="script_wfDBRows.ACEDVREMailDBDataID_Selected"
                        OnClientPopulating="script_wfDBRows.ACEDVREMailDBDataID_Populating"
                        OnClientPopulated="script_wfDBRows.ACEDVREMailDBDataID_Populated"
                        CompletionSetCount="10"
                        CompletionListCssClass="autocomplete_completionListElement"
                        CompletionListItemCssClass="autocomplete_listItem"
                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                        runat="Server" />
                    </td>
                    <td class="alignright">
                      <asp:Label ID="L_DVRAlertSMS" runat="server" Text="DV R Alert SMS :" />&nbsp;
                    </td>
                    <td>
                      <asp:CheckBox ID="F_DVRAlertSMS"
                        Checked='<%# Bind("DVRAlertSMS") %>'
                        CssClass="mychk"
                        runat="server" />
                    </td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_DVRASMSText" runat="server" Text="DV RA SMS Text :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox ID="F_DVRASMSText"
                        Text='<%# Bind("DVRASMSText") %>'
                        Width="350px"
                        CssClass="mytxt"
                        onfocus="return this.select();"
                        onblur="this.value=this.value.replace(/\'/g,'');"
                        ToolTip="Enter value for DV RA SMS Text."
                        MaxLength="500"
                        runat="server" />
                    </td>
                    <td class="alignright">
                      <asp:Label ID="L_DVRSMSDBDataID" runat="server" Text="DV R SMS Data :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox
                        ID="F_DVRSMSDBDataID"
                        CssClass="myfktxt"
                        Text='<%# Bind("DVRSMSDBDataID") %>'
                        AutoCompleteType="None"
                        Width="88px"
                        onfocus="return this.select();"
                        ToolTip="Enter value for DV R SMS Data."
                        onblur="script_wfDBRows.validate_DVRSMSDBDataID(this);"
                        runat="Server" />
                      <asp:Label
                        ID="F_DVRSMSDBDataID_Display"
                        Text='<%# Eval("WF_DBData10_Description") %>'
                        CssClass="myLbl"
                        runat="Server" />
                      <AJX:AutoCompleteExtender
                        ID="ACEDVRSMSDBDataID"
                        BehaviorID="B_ACEDVRSMSDBDataID"
                        ContextKey=""
                        UseContextKey="true"
                        ServiceMethod="DVRSMSDBDataIDCompletionList"
                        TargetControlID="F_DVRSMSDBDataID"
                        EnableCaching="false"
                        CompletionInterval="100"
                        FirstRowSelected="true"
                        MinimumPrefixLength="1"
                        OnClientItemSelected="script_wfDBRows.ACEDVRSMSDBDataID_Selected"
                        OnClientPopulating="script_wfDBRows.ACEDVRSMSDBDataID_Populating"
                        OnClientPopulated="script_wfDBRows.ACEDVRSMSDBDataID_Populated"
                        CompletionSetCount="10"
                        CompletionListCssClass="autocomplete_completionListElement"
                        CompletionListItemCssClass="autocomplete_listItem"
                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                        runat="Server" />
                    </td>
                  </tr>
                  <tr>
                    <td colspan="4" style="border-top: solid 1pt LightGrey"></td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_ReminderOnCount" runat="server" Text="Reminder On Count :" />&nbsp;
                    </td>
                    <td>
                      <asp:CheckBox ID="F_ReminderOnCount"
                        Checked='<%# Bind("ReminderOnCount") %>'
                        CssClass="mychk"
                        runat="server" />
                    </td>
                    <td class="alignright">
                      <asp:Label ID="L_ReminderCountThreshold" runat="server" Text="Reminder Count Threshold :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox ID="F_ReminderCountThreshold"
                        Text='<%# Bind("ReminderCountThreshold") %>'
                        Style="text-align: right"
                        Width="88px"
                        CssClass="mytxt"
                        MaxLength="10"
                        onfocus="return this.select();"
                        runat="server" />
                      <AJX:MaskedEditExtender
                        ID="MEEReminderCountThreshold"
                        runat="server"
                        Mask="9999999999"
                        AcceptNegative="Left"
                        MaskType="Number"
                        MessageValidatorTip="true"
                        InputDirection="RightToLeft"
                        ErrorTooltipEnabled="true"
                        TargetControlID="F_ReminderCountThreshold" />
                      <AJX:MaskedEditValidator
                        ID="MEVReminderCountThreshold"
                        runat="server"
                        ControlToValidate="F_ReminderCountThreshold"
                        ControlExtender="MEEReminderCountThreshold"
                        EmptyValueBlurredText="<div class='errorLG'>Required!</div>"
                        Display="Dynamic"
                        EnableClientScript="true"
                        IsValidEmpty="True"
                        SetFocusOnError="true" />
                    </td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_ReminderCountDBDataID" runat="server" Text="Reminder Count Data :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox
                        ID="F_ReminderCountDBDataID"
                        CssClass="myfktxt"
                        Text='<%# Bind("ReminderCountDBDataID") %>'
                        AutoCompleteType="None"
                        Width="88px"
                        onfocus="return this.select();"
                        ToolTip="Enter value for Reminder Count Data."
                        onblur="script_wfDBRows.validate_ReminderCountDBDataID(this);"
                        runat="Server" />
                      <asp:Label
                        ID="F_ReminderCountDBDataID_Display"
                        Text='<%# Eval("WF_DBData11_Description") %>'
                        CssClass="myLbl"
                        runat="Server" />
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
                        OnClientItemSelected="script_wfDBRows.ACEReminderCountDBDataID_Selected"
                        OnClientPopulating="script_wfDBRows.ACEReminderCountDBDataID_Populating"
                        OnClientPopulated="script_wfDBRows.ACEReminderCountDBDataID_Populated"
                        CompletionSetCount="10"
                        CompletionListCssClass="autocomplete_completionListElement"
                        CompletionListItemCssClass="autocomplete_listItem"
                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                        runat="Server" />
                    </td>
                    <td class="alignright">
                      <asp:Label ID="L_ReminderOnAvg" runat="server" Text="Reminder On Avg :" />&nbsp;
                    </td>
                    <td>
                      <asp:CheckBox ID="F_ReminderOnAvg"
                        Checked='<%# Bind("ReminderOnAvg") %>'
                        CssClass="mychk"
                        runat="server" />
                    </td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_ReminderLapsDaysAvg" runat="server" Text="Reminder Laps Days Avg :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox ID="F_ReminderLapsDaysAvg"
                        Text='<%# Bind("ReminderLapsDaysAvg") %>'
                        Style="text-align: right"
                        Width="88px"
                        CssClass="mytxt"
                        MaxLength="10"
                        onfocus="return this.select();"
                        runat="server" />
                      <AJX:MaskedEditExtender
                        ID="MEEReminderLapsDaysAvg"
                        runat="server"
                        Mask="9999999999"
                        AcceptNegative="Left"
                        MaskType="Number"
                        MessageValidatorTip="true"
                        InputDirection="RightToLeft"
                        ErrorTooltipEnabled="true"
                        TargetControlID="F_ReminderLapsDaysAvg" />
                      <AJX:MaskedEditValidator
                        ID="MEVReminderLapsDaysAvg"
                        runat="server"
                        ControlToValidate="F_ReminderLapsDaysAvg"
                        ControlExtender="MEEReminderLapsDaysAvg"
                        EmptyValueBlurredText="<div class='errorLG'>Required!</div>"
                        Display="Dynamic"
                        EnableClientScript="true"
                        IsValidEmpty="True"
                        SetFocusOnError="true" />
                    </td>
                    <td class="alignright">
                      <asp:Label ID="L_ReminderAvgDBDataID" runat="server" Text="Reminder Avg Data :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox
                        ID="F_ReminderAvgDBDataID"
                        CssClass="myfktxt"
                        Text='<%# Bind("ReminderAvgDBDataID") %>'
                        AutoCompleteType="None"
                        Width="88px"
                        onfocus="return this.select();"
                        ToolTip="Enter value for Reminder Avg Data."
                        onblur="script_wfDBRows.validate_ReminderAvgDBDataID(this);"
                        runat="Server" />
                      <asp:Label
                        ID="F_ReminderAvgDBDataID_Display"
                        Text='<%# Eval("WF_DBData12_Description") %>'
                        CssClass="myLbl"
                        runat="Server" />
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
                        OnClientItemSelected="script_wfDBRows.ACEReminderAvgDBDataID_Selected"
                        OnClientPopulating="script_wfDBRows.ACEReminderAvgDBDataID_Populating"
                        OnClientPopulated="script_wfDBRows.ACEReminderAvgDBDataID_Populated"
                        CompletionSetCount="10"
                        CompletionListCssClass="autocomplete_completionListElement"
                        CompletionListItemCssClass="autocomplete_listItem"
                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                        runat="Server" />
                    </td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_ReminderOnMax" runat="server" Text="Reminder On Max :" />&nbsp;
                    </td>
                    <td>
                      <asp:CheckBox ID="F_ReminderOnMax"
                        Checked='<%# Bind("ReminderOnMax") %>'
                        CssClass="mychk"
                        runat="server" />
                    </td>
                    <td class="alignright">
                      <asp:Label ID="L_ReminderLapsDaysMax" runat="server" Text="Reminder Laps Days Max :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox ID="F_ReminderLapsDaysMax"
                        Text='<%# Bind("ReminderLapsDaysMax") %>'
                        Style="text-align: right"
                        Width="88px"
                        CssClass="mytxt"
                        MaxLength="10"
                        onfocus="return this.select();"
                        runat="server" />
                      <AJX:MaskedEditExtender
                        ID="MEEReminderLapsDaysMax"
                        runat="server"
                        Mask="9999999999"
                        AcceptNegative="Left"
                        MaskType="Number"
                        MessageValidatorTip="true"
                        InputDirection="RightToLeft"
                        ErrorTooltipEnabled="true"
                        TargetControlID="F_ReminderLapsDaysMax" />
                      <AJX:MaskedEditValidator
                        ID="MEVReminderLapsDaysMax"
                        runat="server"
                        ControlToValidate="F_ReminderLapsDaysMax"
                        ControlExtender="MEEReminderLapsDaysMax"
                        EmptyValueBlurredText="<div class='errorLG'>Required!</div>"
                        Display="Dynamic"
                        EnableClientScript="true"
                        IsValidEmpty="True"
                        SetFocusOnError="true" />
                    </td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_ReminderMaxDBDataID" runat="server" Text="Reminder Max Data :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox
                        ID="F_ReminderMaxDBDataID"
                        CssClass="myfktxt"
                        Text='<%# Bind("ReminderMaxDBDataID") %>'
                        AutoCompleteType="None"
                        Width="88px"
                        onfocus="return this.select();"
                        ToolTip="Enter value for Reminder Max Data."
                        onblur="script_wfDBRows.validate_ReminderMaxDBDataID(this);"
                        runat="Server" />
                      <asp:Label
                        ID="F_ReminderMaxDBDataID_Display"
                        Text='<%# Eval("WF_DBData13_Description") %>'
                        CssClass="myLbl"
                        runat="Server" />
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
                        OnClientItemSelected="script_wfDBRows.ACEReminderMaxDBDataID_Selected"
                        OnClientPopulating="script_wfDBRows.ACEReminderMaxDBDataID_Populating"
                        OnClientPopulated="script_wfDBRows.ACEReminderMaxDBDataID_Populated"
                        CompletionSetCount="10"
                        CompletionListCssClass="autocomplete_completionListElement"
                        CompletionListItemCssClass="autocomplete_listItem"
                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                        runat="Server" />
                    </td>
                    <td class="alignright">
                      <asp:Label ID="L_ReminderFrequencyDays" runat="server" Text="Reminder Frequency Days :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox ID="F_ReminderFrequencyDays"
                        Text='<%# Bind("ReminderFrequencyDays") %>'
                        Style="text-align: right"
                        Width="88px"
                        CssClass="mytxt"
                        MaxLength="10"
                        onfocus="return this.select();"
                        runat="server" />
                      <AJX:MaskedEditExtender
                        ID="MEEReminderFrequencyDays"
                        runat="server"
                        Mask="9999999999"
                        AcceptNegative="Left"
                        MaskType="Number"
                        MessageValidatorTip="true"
                        InputDirection="RightToLeft"
                        ErrorTooltipEnabled="true"
                        TargetControlID="F_ReminderFrequencyDays" />
                      <AJX:MaskedEditValidator
                        ID="MEVReminderFrequencyDays"
                        runat="server"
                        ControlToValidate="F_ReminderFrequencyDays"
                        ControlExtender="MEEReminderFrequencyDays"
                        EmptyValueBlurredText="<div class='errorLG'>Required!</div>"
                        Display="Dynamic"
                        EnableClientScript="true"
                        IsValidEmpty="True"
                        SetFocusOnError="true" />
                    </td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_ReminderAlertEMail" runat="server" Text="Reminder Alert E-Mail :" />&nbsp;
                    </td>
                    <td>
                      <asp:CheckBox ID="F_ReminderAlertEMail"
                        Checked='<%# Bind("ReminderAlertEMail") %>'
                        CssClass="mychk"
                        runat="server" />
                    </td>
                    <td class="alignright">
                      <asp:Label ID="L_ReminderEMailDBDataID" runat="server" Text="Reminder E-Mail Data :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox
                        ID="F_ReminderEMailDBDataID"
                        CssClass="myfktxt"
                        Text='<%# Bind("ReminderEMailDBDataID") %>'
                        AutoCompleteType="None"
                        Width="88px"
                        onfocus="return this.select();"
                        ToolTip="Enter value for Reminder E-Mail Data."
                        onblur="script_wfDBRows.validate_ReminderEMailDBDataID(this);"
                        runat="Server" />
                      <asp:Label
                        ID="F_ReminderEMailDBDataID_Display"
                        Text='<%# Eval("WF_DBData23_Description") %>'
                        CssClass="myLbl"
                        runat="Server" />
                      <AJX:AutoCompleteExtender
                        ID="ACEReminderEMailDBDataID"
                        BehaviorID="B_ACEReminderEMailDBDataID"
                        ContextKey=""
                        UseContextKey="true"
                        ServiceMethod="ReminderEMailDBDataIDCompletionList"
                        TargetControlID="F_ReminderEMailDBDataID"
                        EnableCaching="false"
                        CompletionInterval="100"
                        FirstRowSelected="true"
                        MinimumPrefixLength="1"
                        OnClientItemSelected="script_wfDBRows.ACEReminderEMailDBDataID_Selected"
                        OnClientPopulating="script_wfDBRows.ACEReminderEMailDBDataID_Populating"
                        OnClientPopulated="script_wfDBRows.ACEReminderEMailDBDataID_Populated"
                        CompletionSetCount="10"
                        CompletionListCssClass="autocomplete_completionListElement"
                        CompletionListItemCssClass="autocomplete_listItem"
                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                        runat="Server" />
                    </td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_ReminderASubject" runat="server" Text="Reminder A Subject :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox ID="F_ReminderASubject"
                        Text='<%# Bind("ReminderASubject") %>'
                        Width="350px"
                        CssClass="mytxt"
                        onfocus="return this.select();"
                        onblur="this.value=this.value.replace(/\'/g,'');"
                        ToolTip="Enter value for Reminder A Subject."
                        MaxLength="100"
                        runat="server" />
                    </td>
                    <td class="alignright">
                      <asp:Label ID="L_ReminderABodyTemplate" runat="server" Text="Reminder A Body Template :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox ID="F_ReminderABodyTemplate"
                        Text='<%# Bind("ReminderABodyTemplate") %>'
                        Width="350px"
                        CssClass="mytxt"
                        onfocus="return this.select();"
                        onblur="this.value=this.value.replace(/\'/g,'');"
                        ToolTip="Enter value for Reminder A Body Template."
                        MaxLength="100"
                        runat="server" />
                    </td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_ReminderAlertSMS" runat="server" Text="Reminder Alert SMS :" />&nbsp;
                    </td>
                    <td>
                      <asp:CheckBox ID="F_ReminderAlertSMS"
                        Checked='<%# Bind("ReminderAlertSMS") %>'
                        CssClass="mychk"
                        runat="server" />
                    </td>
                    <td class="alignright">
                      <asp:Label ID="L_ReminderSMSDBDataID" runat="server" Text="Reminder SMS Data :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox
                        ID="F_ReminderSMSDBDataID"
                        CssClass="myfktxt"
                        Text='<%# Bind("ReminderSMSDBDataID") %>'
                        AutoCompleteType="None"
                        Width="88px"
                        onfocus="return this.select();"
                        ToolTip="Enter value for Reminder SMS Data."
                        onblur="script_wfDBRows.validate_ReminderSMSDBDataID(this);"
                        runat="Server" />
                      <asp:Label
                        ID="F_ReminderSMSDBDataID_Display"
                        Text='<%# Eval("WF_DBData24_Description") %>'
                        CssClass="myLbl"
                        runat="Server" />
                      <AJX:AutoCompleteExtender
                        ID="ACEReminderSMSDBDataID"
                        BehaviorID="B_ACEReminderSMSDBDataID"
                        ContextKey=""
                        UseContextKey="true"
                        ServiceMethod="ReminderSMSDBDataIDCompletionList"
                        TargetControlID="F_ReminderSMSDBDataID"
                        EnableCaching="false"
                        CompletionInterval="100"
                        FirstRowSelected="true"
                        MinimumPrefixLength="1"
                        OnClientItemSelected="script_wfDBRows.ACEReminderSMSDBDataID_Selected"
                        OnClientPopulating="script_wfDBRows.ACEReminderSMSDBDataID_Populating"
                        OnClientPopulated="script_wfDBRows.ACEReminderSMSDBDataID_Populated"
                        CompletionSetCount="10"
                        CompletionListCssClass="autocomplete_completionListElement"
                        CompletionListItemCssClass="autocomplete_listItem"
                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                        runat="Server" />
                    </td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_ReminderASMSText" runat="server" Text="Reminder A SMS Text :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox ID="F_ReminderASMSText"
                        Text='<%# Bind("ReminderASMSText") %>'
                        Width="350px"
                        CssClass="mytxt"
                        onfocus="return this.select();"
                        onblur="this.value=this.value.replace(/\'/g,'');"
                        ToolTip="Enter value for Reminder A SMS Text."
                        MaxLength="500"
                        runat="server" />
                    </td>
                    <td></td>
                    <td></td>
                  </tr>
                  <tr>
                    <td colspan="4" style="border-top: solid 1pt LightGrey"></td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_IsLeft" runat="server" Text="IsLeft :" />&nbsp;
                    </td>
                    <td colspan="3">
                      <asp:CheckBox ID="F_IsLeft"
                        Checked='<%# Bind("IsLeft") %>'
                        CssClass="mychk"
                        runat="server" />
                    </td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_AppNameLeft" runat="server" Text="AppNameLeft :" />&nbsp;
                    </td>
                    <td colspan="3">
                      <asp:TextBox ID="F_AppNameLeft"
                        Text='<%# Bind("AppNameLeft") %>'
                        CssClass="mytxt"
                        onfocus="return this.select();"
                        onblur="this.value=this.value.replace(/\'/g,'');"
                        ToolTip="Enter value for AppNameLeft."
                        MaxLength="100"
                        Width="350px"
                        runat="server" />
                    </td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_TotSqlIDLeft" runat="server" Text="TotSqlIDLeft :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox
                        ID="F_TotSqlIDLeft"
                        CssClass="myfktxt"
                        Width="88px"
                        Text='<%# Bind("TotSqlIDLeft") %>'
                        AutoCompleteType="None"
                        onfocus="return this.select();"
                        ToolTip="Enter value for TotSqlIDLeft."
                        onblur="script_wfDBRows.validate_TotSqlIDLeft(this);"
                        runat="Server" />
                      <asp:Label
                        ID="F_TotSqlIDLeft_Display"
                        Text='<%# Eval("WF_DBData25_Description") %>'
                        CssClass="myLbl"
                        runat="Server" />
                      <AJX:AutoCompleteExtender
                        ID="ACETotSqlIDLeft"
                        BehaviorID="B_ACETotSqlIDLeft"
                        ContextKey=""
                        UseContextKey="true"
                        ServiceMethod="TotSqlIDLeftCompletionList"
                        TargetControlID="F_TotSqlIDLeft"
                        EnableCaching="false"
                        CompletionInterval="100"
                        FirstRowSelected="true"
                        MinimumPrefixLength="1"
                        OnClientItemSelected="script_wfDBRows.ACETotSqlIDLeft_Selected"
                        OnClientPopulating="script_wfDBRows.ACETotSqlIDLeft_Populating"
                        OnClientPopulated="script_wfDBRows.ACETotSqlIDLeft_Populated"
                        CompletionSetCount="10"
                        CompletionListCssClass="autocomplete_completionListElement"
                        CompletionListItemCssClass="autocomplete_listItem"
                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                        runat="Server" />
                    </td>
                    <td class="alignright">
                      <asp:Label ID="L_RedSqlIDLeft" runat="server" Text="RedSqlIDLeft :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox
                        ID="F_RedSqlIDLeft"
                        CssClass="myfktxt"
                        Width="88px"
                        Text='<%# Bind("RedSqlIDLeft") %>'
                        AutoCompleteType="None"
                        onfocus="return this.select();"
                        ToolTip="Enter value for RedSqlIDLeft."
                        onblur="script_wfDBRows.validate_RedSqlIDLeft(this);"
                        runat="Server" />
                      <asp:Label
                        ID="F_RedSqlIDLeft_Display"
                        Text='<%# Eval("WF_DBData26_Description") %>'
                        CssClass="myLbl"
                        runat="Server" />
                      <AJX:AutoCompleteExtender
                        ID="ACERedSqlIDLeft"
                        BehaviorID="B_ACERedSqlIDLeft"
                        ContextKey=""
                        UseContextKey="true"
                        ServiceMethod="RedSqlIDLeftCompletionList"
                        TargetControlID="F_RedSqlIDLeft"
                        EnableCaching="false"
                        CompletionInterval="100"
                        FirstRowSelected="true"
                        MinimumPrefixLength="1"
                        OnClientItemSelected="script_wfDBRows.ACERedSqlIDLeft_Selected"
                        OnClientPopulating="script_wfDBRows.ACERedSqlIDLeft_Populating"
                        OnClientPopulated="script_wfDBRows.ACERedSqlIDLeft_Populated"
                        CompletionSetCount="10"
                        CompletionListCssClass="autocomplete_completionListElement"
                        CompletionListItemCssClass="autocomplete_listItem"
                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                        runat="Server" />
                    </td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_AmbSqlIDLeft" runat="server" Text="AmbSqlIDLeft :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox
                        ID="F_AmbSqlIDLeft"
                        CssClass="myfktxt"
                        Width="88px"
                        Text='<%# Bind("AmbSqlIDLeft") %>'
                        AutoCompleteType="None"
                        onfocus="return this.select();"
                        ToolTip="Enter value for AmbSqlIDLeft."
                        onblur="script_wfDBRows.validate_AmbSqlIDLeft(this);"
                        runat="Server" />
                      <asp:Label
                        ID="F_AmbSqlIDLeft_Display"
                        Text='<%# Eval("WF_DBData27_Description") %>'
                        CssClass="myLbl"
                        runat="Server" />
                      <AJX:AutoCompleteExtender
                        ID="ACEAmbSqlIDLeft"
                        BehaviorID="B_ACEAmbSqlIDLeft"
                        ContextKey=""
                        UseContextKey="true"
                        ServiceMethod="AmbSqlIDLeftCompletionList"
                        TargetControlID="F_AmbSqlIDLeft"
                        EnableCaching="false"
                        CompletionInterval="100"
                        FirstRowSelected="true"
                        MinimumPrefixLength="1"
                        OnClientItemSelected="script_wfDBRows.ACEAmbSqlIDLeft_Selected"
                        OnClientPopulating="script_wfDBRows.ACEAmbSqlIDLeft_Populating"
                        OnClientPopulated="script_wfDBRows.ACEAmbSqlIDLeft_Populated"
                        CompletionSetCount="10"
                        CompletionListCssClass="autocomplete_completionListElement"
                        CompletionListItemCssClass="autocomplete_listItem"
                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                        runat="Server" />
                    </td>
                    <td class="alignright">
                      <asp:Label ID="L_GreSqlIDLeft" runat="server" Text="GreSqlIDLeft :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox
                        ID="F_GreSqlIDLeft"
                        CssClass="myfktxt"
                        Width="88px"
                        Text='<%# Bind("GreSqlIDLeft") %>'
                        AutoCompleteType="None"
                        onfocus="return this.select();"
                        ToolTip="Enter value for GreSqlIDLeft."
                        onblur="script_wfDBRows.validate_GreSqlIDLeft(this);"
                        runat="Server" />
                      <asp:Label
                        ID="F_GreSqlIDLeft_Display"
                        Text='<%# Eval("WF_DBData28_Description") %>'
                        CssClass="myLbl"
                        runat="Server" />
                      <AJX:AutoCompleteExtender
                        ID="ACEGreSqlIDLeft"
                        BehaviorID="B_ACEGreSqlIDLeft"
                        ContextKey=""
                        UseContextKey="true"
                        ServiceMethod="GreSqlIDLeftCompletionList"
                        TargetControlID="F_GreSqlIDLeft"
                        EnableCaching="false"
                        CompletionInterval="100"
                        FirstRowSelected="true"
                        MinimumPrefixLength="1"
                        OnClientItemSelected="script_wfDBRows.ACEGreSqlIDLeft_Selected"
                        OnClientPopulating="script_wfDBRows.ACEGreSqlIDLeft_Populating"
                        OnClientPopulated="script_wfDBRows.ACEGreSqlIDLeft_Populated"
                        CompletionSetCount="10"
                        CompletionListCssClass="autocomplete_completionListElement"
                        CompletionListItemCssClass="autocomplete_listItem"
                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                        runat="Server" />
                    </td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_HaveNewLeft" runat="server" Text="HaveNewLeft :" />&nbsp;
                    </td>
                    <td>
                      <asp:CheckBox ID="F_HaveNewLeft"
                        Checked='<%# Bind("HaveNewLeft") %>'
                        CssClass="mychk"
                        runat="server" />
                    </td>
                    <td class="alignright">
                      <asp:Label ID="L_HaveRemLeft" runat="server" Text="HaveRemLeft :" />&nbsp;
                    </td>
                    <td>
                      <asp:CheckBox ID="F_HaveRemLeft"
                        Checked='<%# Bind("HaveRemLeft") %>'
                        CssClass="mychk"
                        runat="server" />
                    </td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_IsRight" runat="server" Text="IsRight :" />&nbsp;
                    </td>
                    <td colspan="3">
                      <asp:CheckBox ID="F_IsRight"
                        Checked='<%# Bind("IsRight") %>'
                        CssClass="mychk"
                        runat="server" />
                    </td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_AppNameRight" runat="server" Text="AppNameRight :" />&nbsp;
                    </td>
                    <td colspan="3">
                      <asp:TextBox ID="F_AppNameRight"
                        Text='<%# Bind("AppNameRight") %>'
                        CssClass="mytxt"
                        onfocus="return this.select();"
                        onblur="this.value=this.value.replace(/\'/g,'');"
                        ToolTip="Enter value for AppNameRight."
                        MaxLength="100"
                        Width="350px"
                        runat="server" />
                    </td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_TotSqlIDRight" runat="server" Text="TotSqlIDRight :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox
                        ID="F_TotSqlIDRight"
                        CssClass="myfktxt"
                        Width="88px"
                        Text='<%# Bind("TotSqlIDRight") %>'
                        AutoCompleteType="None"
                        onfocus="return this.select();"
                        ToolTip="Enter value for TotSqlIDRight."
                        onblur="script_wfDBRows.validate_TotSqlIDRight(this);"
                        runat="Server" />
                      <asp:Label
                        ID="F_TotSqlIDRight_Display"
                        Text='<%# Eval("WF_DBData29_Description") %>'
                        CssClass="myLbl"
                        runat="Server" />
                      <AJX:AutoCompleteExtender
                        ID="ACETotSqlIDRight"
                        BehaviorID="B_ACETotSqlIDRight"
                        ContextKey=""
                        UseContextKey="true"
                        ServiceMethod="TotSqlIDRightCompletionList"
                        TargetControlID="F_TotSqlIDRight"
                        EnableCaching="false"
                        CompletionInterval="100"
                        FirstRowSelected="true"
                        MinimumPrefixLength="1"
                        OnClientItemSelected="script_wfDBRows.ACETotSqlIDRight_Selected"
                        OnClientPopulating="script_wfDBRows.ACETotSqlIDRight_Populating"
                        OnClientPopulated="script_wfDBRows.ACETotSqlIDRight_Populated"
                        CompletionSetCount="10"
                        CompletionListCssClass="autocomplete_completionListElement"
                        CompletionListItemCssClass="autocomplete_listItem"
                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                        runat="Server" />
                    </td>
                    <td class="alignright">
                      <asp:Label ID="L_RedSqlIDRight" runat="server" Text="RedSqlIDRight :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox
                        ID="F_RedSqlIDRight"
                        CssClass="myfktxt"
                        Width="88px"
                        Text='<%# Bind("RedSqlIDRight") %>'
                        AutoCompleteType="None"
                        onfocus="return this.select();"
                        ToolTip="Enter value for RedSqlIDRight."
                        onblur="script_wfDBRows.validate_RedSqlIDRight(this);"
                        runat="Server" />
                      <asp:Label
                        ID="F_RedSqlIDRight_Display"
                        Text='<%# Eval("WF_DBData32_Description") %>'
                        CssClass="myLbl"
                        runat="Server" />
                      <AJX:AutoCompleteExtender
                        ID="ACERedSqlIDRight"
                        BehaviorID="B_ACERedSqlIDRight"
                        ContextKey=""
                        UseContextKey="true"
                        ServiceMethod="RedSqlIDRightCompletionList"
                        TargetControlID="F_RedSqlIDRight"
                        EnableCaching="false"
                        CompletionInterval="100"
                        FirstRowSelected="true"
                        MinimumPrefixLength="1"
                        OnClientItemSelected="script_wfDBRows.ACERedSqlIDRight_Selected"
                        OnClientPopulating="script_wfDBRows.ACERedSqlIDRight_Populating"
                        OnClientPopulated="script_wfDBRows.ACERedSqlIDRight_Populated"
                        CompletionSetCount="10"
                        CompletionListCssClass="autocomplete_completionListElement"
                        CompletionListItemCssClass="autocomplete_listItem"
                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                        runat="Server" />
                    </td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_AmbSqlIDRight" runat="server" Text="AmbSqlIDRight :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox
                        ID="F_AmbSqlIDRight"
                        CssClass="myfktxt"
                        Width="88px"
                        Text='<%# Bind("AmbSqlIDRight") %>'
                        AutoCompleteType="None"
                        onfocus="return this.select();"
                        ToolTip="Enter value for AmbSqlIDRight."
                        onblur="script_wfDBRows.validate_AmbSqlIDRight(this);"
                        runat="Server" />
                      <asp:Label
                        ID="F_AmbSqlIDRight_Display"
                        Text='<%# Eval("WF_DBData30_Description") %>'
                        CssClass="myLbl"
                        runat="Server" />
                      <AJX:AutoCompleteExtender
                        ID="ACEAmbSqlIDRight"
                        BehaviorID="B_ACEAmbSqlIDRight"
                        ContextKey=""
                        UseContextKey="true"
                        ServiceMethod="AmbSqlIDRightCompletionList"
                        TargetControlID="F_AmbSqlIDRight"
                        EnableCaching="false"
                        CompletionInterval="100"
                        FirstRowSelected="true"
                        MinimumPrefixLength="1"
                        OnClientItemSelected="script_wfDBRows.ACEAmbSqlIDRight_Selected"
                        OnClientPopulating="script_wfDBRows.ACEAmbSqlIDRight_Populating"
                        OnClientPopulated="script_wfDBRows.ACEAmbSqlIDRight_Populated"
                        CompletionSetCount="10"
                        CompletionListCssClass="autocomplete_completionListElement"
                        CompletionListItemCssClass="autocomplete_listItem"
                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                        runat="Server" />
                    </td>
                    <td class="alignright">
                      <asp:Label ID="L_GreSqlIDRight" runat="server" Text="GreSqlIDRight :" />&nbsp;
                    </td>
                    <td>
                      <asp:TextBox
                        ID="F_GreSqlIDRight"
                        CssClass="myfktxt"
                        Width="88px"
                        Text='<%# Bind("GreSqlIDRight") %>'
                        AutoCompleteType="None"
                        onfocus="return this.select();"
                        ToolTip="Enter value for GreSqlIDRight."
                        onblur="script_wfDBRows.validate_GreSqlIDRight(this);"
                        runat="Server" />
                      <asp:Label
                        ID="F_GreSqlIDRight_Display"
                        Text='<%# Eval("WF_DBData31_Description") %>'
                        CssClass="myLbl"
                        runat="Server" />
                      <AJX:AutoCompleteExtender
                        ID="ACEGreSqlIDRight"
                        BehaviorID="B_ACEGreSqlIDRight"
                        ContextKey=""
                        UseContextKey="true"
                        ServiceMethod="GreSqlIDRightCompletionList"
                        TargetControlID="F_GreSqlIDRight"
                        EnableCaching="false"
                        CompletionInterval="100"
                        FirstRowSelected="true"
                        MinimumPrefixLength="1"
                        OnClientItemSelected="script_wfDBRows.ACEGreSqlIDRight_Selected"
                        OnClientPopulating="script_wfDBRows.ACEGreSqlIDRight_Populating"
                        OnClientPopulated="script_wfDBRows.ACEGreSqlIDRight_Populated"
                        CompletionSetCount="10"
                        CompletionListCssClass="autocomplete_completionListElement"
                        CompletionListItemCssClass="autocomplete_listItem"
                        CompletionListHighlightedItemCssClass="autocomplete_highlightedListItem"
                        runat="Server" />
                    </td>
                  </tr>
                  <tr>
                    <td class="alignright">
                      <asp:Label ID="L_HaveNewRight" runat="server" Text="HaveNewRight :" />&nbsp;
                    </td>
                    <td>
                      <asp:CheckBox ID="F_HaveNewRight"
                        Checked='<%# Bind("HaveNewRight") %>'
                        CssClass="mychk"
                        runat="server" />
                    </td>
                    <td class="alignright">
                      <asp:Label ID="L_HaveRemRight" runat="server" Text="HaveRemRight :" />&nbsp;
                    </td>
                    <td>
                      <asp:CheckBox ID="F_HaveRemRight"
                        Checked='<%# Bind("HaveRemRight") %>'
                        CssClass="mychk"
                        runat="server" />
                    </td>
                  </tr>
                </table>
              </div>
              <fieldset class="ui-widget-content page">
                <legend>
                  <asp:Label ID="LabelwfDBRowCols" runat="server" Text="&nbsp;List: DB Row Columns"></asp:Label>
                </legend>
                <div class="pagedata">
                  <asp:UpdatePanel ID="UPNLwfDBRowCols" runat="server">
                    <ContentTemplate>
                      <table width="100%">
                        <tr>
                          <td class="sis_formview">
                            <LGM:ToolBar0
                              ID="TBLwfDBRowCols"
                              ToolType="lgNMGrid"
                              EditUrl="~/WF_Main/App_Edit/EF_wfDBRowCols.aspx"
                              AddUrl="~/WF_Main/App_Create/AF_wfDBRowCols.aspx"
                              AddPostBack="True"
                              EnableExit="false"
                              ValidationGroup="wfDBRowCols"
                              runat="server" />
                            <asp:UpdateProgress ID="UPGSwfDBRowCols" runat="server" AssociatedUpdatePanelID="UPNLwfDBRowCols" DisplayAfter="100">
                              <ProgressTemplate>
                                <span style="color: #ff0033">Loading...</span>
                              </ProgressTemplate>
                            </asp:UpdateProgress>
                            <asp:GridView ID="GVwfDBRowCols" SkinID="gv_silver" runat="server" DataSourceID="ODSwfDBRowCols" DataKeyNames="DashboardID,DBRows,DBCols">
                              <Columns>
                                <asp:TemplateField HeaderText="EDIT">
                                  <ItemTemplate>
                                    <asp:ImageButton ID="cmdEditPage" ValidationGroup="Edit" runat="server" Visible='<%# Eval("Visible") %>' Enabled='<%# EVal("Enable") %>' AlternateText="Edit" ToolTip="Edit the record." SkinID="Edit" CommandName="lgEdit" CommandArgument='<%# Container.DataItemIndex %>' />
                                  </ItemTemplate>
                                  <ItemStyle CssClass="alignCenter" />
                                  <HeaderStyle CssClass="alignCenter" Width="30px" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="DB Cols" SortExpression="DBCols">
                                  <ItemTemplate>
                                    <asp:Label ID="LabelDBCols" runat="server" ForeColor='<%# Eval("ForeColor") %>' Text='<%# Bind("DBCols") %>'></asp:Label>
                                  </ItemTemplate>
                                  <ItemStyle CssClass="alignright" />
                                  <HeaderStyle CssClass="alignright" Width="40px" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Description" SortExpression="Description">
                                  <ItemTemplate>
                                    <asp:Label ID="LabelDescription" runat="server" ForeColor='<%# Eval("ForeColor") %>' Text='<%# Bind("Description") %>'></asp:Label>
                                  </ItemTemplate>
                                  <ItemStyle CssClass="" />
                                  <HeaderStyle CssClass="" Width="100px" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="DB Field Name" SortExpression="DBFieldName">
                                  <ItemTemplate>
                                    <asp:Label ID="LabelDBFieldName" runat="server" ForeColor='<%# Eval("ForeColor") %>' Text='<%# Bind("DBFieldName") %>'></asp:Label>
                                  </ItemTemplate>
                                  <ItemStyle CssClass="" />
                                  <HeaderStyle CssClass="" Width="100px" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="css Header" SortExpression="cssHeader">
                                  <ItemTemplate>
                                    <asp:Label ID="LabelcssHeader" runat="server" ForeColor='<%# Eval("ForeColor") %>' Text='<%# Bind("cssHeader") %>'></asp:Label>
                                  </ItemTemplate>
                                  <ItemStyle CssClass="" />
                                  <HeaderStyle CssClass="" Width="100px" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="css Cell" SortExpression="cssCell">
                                  <ItemTemplate>
                                    <asp:Label ID="LabelcssCell" runat="server" ForeColor='<%# Eval("ForeColor") %>' Text='<%# Bind("cssCell") %>'></asp:Label>
                                  </ItemTemplate>
                                  <ItemStyle CssClass="" />
                                  <HeaderStyle CssClass="" Width="100px" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Sequence" SortExpression="Sequence">
                                  <ItemTemplate>
                                    <asp:Label ID="LabelSequence" runat="server" ForeColor='<%# Eval("ForeColor") %>' Text='<%# Bind("Sequence") %>'></asp:Label>
                                  </ItemTemplate>
                                  <ItemStyle CssClass="alignright" />
                                  <HeaderStyle CssClass="alignright" Width="80px" />
                                </asp:TemplateField>
                              </Columns>
                              <EmptyDataTemplate>
                                <asp:Label ID="LabelEmpty" runat="server" Font-Size="Small" ForeColor="Red" Text="No record found !!!"></asp:Label>
                              </EmptyDataTemplate>
                            </asp:GridView>
                            <asp:ObjectDataSource
                              ID="ODSwfDBRowCols"
                              runat="server"
                              DataObjectTypeName="SIS.WF.wfDBRowCols"
                              OldValuesParameterFormatString="original_{0}"
                              SelectMethod="UZ_wfDBRowColsSelectList"
                              TypeName="SIS.WF.wfDBRowCols"
                              SelectCountMethod="wfDBRowColsSelectCount"
                              SortParameterName="OrderBy" EnablePaging="True">
                              <SelectParameters>
                                <asp:ControlParameter ControlID="F_DashboardID" PropertyName="Text" Name="DashboardID" Type="Int32" Size="10" />
                                <asp:ControlParameter ControlID="F_DBRows" PropertyName="Text" Name="DBRows" Type="Int32" Size="10" />
                                <asp:Parameter Name="SearchState" Type="Boolean" Direction="Input" DefaultValue="false" />
                                <asp:Parameter Name="SearchText" Type="String" Direction="Input" DefaultValue="" />
                              </SelectParameters>
                            </asp:ObjectDataSource>
                            <br />
                          </td>
                        </tr>
                      </table>
                    </ContentTemplate>
                    <Triggers>
                      <asp:AsyncPostBackTrigger ControlID="GVwfDBRowCols" EventName="PageIndexChanged" />
                    </Triggers>
                  </asp:UpdatePanel>
                </div>
              </fieldset>
            </EditItemTemplate>
          </asp:FormView>
        </ContentTemplate>
      </asp:UpdatePanel>
      <asp:ObjectDataSource
        ID="ODSwfDBRows"
        DataObjectTypeName="SIS.WF.wfDBRows"
        SelectMethod="wfDBRowsGetByID"
        UpdateMethod="UZ_wfDBRowsUpdate"
        DeleteMethod="UZ_wfDBRowsDelete"
        OldValuesParameterFormatString="original_{0}"
        TypeName="SIS.WF.wfDBRows"
        runat="server">
        <SelectParameters>
          <asp:QueryStringParameter DefaultValue="0" QueryStringField="DashboardID" Name="DashboardID" Type="Int32" />
          <asp:QueryStringParameter DefaultValue="0" QueryStringField="DBRows" Name="DBRows" Type="Int32" />
        </SelectParameters>
      </asp:ObjectDataSource>
    </div>
  </div>
</asp:Content>

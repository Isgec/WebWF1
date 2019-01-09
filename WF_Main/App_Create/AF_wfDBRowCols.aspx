<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="AF_wfDBRowCols.aspx.vb" Inherits="AF_wfDBRowCols" title="Add: DB Row Columns" %>
<asp:Content ID="CPHwfDBRowCols" ContentPlaceHolderID="cph1" Runat="Server">
<div id="div1" class="ui-widget-content page">
<div id="div2" class="caption">
    <asp:Label ID="LabelwfDBRowCols" runat="server" Text="&nbsp;Add: DB Row Columns"></asp:Label>
</div>
<div id="div3" class="pagedata">
<asp:UpdatePanel ID="UPNLwfDBRowCols" runat="server" >
  <ContentTemplate>
  <LGM:ToolBar0 
    ID = "TBLwfDBRowCols"
    ToolType = "lgNMAdd"
    InsertAndStay = "False"
    ValidationGroup = "wfDBRowCols"
    runat = "server" />
<asp:FormView ID="FVwfDBRowCols"
  runat = "server"
  DataKeyNames = "DashboardID,DBRows,DBCols"
  DataSourceID = "ODSwfDBRowCols"
  DefaultMode = "Insert" CssClass="sis_formview">
  <InsertItemTemplate>
    <div id="frmdiv" class="ui-widget-content minipage">
    <asp:Label ID="L_ErrMsgwfDBRowCols" runat="server" ForeColor="Red" Font-Bold="true" Text=""></asp:Label>
    <table style="margin:auto;border: solid 1pt lightgrey">
      <tr>
        <td class="alignright">
          <b><asp:Label ID="L_DashboardID" ForeColor="#CC6633" runat="server" Text="Dashboard ID :" /><span style="color:red">*</span></b>
        </td>
        <td>
          <asp:TextBox
            ID = "F_DashboardID"
            CssClass = "mypktxt"
            Width="88px"
            Text='<%# Bind("DashboardID") %>'
            AutoCompleteType = "None"
            onfocus = "return this.select();"
            ToolTip="Enter value for Dashboard ID."
            ValidationGroup = "wfDBRowCols"
            onblur= "script_wfDBRowCols.validate_DashboardID(this);"
            Runat="Server" />
          <asp:RequiredFieldValidator 
            ID = "RFVDashboardID"
            runat = "server"
            ControlToValidate = "F_DashboardID"
            ErrorMessage = "<div class='errorLG'>Required!</div>"
            Display = "Dynamic"
            EnableClientScript = "true"
            ValidationGroup = "wfDBRowCols"
            SetFocusOnError="true" />
          <asp:Label
            ID = "F_DashboardID_Display"
            Text='<%# Eval("WF_Dashboards1_DBDescription") %>'
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
            OnClientItemSelected="script_wfDBRowCols.ACEDashboardID_Selected"
            OnClientPopulating="script_wfDBRowCols.ACEDashboardID_Populating"
            OnClientPopulated="script_wfDBRowCols.ACEDashboardID_Populated"
            CompletionSetCount="10"
            CompletionListCssClass = "autocomplete_completionListElement"
            CompletionListItemCssClass = "autocomplete_listItem"
            CompletionListHighlightedItemCssClass = "autocomplete_highlightedListItem"
            Runat="Server" />
        </td>
        <td class="alignright">
          <b><asp:Label ID="L_DBRows" ForeColor="#CC6633" runat="server" Text="DB Rows :" /><span style="color:red">*</span></b>
        </td>
        <td>
          <asp:TextBox
            ID = "F_DBRows"
            CssClass = "mypktxt"
            Width="88px"
            Text='<%# Bind("DBRows") %>'
            AutoCompleteType = "None"
            onfocus = "return this.select();"
            ToolTip="Enter value for DB Rows."
            ValidationGroup = "wfDBRowCols"
            onblur= "script_wfDBRowCols.validate_DBRows(this);"
            Runat="Server" />
          <asp:RequiredFieldValidator 
            ID = "RFVDBRows"
            runat = "server"
            ControlToValidate = "F_DBRows"
            ErrorMessage = "<div class='errorLG'>Required!</div>"
            Display = "Dynamic"
            EnableClientScript = "true"
            ValidationGroup = "wfDBRowCols"
            SetFocusOnError="true" />
          <asp:Label
            ID = "F_DBRows_Display"
            Text='<%# Eval("WF_DBRows2_Description") %>'
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
            OnClientItemSelected="script_wfDBRowCols.ACEDBRows_Selected"
            OnClientPopulating="script_wfDBRowCols.ACEDBRows_Populating"
            OnClientPopulated="script_wfDBRowCols.ACEDBRows_Populated"
            CompletionSetCount="10"
            CompletionListCssClass = "autocomplete_completionListElement"
            CompletionListItemCssClass = "autocomplete_listItem"
            CompletionListHighlightedItemCssClass = "autocomplete_highlightedListItem"
            Runat="Server" />
        </td>
      </tr>
      <tr>
        <td class="alignright">
          <b><asp:Label ID="L_DBCols" ForeColor="#CC6633" runat="server" Text="DB Cols :" /><span style="color:red">*</span></b>
        </td>
        <td colspan="3">
          <asp:TextBox ID="F_DBCols" Enabled="False" CssClass="mypktxt" Width="88px" runat="server" Text="0" />
        </td>
      </tr>
      <tr>
        <td class="alignright">
          <asp:Label ID="L_Description" runat="server" Text="Description :" />&nbsp;
        </td>
        <td colspan="3">
          <asp:TextBox ID="F_Description"
            Text='<%# Bind("Description") %>'
            CssClass = "mytxt"
            onfocus = "return this.select();"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for Description."
            MaxLength="50"
            Width="408px"
            runat="server" />
        </td>
      </tr>
      <tr>
        <td class="alignright">
          <asp:Label ID="L_DBFieldName" runat="server" Text="DB Field Name :" />&nbsp;
        </td>
        <td colspan="3">
          <asp:TextBox ID="F_DBFieldName"
            Text='<%# Bind("DBFieldName") %>'
            CssClass = "mytxt"
            onfocus = "return this.select();"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for DB Field Name."
            MaxLength="50"
            Width="408px"
            runat="server" />
        </td>
      </tr>
      <tr>
        <td class="alignright">
          <asp:Label ID="L_LinkURL" runat="server" Text="LinkURL :" />&nbsp;
        </td>
        <td colspan="3">
          <asp:TextBox ID="F_LinkURL"
            Text='<%# Bind("LinkURL") %>'
            CssClass = "mytxt"
            onfocus = "return this.select();"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for LinkURL."
            MaxLength="500"
            Width="350px"
            runat="server" />
        </td>
      </tr>
      <tr>
        <td class="alignright">
          <asp:Label ID="L_cssHeader" runat="server" Text="css Header :" />&nbsp;
        </td>
        <td>
          <asp:TextBox ID="F_cssHeader"
            Text='<%# Bind("cssHeader") %>'
            CssClass = "mytxt"
            onfocus = "return this.select();"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for css Header."
            MaxLength="50"
            Width="408px"
            runat="server" />
        </td>
        <td class="alignright">
          <asp:Label ID="L_cssCell" runat="server" Text="css Cell :" />&nbsp;
        </td>
        <td>
          <asp:TextBox ID="F_cssCell"
            Text='<%# Bind("cssCell") %>'
            CssClass = "mytxt"
            onfocus = "return this.select();"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for css Cell."
            MaxLength="50"
            Width="408px"
            runat="server" />
        </td>
      </tr>
      <tr>
        <td class="alignright">
          <asp:Label ID="L_Sequence" runat="server" Text="Sequence :" /><span style="color:red">*</span>
        </td>
        <td colspan="3">
          <asp:TextBox ID="F_Sequence"
            Text='<%# Bind("Sequence") %>'
            Width="88px"
            style="text-align: Right"
            CssClass = "mytxt"
            ValidationGroup="wfDBRowCols"
            MaxLength="10"
            onfocus = "return this.select();"
            runat="server" />
          <AJX:MaskedEditExtender 
            ID = "MEESequence"
            runat = "server"
            mask = "9999999999"
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
            ValidationGroup = "wfDBRowCols"
            IsValidEmpty = "false"
            MinimumValue = "1"
            SetFocusOnError="true" />
        </td>
      </tr>
    </table>
    </div>
  </InsertItemTemplate>
</asp:FormView>
  </ContentTemplate>
</asp:UpdatePanel>
<asp:ObjectDataSource 
  ID = "ODSwfDBRowCols"
  DataObjectTypeName = "SIS.WF.wfDBRowCols"
  InsertMethod="UZ_wfDBRowColsInsert"
  OldValuesParameterFormatString = "original_{0}"
  TypeName = "SIS.WF.wfDBRowCols"
  SelectMethod = "GetNewRecord"
  runat = "server" >
</asp:ObjectDataSource>
</div>
</div>
</asp:Content>

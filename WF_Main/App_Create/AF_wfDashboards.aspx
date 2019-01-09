<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="AF_wfDashboards.aspx.vb" Inherits="AF_wfDashboards" title="Add: Dashboards" %>
<asp:Content ID="CPHwfDashboards" ContentPlaceHolderID="cph1" Runat="Server">
<div id="div1" class="ui-widget-content page">
<div id="div2" class="caption">
    <asp:Label ID="LabelwfDashboards" runat="server" Text="&nbsp;Add: Dashboards"></asp:Label>
</div>
<div id="div3" class="pagedata">
<asp:UpdatePanel ID="UPNLwfDashboards" runat="server" >
  <ContentTemplate>
  <LGM:ToolBar0 
    ID = "TBLwfDashboards"
    ToolType = "lgNMAdd"
    InsertAndStay = "False"
    AfterInsertURL = "~/WF_Main/App_Edit/EF_wfDashboards.aspx"
    ValidationGroup = "wfDashboards"
    runat = "server" />
<asp:FormView ID="FVwfDashboards"
  runat = "server"
  DataKeyNames = "DashboardID"
  DataSourceID = "ODSwfDashboards"
  DefaultMode = "Insert" CssClass="sis_formview">
  <InsertItemTemplate>
    <div id="frmdiv" class="ui-widget-content minipage">
    <asp:Label ID="L_ErrMsgwfDashboards" runat="server" ForeColor="Red" Font-Bold="true" Text=""></asp:Label>
    <table style="margin:auto;border: solid 1pt lightgrey">
      <tr>
        <td class="alignright">
          <b><asp:Label ID="L_DashboardID" ForeColor="#CC6633" runat="server" Text="Dashboard ID :" /><span style="color:red">*</span></b>
        </td>
        <td colspan="3">
          <asp:TextBox ID="F_DashboardID" Enabled="False" CssClass="mypktxt" Width="88px" runat="server" Text="0" />
        </td>
      </tr>
      <tr><td colspan="4" style="border-top: solid 1pt LightGrey" ></td></tr>
      <tr>
        <td class="alignright">
          <asp:Label ID="L_DBDescription" runat="server" Text="DB Description :" /><span style="color:red">*</span>
        </td>
        <td>
          <asp:TextBox ID="F_DBDescription"
            Text='<%# Bind("DBDescription") %>'
            CssClass = "mytxt"
            onfocus = "return this.select();"
            ValidationGroup="wfDashboards"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for DB Description."
            MaxLength="50"
            Width="408px"
            runat="server" />
          <asp:RequiredFieldValidator 
            ID = "RFVDBDescription"
            runat = "server"
            ControlToValidate = "F_DBDescription"
            ErrorMessage = "<div class='errorLG'>Required!</div>"
            Display = "Dynamic"
            EnableClientScript = "true"
            ValidationGroup = "wfDashboards"
            SetFocusOnError="true" />
        </td>
        <td class="alignright">
          <asp:Label ID="L_DBTitle" runat="server" Text="DB Title :" />&nbsp;
        </td>
        <td>
          <asp:TextBox ID="F_DBTitle"
            Text='<%# Bind("DBTitle") %>'
            CssClass = "mytxt"
            onfocus = "return this.select();"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for DB Title."
            MaxLength="100"
            Width="350px"
            runat="server" />
        </td>
      </tr>
      <tr><td colspan="4" style="border-top: solid 1pt LightGrey" ></td></tr>
      <tr>
        <td class="alignright">
          <asp:Label ID="L_TitleStyle" runat="server" Text="Title Style :" />&nbsp;
        </td>
        <td>
          <asp:TextBox ID="F_TitleStyle"
            Text='<%# Bind("TitleStyle") %>'
            CssClass = "mytxt"
            onfocus = "return this.select();"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for Title Style."
            MaxLength="250"
            Width="350px"
            runat="server" />
        </td>
        <td class="alignright">
          <asp:Label ID="L_Active" runat="server" Text="Active :" />&nbsp;
        </td>
        <td>
          <asp:CheckBox ID="F_Active"
           Checked='<%# Bind("Active") %>'
           CssClass = "mychk"
           runat="server" />
        </td>
      </tr>
      <tr><td colspan="4" style="border-top: solid 1pt LightGrey" ></td></tr>
      <tr>
        <td class="alignright">
          <asp:Label ID="L_InitializedByMe" runat="server" Text="Initialized By Me :" />&nbsp;
        </td>
        <td colspan="3">
          <asp:CheckBox ID="F_InitializedByMe"
           Checked='<%# Bind("InitializedByMe") %>'
           CssClass = "mychk"
           runat="server" />
        </td>
      </tr>
      <tr>
        <td class="alignright">
          <asp:Label ID="L_DBIconID" runat="server" Text="DB Icon :" />&nbsp;
        </td>
        <td colspan="3">
          <asp:TextBox
            ID = "F_DBIconID"
            CssClass = "myfktxt"
            Width="88px"
            Text='<%# Bind("DBIconID") %>'
            AutoCompleteType = "None"
            onfocus = "return this.select();"
            ToolTip="Enter value for DB Icon."
            onblur= "script_wfDashboards.validate_DBIconID(this);"
            Runat="Server" />
          <asp:Label
            ID = "F_DBIconID_Display"
            Text='<%# Eval("WF_DBIcons3_IconName") %>'
            CssClass="myLbl"
            Runat="Server" />
          <AJX:AutoCompleteExtender
            ID="ACEDBIconID"
            BehaviorID="B_ACEDBIconID"
            ContextKey=""
            UseContextKey="true"
            ServiceMethod="DBIconIDCompletionList"
            TargetControlID="F_DBIconID"
            EnableCaching="false"
            CompletionInterval="100"
            FirstRowSelected="true"
            MinimumPrefixLength="1"
            OnClientItemSelected="script_wfDashboards.ACEDBIconID_Selected"
            OnClientPopulating="script_wfDashboards.ACEDBIconID_Populating"
            OnClientPopulated="script_wfDashboards.ACEDBIconID_Populated"
            CompletionSetCount="10"
            CompletionListCssClass = "autocomplete_completionListElement"
            CompletionListItemCssClass = "autocomplete_listItem"
            CompletionListHighlightedItemCssClass = "autocomplete_highlightedListItem"
            Runat="Server" />
        </td>
      </tr>
      <tr><td colspan="4" style="border-top: solid 1pt LightGrey" ></td></tr>
      <tr>
        <td class="alignright">
          <asp:Label ID="L_NotToDraw" runat="server" Text="Do not Draw :" />&nbsp;
        </td>
        <td>
          <asp:CheckBox ID="F_NotToDraw"
           Checked='<%# Bind("NotToDraw") %>'
           CssClass = "mychk"
           runat="server" />
        </td>
        <td class="alignright">
          <asp:Label ID="L_DBRowTypeID" runat="server" Text="Draw Type :" />&nbsp;
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
        <td class="alignright">
          <asp:Label ID="L_ConvertForGraph" runat="server" Text="Convert Data For Graph :" />&nbsp;
        </td>
        <td>
          <asp:CheckBox ID="F_ConvertForGraph"
           Checked='<%# Bind("ConvertForGraph") %>'
           CssClass = "mychk"
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
  ID = "ODSwfDashboards"
  DataObjectTypeName = "SIS.WF.wfDashboards"
  InsertMethod="UZ_wfDashboardsInsert"
  OldValuesParameterFormatString = "original_{0}"
  TypeName = "SIS.WF.wfDashboards"
  SelectMethod = "GetNewRecord"
  runat = "server" >
</asp:ObjectDataSource>
</div>
</div>
</asp:Content>

<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="EF_wfDashboards.aspx.vb" Inherits="EF_wfDashboards" title="Edit: Dashboards" %>
<asp:Content ID="CPHwfDashboards" ContentPlaceHolderID="cph1" Runat="Server">
<div id="div1" class="ui-widget-content page">
<div id="div2" class="caption">
    <asp:Label ID="LabelwfDashboards" runat="server" Text="&nbsp;Edit: Dashboards"></asp:Label>
</div>
<div id="div3" class="pagedata">
<asp:UpdatePanel ID="UPNLwfDashboards" runat="server" >
<ContentTemplate>
  <LGM:ToolBar0 
    ID = "TBLwfDashboards"
    ToolType = "lgNMEdit"
    UpdateAndStay = "False"
    ValidationGroup = "wfDashboards"
    runat = "server" />
<asp:FormView ID="FVwfDashboards"
  runat = "server"
  DataKeyNames = "DashboardID"
  DataSourceID = "ODSwfDashboards"
  DefaultMode = "Edit" CssClass="sis_formview">
  <EditItemTemplate>
    <div id="frmdiv" class="ui-widget-content minipage">
    <table style="margin:auto;border: solid 1pt lightgrey">
      <tr>
        <td class="alignright">
          <b><asp:Label ID="L_DashboardID" runat="server" ForeColor="#CC6633" Text="Dashboard ID :" /><span style="color:red">*</span></b>
        </td>
        <td colspan="3">
          <asp:TextBox ID="F_DashboardID"
            Text='<%# Bind("DashboardID") %>'
            ToolTip="Value of Dashboard ID."
            Enabled = "False"
            CssClass = "mypktxt"
            Width="88px"
            style="text-align: right"
            runat="server" />
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
            Width="408px"
            CssClass = "mytxt"
            onfocus = "return this.select();"
            ValidationGroup="wfDashboards"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for DB Description."
            MaxLength="50"
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
            Width="350px"
            CssClass = "mytxt"
            onfocus = "return this.select();"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for DB Title."
            MaxLength="100"
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
            Width="350px"
            CssClass = "mytxt"
            onfocus = "return this.select();"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for Title Style."
            MaxLength="250"
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
      <tr><td colspan="4" style="border-top: solid 1pt LightGrey" ></td></tr>
      <tr>
        <td class="alignright">
          <asp:Label ID="L_DBIconID" runat="server" Text="DB Icon :" />&nbsp;
        </td>
        <td colspan="3">
          <asp:TextBox
            ID = "F_DBIconID"
            CssClass = "myfktxt"
            Text='<%# Bind("DBIconID") %>'
            AutoCompleteType = "None"
            Width="88px"
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
      <tr><td colspan="4" style="border-top: solid 1pt LightGrey" ></td></tr>
    </table>
  </div>
<fieldset class="ui-widget-content page">
<legend>
    <asp:Label ID="LabelwfDBRows" runat="server" Text="&nbsp;List: DB Rows"></asp:Label>
</legend>
<div class="pagedata">
<asp:UpdatePanel ID="UPNLwfDBRows" runat="server">
  <ContentTemplate>
    <table width="100%"><tr><td class="sis_formview"> 
    <LGM:ToolBar0 
      ID = "TBLwfDBRows"
      ToolType = "lgNMGrid"
      EditUrl = "~/WF_Main/App_Edit/EF_wfDBRows.aspx"
      AddUrl = "~/WF_Main/App_Create/AF_wfDBRows.aspx?skip=1"
      AddPostBack = "True"
      EnableExit = "false"
      ValidationGroup = "wfDBRows"
      runat = "server" />
    <asp:UpdateProgress ID="UPGSwfDBRows" runat="server" AssociatedUpdatePanelID="UPNLwfDBRows" DisplayAfter="100">
      <ProgressTemplate>
        <span style="color: #ff0033">Loading...</span>
      </ProgressTemplate>
    </asp:UpdateProgress>
    <asp:GridView ID="GVwfDBRows" SkinID="gv_silver" runat="server" DataSourceID="ODSwfDBRows" DataKeyNames="DashboardID,DBRows">
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
            <asp:LinkButton ID="cmdCopy" ValidationGroup='<%# "Copy" & Container.DataItemIndex %>' CausesValidation="true" runat="server" Visible='<%# EVal("CopyWFVisible") %>' Enabled='<%# EVal("CopyWFEnable") %>' AlternateText='<%# EVal("PrimaryKey") %>' ToolTip="Copy row [New row will also be distributed]" OnClientClick='<%# "return Page_ClientValidate(""Copy" & Container.DataItemIndex & """) && confirm(""Copy row [New row will also be distributed to users] ?"");" %>' CommandName="CopyWF" CommandArgument='<%# Container.DataItemIndex %>' ><div class="btn btn-sm btn-info"><i class="fa fa-1x fa-copy "></i></div></asp:LinkButton>
          </ItemTemplate>
          <ItemStyle CssClass="alignCenter" />
          <HeaderStyle CssClass="alignCenter" Width="30px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="DB Rows" SortExpression="DBRows">
          <ItemTemplate>
            <asp:Label ID="LabelDBRows" runat="server" ForeColor='<%# Eval("ForeColor") %>' Text='<%# Bind("DBRows") %>'></asp:Label>
          </ItemTemplate>
          <ItemStyle CssClass="alignCenter" />
          <HeaderStyle CssClass="alignCenter" Width="40px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Description" SortExpression="Description">
          <ItemTemplate>
            <asp:Label ID="LabelDescription" runat="server" ForeColor='<%# Eval("ForeColor") %>' Text='<%# Bind("Description") %>'></asp:Label>
          </ItemTemplate>
        <HeaderStyle  Width="100px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Row Title" SortExpression="DBTitle">
          <ItemTemplate>
            <asp:Label ID="LabelDBTitle" runat="server" ForeColor='<%# EVal("ForeColor") %>' Text='<%# Bind("DBTitle") %>'></asp:Label>
          </ItemTemplate>
          <ItemStyle CssClass="alignCenter" />
        <HeaderStyle CssClass="alignCenter" Width="100px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Parent DB Rows" SortExpression="WF_DBRows2_Description">
          <ItemTemplate>
             <asp:Label ID="L_ParentDBRows" runat="server" ForeColor='<%# Eval("ForeColor") %>' Title='<%# EVal("ParentDBRows") %>' Text='<%# Eval("WF_DBRows2_Description") %>'></asp:Label>
          </ItemTemplate>
          <HeaderStyle Width="100px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="css Row" SortExpression="cssRow">
          <ItemTemplate>
            <asp:Label ID="LabelcssRow" runat="server" ForeColor='<%# Eval("ForeColor") %>' Text='<%# Bind("cssRow") %>'></asp:Label>
          </ItemTemplate>
          <ItemStyle CssClass="alignCenter" />
        <HeaderStyle CssClass="alignCenter" Width="100px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Sequence" SortExpression="Sequence">
          <ItemTemplate>
            <asp:Label ID="LabelSequence" runat="server" ForeColor='<%# Eval("ForeColor") %>' Text='<%# Bind("Sequence") %>'></asp:Label>
          </ItemTemplate>
          <ItemStyle CssClass="alignCenter" />
          <HeaderStyle CssClass="alignCenter" Width="80px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="DB Row Type" SortExpression="WF_DBRowTypes3_Description">
          <ItemTemplate>
             <asp:Label ID="L_DBRowTypeID" runat="server" ForeColor='<%# Eval("ForeColor") %>' Title='<%# EVal("DBRowTypeID") %>' Text='<%# Eval("WF_DBRowTypes3_Description") %>'></asp:Label>
          </ItemTemplate>
          <HeaderStyle Width="100px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="AppNameLeft" SortExpression="AppNameLeft">
          <ItemTemplate>
            <asp:Label ID="LabelAppNameLeft" runat="server" ForeColor='<%# EVal("ForeColor") %>' Text='<%# Bind("AppNameLeft") %>'></asp:Label>
          </ItemTemplate>
          <ItemStyle CssClass="alignCenter" />
        <HeaderStyle CssClass="alignCenter" Width="100px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="AppNameRight" SortExpression="AppNameRight">
          <ItemTemplate>
            <asp:Label ID="LabelAppNameRight" runat="server" ForeColor='<%# EVal("ForeColor") %>' Text='<%# Bind("AppNameRight") %>'></asp:Label>
          </ItemTemplate>
          <ItemStyle CssClass="alignCenter" />
        <HeaderStyle CssClass="alignCenter" Width="100px" />
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
            <asp:LinkButton ID="cmdRA" ValidationGroup='<%# "RA" & Container.DataItemIndex %>' CausesValidation="true" runat="server" Visible='<%# EVal("RAWFVisible") %>' Enabled='<%# EVal("RAWFEnable") %>' AlternateText='<%# EVal("PrimaryKey") %>' ToolTip="Remove from All users" OnClientClick='<%# "return Page_ClientValidate(""RA" & Container.DataItemIndex & """) && confirm(""Remove from All users ?"");" %>' CommandName="RAWF" CommandArgument='<%# Container.DataItemIndex %>' ><div class="btn btn-sm btn-info"><i class="fa fa-1x fa-arrow-circle-up"></i></div></asp:LinkButton>
          </ItemTemplate>
          <ItemStyle CssClass="alignCenter" />
          <HeaderStyle CssClass="alignCenter" Width="30px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="DEL ALL">
          <ItemTemplate>
            <asp:LinkButton ID="cmdDelete" ValidationGroup='<%# "Delete" & Container.DataItemIndex %>' CausesValidation="true" runat="server" Visible='<%# EVal("DeleteWFVisible") %>' Enabled='<%# EVal("DeleteWFEnable") %>' AlternateText='<%# EVal("PrimaryKey") %>' ToolTip="Delete row. [It will also remove from all users] ?" OnClientClick='<%# "return Page_ClientValidate(""Delete" & Container.DataItemIndex & """) && confirm(""Delete row. [It will also remove from all users] ?"");" %>' CommandName="DeleteWF" CommandArgument='<%# Container.DataItemIndex %>' ><div class="btn btn-sm btn-danger"><i class="fa fa-1x fa-remove"></i></div></asp:LinkButton>
          </ItemTemplate>
          <ItemStyle CssClass="alignCenter" />
          <HeaderStyle CssClass="alignCenter" Width="30px" />
        </asp:TemplateField>
      </Columns>
      <EmptyDataTemplate>
        <asp:Label ID="LabelEmpty" runat="server" Font-Size="Small" ForeColor="Red" Text="No record found !!!"></asp:Label>
      </EmptyDataTemplate>
    </asp:GridView>
    <asp:ObjectDataSource 
      ID = "ODSwfDBRows"
      runat = "server"
      DataObjectTypeName = "SIS.WF.wfDBRows"
      OldValuesParameterFormatString = "original_{0}"
      SelectMethod = "UZ_wfDBRowsSelectList"
      TypeName = "SIS.WF.wfDBRows"
      SelectCountMethod = "wfDBRowsSelectCount"
      SortParameterName="OrderBy" EnablePaging="True">
      <SelectParameters >
        <asp:ControlParameter ControlID="F_DashboardID" PropertyName="Text" Name="DashboardID" Type="Int32" Size="10" />
        <asp:Parameter Name="SearchState" Type="Boolean" Direction="Input" DefaultValue="false" />
        <asp:Parameter Name="SearchText" Type="String" Direction="Input" DefaultValue="" />
      </SelectParameters>
    </asp:ObjectDataSource>
    <br />
  </td></tr></table>
  </ContentTemplate>
  <Triggers>
    <asp:AsyncPostBackTrigger ControlID="GVwfDBRows" EventName="PageIndexChanged" />
  </Triggers>
</asp:UpdatePanel>
</div>
</fieldset>
  </EditItemTemplate>
</asp:FormView>
  </ContentTemplate>
</asp:UpdatePanel>
<asp:ObjectDataSource 
  ID = "ODSwfDashboards"
  DataObjectTypeName = "SIS.WF.wfDashboards"
  SelectMethod = "wfDashboardsGetByID"
  UpdateMethod="UZ_wfDashboardsUpdate"
  DeleteMethod="UZ_wfDashboardsDelete"
  OldValuesParameterFormatString = "original_{0}"
  TypeName = "SIS.WF.wfDashboards"
  runat = "server" >
<SelectParameters>
  <asp:QueryStringParameter DefaultValue="0" QueryStringField="DashboardID" Name="DashboardID" Type="Int32" />
</SelectParameters>
</asp:ObjectDataSource>
</div>
</div>
</asp:Content>

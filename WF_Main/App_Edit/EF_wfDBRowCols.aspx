<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="EF_wfDBRowCols.aspx.vb" Inherits="EF_wfDBRowCols" title="Edit: DB Row Columns" %>
<asp:Content ID="CPHwfDBRowCols" ContentPlaceHolderID="cph1" Runat="Server">
<div id="div1" class="ui-widget-content page">
<div id="div2" class="caption">
    <asp:Label ID="LabelwfDBRowCols" runat="server" Text="&nbsp;Edit: DB Row Columns"></asp:Label>
</div>
<div id="div3" class="pagedata">
<asp:UpdatePanel ID="UPNLwfDBRowCols" runat="server" >
<ContentTemplate>
  <LGM:ToolBar0 
    ID = "TBLwfDBRowCols"
    ToolType = "lgNMEdit"
    UpdateAndStay = "False"
    ValidationGroup = "wfDBRowCols"
    runat = "server" />
<asp:FormView ID="FVwfDBRowCols"
  runat = "server"
  DataKeyNames = "DashboardID,DBRows,DBCols"
  DataSourceID = "ODSwfDBRowCols"
  DefaultMode = "Edit" CssClass="sis_formview">
  <EditItemTemplate>
    <div id="frmdiv" class="ui-widget-content minipage">
    <table style="margin:auto;border: solid 1pt lightgrey">
      <tr>
        <td class="alignright">
          <b><asp:Label ID="L_DashboardID" runat="server" ForeColor="#CC6633" Text="Dashboard ID :" /><span style="color:red">*</span></b>
        </td>
        <td>
          <asp:TextBox
            ID = "F_DashboardID"
            Width="88px"
            Text='<%# Bind("DashboardID") %>'
            CssClass = "mypktxt"
            Enabled = "False"
            ToolTip="Value of Dashboard ID."
            Runat="Server" />
          <asp:Label
            ID = "F_DashboardID_Display"
            Text='<%# Eval("WF_Dashboards1_DBDescription") %>'
            CssClass="myLbl"
            Runat="Server" />
        </td>
        <td class="alignright">
          <b><asp:Label ID="L_DBRows" runat="server" ForeColor="#CC6633" Text="DB Rows :" /><span style="color:red">*</span></b>
        </td>
        <td>
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
          <b><asp:Label ID="L_DBCols" runat="server" ForeColor="#CC6633" Text="DB Cols :" /><span style="color:red">*</span></b>
        </td>
        <td colspan="3">
          <asp:TextBox ID="F_DBCols"
            Text='<%# Bind("DBCols") %>'
            ToolTip="Value of DB Cols."
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
          <asp:Label ID="L_Description" runat="server" Text="Description :" />&nbsp;
        </td>
        <td colspan="3">
          <asp:TextBox ID="F_Description"
            Text='<%# Bind("Description") %>'
            Width="408px"
            CssClass = "mytxt"
            onfocus = "return this.select();"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for Description."
            MaxLength="50"
            runat="server" />
        </td>
      </tr>
      <tr><td colspan="4" style="border-top: solid 1pt LightGrey" ></td></tr>
      <tr>
        <td class="alignright">
          <asp:Label ID="L_DBFieldName" runat="server" Text="DB Field Name :" />&nbsp;
        </td>
        <td colspan="3">
          <asp:TextBox ID="F_DBFieldName"
            Text='<%# Bind("DBFieldName") %>'
            Width="408px"
            CssClass = "mytxt"
            onfocus = "return this.select();"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for DB Field Name."
            MaxLength="50"
            runat="server" />
        </td>
      </tr>
      <tr><td colspan="4" style="border-top: solid 1pt LightGrey" ></td></tr>
      <tr>
        <td class="alignright">
          <asp:Label ID="L_LinkURL" runat="server" Text="LinkURL :" />&nbsp;
        </td>
        <td colspan="3">
          <asp:TextBox ID="F_LinkURL"
            Text='<%# Bind("LinkURL") %>'
            Width="350px"
            CssClass = "mytxt"
            onfocus = "return this.select();"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for LinkURL."
            MaxLength="500"
            runat="server" />
        </td>
      </tr>
      <tr><td colspan="4" style="border-top: solid 1pt LightGrey" ></td></tr>
      <tr>
        <td class="alignright">
          <asp:Label ID="L_cssHeader" runat="server" Text="css Header :" />&nbsp;
        </td>
        <td>
          <asp:TextBox ID="F_cssHeader"
            Text='<%# Bind("cssHeader") %>'
            Width="408px"
            CssClass = "mytxt"
            onfocus = "return this.select();"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for css Header."
            MaxLength="50"
            runat="server" />
        </td>
        <td class="alignright">
          <asp:Label ID="L_cssCell" runat="server" Text="css Cell :" />&nbsp;
        </td>
        <td>
          <asp:TextBox ID="F_cssCell"
            Text='<%# Bind("cssCell") %>'
            Width="408px"
            CssClass = "mytxt"
            onfocus = "return this.select();"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for css Cell."
            MaxLength="50"
            runat="server" />
        </td>
      </tr>
      <tr><td colspan="4" style="border-top: solid 1pt LightGrey" ></td></tr>
      <tr>
        <td class="alignright">
          <asp:Label ID="L_Sequence" runat="server" Text="Sequence :" /><span style="color:red">*</span>
        </td>
        <td colspan="3">
          <asp:TextBox ID="F_Sequence"
            Text='<%# Bind("Sequence") %>'
            style="text-align: right"
            Width="88px"
            CssClass = "mytxt"
            ValidationGroup= "wfDBRowCols"
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
      <tr><td colspan="4" style="border-top: solid 1pt LightGrey" ></td></tr>
    </table>
  </div>
  </EditItemTemplate>
</asp:FormView>
  </ContentTemplate>
</asp:UpdatePanel>
<asp:ObjectDataSource 
  ID = "ODSwfDBRowCols"
  DataObjectTypeName = "SIS.WF.wfDBRowCols"
  SelectMethod = "wfDBRowColsGetByID"
  UpdateMethod="UZ_wfDBRowColsUpdate"
  DeleteMethod="UZ_wfDBRowColsDelete"
  OldValuesParameterFormatString = "original_{0}"
  TypeName = "SIS.WF.wfDBRowCols"
  runat = "server" >
<SelectParameters>
  <asp:QueryStringParameter DefaultValue="0" QueryStringField="DashboardID" Name="DashboardID" Type="Int32" />
  <asp:QueryStringParameter DefaultValue="0" QueryStringField="DBRows" Name="DBRows" Type="Int32" />
  <asp:QueryStringParameter DefaultValue="0" QueryStringField="DBCols" Name="DBCols" Type="Int32" />
</SelectParameters>
</asp:ObjectDataSource>
</div>
</div>
</asp:Content>

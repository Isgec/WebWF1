<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="EF_wfDBRowTypes.aspx.vb" Inherits="EF_wfDBRowTypes" title="Edit: DB Row Types" %>
<asp:Content ID="CPHwfDBRowTypes" ContentPlaceHolderID="cph1" Runat="Server">
<div id="div1" class="ui-widget-content page">
<div id="div2" class="caption">
    <asp:Label ID="LabelwfDBRowTypes" runat="server" Text="&nbsp;Edit: DB Row Types"></asp:Label>
</div>
<div id="div3" class="pagedata">
<asp:UpdatePanel ID="UPNLwfDBRowTypes" runat="server" >
<ContentTemplate>
  <LGM:ToolBar0 
    ID = "TBLwfDBRowTypes"
    ToolType = "lgNMEdit"
    UpdateAndStay = "False"
    ValidationGroup = "wfDBRowTypes"
    runat = "server" />
<asp:FormView ID="FVwfDBRowTypes"
  runat = "server"
  DataKeyNames = "RowTypeID"
  DataSourceID = "ODSwfDBRowTypes"
  DefaultMode = "Edit" CssClass="sis_formview">
  <EditItemTemplate>
    <div id="frmdiv" class="ui-widget-content minipage">
    <table style="margin:auto;border: solid 1pt lightgrey">
      <tr>
        <td class="alignright">
          <b><asp:Label ID="L_RowTypeID" runat="server" ForeColor="#CC6633" Text="Row Type :" /><span style="color:red">*</span></b>
        </td>
        <td colspan="3">
          <asp:TextBox ID="F_RowTypeID"
            Text='<%# Bind("RowTypeID") %>'
            ToolTip="Value of Row Type."
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
          <asp:Label ID="L_Description" runat="server" Text="Description :" /><span style="color:red">*</span>
        </td>
        <td colspan="3">
          <asp:TextBox ID="F_Description"
            Text='<%# Bind("Description") %>'
            Width="408px"
            CssClass = "mytxt"
            onfocus = "return this.select();"
            ValidationGroup="wfDBRowTypes"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for Description."
            MaxLength="50"
            runat="server" />
          <asp:RequiredFieldValidator 
            ID = "RFVDescription"
            runat = "server"
            ControlToValidate = "F_Description"
            ErrorMessage = "<div class='errorLG'>Required!</div>"
            Display = "Dynamic"
            EnableClientScript = "true"
            ValidationGroup = "wfDBRowTypes"
            SetFocusOnError="true" />
        </td>
      </tr>
      <tr><td colspan="4" style="border-top: solid 1pt LightGrey" ></td></tr>
      <tr>
        <td class="alignright">
          <asp:Label ID="L_cssClass" runat="server" Text="cssClass :" />&nbsp;
        </td>
        <td colspan="3">
          <asp:TextBox ID="F_cssClass"
            Text='<%# Bind("cssClass") %>'
            Width="408px"
            CssClass = "mytxt"
            onfocus = "return this.select();"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for cssClass."
            MaxLength="50"
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
  ID = "ODSwfDBRowTypes"
  DataObjectTypeName = "SIS.WF.wfDBRowTypes"
  SelectMethod = "wfDBRowTypesGetByID"
  UpdateMethod="wfDBRowTypesUpdate"
  DeleteMethod="wfDBRowTypesDelete"
  OldValuesParameterFormatString = "original_{0}"
  TypeName = "SIS.WF.wfDBRowTypes"
  runat = "server" >
<SelectParameters>
  <asp:QueryStringParameter DefaultValue="0" QueryStringField="RowTypeID" Name="RowTypeID" Type="Int32" />
</SelectParameters>
</asp:ObjectDataSource>
</div>
</div>
</asp:Content>

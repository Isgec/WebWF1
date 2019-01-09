<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="EF_wfGraphTypes.aspx.vb" Inherits="EF_wfGraphTypes" title="Edit: Graph Types" %>
<asp:Content ID="CPHwfGraphTypes" ContentPlaceHolderID="cph1" Runat="Server">
<div id="div1" class="ui-widget-content page">
<div id="div2" class="caption">
    <asp:Label ID="LabelwfGraphTypes" runat="server" Text="&nbsp;Edit: Graph Types"></asp:Label>
</div>
<div id="div3" class="pagedata">
<asp:UpdatePanel ID="UPNLwfGraphTypes" runat="server" >
<ContentTemplate>
  <LGM:ToolBar0 
    ID = "TBLwfGraphTypes"
    ToolType = "lgNMEdit"
    UpdateAndStay = "False"
    ValidationGroup = "wfGraphTypes"
    runat = "server" />
<asp:FormView ID="FVwfGraphTypes"
  runat = "server"
  DataKeyNames = "GraphTypeID"
  DataSourceID = "ODSwfGraphTypes"
  DefaultMode = "Edit" CssClass="sis_formview">
  <EditItemTemplate>
    <div id="frmdiv" class="ui-widget-content minipage">
    <table style="margin:auto;border: solid 1pt lightgrey">
      <tr>
        <td class="alignright">
          <b><asp:Label ID="L_GraphTypeID" runat="server" ForeColor="#CC6633" Text="Graph Type :" /><span style="color:red">*</span></b>
        </td>
        <td colspan="3">
          <asp:TextBox ID="F_GraphTypeID"
            Text='<%# Bind("GraphTypeID") %>'
            ToolTip="Value of Graph Type."
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
            ValidationGroup="wfGraphTypes"
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
            ValidationGroup = "wfGraphTypes"
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
  ID = "ODSwfGraphTypes"
  DataObjectTypeName = "SIS.WF.wfGraphTypes"
  SelectMethod = "wfGraphTypesGetByID"
  UpdateMethod="wfGraphTypesUpdate"
  DeleteMethod="wfGraphTypesDelete"
  OldValuesParameterFormatString = "original_{0}"
  TypeName = "SIS.WF.wfGraphTypes"
  runat = "server" >
<SelectParameters>
  <asp:QueryStringParameter DefaultValue="0" QueryStringField="GraphTypeID" Name="GraphTypeID" Type="Int32" />
</SelectParameters>
</asp:ObjectDataSource>
</div>
</div>
</asp:Content>

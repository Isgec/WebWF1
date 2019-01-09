<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="AF_wfDBRowTypes.aspx.vb" Inherits="AF_wfDBRowTypes" title="Add: DB Row Types" %>
<asp:Content ID="CPHwfDBRowTypes" ContentPlaceHolderID="cph1" Runat="Server">
<div id="div1" class="ui-widget-content page">
<div id="div2" class="caption">
    <asp:Label ID="LabelwfDBRowTypes" runat="server" Text="&nbsp;Add: DB Row Types"></asp:Label>
</div>
<div id="div3" class="pagedata">
<asp:UpdatePanel ID="UPNLwfDBRowTypes" runat="server" >
  <ContentTemplate>
  <LGM:ToolBar0 
    ID = "TBLwfDBRowTypes"
    ToolType = "lgNMAdd"
    InsertAndStay = "False"
    ValidationGroup = "wfDBRowTypes"
    runat = "server" />
<asp:FormView ID="FVwfDBRowTypes"
  runat = "server"
  DataKeyNames = "RowTypeID"
  DataSourceID = "ODSwfDBRowTypes"
  DefaultMode = "Insert" CssClass="sis_formview">
  <InsertItemTemplate>
    <div id="frmdiv" class="ui-widget-content minipage">
    <asp:Label ID="L_ErrMsgwfDBRowTypes" runat="server" ForeColor="Red" Font-Bold="true" Text=""></asp:Label>
    <table style="margin:auto;border: solid 1pt lightgrey">
      <tr>
        <td class="alignright">
          <b><asp:Label ID="L_RowTypeID" ForeColor="#CC6633" runat="server" Text="Row Type :" /><span style="color:red">*</span></b>
        </td>
        <td colspan="3">
          <asp:TextBox ID="F_RowTypeID" Enabled="False" CssClass="mypktxt" Width="88px" runat="server" Text="0" />
        </td>
      </tr>
      <tr>
        <td class="alignright">
          <asp:Label ID="L_Description" runat="server" Text="Description :" /><span style="color:red">*</span>
        </td>
        <td colspan="3">
          <asp:TextBox ID="F_Description"
            Text='<%# Bind("Description") %>'
            CssClass = "mytxt"
            onfocus = "return this.select();"
            ValidationGroup="wfDBRowTypes"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for Description."
            MaxLength="50"
            Width="408px"
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
      <tr>
        <td class="alignright">
          <asp:Label ID="L_cssClass" runat="server" Text="cssClass :" />&nbsp;
        </td>
        <td colspan="3">
          <asp:TextBox ID="F_cssClass"
            Text='<%# Bind("cssClass") %>'
            CssClass = "mytxt"
            onfocus = "return this.select();"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for cssClass."
            MaxLength="50"
            Width="408px"
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
  ID = "ODSwfDBRowTypes"
  DataObjectTypeName = "SIS.WF.wfDBRowTypes"
  InsertMethod="wfDBRowTypesInsert"
  OldValuesParameterFormatString = "original_{0}"
  TypeName = "SIS.WF.wfDBRowTypes"
  SelectMethod = "GetNewRecord"
  runat = "server" >
</asp:ObjectDataSource>
</div>
</div>
</asp:Content>

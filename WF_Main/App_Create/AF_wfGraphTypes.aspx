<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="AF_wfGraphTypes.aspx.vb" Inherits="AF_wfGraphTypes" title="Add: Graph Types" %>
<asp:Content ID="CPHwfGraphTypes" ContentPlaceHolderID="cph1" Runat="Server">
<div id="div1" class="ui-widget-content page">
<div id="div2" class="caption">
    <asp:Label ID="LabelwfGraphTypes" runat="server" Text="&nbsp;Add: Graph Types"></asp:Label>
</div>
<div id="div3" class="pagedata">
<asp:UpdatePanel ID="UPNLwfGraphTypes" runat="server" >
  <ContentTemplate>
  <LGM:ToolBar0 
    ID = "TBLwfGraphTypes"
    ToolType = "lgNMAdd"
    InsertAndStay = "False"
    ValidationGroup = "wfGraphTypes"
    runat = "server" />
<asp:FormView ID="FVwfGraphTypes"
  runat = "server"
  DataKeyNames = "GraphTypeID"
  DataSourceID = "ODSwfGraphTypes"
  DefaultMode = "Insert" CssClass="sis_formview">
  <InsertItemTemplate>
    <div id="frmdiv" class="ui-widget-content minipage">
    <asp:Label ID="L_ErrMsgwfGraphTypes" runat="server" ForeColor="Red" Font-Bold="true" Text=""></asp:Label>
    <table style="margin:auto;border: solid 1pt lightgrey">
      <tr>
        <td class="alignright">
          <b><asp:Label ID="L_GraphTypeID" ForeColor="#CC6633" runat="server" Text="Graph Type :" /><span style="color:red">*</span></b>
        </td>
        <td colspan="3">
          <asp:TextBox ID="F_GraphTypeID" Enabled="False" CssClass="mypktxt" Width="88px" runat="server" Text="0" />
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
            ValidationGroup="wfGraphTypes"
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
            ValidationGroup = "wfGraphTypes"
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
  ID = "ODSwfGraphTypes"
  DataObjectTypeName = "SIS.WF.wfGraphTypes"
  InsertMethod="wfGraphTypesInsert"
  OldValuesParameterFormatString = "original_{0}"
  TypeName = "SIS.WF.wfGraphTypes"
  SelectMethod = "GetNewRecord"
  runat = "server" >
</asp:ObjectDataSource>
</div>
</div>
</asp:Content>

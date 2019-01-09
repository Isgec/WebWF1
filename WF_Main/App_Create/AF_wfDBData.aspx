<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="AF_wfDBData.aspx.vb" Inherits="AF_wfDBData" title="Add: Data Handlers" %>
<asp:Content ID="CPHwfDBData" ContentPlaceHolderID="cph1" Runat="Server">
<div id="div1" class="ui-widget-content page">
<div id="div2" class="caption">
    <asp:Label ID="LabelwfDBData" runat="server" Text="&nbsp;Add: Data Handlers"></asp:Label>
</div>
<div id="div3" class="pagedata">
<asp:UpdatePanel ID="UPNLwfDBData" runat="server" >
  <ContentTemplate>
  <LGM:ToolBar0 
    ID = "TBLwfDBData"
    ToolType = "lgNMAdd"
    InsertAndStay = "False"
    ValidationGroup = "wfDBData"
    runat = "server" />
<asp:FormView ID="FVwfDBData"
  runat = "server"
  DataKeyNames = "DBDataID"
  DataSourceID = "ODSwfDBData"
  DefaultMode = "Insert" CssClass="sis_formview">
  <InsertItemTemplate>
    <div id="frmdiv" class="ui-widget-content minipage">
    <asp:Label ID="L_ErrMsgwfDBData" runat="server" ForeColor="Red" Font-Bold="true" Text=""></asp:Label>
    <table style="margin:auto;border: solid 1pt lightgrey">
      <tr>
        <td class="alignright">
          <b><asp:Label ID="L_DBDataID" ForeColor="#CC6633" runat="server" Text="DB Data ID :" /><span style="color:red">*</span></b>
        </td>
        <td colspan="3">
          <asp:TextBox ID="F_DBDataID" Enabled="False" CssClass="mypktxt" Width="88px" runat="server" Text="0" />
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
      <tr><td colspan="4" style="border-top: solid 1pt LightGrey" ></td></tr>
      <tr>
        <td class="alignright">
          <asp:Label ID="L_IsProcedure" runat="server" Text="Is Procedure :" />&nbsp;
        </td>
        <td>
          <asp:CheckBox ID="F_IsProcedure"
           Checked='<%# Bind("IsProcedure") %>'
           CssClass = "mychk"
           runat="server" />
        </td>
        <td class="alignright">
          <asp:Label ID="L_FromERP" runat="server" Text="From ERP :" />&nbsp;
        </td>
        <td>
          <asp:CheckBox ID="F_FromERP"
           Checked='<%# Bind("FromERP") %>'
           CssClass = "mychk"
           runat="server" />
        </td>
      </tr>
      <tr>
        <td class="alignright">
          <asp:Label ID="L_IsList" runat="server" Text="Is Fixed List :" />&nbsp;
        </td>
        <td>
          <asp:CheckBox ID="F_IsList"
           Checked='<%# Bind("IsList") %>'
           CssClass = "mychk"
           runat="server" />
        </td>
        <td class="alignright">
          <asp:Label ID="L_IsErpAFSCall" runat="server" Text="Is ERP AFS Call :" />&nbsp;
        </td>
        <td>
          <asp:CheckBox ID="F_IsErpAFSCall"
           Checked='<%# Bind("IsErpAFSCall") %>'
           CssClass = "mychk"
           runat="server" />
        </td>
      </tr>
      <tr><td colspan="4" style="border-top: solid 1pt LightGrey" ></td></tr>
      <tr>
        <td class="alignright">
          <asp:Label ID="L_AFSDllName" runat="server" Text="AFS Dll Name :" />&nbsp;
        </td>
        <td>
          <asp:TextBox ID="F_AFSDllName"
            Text='<%# Bind("AFSDllName") %>'
            CssClass = "mytxt"
            onfocus = "return this.select();"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for AFS Dll Name."
            MaxLength="150"
            Width="350px"
            runat="server" />
        </td>
        <td class="alignright">
          <asp:Label ID="L_AFSFunctionName" runat="server" Text="AFS Function Name :" />&nbsp;
        </td>
        <td>
          <asp:TextBox ID="F_AFSFunctionName"
            Text='<%# Bind("AFSFunctionName") %>'
            CssClass = "mytxt"
            onfocus = "return this.select();"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for AFS Function Name."
            MaxLength="150"
            Width="350px"
            runat="server" />
        </td>
      </tr>
      <tr>
        <td class="alignright">
          <asp:Label ID="L_AFSParameters" runat="server" Text="AFS Parameters :" />&nbsp;
        </td>
        <td>
          <asp:TextBox ID="F_AFSParameters"
            Text='<%# Bind("AFSParameters") %>'
            CssClass = "mytxt"
            onfocus = "return this.select();"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for AFS Parameters."
            MaxLength="250"
            Width="350px"
            runat="server" />
        </td>
      <td></td><td></td></tr>
      <tr><td colspan="4" style="border-top: solid 1pt LightGrey" ></td></tr>
      <tr>
        <td class="alignright">
          <asp:Label ID="L_DataSQL" runat="server" Text="Data SQL :" />&nbsp;
        </td>
        <td colspan="3">
          <asp:TextBox ID="F_DataSQL"
            Text='<%# Bind("DataSQL") %>'
            Width="1000px" TextMode="multiline" Height="150px"
            CssClass="mytxt"
            onfocus="return this.select();"
            ToolTip="Enter value for DB Data SQL."
            MaxLength="4000"
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
  ID = "ODSwfDBData"
  DataObjectTypeName = "SIS.WF.wfDBData"
  InsertMethod="UZ_wfDBDataInsert"
  OldValuesParameterFormatString = "original_{0}"
  TypeName = "SIS.WF.wfDBData"
  SelectMethod = "GetNewRecord"
  runat = "server" >
</asp:ObjectDataSource>
</div>
</div>
</asp:Content>

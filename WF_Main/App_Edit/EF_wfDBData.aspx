<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="EF_wfDBData.aspx.vb" Inherits="EF_wfDBData" title="Edit: Data Handlers" %>
<asp:Content ID="CPHwfDBData" ContentPlaceHolderID="cph1" Runat="Server">
<div id="div1" class="ui-widget-content page">
<div id="div2" class="caption">
    <asp:Label ID="LabelwfDBData" runat="server" Text="&nbsp;Edit: Data Handlers"></asp:Label>
</div>
<div id="div3" class="pagedata">
<asp:UpdatePanel ID="UPNLwfDBData" runat="server" >
<ContentTemplate>
  <LGM:ToolBar0 
    ID = "TBLwfDBData"
    ToolType = "lgNMEdit"
    UpdateAndStay = "False"
    ValidationGroup = "wfDBData"
    runat = "server" />
<asp:FormView ID="FVwfDBData"
  runat = "server"
  DataKeyNames = "DBDataID"
  DataSourceID = "ODSwfDBData"
  DefaultMode = "Edit" CssClass="sis_formview">
  <EditItemTemplate>
    <div id="frmdiv" class="ui-widget-content minipage">
    <table style="margin:auto;border: solid 1pt lightgrey">
      <tr>
        <td class="alignright">
          <b><asp:Label ID="L_DBDataID" runat="server" ForeColor="#CC6633" Text="DB Data ID :" /><span style="color:red">*</span></b>
        </td>
        <td colspan="3">
          <asp:TextBox ID="F_DBDataID"
            Text='<%# Bind("DBDataID") %>'
            ToolTip="Value of DB Data ID."
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
            Width="350px"
            CssClass = "mytxt"
            onfocus = "return this.select();"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for AFS Dll Name."
            MaxLength="150"
            runat="server" />
        </td>
        <td class="alignright">
          <asp:Label ID="L_AFSFunctionName" runat="server" Text="AFS Function Name :" />&nbsp;
        </td>
        <td>
          <asp:TextBox ID="F_AFSFunctionName"
            Text='<%# Bind("AFSFunctionName") %>'
            Width="350px"
            CssClass = "mytxt"
            onfocus = "return this.select();"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for AFS Function Name."
            MaxLength="150"
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
            Width="350px"
            CssClass = "mytxt"
            onfocus = "return this.select();"
            onblur= "this.value=this.value.replace(/\'/g,'');"
            ToolTip="Enter value for AFS Parameters."
            MaxLength="250"
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
      <tr><td colspan="4" style="border-top: solid 1pt LightGrey" ></td></tr>
    </table>
  </div>
  </EditItemTemplate>
</asp:FormView>
  </ContentTemplate>
</asp:UpdatePanel>
<asp:ObjectDataSource 
  ID = "ODSwfDBData"
  DataObjectTypeName = "SIS.WF.wfDBData"
  SelectMethod = "wfDBDataGetByID"
  UpdateMethod="UZ_wfDBDataUpdate"
  DeleteMethod="UZ_wfDBDataDelete"
  OldValuesParameterFormatString = "original_{0}"
  TypeName = "SIS.WF.wfDBData"
  runat = "server" >
<SelectParameters>
  <asp:QueryStringParameter DefaultValue="0" QueryStringField="DBDataID" Name="DBDataID" Type="Int32" />
</SelectParameters>
</asp:ObjectDataSource>
</div>
</div>
</asp:Content>

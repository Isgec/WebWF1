<%@ Control Language="VB" AutoEventWireup="false" CodeFile="LC_wfDashboards.ascx.vb" Inherits="LC_wfDashboards" %>
<asp:DropDownList 
  ID = "DDLwfDashboards"
  DataSourceID = "OdsDdlwfDashboards"
  AppendDataBoundItems = "true"
  SkinID = "DropDownSkin"
  Width="200px"
  CssClass = "myddl"
  Runat="server" />
<asp:RequiredFieldValidator 
  ID = "RequiredFieldValidatorwfDashboards"
  Runat = "server" 
  ControlToValidate = "DDLwfDashboards"
  ErrorMessage = "<div class='errorLG'>Required!</div>"
  Display = "Dynamic"
  EnableClientScript = "true"
  ValidationGroup = "none"
  SetFocusOnError = "true" />
<asp:ObjectDataSource 
  ID = "OdsDdlwfDashboards"
  TypeName = "SIS.WF.wfDashboards"
  SortParameterName = "OrderBy"
  SelectMethod = "wfDashboardsSelectList"
  Runat="server" />

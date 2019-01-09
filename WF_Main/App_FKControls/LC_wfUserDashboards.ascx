<%@ Control Language="VB" AutoEventWireup="false" CodeFile="LC_wfUserDashboards.ascx.vb" Inherits="LC_wfUserDashboards" %>
<asp:DropDownList 
  ID = "DDLwfUserDashboards"
  DataSourceID = "OdsDdlwfUserDashboards"
  AppendDataBoundItems = "true"
  SkinID = "DropDownSkin"
  Width="200px"
  CssClass = "myddl"
  Runat="server" />
<asp:RequiredFieldValidator 
  ID = "RequiredFieldValidatorwfUserDashboards"
  Runat = "server" 
  ControlToValidate = "DDLwfUserDashboards"
  ErrorMessage = "<div class='errorLG'>Required!</div>"
  Display = "Dynamic"
  EnableClientScript = "true"
  ValidationGroup = "none"
  SetFocusOnError = "true" />
<asp:ObjectDataSource 
  ID = "OdsDdlwfUserDashboards"
  TypeName = "SIS.WF.wfUserDashboards"
  SortParameterName = "OrderBy"
  SelectMethod = "wfUserDashboardsSelectList"
  Runat="server" />

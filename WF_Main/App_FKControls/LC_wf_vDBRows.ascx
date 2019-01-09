<%@ Control Language="VB" AutoEventWireup="false" CodeFile="LC_wf_vDBRows.ascx.vb" Inherits="LC_wf_vDBRows" %>
<asp:DropDownList 
  ID = "DDLwf_vDBRows"
  DataSourceID = "OdsDdlwf_vDBRows"
  AppendDataBoundItems = "true"
  SkinID = "DropDownSkin"
  Width="200px"
  CssClass = "myddl"
  Runat="server" />
<asp:RequiredFieldValidator 
  ID = "RequiredFieldValidatorwf_vDBRows"
  Runat = "server" 
  ControlToValidate = "DDLwf_vDBRows"
  ErrorMessage = "<div class='errorLG'>Required!</div>"
  Display = "Dynamic"
  EnableClientScript = "true"
  ValidationGroup = "none"
  SetFocusOnError = "true" />
<asp:ObjectDataSource 
  ID = "OdsDdlwf_vDBRows"
  TypeName = "SIS.WF.wf_vDBRows"
  SortParameterName = "OrderBy"
  SelectMethod = "wf_vDBRowsSelectList"
  Runat="server" />

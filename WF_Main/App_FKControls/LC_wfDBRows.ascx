<%@ Control Language="VB" AutoEventWireup="false" CodeFile="LC_wfDBRows.ascx.vb" Inherits="LC_wfDBRows" %>
<asp:DropDownList 
  ID = "DDLwfDBRows"
  DataSourceID = "OdsDdlwfDBRows"
  AppendDataBoundItems = "true"
  SkinID = "DropDownSkin"
  Width="200px"
  CssClass = "myddl"
  Runat="server" />
<asp:RequiredFieldValidator 
  ID = "RequiredFieldValidatorwfDBRows"
  Runat = "server" 
  ControlToValidate = "DDLwfDBRows"
  ErrorMessage = "<div class='errorLG'>Required!</div>"
  Display = "Dynamic"
  EnableClientScript = "true"
  ValidationGroup = "none"
  SetFocusOnError = "true" />
<asp:ObjectDataSource 
  ID = "OdsDdlwfDBRows"
  TypeName = "SIS.WF.wfDBRows"
  SortParameterName = "OrderBy"
  SelectMethod = "wfDBRowsSelectList"
  Runat="server" />

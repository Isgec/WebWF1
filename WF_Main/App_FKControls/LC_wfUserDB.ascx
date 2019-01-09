<%@ Control Language="VB" AutoEventWireup="false" CodeFile="LC_wfUserDB.ascx.vb" Inherits="LC_wfUserDB" %>
<asp:DropDownList 
  ID = "DDLwfUserDB"
  DataSourceID = "OdsDdlwfUserDB"
  AppendDataBoundItems = "true"
  SkinID = "DropDownSkin"
  Width="200px"
  CssClass = "myddl"
  Runat="server" />
<asp:RequiredFieldValidator 
  ID = "RequiredFieldValidatorwfUserDB"
  Runat = "server" 
  ControlToValidate = "DDLwfUserDB"
  ErrorMessage = "<div class='errorLG'>Required!</div>"
  Display = "Dynamic"
  EnableClientScript = "true"
  ValidationGroup = "none"
  SetFocusOnError = "true" />
<asp:ObjectDataSource 
  ID = "OdsDdlwfUserDB"
  TypeName = "SIS.WF.wfUserDB"
  SortParameterName = "OrderBy"
  SelectMethod = "wfUserDBSelectList"
  Runat="server" />

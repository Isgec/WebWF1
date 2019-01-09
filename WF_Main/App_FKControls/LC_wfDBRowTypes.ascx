<%@ Control Language="VB" AutoEventWireup="false" CodeFile="LC_wfDBRowTypes.ascx.vb" Inherits="LC_wfDBRowTypes" %>
<asp:DropDownList 
  ID = "DDLwfDBRowTypes"
  DataSourceID = "OdsDdlwfDBRowTypes"
  AppendDataBoundItems = "true"
  SkinID = "DropDownSkin"
  Width="200px"
  CssClass = "myddl"
  Runat="server" />
<asp:RequiredFieldValidator 
  ID = "RequiredFieldValidatorwfDBRowTypes"
  Runat = "server" 
  ControlToValidate = "DDLwfDBRowTypes"
  ErrorMessage = "<div class='errorLG'>Required!</div>"
  Display = "Dynamic"
  EnableClientScript = "true"
  ValidationGroup = "none"
  SetFocusOnError = "true" />
<asp:ObjectDataSource 
  ID = "OdsDdlwfDBRowTypes"
  TypeName = "SIS.WF.wfDBRowTypes"
  SortParameterName = "OrderBy"
  SelectMethod = "wfDBRowTypesSelectList"
  Runat="server" />

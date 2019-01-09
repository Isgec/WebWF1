<%@ Control Language="VB" AutoEventWireup="false" CodeFile="LC_wfGraphTypes.ascx.vb" Inherits="LC_wfGraphTypes" %>
<asp:DropDownList 
  ID = "DDLwfGraphTypes"
  DataSourceID = "OdsDdlwfGraphTypes"
  AppendDataBoundItems = "true"
  SkinID = "DropDownSkin"
  Width="200px"
  CssClass = "myddl"
  Runat="server" />
<asp:RequiredFieldValidator 
  ID = "RequiredFieldValidatorwfGraphTypes"
  Runat = "server" 
  ControlToValidate = "DDLwfGraphTypes"
  ErrorMessage = "<div class='errorLG'>Required!</div>"
  Display = "Dynamic"
  EnableClientScript = "true"
  ValidationGroup = "none"
  SetFocusOnError = "true" />
<asp:ObjectDataSource 
  ID = "OdsDdlwfGraphTypes"
  TypeName = "SIS.WF.wfGraphTypes"
  SortParameterName = "OrderBy"
  SelectMethod = "wfGraphTypesSelectList"
  Runat="server" />

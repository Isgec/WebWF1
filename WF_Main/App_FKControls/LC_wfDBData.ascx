<%@ Control Language="VB" AutoEventWireup="false" CodeFile="LC_wfDBData.ascx.vb" Inherits="LC_wfDBData" %>
<asp:DropDownList 
  ID = "DDLwfDBData"
  DataSourceID = "OdsDdlwfDBData"
  AppendDataBoundItems = "true"
  SkinID = "DropDownSkin"
  Width="200px"
  CssClass = "myddl"
  Runat="server" />
<asp:RequiredFieldValidator 
  ID = "RequiredFieldValidatorwfDBData"
  Runat = "server" 
  ControlToValidate = "DDLwfDBData"
  ErrorMessage = "<div class='errorLG'>Required!</div>"
  Display = "Dynamic"
  EnableClientScript = "true"
  ValidationGroup = "none"
  SetFocusOnError = "true" />
<asp:ObjectDataSource 
  ID = "OdsDdlwfDBData"
  TypeName = "SIS.WF.wfDBData"
  SortParameterName = "OrderBy"
  SelectMethod = "wfDBDataSelectList"
  Runat="server" />

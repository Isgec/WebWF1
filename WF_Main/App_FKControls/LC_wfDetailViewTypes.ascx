<%@ Control Language="VB" AutoEventWireup="false" CodeFile="LC_wfDetailViewTypes.ascx.vb" Inherits="LC_wfDetailViewTypes" %>
<asp:DropDownList 
  ID = "DDLwfDetailViewTypes"
  DataSourceID = "OdsDdlwfDetailViewTypes"
  AppendDataBoundItems = "true"
  SkinID = "DropDownSkin"
  Width="200px"
  CssClass = "myddl"
  Runat="server" />
<asp:RequiredFieldValidator 
  ID = "RequiredFieldValidatorwfDetailViewTypes"
  Runat = "server" 
  ControlToValidate = "DDLwfDetailViewTypes"
  ErrorMessage = "<div class='errorLG'>Required!</div>"
  Display = "Dynamic"
  EnableClientScript = "true"
  ValidationGroup = "none"
  SetFocusOnError = "true" />
<asp:ObjectDataSource 
  ID = "OdsDdlwfDetailViewTypes"
  TypeName = "SIS.WF.wfDetailViewTypes"
  SortParameterName = "OrderBy"
  SelectMethod = "wfDetailViewTypesSelectList"
  Runat="server" />

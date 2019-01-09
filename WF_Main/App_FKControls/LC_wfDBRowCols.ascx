<%@ Control Language="VB" AutoEventWireup="false" CodeFile="LC_wfDBRowCols.ascx.vb" Inherits="LC_wfDBRowCols" %>
<asp:DropDownList 
  ID = "DDLwfDBRowCols"
  DataSourceID = "OdsDdlwfDBRowCols"
  AppendDataBoundItems = "true"
  SkinID = "DropDownSkin"
  Width="200px"
  CssClass = "myddl"
  Runat="server" />
<asp:RequiredFieldValidator 
  ID = "RequiredFieldValidatorwfDBRowCols"
  Runat = "server" 
  ControlToValidate = "DDLwfDBRowCols"
  ErrorMessage = "<div class='errorLG'>Required!</div>"
  Display = "Dynamic"
  EnableClientScript = "true"
  ValidationGroup = "none"
  SetFocusOnError = "true" />
<asp:ObjectDataSource 
  ID = "OdsDdlwfDBRowCols"
  TypeName = "SIS.WF.wfDBRowCols"
  SortParameterName = "OrderBy"
  SelectMethod = "wfDBRowColsSelectList"
  Runat="server" />

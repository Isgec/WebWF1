Imports System.Web.Script.Serialization
Partial Class EF_wfUserDBRows
  Inherits SIS.SYS.UpdateBase
  Public Property Editable() As Boolean
    Get
      If ViewState("Editable") IsNot Nothing Then
        Return CType(ViewState("Editable"), Boolean)
      End If
      Return True
    End Get
    Set(ByVal value As Boolean)
      ViewState.Add("Editable", value)
    End Set
  End Property
  Public Property Deleteable() As Boolean
    Get
      If ViewState("Deleteable") IsNot Nothing Then
        Return CType(ViewState("Deleteable"), Boolean)
      End If
      Return True
    End Get
    Set(ByVal value As Boolean)
      ViewState.Add("Deleteable", value)
    End Set
  End Property
  Public Property PrimaryKey() As String
    Get
      If ViewState("PrimaryKey") IsNot Nothing Then
        Return CType(ViewState("PrimaryKey"), String)
      End If
      Return True
    End Get
    Set(ByVal value As String)
      ViewState.Add("PrimaryKey", value)
    End Set
  End Property
  Protected Sub ODSwfUserDBRows_Selected(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.ObjectDataSourceStatusEventArgs) Handles ODSwfUserDBRows.Selected
    Dim tmp As SIS.WF.wfUserDBRows = CType(e.ReturnValue, SIS.WF.wfUserDBRows)
    Editable = tmp.Editable
    Deleteable = tmp.Deleteable
    PrimaryKey = tmp.PrimaryKey
  End Sub
  Protected Sub FVwfUserDBRows_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles FVwfUserDBRows.Init
    DataClassName = "EwfUserDBRows"
    SetFormView = FVwfUserDBRows
  End Sub
  Protected Sub TBLwfUserDBRows_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles TBLwfUserDBRows.Init
    SetToolBar = TBLwfUserDBRows
  End Sub
  Protected Sub FVwfUserDBRows_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles FVwfUserDBRows.PreRender
    TBLwfUserDBRows.EnableSave = Editable
    TBLwfUserDBRows.EnableDelete = Deleteable
    Dim mStr As String = ""
    Dim oTR As IO.StreamReader = New IO.StreamReader(HttpContext.Current.Server.MapPath("~/WF_Main/App_Edit") & "/EF_wfUserDBRows.js")
    mStr = oTR.ReadToEnd
    oTR.Close()
    oTR.Dispose()
    If Not Page.ClientScript.IsClientScriptBlockRegistered("scriptwfUserDBRows") Then
      Page.ClientScript.RegisterClientScriptBlock(GetType(System.String), "scriptwfUserDBRows", mStr)
    End If
  End Sub
  <System.Web.Services.WebMethod()> _
  <System.Web.Script.Services.ScriptMethod()> _
  Public Shared Function ReminderCountDBDataIDCompletionList(ByVal prefixText As String, ByVal count As Integer, ByVal contextKey As String) As String()
    Return SIS.WF.wfDBData.SelectwfDBDataAutoCompleteList(prefixText, count, contextKey)
  End Function
  <System.Web.Services.WebMethod()> _
  <System.Web.Script.Services.ScriptMethod()> _
  Public Shared Function ReminderAvgDBDataIDCompletionList(ByVal prefixText As String, ByVal count As Integer, ByVal contextKey As String) As String()
    Return SIS.WF.wfDBData.SelectwfDBDataAutoCompleteList(prefixText, count, contextKey)
  End Function
  <System.Web.Services.WebMethod()> _
  <System.Web.Script.Services.ScriptMethod()> _
  Public Shared Function ReminderMaxDBDataIDCompletionList(ByVal prefixText As String, ByVal count As Integer, ByVal contextKey As String) As String()
    Return SIS.WF.wfDBData.SelectwfDBDataAutoCompleteList(prefixText, count, contextKey)
  End Function
  <System.Web.Services.WebMethod()> _
  Public Shared Function validate_FK_WF_UserDBRows_ReminderCountDBDataID(ByVal value As String) As String
    Dim aVal() As String = value.Split(",".ToCharArray)
    Dim mRet As String="0|" & aVal(0)
    Dim ReminderCountDBDataID As Int32 = CType(aVal(1),Int32)
    Dim oVar As SIS.WF.wfDBData = SIS.WF.wfDBData.wfDBDataGetByID(ReminderCountDBDataID)
    If oVar Is Nothing Then
      mRet = "1|" & aVal(0) & "|Record not found." 
    Else
      mRet = "0|" & aVal(0) & "|" & oVar.DisplayField 
    End If
    Return mRet
  End Function
  <System.Web.Services.WebMethod()> _
  Public Shared Function validate_FK_WF_UserDBRows_ReminderAvgDBDataID(ByVal value As String) As String
    Dim aVal() As String = value.Split(",".ToCharArray)
    Dim mRet As String="0|" & aVal(0)
    Dim ReminderAvgDBDataID As Int32 = CType(aVal(1),Int32)
    Dim oVar As SIS.WF.wfDBData = SIS.WF.wfDBData.wfDBDataGetByID(ReminderAvgDBDataID)
    If oVar Is Nothing Then
      mRet = "1|" & aVal(0) & "|Record not found." 
    Else
      mRet = "0|" & aVal(0) & "|" & oVar.DisplayField 
    End If
    Return mRet
  End Function
  <System.Web.Services.WebMethod()> _
  Public Shared Function validate_FK_WF_UserDBRows_ReminderMaxDBDataID(ByVal value As String) As String
    Dim aVal() As String = value.Split(",".ToCharArray)
    Dim mRet As String="0|" & aVal(0)
    Dim ReminderMaxDBDataID As Int32 = CType(aVal(1),Int32)
    Dim oVar As SIS.WF.wfDBData = SIS.WF.wfDBData.wfDBDataGetByID(ReminderMaxDBDataID)
    If oVar Is Nothing Then
      mRet = "1|" & aVal(0) & "|Record not found." 
    Else
      mRet = "0|" & aVal(0) & "|" & oVar.DisplayField 
    End If
    Return mRet
  End Function

End Class

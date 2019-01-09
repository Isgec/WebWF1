Partial Class AF_wfDBRowTypes
  Inherits SIS.SYS.InsertBase
  Protected Sub FVwfDBRowTypes_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles FVwfDBRowTypes.Init
    DataClassName = "AwfDBRowTypes"
    SetFormView = FVwfDBRowTypes
  End Sub
  Protected Sub TBLwfDBRowTypes_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles TBLwfDBRowTypes.Init
    SetToolBar = TBLwfDBRowTypes
  End Sub
  Protected Sub FVwfDBRowTypes_DataBound(ByVal sender As Object, ByVal e As System.EventArgs) Handles FVwfDBRowTypes.DataBound
    SIS.WF.wfDBRowTypes.SetDefaultValues(sender, e) 
  End Sub
  Protected Sub FVwfDBRowTypes_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles FVwfDBRowTypes.PreRender
    Dim mStr As String = ""
    Dim oTR As IO.StreamReader = New IO.StreamReader(HttpContext.Current.Server.MapPath("~/WF_Main/App_Create") & "/AF_wfDBRowTypes.js")
    mStr = oTR.ReadToEnd
    oTR.Close()
    oTR.Dispose()
    If Not Page.ClientScript.IsClientScriptBlockRegistered("scriptwfDBRowTypes") Then
      Page.ClientScript.RegisterClientScriptBlock(GetType(System.String), "scriptwfDBRowTypes", mStr)
    End If
    If Request.QueryString("RowTypeID") IsNot Nothing Then
      CType(FVwfDBRowTypes.FindControl("F_RowTypeID"), TextBox).Text = Request.QueryString("RowTypeID")
      CType(FVwfDBRowTypes.FindControl("F_RowTypeID"), TextBox).Enabled = False
    End If
  End Sub

End Class

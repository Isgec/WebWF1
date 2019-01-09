Partial Class AF_wfDBData
  Inherits SIS.SYS.InsertBase
  Protected Sub FVwfDBData_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles FVwfDBData.Init
    DataClassName = "AwfDBData"
    SetFormView = FVwfDBData
  End Sub
  Protected Sub TBLwfDBData_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles TBLwfDBData.Init
    SetToolBar = TBLwfDBData
  End Sub
  Protected Sub FVwfDBData_DataBound(ByVal sender As Object, ByVal e As System.EventArgs) Handles FVwfDBData.DataBound
    SIS.WF.wfDBData.SetDefaultValues(sender, e) 
  End Sub
  Protected Sub FVwfDBData_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles FVwfDBData.PreRender
    Dim mStr As String = ""
    Dim oTR As IO.StreamReader = New IO.StreamReader(HttpContext.Current.Server.MapPath("~/WF_Main/App_Create") & "/AF_wfDBData.js")
    mStr = oTR.ReadToEnd
    oTR.Close()
    oTR.Dispose()
    If Not Page.ClientScript.IsClientScriptBlockRegistered("scriptwfDBData") Then
      Page.ClientScript.RegisterClientScriptBlock(GetType(System.String), "scriptwfDBData", mStr)
    End If
    If Request.QueryString("DBDataID") IsNot Nothing Then
      CType(FVwfDBData.FindControl("F_DBDataID"), TextBox).Text = Request.QueryString("DBDataID")
      CType(FVwfDBData.FindControl("F_DBDataID"), TextBox).Enabled = False
    End If
  End Sub

End Class

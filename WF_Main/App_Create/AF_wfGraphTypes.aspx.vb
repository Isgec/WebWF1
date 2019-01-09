Partial Class AF_wfGraphTypes
  Inherits SIS.SYS.InsertBase
  Protected Sub FVwfGraphTypes_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles FVwfGraphTypes.Init
    DataClassName = "AwfGraphTypes"
    SetFormView = FVwfGraphTypes
  End Sub
  Protected Sub TBLwfGraphTypes_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles TBLwfGraphTypes.Init
    SetToolBar = TBLwfGraphTypes
  End Sub
  Protected Sub FVwfGraphTypes_DataBound(ByVal sender As Object, ByVal e As System.EventArgs) Handles FVwfGraphTypes.DataBound
    SIS.WF.wfGraphTypes.SetDefaultValues(sender, e) 
  End Sub
  Protected Sub FVwfGraphTypes_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles FVwfGraphTypes.PreRender
    Dim mStr As String = ""
    Dim oTR As IO.StreamReader = New IO.StreamReader(HttpContext.Current.Server.MapPath("~/WF_Main/App_Create") & "/AF_wfGraphTypes.js")
    mStr = oTR.ReadToEnd
    oTR.Close()
    oTR.Dispose()
    If Not Page.ClientScript.IsClientScriptBlockRegistered("scriptwfGraphTypes") Then
      Page.ClientScript.RegisterClientScriptBlock(GetType(System.String), "scriptwfGraphTypes", mStr)
    End If
    If Request.QueryString("GraphTypeID") IsNot Nothing Then
      CType(FVwfGraphTypes.FindControl("F_GraphTypeID"), TextBox).Text = Request.QueryString("GraphTypeID")
      CType(FVwfGraphTypes.FindControl("F_GraphTypeID"), TextBox).Enabled = False
    End If
  End Sub

End Class

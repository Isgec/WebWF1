Imports System.Web.Script.Serialization
Partial Class GF_wfUserDB
  Inherits SIS.SYS.GridBase

  Private Sub cmdExit_Command(sender As Object, e As CommandEventArgs) Handles cmdExit.Command
    Response.Redirect(SIS.SYS.Utilities.SessionManager.PopNavBar)
  End Sub

  Private Sub DLwfUserDB_ItemCreated(sender As Object, e As DataListItemEventArgs) Handles DLwfUserDB.ItemCreated
    Select Case e.Item.ItemType
      Case ListItemType.Item, ListItemType.AlternatingItem
        Dim db As SIS.WF.wfUserDB = CType(e.Item.DataItem, SIS.WF.wfUserDB)
        Dim cp As Panel = CType(e.Item.FindControl("dbrow"), Panel)
        If db IsNot Nothing Then
          Try
            cp.Controls.Add(SIS.WF.GenerateDashboard.getDBControl(db))
          Catch ex As Exception
            Dim tmp As New Label
            tmp.ForeColor = Drawing.Color.Red
            tmp.Text = ex.Message
            cp.Controls.Add(tmp)
          End Try
        End If
    End Select
  End Sub

  'Private Sub GF_wfUserDB_Load(sender As Object, e As EventArgs) Handles Me.Load
  '  If Not Page.IsPostBack And Not Page.IsCallback Then
  '    RefreshData()
  '  End If
  'End Sub
  'Private Sub RefreshData()
  '  Dim tmpAs As List(Of SIS.WF.wfUserDB) = SIS.WF.wfUserDB.UZ_IwfUserDBSelectList(0, 99999, "Sequence", False, "")
  '  For Each tmp As SIS.WF.wfUserDB In tmpAs
  '    Ipnl.Controls.Add(getTbl(tmp))
  '  Next
  'End Sub
  'Private Function getTbl(ByVal tmp As SIS.WF.wfUserDB) As Panel
  '  Dim xPnl As New Panel
  '  xPnl.Width = Unit.Percentage(100)
  '  Dim pnl As New Panel
  '  With pnl
  '    .ID = "dpnlH_" & tmp.DashboardID
  '    .CssClass = "cph cph-gray"
  '  End With
  '  Dim cTbl As New Table
  '  Dim ctr As New TableRow
  '  Dim ctd As New TableCell
  '  With cTbl
  '    .ID = "hTbl_" & tmp.DashboardID
  '    .Width = Unit.Percentage(100)
  '  End With
  '  With ctd
  '    .Style.Add("text-align", "left")
  '    .Style.Add("width", "30px")
  '    .Text = "<i class='fa fa-2x fa-address-card'></i>"
  '  End With
  '  ctr.Cells.Add(ctd)
  '  ctd = New TableCell
  '  With ctd
  '    .Style.Add("text-align", "left")
  '    .Style.Add("margin", "auto")
  '    .Text = tmp.DBDescription
  '    .Font.Size = FontUnit.Point(12)
  '  End With
  '  ctr.Cells.Add(ctd)
  '  ctd = New TableCell
  '  With ctd
  '    .Style.Add("text-align", "right")
  '  End With
  '  Dim img As New ImageButton
  '  With img
  '    .AlternateText = "image"
  '    .ID = "dimgH_" & tmp.DashboardID
  '    .ImageUrl = "~/images/ua.png"
  '    .Style.Add("cursor", "pointer")
  '    .Style.Add("height", "20px")
  '    .Style.Add("width", "20px")
  '  End With
  '  ctd.Controls.Add(img)
  '  ctr.Cells.Add(ctd)
  '  cTbl.Rows.Add(ctr)
  '  pnl.Controls.Add(cTbl)
  '  xPnl.Controls.Add(pnl)
  '  Dim cpnl = New Panel
  '  With cpnl
  '    .ID = "dpnlD_" & tmp.DashboardID
  '    .CssClass = "cp cp-gray"
  '  End With
  '  cpnl.Controls.Add(SIS.WF.wfUserDB.getDBControl(tmp))
  '  xPnl.Controls.Add(cpnl)
  '  Dim ajxCpl As New AjaxControlToolkit.CollapsiblePanelExtender
  '  With ajxCpl
  '    .ID = "cpe_" & tmp.DashboardID
  '    .TargetControlID = "dpnlD_" & tmp.DashboardID
  '    .ExpandControlID = "dpnlH_" & tmp.DashboardID
  '    .CollapseControlID = "dpnlD_" & tmp.DashboardID
  '    .Collapsed = False
  '    .CollapsedSize = 0
  '    .ImageControlID = "dimgH_" & tmp.DashboardID
  '    .ExpandedImage = "~/images/ua.png"
  '    .CollapsedImage = "~/images/da.png"
  '    .SuppressPostBack = True
  '  End With
  '  xPnl.Controls.Add(ajxCpl)
  '  Me.UPNLwfUserDB.ContentTemplateContainer.Controls.Add(pnl)
  '  Me.UPNLwfUserDB.ContentTemplateContainer.Controls.Add(cpnl)
  '  Me.UPNLwfUserDB.ContentTemplateContainer.Controls.Add(ajxCpl)
  '  Return xPnl
  'End Function
  Private Sub IDLwfUserDB_ItemCreated(sender As Object, e As DataListItemEventArgs) Handles IDLwfUserDB.ItemCreated
    Select Case e.Item.ItemType
      Case ListItemType.Item, ListItemType.AlternatingItem
        Dim db As SIS.WF.wfUserDB = CType(e.Item.DataItem, SIS.WF.wfUserDB)
        Dim cp As Panel = CType(e.Item.FindControl("dbrow"), Panel)
        If db IsNot Nothing Then
          Try
            cp.Controls.Add(SIS.WF.GenerateDashboard.getDBControl(db))
          Catch ex As Exception
            Dim tmp As New Label
            tmp.ForeColor = Drawing.Color.Red
            tmp.Text = ex.Message
            cp.Controls.Add(tmp)
          End Try
        End If
    End Select
  End Sub
  <System.Web.Services.WebMethod()>
  Public Shared Function getDVData(ByVal value As String) As String
    Dim aVal() As String = value.Split("|".ToCharArray)
    Dim mRet As String = ""
    Dim DashboardID As Int32 = CType(aVal(0), Int32)
    Dim DBRows As Int32 = CType(aVal(1), Int32)
    mRet = SIS.WF.GenerateDashboard.GetDVData(DashboardID, DBRows)
    Return mRet
  End Function
  <System.Web.Services.WebMethod()>
  Public Shared Function getReminderData(ByVal value As String) As String
    Dim aVal() As String = value.Split("|".ToCharArray)
    Dim mRet As String = ""
    Dim DashboardID As Int32 = CType(aVal(0), Int32)
    Dim DBRows As Int32 = CType(aVal(1), Int32)
    mRet = SIS.WF.GenerateDashboard.GetReminderData(DashboardID, DBRows)
    Return mRet
  End Function
  <System.Web.Services.WebMethod()>
  Public Shared Function ReminderReset(ByVal value As String) As String
    Dim aVal() As String = value.Split("|".ToCharArray)
    Dim mRet As String = ""
    Dim DashboardID As Int32 = CType(aVal(0), Int32)
    Dim DBRows As Int32 = CType(aVal(1), Int32)
    SIS.WF.wfUserDBRows.ReminderReset(DashboardID, DBRows)
    Return mRet
  End Function
  <System.Web.Services.WebMethod()>
  Public Shared Function ReminderUpdate(ByVal value As String) As String
    Dim aVal() As String = value.Split("|".ToCharArray)
    Dim mRet As String = ""
    Dim DashboardID As Int32 = CType(aVal(0), Int32)
    Dim DBRows As Int32 = CType(aVal(1), Int32)
    Dim nv As String = aVal(2)
    SIS.WF.wfUserDBRows.ReminderUpdate(DashboardID, DBRows, nv)
    Return mRet
  End Function
  <System.Web.Services.WebMethod()>
  Public Shared Function forwardDVData(ByVal value As String) As String
    Dim aVal() As String = value.Split("|".ToCharArray)
    Dim mRet As String = ""
    Dim DashboardID As Int32 = CType(aVal(0), Int32)
    Dim DBRows As Int32 = CType(aVal(1), Int32)
    Dim strPK As String = CType(aVal(2), String)
    Dim Remarks As String = CType(aVal(3), String)
    'Convert to Generic
    Dim dbRow As SIS.WF.wfDBRows = SIS.WF.wfDBRows.wfDBRowsGetByID(DashboardID, DBRows)
    'dbRow.ServiceName
    Dim LoginID As String = HttpContext.Current.Session("LoginID")
    Dim ForwardAction As String = "LeaveApproval"
    Dim tmp As String = ""
    Select Case ForwardAction
      Case "LeaveApproval"
        Try
          Dim oC As New localhost.atnWebService
          tmp = oC.ForwardLeaveApplication(strPK, Remarks, LoginID)
        Catch ex As Exception
          tmp = ex.Message
        End Try
    End Select
    mRet = SIS.WF.GenerateDashboard.GetDVData(DashboardID, DBRows)
    Return mRet
  End Function

End Class

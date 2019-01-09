Imports System
Imports System.Collections.Generic
Imports System.Data
Imports System.Data.SqlClient
Imports System.ComponentModel
Namespace SIS.WF
  Partial Public Class wfDBRows
    'Public Property AddNewURL As String = ""
    'Public Property DVLaunchURL As String = ""
    'Public Property IsDVURL As Boolean = False
    'Public Property DVURL As String = ""
    Private Function GetURL(ByVal mRet As String) As String
      Dim tmp As String = HttpContext.Current.Request.Url.Scheme & Uri.SchemeDelimiter & HttpContext.Current.Request.Url.Authority
      mRet = mRet.Replace("@host", tmp)
      mRet = mRet.Replace("@LoginID", HttpContext.Current.Session("LoginID"))
      Return mRet
    End Function
    Public ReadOnly Property getDVURL As String
      Get
        Return GetURL(DVURL)
      End Get
    End Property
    Public ReadOnly Property getAddNewURL As String
      Get
        Return GetURL(AddNewURL)
      End Get
    End Property
    Public ReadOnly Property getDVLaunchURL As String
      Get
        Return GetURL(DVLaunchURL)
      End Get
    End Property
    Public ReadOnly Property IsDVLaunchable As Boolean
      Get
        If DVLaunchURL <> "" Then
          Return True
        Else
          Return False
        End If
      End Get
    End Property
    Public ReadOnly Property GetIcon As String
      Get
        Dim mRet As String = "fa fa-2x fa-address-card"
        If MainDBIconID <> "" Then
          mRet = "fa fa-2x fa-" & FK_WF_DBRows_MainDBIconID.IconName
        End If
        Return mRet
      End Get
    End Property
    Public Function GetColor() As System.Drawing.Color
      Dim mRet As System.Drawing.Color = Drawing.Color.Black
      Return mRet
    End Function
    Public Function GetVisible() As Boolean
      Dim mRet As Boolean = True
      Return mRet
    End Function
    Public Function GetEnable() As Boolean
      Dim mRet As Boolean = True
      Return mRet
    End Function
    Public Function GetEditable() As Boolean
      Dim mRet As Boolean = True
      Return mRet
    End Function
    Public Function GetDeleteable() As Boolean
      Dim mRet As Boolean = True
      Return mRet
    End Function
    Public ReadOnly Property Editable() As Boolean
      Get
        Dim mRet As Boolean = True
        Try
          mRet = GetEditable()
        Catch ex As Exception
        End Try
        Return mRet
      End Get
    End Property
    Public ReadOnly Property Deleteable() As Boolean
      Get
        Dim mRet As Boolean = True
        Try
          mRet = GetDeleteable()
        Catch ex As Exception
        End Try
        Return mRet
      End Get
    End Property
    Public ReadOnly Property DAWFVisible() As Boolean
      Get
        Dim mRet As Boolean = True
        Try
          mRet = GetVisible()
        Catch ex As Exception
        End Try
        Return mRet
      End Get
    End Property
    Public ReadOnly Property DAWFEnable() As Boolean
      Get
        Dim mRet As Boolean = True
        Try
          mRet = GetEnable()
        Catch ex As Exception
        End Try
        Return mRet
      End Get
    End Property
    Public Shared Function DAWF(ByVal DashboardID As Int32, ByVal DBRows As Int32) As SIS.WF.wfDBRows
      Dim Results As SIS.WF.wfDBRows = wfDBRowsGetByID(DashboardID, DBRows)
      Dim mFrom As Integer = 0
      Dim mCount As Integer = 50
      Dim uList As List(Of SIS.WF.wfUserDBRows) = SIS.WF.wfUserDBRows.UZ_wfUserDBRowsSelectListForAllUsers(mFrom, mCount, "", False, "", DBRows, DashboardID)
      Do While uList.Count > 0
        For Each usr As SIS.WF.wfUserDBRows In uList
          usr.Active = False
          SIS.WF.wfUserDBRows.UpdateData(usr)
        Next
        mFrom += mCount
        uList = SIS.WF.wfUserDBRows.UZ_wfUserDBRowsSelectListForAllUsers(mFrom, mCount, "", False, "", DBRows, DashboardID)
      Loop
      Return Results
    End Function
    Public ReadOnly Property AAWFVisible() As Boolean
      Get
        Dim mRet As Boolean = True
        Try
          mRet = GetVisible()
        Catch ex As Exception
        End Try
        Return mRet
      End Get
    End Property
    Public ReadOnly Property AAWFEnable() As Boolean
      Get
        Dim mRet As Boolean = True
        Try
          mRet = GetEnable()
        Catch ex As Exception
        End Try
        Return mRet
      End Get
    End Property
    Public Shared Function AAWF(ByVal DashboardID As Int32, ByVal DBRows As Int32) As SIS.WF.wfDBRows
      Dim Results As SIS.WF.wfDBRows = wfDBRowsGetByID(DashboardID, DBRows)
      Dim mFrom As Integer = 0
      Dim mCount As Integer = 50

      Dim uList As List(Of SIS.WF.wfUserDBRows) = SIS.WF.wfUserDBRows.UZ_wfUserDBRowsSelectListForAllUsers(mFrom, mCount, "", False, "", DBRows, DashboardID)
      Do While uList.Count > 0
        For Each usr As SIS.WF.wfUserDBRows In uList
          usr.Active = True
          SIS.WF.wfUserDBRows.UpdateData(usr)
        Next
        mFrom += mCount
        uList = SIS.WF.wfUserDBRows.UZ_wfUserDBRowsSelectListForAllUsers(mFrom, mCount, "", False, "", DBRows, DashboardID)
      Loop
      Return Results
    End Function
    Public ReadOnly Property RAWFVisible() As Boolean
      Get
        Dim mRet As Boolean = True
        Try
          mRet = GetVisible()
        Catch ex As Exception
        End Try
        Return mRet
      End Get
    End Property
    Public ReadOnly Property RAWFEnable() As Boolean
      Get
        Dim mRet As Boolean = True
        Try
          mRet = GetEnable()
        Catch ex As Exception
        End Try
        Return mRet
      End Get
    End Property
    Public Shared Function RAWF(ByVal DashboardID As Int32, ByVal DBRows As Int32) As SIS.WF.wfDBRows
      Dim Results As SIS.WF.wfDBRows = wfDBRowsGetByID(DashboardID, DBRows)
      Dim mFrom As Integer = 0
      Dim mCount As Integer = 50

      Dim uList As List(Of SIS.WF.wfUserDBRows) = SIS.WF.wfUserDBRows.UZ_wfUserDBRowsSelectListForAllUsers(mFrom, mCount, "", False, "", DBRows, DashboardID)
      Do While uList.Count > 0
        For Each usr As SIS.WF.wfUserDBRows In uList
          usr.Active = False
          SIS.WF.wfUserDBRows.UZ_wfUserDBRowsDelete(usr)
        Next
        mFrom += mCount
        uList = SIS.WF.wfUserDBRows.UZ_wfUserDBRowsSelectListForAllUsers(mFrom, mCount, "", False, "", DBRows, DashboardID)
      Loop
      Return Results
    End Function
    Public ReadOnly Property CopyWFVisible() As Boolean
      Get
        Dim mRet As Boolean = True
        Try
          mRet = GetVisible()
        Catch ex As Exception
        End Try
        Return mRet
      End Get
    End Property
    Public ReadOnly Property CopyWFEnable() As Boolean
      Get
        Dim mRet As Boolean = True
        Try
          mRet = GetEnable()
        Catch ex As Exception
        End Try
        Return mRet
      End Get
    End Property
    Public Shared Function CopyWF(ByVal DashboardID As Int32, ByVal DBRows As Int32) As SIS.WF.wfDBRows
      Dim Results As SIS.WF.wfDBRows = wfDBRowsGetByID(DashboardID, DBRows)
      Dim tmpCols As List(Of SIS.WF.wfDBRowCols) = SIS.WF.wfDBRowCols.UZ_wfDBRowColsSelectList(0, 99999, "", False, "", Results.DashboardID, Results.DBRows)
      Results.DBRows = 0
      Results = SIS.WF.wfDBRows.InsertData(Results)
      For Each col As SIS.WF.wfDBRowCols In tmpCols
        col.DBRows = Results.DBRows
        col.DBCols = 0
        col = SIS.WF.wfDBRowCols.InsertData(col)
      Next
      'Also Distribute Row to Users
      Dim mFrom As Integer = 0
      Dim mCount As Integer = 50
      Dim uList As List(Of SIS.WF.wfUserDashboards) = SIS.WF.wfUserDashboards.UZ_wfUserDashboardsSelectList(mFrom, mCount, "", False, "", "", DashboardID)
      Do While uList.Count > 0
        For Each usr As SIS.WF.wfUserDashboards In uList
          Dim tmpUDBRow As New SIS.WF.wfUserDBRows
          With tmpUDBRow
            .Active = Not Results.NotToDraw
            .DashboardID = DashboardID
            .DBRows = Results.DBRows
            .UserID = usr.UserID
            .ReminderAvgDBDataID = Results.ReminderAvgDBDataID
            .ReminderCountDBDataID = Results.ReminderCountDBDataID
            .ReminderCountThreshold = Results.ReminderCountThreshold
            .ReminderFrequencyDays = Results.ReminderFrequencyDays
            .ReminderLapsDaysAvg = Results.ReminderLapsDaysAvg
            .ReminderLapsDaysMax = Results.ReminderLapsDaysMax
            .ReminderMaxDBDataID = Results.ReminderMaxDBDataID
            .ReminderOnAvg = Results.ReminderOnAvg
            .ReminderOnCount = Results.ReminderOnCount
            .ReminderOnMax = Results.ReminderOnMax
          End With
          tmpUDBRow = SIS.WF.wfUserDBRows.InsertData(tmpUDBRow)
        Next
        mFrom += mCount
        uList = SIS.WF.wfUserDashboards.UZ_wfUserDashboardsSelectList(mFrom, mCount, "", False, "", "", DashboardID)
      Loop
      Return Results
    End Function
    Public ReadOnly Property DeleteWFVisible() As Boolean
      Get
        Dim mRet As Boolean = True
        Try
          mRet = GetVisible()
        Catch ex As Exception
        End Try
        Return mRet
      End Get
    End Property
    Public ReadOnly Property DeleteWFEnable() As Boolean
      Get
        Dim mRet As Boolean = True
        Try
          mRet = GetEnable()
        Catch ex As Exception
        End Try
        Return mRet
      End Get
    End Property
    Public Shared Function DeleteWF(ByVal DashboardID As Int32, ByVal DBRows As Int32) As SIS.WF.wfDBRows
      RAWF(DashboardID, DBRows)
      Dim Results As SIS.WF.wfDBRows = wfDBRowsGetByID(DashboardID, DBRows)
      Dim tmpCols As List(Of SIS.WF.wfDBRowCols) = SIS.WF.wfDBRowCols.UZ_wfDBRowColsSelectList(0, 99999, "", False, "", DashboardID, DBRows)
      For Each col As SIS.WF.wfDBRowCols In tmpCols
        SIS.WF.wfDBRowCols.wfDBRowColsDelete(col)
      Next
      SIS.WF.wfDBRows.wfDBRowsDelete(Results)
      Return Results
    End Function

    Public Shared Function UZ_wfDBRowsSelectList(ByVal StartRowIndex As Integer, ByVal MaximumRows As Integer, ByVal OrderBy As String, ByVal SearchState As Boolean, ByVal SearchText As String, ByVal DashboardID As Int32) As List(Of SIS.WF.wfDBRows)
      Dim Results As List(Of SIS.WF.wfDBRows) = Nothing
      Using Con As SqlConnection = New SqlConnection(SIS.SYS.SQLDatabase.DBCommon.GetConnectionString())
        Using Cmd As SqlCommand = Con.CreateCommand()
          If OrderBy = String.Empty Then OrderBy = "Sequence DESC"
          Cmd.CommandType = CommandType.StoredProcedure
          If SearchState Then
            Cmd.CommandText = "spwf_LG_DBRowsSelectListSearch"
            Cmd.CommandText = "spwfDBRowsSelectListSearch"
            SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@KeyWord", SqlDbType.NVarChar, 250, SearchText)
          Else
            Cmd.CommandText = "spwf_LG_DBRowsSelectListFilteres"
            Cmd.CommandText = "spwfDBRowsSelectListFilteres"
            SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@Filter_DashboardID", SqlDbType.Int, 10, IIf(DashboardID = Nothing, 0, DashboardID))
          End If
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@StartRowIndex", SqlDbType.Int, -1, StartRowIndex)
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@MaximumRows", SqlDbType.Int, -1, MaximumRows)
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@LoginID", SqlDbType.NvarChar, 9, HttpContext.Current.Session("LoginID"))
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@OrderBy", SqlDbType.NVarChar, 50, OrderBy)
          Cmd.Parameters.Add("@RecordCount", SqlDbType.Int)
          Cmd.Parameters("@RecordCount").Direction = ParameterDirection.Output
          _RecordCount = -1
          Results = New List(Of SIS.WF.wfDBRows)()
          Con.Open()
          Dim Reader As SqlDataReader = Cmd.ExecuteReader()
          While (Reader.Read())
            Results.Add(New SIS.WF.wfDBRows(Reader))
          End While
          Reader.Close()
          _RecordCount = Cmd.Parameters("@RecordCount").Value
        End Using
      End Using
      Return Results
    End Function
    Public Shared Function UZ_wfDBRowsInsert(ByVal Record As SIS.WF.wfDBRows) As SIS.WF.wfDBRows
      Dim _Result As SIS.WF.wfDBRows = wfDBRowsInsert(Record)
      Return _Result
    End Function
    Public Shared Function UZ_wfDBRowsUpdate(ByVal Record As SIS.WF.wfDBRows) As SIS.WF.wfDBRows
      Dim _Result As SIS.WF.wfDBRows = wfDBRowsUpdate(Record)
      Return _Result
    End Function
    Public Shared Function UZ_wfDBRowsDelete(ByVal Record As SIS.WF.wfDBRows) As Integer
      Dim _Result As Integer = wfDBRowsDelete(Record)
      Return _Result
    End Function
    Public Shared Function SetDefaultValues(ByVal sender As System.Web.UI.WebControls.FormView, ByVal e As System.EventArgs) As System.Web.UI.WebControls.FormView
      With sender
        Try
          CType(.FindControl("F_DashboardID"), TextBox).Text = ""
          CType(.FindControl("F_DashboardID_Display"), Label).Text = ""
          CType(.FindControl("F_DBRows"), TextBox).Text = "0"
          CType(.FindControl("F_Description"), TextBox).Text = ""
          CType(.FindControl("F_DBTitle"), TextBox).Text = ""
          CType(.FindControl("F_Sequence"), TextBox).Text = 0
          CType(.FindControl("F_DBRowTypeID"), Object).SelectedValue = ""
          CType(.FindControl("F_TitleStyle"), TextBox).Text = ""
          CType(.FindControl("F_cssRow"), TextBox).Text = ""
          CType(.FindControl("F_ShowHeader"), CheckBox).Checked = False
          CType(.FindControl("F_GraphTypeID"), Object).SelectedValue = ""
          CType(.FindControl("F_ConvertForGraph"), CheckBox).Checked = False
          CType(.FindControl("F_NotToDraw"), CheckBox).Checked = False
          CType(.FindControl("F_ParentDBRows"), TextBox).Text = ""
          CType(.FindControl("F_ParentDBRows_Display"), Label).Text = ""
          CType(.FindControl("F_MainDBDataID"), TextBox).Text = ""
          CType(.FindControl("F_MainDBDataID_Display"), Label).Text = ""
          CType(.FindControl("F_MainDBIconID"), TextBox).Text = ""
          CType(.FindControl("F_MainDBIconID_Display"), Label).Text = ""
          CType(.FindControl("F_IsDV"), CheckBox).Checked = False
          CType(.FindControl("F_DVTypeID"), Object).SelectedValue = ""
          CType(.FindControl("F_DVDescription"), TextBox).Text = ""
          CType(.FindControl("F_DVDBIconID"), TextBox).Text = ""
          CType(.FindControl("F_DVDBIconID_Display"), Label).Text = ""
          CType(.FindControl("F_DVDBDataID"), TextBox).Text = ""
          CType(.FindControl("F_DVDBDataID_Display"), Label).Text = ""
          CType(.FindControl("F_IsDVUpdatable"), CheckBox).Checked = False
          CType(.FindControl("F_IsDVRemarks"), CheckBox).Checked = False
          CType(.FindControl("F_DVRemarksText"), TextBox).Text = ""
          CType(.FindControl("F_DVRemarksDBIconID"), TextBox).Text = ""
          CType(.FindControl("F_DVRemarksDBIconID_Display"), Label).Text = ""
          CType(.FindControl("F_IsDVForward"), CheckBox).Checked = False
          CType(.FindControl("F_DVForwardText"), TextBox).Text = ""
          CType(.FindControl("F_DVFDBIconID"), TextBox).Text = ""
          CType(.FindControl("F_DVFDBIconID_Display"), Label).Text = ""
          CType(.FindControl("F_DVForwardDBDataID"), TextBox).Text = ""
          CType(.FindControl("F_DVForwardDBDataID_Display"), Label).Text = ""
          CType(.FindControl("F_IsDVReverse"), CheckBox).Checked = False
          CType(.FindControl("F_DVReverseText"), TextBox).Text = ""
          CType(.FindControl("F_DVRDBIconID"), TextBox).Text = ""
          CType(.FindControl("F_DVRDBIconID_Display"), Label).Text = ""
          CType(.FindControl("F_DVReverseDBDataID"), TextBox).Text = ""
          CType(.FindControl("F_DVReverseDBDataID_Display"), Label).Text = ""
          CType(.FindControl("F_IsDVAttachment"), CheckBox).Checked = False
          CType(.FindControl("F_IsDVAttachmentMulti"), CheckBox).Checked = False
          CType(.FindControl("F_DVAttachmentText"), TextBox).Text = ""
          CType(.FindControl("F_DVAttachmentDBIconID"), TextBox).Text = ""
          CType(.FindControl("F_DVAttachmentDBIconID_Display"), Label).Text = ""
          CType(.FindControl("F_DVFAlert"), CheckBox).Checked = False
          CType(.FindControl("F_DVFAlertEMail"), CheckBox).Checked = False
          CType(.FindControl("F_DVFASubject"), TextBox).Text = ""
          CType(.FindControl("F_DVFABodyTemplate"), TextBox).Text = ""
          CType(.FindControl("F_DVFEMailDBDataID"), TextBox).Text = ""
          CType(.FindControl("F_DVFEMailDBDataID_Display"), Label).Text = ""
          CType(.FindControl("F_DVFAlertSMS"), CheckBox).Checked = False
          CType(.FindControl("F_DVFASMSText"), TextBox).Text = ""
          CType(.FindControl("F_DVFSMSDBDataID"), TextBox).Text = ""
          CType(.FindControl("F_DVFSMSDBDataID_Display"), Label).Text = ""
          CType(.FindControl("F_DVRAlert"), CheckBox).Checked = False
          CType(.FindControl("F_DVRAlertEMail"), CheckBox).Checked = False
          CType(.FindControl("F_DVRSMSDBDataID"), TextBox).Text = ""
          CType(.FindControl("F_DVRSMSDBDataID_Display"), Label).Text = ""
          CType(.FindControl("F_DVRASubject"), TextBox).Text = ""
          CType(.FindControl("F_DVRABodyTemplate"), TextBox).Text = ""
          CType(.FindControl("F_DVREMailDBDataID"), TextBox).Text = ""
          CType(.FindControl("F_DVREMailDBDataID_Display"), Label).Text = ""
          CType(.FindControl("F_DVRAlertSMS"), CheckBox).Checked = False
          CType(.FindControl("F_DVRASMSText"), TextBox).Text = ""
          CType(.FindControl("F_ReminderOnCount"), CheckBox).Checked = False
          CType(.FindControl("F_ReminderCountThreshold"), TextBox).Text = 0
          CType(.FindControl("F_ReminderCountDBDataID"), TextBox).Text = ""
          CType(.FindControl("F_ReminderCountDBDataID_Display"), Label).Text = ""
          CType(.FindControl("F_ReminderOnAvg"), CheckBox).Checked = False
          CType(.FindControl("F_ReminderLapsDaysAvg"), TextBox).Text = 0
          CType(.FindControl("F_ReminderAvgDBDataID"), TextBox).Text = ""
          CType(.FindControl("F_ReminderAvgDBDataID_Display"), Label).Text = ""
          CType(.FindControl("F_ReminderOnMax"), CheckBox).Checked = False
          CType(.FindControl("F_ReminderLapsDaysMax"), TextBox).Text = 0
          CType(.FindControl("F_ReminderMaxDBDataID"), TextBox).Text = ""
          CType(.FindControl("F_ReminderMaxDBDataID_Display"), Label).Text = ""
          CType(.FindControl("F_ReminderFrequencyDays"), TextBox).Text = 0
          CType(.FindControl("F_ReminderAlertEMail"), CheckBox).Checked = False
          CType(.FindControl("F_ReminderEMailDBDataID"), TextBox).Text = ""
          CType(.FindControl("F_ReminderEMailDBDataID_Display"), Label).Text = ""
          CType(.FindControl("F_ReminderASubject"), TextBox).Text = ""
          CType(.FindControl("F_ReminderABodyTemplate"), TextBox).Text = ""
          CType(.FindControl("F_ReminderAlertSMS"), CheckBox).Checked = False
          CType(.FindControl("F_ReminderSMSDBDataID"), TextBox).Text = ""
          CType(.FindControl("F_ReminderSMSDBDataID_Display"), Label).Text = ""
          CType(.FindControl("F_ReminderASMSText"), TextBox).Text = ""
        Catch ex As Exception
        End Try
      End With
      Return sender
    End Function
    Public Shared Function wfDBRowsSelectListByParentID(ByVal OrderBy As String, ByVal DashboardID As Int32, ByVal parentDBRowID As Integer) As List(Of SIS.WF.wfDBRows)
      Dim Results As List(Of SIS.WF.wfDBRows) = Nothing
      Using Con As SqlConnection = New SqlConnection(SIS.SYS.SQLDatabase.DBCommon.GetConnectionString())
        Using Cmd As SqlCommand = Con.CreateCommand()
          If OrderBy = String.Empty Then OrderBy = "DBRows DESC"
          Cmd.CommandType = CommandType.StoredProcedure
          Cmd.CommandText = "spwf_LG_DBRowsSelectListByParentRowID"
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@Filter_DashboardID", SqlDbType.Int, 10, IIf(DashboardID = Nothing, 0, DashboardID))
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@Filter_DBRowID", SqlDbType.Int, 10, IIf(DashboardID = Nothing, 0, parentDBRowID))
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@LoginID", SqlDbType.NVarChar, 9, HttpContext.Current.Session("LoginID"))
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@OrderBy", SqlDbType.NVarChar, 50, OrderBy)
          Cmd.Parameters.Add("@RecordCount", SqlDbType.Int)
          Cmd.Parameters("@RecordCount").Direction = ParameterDirection.Output
          _RecordCount = -1
          Results = New List(Of SIS.WF.wfDBRows)()
          Con.Open()
          Dim Reader As SqlDataReader = Cmd.ExecuteReader()
          While (Reader.Read())
            Results.Add(New SIS.WF.wfDBRows(Reader))
          End While
          Reader.Close()
          _RecordCount = Cmd.Parameters("@RecordCount").Value
        End Using
      End Using
      Return Results
    End Function
    Public Shared Function SelectRootDBRows(ByVal DashboardID As Int32) As List(Of SIS.WF.wfDBRows)
      Dim Results As List(Of SIS.WF.wfDBRows) = Nothing
      Using Con As SqlConnection = New SqlConnection(SIS.SYS.SQLDatabase.DBCommon.GetConnectionString())
        Using Cmd As SqlCommand = Con.CreateCommand()
          Cmd.CommandType = CommandType.StoredProcedure
          Cmd.CommandText = "spwf_LG_DBRowsSelectListRoot"
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@Filter_DashboardID", SqlDbType.Int, 10, IIf(DashboardID = Nothing, 0, DashboardID))
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@LoginID", SqlDbType.NVarChar, 9, HttpContext.Current.Session("LoginID"))
          Cmd.Parameters.Add("@RecordCount", SqlDbType.Int)
          Cmd.Parameters("@RecordCount").Direction = ParameterDirection.Output
          _RecordCount = -1
          Results = New List(Of SIS.WF.wfDBRows)()
          Con.Open()
          Dim Reader As SqlDataReader = Cmd.ExecuteReader()
          While (Reader.Read())
            Results.Add(New SIS.WF.wfDBRows(Reader))
          End While
          Reader.Close()
          _RecordCount = Cmd.Parameters("@RecordCount").Value
        End Using
      End Using
      Return Results
    End Function
  End Class
End Namespace

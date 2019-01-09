Imports Microsoft.VisualBasic


Imports System
  Imports System.Collections.Generic
  Imports System.Data
  Imports System.Data.SqlClient
  Imports System.ComponentModel
  Imports System.Reflection
  Imports System.Reflection.Emit

Namespace SIS.WF
  Public Class GenerateDashboard
    Public Class myRowData
      Implements IDisposable

      Public Property dbRow As SIS.WF.wfDBRows = Nothing
      Public Property dbRowData As DataTable = Nothing
      Public Property ChildRows As Boolean = False
      Public Property dbChildRows As List(Of myRowData) = Nothing

#Region "IDisposable Support"
      Private disposedValue As Boolean ' To detect redundant calls

      ' IDisposable
      Protected Overridable Sub Dispose(disposing As Boolean)
        If Not disposedValue Then
          If disposing Then
            ' TODO: dispose managed state (managed objects).
          End If
          dbRow = Nothing
          dbRowData = Nothing
          If ChildRows Then
            For Each tmp As myRowData In dbChildRows
              tmp.Dispose()
              tmp = Nothing
            Next
          End If
          ' TODO: free unmanaged resources (unmanaged objects) and override Finalize() below.
          ' TODO: set large fields to null.
        End If
        disposedValue = True
      End Sub

      ' TODO: override Finalize() only if Dispose(disposing As Boolean) above has code to free unmanaged resources.
      'Protected Overrides Sub Finalize()
      '    ' Do not change this code.  Put cleanup code in Dispose(disposing As Boolean) above.
      '    Dispose(False)
      '    MyBase.Finalize()
      'End Sub

      ' This code added by Visual Basic to correctly implement the disposable pattern.
      Public Sub Dispose() Implements IDisposable.Dispose
        ' Do not change this code.  Put cleanup code in Dispose(disposing As Boolean) above.
        Dispose(True)
        ' TODO: uncomment the following line if Finalize() is overridden above.
        ' GC.SuppressFinalize(Me)
      End Sub
#End Region
    End Class
    Public Class myData
      Implements IDisposable

      Public Property db As SIS.WF.wfDashboards = Nothing
      Public Property dbRows As New List(Of myRowData)

#Region "IDisposable Support"
      Private disposedValue As Boolean ' To detect redundant calls

      ' IDisposable
      Protected Overridable Sub Dispose(disposing As Boolean)
        If Not disposedValue Then
          If disposing Then
            ' TODO: dispose managed state (managed objects).
          End If
          For Each tmp As myRowData In dbRows
            tmp = Nothing
          Next
          ' TODO: free unmanaged resources (unmanaged objects) and override Finalize() below.
          ' TODO: set large fields to null.
        End If
        disposedValue = True
      End Sub

      ' TODO: override Finalize() only if Dispose(disposing As Boolean) above has code to free unmanaged resources.
      'Protected Overrides Sub Finalize()
      '    ' Do not change this code.  Put cleanup code in Dispose(disposing As Boolean) above.
      '    Dispose(False)
      '    MyBase.Finalize()
      'End Sub

      ' This code added by Visual Basic to correctly implement the disposable pattern.
      Public Sub Dispose() Implements IDisposable.Dispose
        ' Do not change this code.  Put cleanup code in Dispose(disposing As Boolean) above.
        Dispose(True)
        ' TODO: uncomment the following line if Finalize() is overridden above.
        ' GC.SuppressFinalize(Me)
      End Sub
#End Region
    End Class
    '1. Main Function
    Public Shared Function getDBControl(ByVal db As SIS.WF.wfUserDB) As Panel
      Dim pnl As New Panel
      Dim ds As New myData
      ds.db = db
      Select Case db.DBRowTypeID
        Case wfRowTypes.WeatherReport
        Case Else
          pnl.CssClass = "pnldb"
      End Select
      Dim tmpRows As List(Of SIS.WF.wfDBRows) = SIS.WF.wfDBRows.SelectRootDBRows(db.DashboardID)
      For Each tmpRow As SIS.WF.wfDBRows In tmpRows
        Dim tmp As New myRowData
        tmp.dbRow = tmpRow
        ds.dbRows.Add(tmp)
        If tmpRow.DBRowTypeID <> "" Then
          If tmpRow.DBRowTypeID = wfRowTypes.AddNewRecord Then
            pnl.Controls.Add(New LiteralControl(getAddNewRecord(tmpRow)))
          Else
            pnl.Controls.Add(getDBRowControl(tmpRow, tmp, db.DBRowTypeID))
          End If
        Else
          pnl.Controls.Add(getDBRowControl(tmpRow, tmp, db.DBRowTypeID))
        End If
      Next
      Return pnl
    End Function
    Private Shared Function getDBRowControl(ByVal tmpRow As SIS.WF.wfDBRows, ByRef dsr As myRowData, ByVal rowTypeID As String) As Panel
      Dim pnl As New Panel
      Select Case rowTypeID
        Case wfRowTypes.WeatherReport
        Case Else
          pnl.CssClass = "pnldbrow"
      End Select
      'Added Row Control
      pnl.Controls.Add(New LiteralControl(getRowHTML(tmpRow, dsr, rowTypeID)))
      'Load Recursively Child Rows
      Dim tmpRows As List(Of SIS.WF.wfDBRows) = SIS.WF.wfDBRows.wfDBRowsSelectListByParentID("", tmpRow.DashboardID, tmpRow.DBRows)
      If tmpRows.Count > 0 Then
        dsr.ChildRows = True
        dsr.dbChildRows = New List(Of myRowData)
        Dim pnlc As New Panel
        Select Case tmpRow.DBRowTypeID
          Case wfRowTypes.WeatherReport
          Case Else
            pnl.CssClass = "pnldb"
        End Select
        For Each tmpR As SIS.WF.wfDBRows In tmpRows
          Dim tmp As New myRowData
          tmp.dbRow = tmpR
          dsr.dbChildRows.Add(tmp)
          pnlc.Controls.Add(getDBRowControl(tmpR, dsr, tmpRow.DBRowTypeID))
        Next
        pnl.Controls.Add(pnlc)
      End If
      Return pnl
    End Function
    Private Shared Function getRowHTML(ByVal tmpRow As SIS.WF.wfDBRows, ByRef ds As myRowData, ByVal RowType As String) As String
      Dim mRet As String = ""
      Select Case RowType
        Case wfRowTypes.TableView
          mRet &= "<div class='pnlTableView'>"
          mRet &= getDefaultRowHTML(tmpRow, ds)
          mRet &= "</div>"
        Case wfRowTypes.Information
          mRet &= "<div class='pnlInformation'>"
          mRet &= getInformationHTML(tmpRow, ds)
          mRet &= "</div>"
        Case wfRowTypes.WeatherReport
          mRet &= getWeatherReportHTML(tmpRow, ds)
      End Select
      Return mRet
    End Function
    Private Shared Function getAddNewRecord(ByVal tmpRow As SIS.WF.wfDBRows) As String
      Dim tmpSr As IO.StreamReader = Nothing
      Dim tmpTemplate As String = ""
      Dim tmpPath As String = "~\WF_Main\App_Controls\"
      tmpTemplate = "add-new-record.htm"
      tmpSr = New IO.StreamReader(HttpContext.Current.Server.MapPath(tmpPath & tmpTemplate))
      Dim tmpStr As String = tmpSr.ReadToEnd
      tmpSr.Close()
      tmpStr = tmpStr.Replace("maddnewurl", tmpRow.getAddNewURL)
      tmpStr = tmpStr.Replace("maddnew", tmpRow.DBTitle)
      Return tmpStr
    End Function

    Private Shared Function getWeatherReportHTML(ByVal tmpRow As SIS.WF.wfDBRows, ByRef ds As myRowData) As String
      Dim dt As DataTable = wfDBData.getDataSet(tmpRow.MainDBDataID)
      ds.dbRowData = dt
      Dim mStr As String = ""
      Dim tmpSr As IO.StreamReader = Nothing
      Dim tmpTemplate As String = ""
      Dim tmpPath As String = "~\WF_Main\App_Controls\"
      If dt.Rows.Count > 0 Then
        '1. Find Columns Present
        Dim ImageColumnFound As Boolean = False
        Dim HeaderColumnFound As Boolean = False
        For Each column As DataColumn In dt.Columns
          If column.ColumnName.ToLower = "myimage" Then
            ImageColumnFound = True
          End If
          If column.ColumnName.ToLower = "myheader" Then
            HeaderColumnFound = True
          End If
        Next
        '2. Process All Rows of DT
        For Each row As DataRow In dt.Rows
          If Not ImageColumnFound And Not HeaderColumnFound Then
            Dim mHeader As String = ""
            Dim mValue As String = ""
            For Each column As DataColumn In dt.Columns
              mHeader = column.ColumnName
              mValue = row(column.ColumnName)
            Next
            If tmpRow.IsDV Then
              If tmpRow.IsDVURL AndAlso tmpRow.DVURL <> "" Then
                tmpTemplate = "wr-h0-dv-URL.htm"
              Else
                tmpTemplate = "wr-h0-dv.htm"
              End If
            Else
              tmpTemplate = "wr-h0.htm"
            End If
            tmpSr = New IO.StreamReader(HttpContext.Current.Server.MapPath(tmpPath & tmpTemplate))
            Dim tmpStr As String = tmpSr.ReadToEnd
            tmpSr.Close()
            tmpStr = tmpStr.Replace("mheader", mHeader)
            tmpStr = tmpStr.Replace("mvalue", mValue)
            tmpStr = tmpStr.Replace("mdashboardid", tmpRow.DashboardID)
            tmpStr = tmpStr.Replace("mdbrowid", tmpRow.DBRows)
            tmpStr = tmpStr.Replace("mdvheader", IIf(tmpRow.DVDescription = "", mHeader, tmpRow.DVDescription))
            If tmpRow.DVDBIconID <> "" Then
              tmpStr = tmpStr.Replace("mdvicon", tmpRow.FK_WF_DBRows_DVDBIconID.IconName)
              tmpStr = tmpStr.Replace("mdvstyle", tmpRow.FK_WF_DBRows_DVDBIconID.IconStyle)
            Else
              tmpStr = tmpStr.Replace("mdvicon", "")
              tmpStr = tmpStr.Replace("mdvstyle", "")
            End If
            tmpStr = tmpStr.Replace("mdvtype", tmpRow.DVTypeID)
            If tmpRow.IsDVURL AndAlso tmpRow.DVURL <> "" Then
              tmpStr = tmpStr.Replace("mdvurl", tmpRow.getDVURL)
            End If
            mStr &= tmpStr
          ElseIf Not ImageColumnFound And HeaderColumnFound Then
            Dim mHeader As String = ""
            Dim mValue As String = ""
            For Each column As DataColumn In dt.Columns
              If column.ColumnName.ToLower = "myheader" Then
                mHeader = row(column.ColumnName)
              Else
                mValue = row(column.ColumnName)
              End If
            Next
            If tmpRow.IsDV Then
              If tmpRow.IsDVURL AndAlso tmpRow.DVURL <> "" Then
                tmpTemplate = "wr-h0-dv-URL.htm"
              Else
                tmpTemplate = "wr-h0-dv.htm"
              End If
            Else
              tmpTemplate = "wr-h0.htm"
            End If
            tmpSr = New IO.StreamReader(HttpContext.Current.Server.MapPath(tmpPath & tmpTemplate))
            Dim tmpStr As String = tmpSr.ReadToEnd
            tmpSr.Close()
            tmpStr = tmpStr.Replace("mheader", mHeader)
            tmpStr = tmpStr.Replace("mvalue", mValue)
            tmpStr = tmpStr.Replace("mdashboardid", tmpRow.DashboardID)
            tmpStr = tmpStr.Replace("mdbrowid", tmpRow.DBRows)
            tmpStr = tmpStr.Replace("mdvheader", IIf(tmpRow.DVDescription = "", mHeader, tmpRow.DVDescription))
            If tmpRow.DVDBIconID <> "" Then
              tmpStr = tmpStr.Replace("mdvicon", tmpRow.FK_WF_DBRows_DVDBIconID.IconName)
              tmpStr = tmpStr.Replace("mdvstyle", tmpRow.FK_WF_DBRows_DVDBIconID.IconStyle)
            Else
              tmpStr = tmpStr.Replace("mdvicon", "")
              tmpStr = tmpStr.Replace("mdvstyle", "")
            End If
            tmpStr = tmpStr.Replace("mdvtype", tmpRow.DVTypeID)
            If tmpRow.IsDVURL AndAlso tmpRow.DVURL <> "" Then
              tmpStr = tmpStr.Replace("mdvurl", tmpRow.getDVURL)
            End If
            mStr &= tmpStr
          ElseIf ImageColumnFound And HeaderColumnFound Then
            Dim mHeader As String = ""
            Dim mValue As String = ""
            Dim mImage As String = ""
            For Each column As DataColumn In dt.Columns
              If column.ColumnName.ToLower = "myheader" Then
                mHeader = row(column.ColumnName)
              ElseIf column.ColumnName.ToLower = "myimage" Then
                mImage = row(column.ColumnName)
              Else
                mValue = row(column.ColumnName)
              End If
            Next
            If tmpRow.IsDV Then
              If tmpRow.IsDVURL AndAlso tmpRow.DVURL <> "" Then
                tmpTemplate = "wr-h0-dv-URL.htm"
              Else
                tmpTemplate = "wr-h0-dv.htm"
              End If
            Else
              tmpTemplate = "wr-hi.htm"
            End If
            tmpSr = New IO.StreamReader(HttpContext.Current.Server.MapPath(tmpPath & tmpTemplate))
            Dim tmpStr As String = tmpSr.ReadToEnd
            tmpSr.Close()
            tmpStr = tmpStr.Replace("mheader", mHeader)
            tmpStr = tmpStr.Replace("mimage", mImage)
            tmpStr = tmpStr.Replace("mvalue", mValue)
            tmpStr = tmpStr.Replace("mdashboardid", tmpRow.DashboardID)
            tmpStr = tmpStr.Replace("mdbrowid", tmpRow.DBRows)
            tmpStr = tmpStr.Replace("mdvheader", IIf(tmpRow.DVDescription = "", mHeader, tmpRow.DVDescription))
            If tmpRow.DVDBIconID <> "" Then
              tmpStr = tmpStr.Replace("mdvicon", tmpRow.FK_WF_DBRows_DVDBIconID.IconName)
              tmpStr = tmpStr.Replace("mdvstyle", tmpRow.FK_WF_DBRows_DVDBIconID.IconStyle)
            Else
              tmpStr = tmpStr.Replace("mdvicon", "")
              tmpStr = tmpStr.Replace("mdvstyle", "")
            End If
            tmpStr = tmpStr.Replace("mdvtype", tmpRow.DVTypeID)
            If tmpRow.IsDVURL AndAlso tmpRow.DVURL <> "" Then
              tmpStr = tmpStr.Replace("mdvurl", tmpRow.getDVURL)
            End If
            mStr &= tmpStr
          ElseIf ImageColumnFound And Not HeaderColumnFound Then
            Dim mHeader As String = ""
            Dim mValue As String = ""
            Dim mImage As String = ""
            For Each column As DataColumn In dt.Columns
              If column.ColumnName.ToLower = "myimage" Then
                mImage = row(column.ColumnName)
              Else
                mHeader = column.ColumnName
                mValue = row(column.ColumnName)
              End If
            Next
            If tmpRow.IsDV Then
              If tmpRow.IsDVURL AndAlso tmpRow.DVURL <> "" Then
                tmpTemplate = "wr-h0-dv-URL.htm"
              Else
                tmpTemplate = "wr-h0-dv.htm"
              End If
            Else
              tmpTemplate = "wr-hi.htm"
            End If
            tmpSr = New IO.StreamReader(HttpContext.Current.Server.MapPath(tmpPath & tmpTemplate))
            Dim tmpStr As String = tmpSr.ReadToEnd
            tmpSr.Close()
            tmpStr = tmpStr.Replace("mheader", mHeader)
            tmpStr = tmpStr.Replace("mimage", mImage)
            tmpStr = tmpStr.Replace("mvalue", mValue)
            tmpStr = tmpStr.Replace("mdashboardid", tmpRow.DashboardID)
            tmpStr = tmpStr.Replace("mdbrowid", tmpRow.DBRows)
            tmpStr = tmpStr.Replace("mdvheader", IIf(tmpRow.DVDescription = "", mHeader, tmpRow.DVDescription))
            If tmpRow.DVDBIconID <> "" Then
              tmpStr = tmpStr.Replace("mdvicon", tmpRow.FK_WF_DBRows_DVDBIconID.IconName)
              tmpStr = tmpStr.Replace("mdvstyle", tmpRow.FK_WF_DBRows_DVDBIconID.IconStyle)
            Else
              tmpStr = tmpStr.Replace("mdvicon", "")
              tmpStr = tmpStr.Replace("mdvstyle", "")
            End If
            tmpStr = tmpStr.Replace("mdvtype", tmpRow.DVTypeID)
            If tmpRow.IsDVURL AndAlso tmpRow.DVURL <> "" Then
              tmpStr = tmpStr.Replace("mdvurl", tmpRow.getDVURL)
            End If
            mStr &= tmpStr
          End If
        Next
      End If
      Return mStr
    End Function
    Public Shared Function GetReminderData(ByVal dbID As Integer, ByVal rowID As Integer) As String
      Dim usrID As String = HttpContext.Current.Session("LoginID")
      Dim udbRow As SIS.WF.wfUserDBRows = SIS.WF.wfUserDBRows.wfUserDBRowsGetByID(usrID, dbID, rowID)
      Dim tmpTemplate As String = "dbr-reminder.htm"
      Dim tmpPath As String = "~\WF_Main\App_Controls\"
      Dim tmpSr As IO.StreamReader = New IO.StreamReader(HttpContext.Current.Server.MapPath(tmpPath & tmpTemplate))
      Dim tmpStr As String = tmpSr.ReadToEnd
      tmpSr.Close()
      If udbRow.ReminderOnCount Then
        tmpStr = tmpStr.Replace("mIsCount", "checked='checked'")
        tmpStr = tmpStr.Replace("mCountValue", udbRow.ReminderCountThreshold)
      Else
        tmpStr = tmpStr.Replace("mIsCount", "")
        tmpStr = tmpStr.Replace("mCountValue", "0")
      End If
      If udbRow.ReminderOnAvg Then
        tmpStr = tmpStr.Replace("mIsAvg", "checked='checked'")
        tmpStr = tmpStr.Replace("mAvgValue", udbRow.ReminderLapsDaysAvg)
      Else
        tmpStr = tmpStr.Replace("mIsAvg", "")
        tmpStr = tmpStr.Replace("mAvgValue", "0")
      End If
      If udbRow.ReminderOnMax Then
        tmpStr = tmpStr.Replace("mIsMax", "checked='checked'")
        tmpStr = tmpStr.Replace("mMaxValue", udbRow.ReminderLapsDaysMax)
      Else
        tmpStr = tmpStr.Replace("mIsMax", "")
        tmpStr = tmpStr.Replace("mMaxValue", "0")
      End If
      tmpStr = tmpStr.Replace("mDaysValue", udbRow.ReminderFrequencyDays)
      tmpStr = tmpStr.Replace("mLastRun", udbRow.RunDate)
      tmpStr = tmpStr.Replace("mNextRun", udbRow.NextRunDate)
      Return tmpStr
    End Function

    Private Shared Function getInformationHTML(ByVal tmpRow As SIS.WF.wfDBRows, ByRef ds As myRowData) As String
      Dim dt As DataTable = wfDBData.getDataSet(tmpRow.MainDBDataID)
      ds.dbRowData = dt
      Dim tbl As New Table
      tbl.GridLines = GridLines.None
      tbl.CssClass = "infotable"
      If dt.Rows.Count > 0 Then
        '1. Find Image Column Present
        Dim ImageColumnFound As Boolean = False
        For Each column As DataColumn In dt.Columns
          If column.ColumnName.ToLower = "myimage" Then
            ImageColumnFound = True
            Exit For
          End If
        Next
        '2. Process All Rows of DT
        For Each row As DataRow In dt.Rows
          Dim tr As New TableRow
          tr.CssClass = "infotabletr"
          Dim td As TableCell = Nothing
          '2.1 First Image Column
          td = New TableCell
          td.CssClass = "infotabletdimg"
          Dim imgName As String = ""
          'Image File Found On Disk
          Dim diskImageFound As Boolean = False
          If ImageColumnFound Then
            imgName = row("myimage")
            If imgName <> "" Then
              Try
                If IO.File.Exists(HttpContext.Current.Server.MapPath("~/images/") & imgName) Then
                  Dim img As New Image
                  With img
                    .CssClass = "infotableimg"
                    .AlternateText = "img"
                    .ImageUrl = "~/images/" & imgName
                    td.Controls.Add(img)
                  End With
                  diskImageFound = True
                End If
              Catch ex As Exception
              End Try
            End If
          End If
          If imgName = "" Then
            imgName = "fa-2x fa-podcast|font-size:1.5em;color:lightblue;text-shadow:2px 2px 4px #000000;"
          End If
          If Not diskImageFound Then
            Dim aVar() As String = imgName.Split("|".ToCharArray)
            Dim tmp As String = ""
            If aVar(0) <> "" Then
              tmp = "<i class='fa " & aVar(0) & "'"
            Else
              tmp = "<i class='fa fa-2x fa-podcast'"
            End If
            If aVar.Length > 1 Then
              If aVar(1) <> "" Then
                tmp &= " style='" & aVar(1) & "'"
              Else
                tmp &= " style='font-size:1.5em;color:lightblue;text-shadow:2px 2px 4px #000000;'"
              End If
            End If
            tmp &= "></i>"
            td.Text = tmp
          End If
          tr.Cells.Add(td)
          '2.2 Second 
          Dim x As Integer = 1
          For Each column As DataColumn In dt.Columns
            If column.ColumnName.ToLower = "myimage" Then Continue For
            If tmpRow.ShowHeader Then
              td = New TableCell
              td.CssClass = "infotabletext"
              td.Text = column.ColumnName
              tr.Cells.Add(td)
              x += 1
            End If
            td = New TableCell
            If x = 1 Then
              td.CssClass = "infotabletext"
            Else
              If tmpRow.ShowHeader Then
                td.CssClass = "infotableXdata"
              Else
                td.CssClass = "infotabledata"
              End If
            End If
            td.Text = "<a href='#myModal' onclick=""script_wf.dvURL('" & tmpRow.getDVURL & "');"">" & row(column.ColumnName) & "</a>"
            tr.Cells.Add(td)
            x += 1
          Next
          tbl.Rows.Add(tr)
        Next
      End If
      Dim sb As StringBuilder = New StringBuilder()
      Dim sw As IO.StringWriter = New IO.StringWriter(sb)
      Dim writer As HtmlTextWriter = New HtmlTextWriter(sw)
      Try
        tbl.RenderControl(writer)
      Catch ex As Exception
      End Try
      Return sb.ToString
    End Function

    Private Shared Function getDefaultRowHTML(ByVal tmpRow As SIS.WF.wfDBRows, ByRef ds As myRowData) As String
      Dim tbl As New Table
      tbl.CssClass = "defatable defatable-rounded"
      Dim tmpCols As List(Of SIS.WF.wfDBRowCols) = SIS.WF.wfDBRowCols.wfDBRowColsSelectList(0, 999, "Sequence", False, "", tmpRow.DashboardID, tmpRow.DBRows)
      If tmpCols.Count > 0 Then
        If tmpRow.ShowHeader Then
          'Create Tabel Header
          Dim trh As New TableHeaderRow
          trh.TableSection = TableRowSection.TableHeader
          'trh.CssClass = "defatabletrh"
          For Each tmpC As SIS.WF.wfDBRowCols In tmpCols
            If tmpC.Description <> "" Then
              Dim tch As New TableHeaderCell
              tch.Text = tmpC.Description
              'tch.CssClass = "defatabletch"
              If tmpC.cssHeader <> "" Then tch.CssClass = tmpC.cssHeader
              trh.Cells.Add(tch)
            End If

          Next
          If trh.Controls.Count > 0 Then tbl.Rows.Add(trh)
        End If

        Dim dt As DataTable = wfDBData.getDataSet(tmpRow.MainDBDataID)
        ds.dbRowData = dt
        For Each row As DataRow In dt.Rows
          Dim tr As New TableRow
          tr.TableSection = TableRowSection.TableBody
          'tr.CssClass = "defatabletr"
          For Each tmpC As SIS.WF.wfDBRowCols In tmpCols
            For Each column As DataColumn In dt.Columns
              'Find Same Column as header
              If tmpC.DBFieldName.ToLower = column.ColumnName.ToLower Then
                Dim td As New TableCell
                'td.CssClass = "defatabletd"
                td.Text = row(column.ColumnName)
                tr.Controls.Add(td)
                Exit For
              End If
            Next
          Next
          tbl.Rows.Add(tr)
        Next
      Else
        Dim dt As DataTable = wfDBData.getDataSet(tmpRow.MainDBDataID)
        ds.dbRowData = dt
        If dt.Rows.Count > 0 Then
          If tmpRow.ShowHeader Then
            'Create Tabel Header
            Dim trh As New TableHeaderRow
            trh.TableSection = TableRowSection.TableHeader
            'trh.CssClass = "defatabletrh"
            For Each column As DataColumn In dt.Columns
              Dim tch As New TableHeaderCell
              'tch.CssClass = "defatabletch"
              tch.Text = column.ColumnName
              trh.Cells.Add(tch)
            Next
            If trh.Controls.Count > 0 Then tbl.Rows.Add(trh)
          End If
        End If
        'Create Rows
        For Each row As DataRow In dt.Rows
          Dim tr As New TableRow
          tr.TableSection = TableRowSection.TableBody
          'tr.CssClass = "defatabletr"
          For Each column As DataColumn In dt.Columns
            Dim td As New TableCell
            'td.CssClass = "defatabletd"
            td.Text = row(column.ColumnName)
            tr.Controls.Add(td)
          Next
          tbl.Rows.Add(tr)
        Next
      End If
      Dim sb As StringBuilder = New StringBuilder()
      Dim sw As IO.StringWriter = New IO.StringWriter(sb)
      Dim writer As HtmlTextWriter = New HtmlTextWriter(sw)
      Try
        tbl.RenderControl(writer)
      Catch ex As Exception
      End Try
      Return sb.ToString
    End Function

    'Public Shared Function getDataSet(ByVal Sql As String, ByVal IsBaaN As Boolean, ByVal IsProcedure As Boolean) As DataTable
    '  Dim Results As DataTable = Nothing
    '  If IsBaaN Then
    '    Using Con As SqlConnection = New SqlConnection(SIS.SYS.SQLDatabase.DBCommon.GetBaaNConnectionString())
    '      Using Cmd As SqlCommand = Con.CreateCommand()
    '        If IsProcedure Then
    '          Cmd.CommandType = CommandType.StoredProcedure
    '          Cmd.CommandText = Sql
    '          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@LoginID", SqlDbType.NVarChar, 9, HttpContext.Current.Session("LoginID"))
    '        Else
    '          Cmd.CommandType = CommandType.Text
    '          Sql = Sql.Replace("@LoginID", HttpContext.Current.Session("LoginID"))
    '          Cmd.CommandText = Sql
    '        End If
    '        Results = New DataTable
    '        Con.Open()
    '        Dim Reader As SqlDataReader = Cmd.ExecuteReader()
    '        'While (Reader.Read())
    '        '  Results.Add(New SIS.WF.wfDBRows(Reader))
    '        'End While
    '        Results.Load(Reader)
    '        Reader.Close()
    '      End Using
    '    End Using
    '  Else
    '    Using Con As SqlConnection = New SqlConnection(SIS.SYS.SQLDatabase.DBCommon.GetConnectionString())
    '      Using Cmd As SqlCommand = Con.CreateCommand()
    '        If IsProcedure Then
    '          Cmd.CommandType = CommandType.StoredProcedure
    '          Cmd.CommandText = Sql
    '          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@LoginID", SqlDbType.NVarChar, 9, HttpContext.Current.Session("LoginID"))
    '        Else
    '          Cmd.CommandType = CommandType.Text
    '          Sql = Sql.Replace("@LoginID", HttpContext.Current.Session("LoginID"))
    '          Cmd.CommandText = Sql
    '        End If
    '        Results = New DataTable
    '        Con.Open()
    '        Dim Reader As SqlDataReader = Cmd.ExecuteReader()
    '        'While (Reader.Read())
    '        '  Results.Add(New SIS.WF.wfDBRows(Reader))
    '        'End While
    '        Results.Load(Reader)
    '        Reader.Close()
    '      End Using
    '    End Using
    '  End If
    '  Return Results
    'End Function
    Public Shared Function GetDVData(ByVal dbID As Integer, ByVal rowID As Integer) As String
      Dim mRet As String = ""
      Dim dt As DataTable = Nothing
      Dim dbRow As SIS.WF.wfDBRows = SIS.WF.wfDBRows.wfDBRowsGetByID(dbID, rowID)
      dt = wfDBData.getDataSet(dbRow.DVDBDataID)
      mRet = GetHTMLTableFromDT(dt, dbRow)
      Dim tmpTemplate As String = "dv-table.htm"
      Dim tmpPath As String = "~\WF_Main\App_Controls\"

      Dim tmpSr As IO.StreamReader = New IO.StreamReader(HttpContext.Current.Server.MapPath(tmpPath & tmpTemplate))
      Dim tmpStr As String = tmpSr.ReadToEnd
      tmpSr.Close()
      tmpStr = tmpStr.Replace("mtable", mRet)
      Return tmpStr
    End Function

    Public Shared Function GetHTMLTableFromDT(ByVal dt As DataTable, Optional ByVal dbRow As SIS.WF.wfDBRows = Nothing) As String
      If dt Is Nothing Then Return "No Data Found"
      Dim tbl As New Table
      tbl.CssClass = "ui-widget-content ui-corner-all dltable"
      If dt.Rows.Count > 0 Then
        'Create Tabel Header
        Dim trh As New TableHeaderRow
        trh.TableSection = TableRowSection.TableHeader
        For Each column As DataColumn In dt.Columns
          If column.ColumnName.ToLower = "wf_pk" Then Continue For
          Dim tch As New TableHeaderCell
          tch.Text = column.ColumnName
          trh.Cells.Add(tch)
        Next
        If dbRow IsNot Nothing Then
          If dbRow.IsDVUpdatable Then
            '1.Remarks
            If dbRow.IsDVRemarks Then
              Dim tch As New TableHeaderCell
              tch.Text = dbRow.DVRemarksText
              trh.Cells.Add(tch)
            End If
            '2. Forward Action
            If dbRow.IsDVForward Then
              Dim tch As New TableHeaderCell
              tch.Text = dbRow.DVForwardText
              trh.Cells.Add(tch)
            End If
            '3. Reverse Action
            If dbRow.IsDVReverse Then
              Dim tch As New TableHeaderCell
              tch.Text = dbRow.DVReverseText
              trh.Cells.Add(tch)
            End If
          End If
        End If
        If trh.Controls.Count > 0 Then tbl.Rows.Add(trh)
      End If
      'Create Rows
      For Each row As DataRow In dt.Rows
        Dim tr As New TableRow
        tr.TableSection = TableRowSection.TableBody
        Dim strPK As String = ""
        For Each column As DataColumn In dt.Columns
          If column.ColumnName.ToLower = "wf_pk" Then
            strPK = row(column.ColumnName)
            Continue For
          End If
          Dim td As New TableCell
          td.Text = row(column.ColumnName)
          tr.Controls.Add(td)
        Next
        If dbRow IsNot Nothing Then
          If dbRow.IsDVUpdatable Then
            '1.Remarks
            If dbRow.IsDVRemarks Then
              Dim td As New TableCell
              td.Text = "<input type='text' class='mytxt' style='width:100px' id='remarks_" & strPK & "' />"
              tr.Controls.Add(td)
            End If
            '2. Forward Action
            If dbRow.IsDVForward Then
              Dim td As New TableCell
              td.Text = "<button type='button' class='btn btn-success btn-xs' onclick='return script_wf.dvForward(" & dbRow.DashboardID & "," & dbRow.DBRows & ",""" & strPK & """);' ><i class='fa fa-" & dbRow.FK_WF_DBRows_DVFDBIconID.IconName & "' style='" & dbRow.FK_WF_DBRows_DVFDBIconID.IconStyle & "' ></i></button> "
              tr.Controls.Add(td)
            End If
            '3. Reverse Action
            If dbRow.IsDVReverse Then
              Dim td As New TableCell
              td.Text = "<button type='button' class='btn btn-danger btn-xs' onclick='return script_wf.dvReverse(" & dbRow.DashboardID & "," & dbRow.DBRows & ",""" & strPK & """);' ><i class='fa fa-" & dbRow.FK_WF_DBRows_DVRDBIconID.IconName & "' style='" & dbRow.FK_WF_DBRows_DVRDBIconID.IconStyle & "' ></i></button> "
              tr.Controls.Add(td)
            End If
          End If
        End If
        tbl.Rows.Add(tr)
      Next

      Dim sb As StringBuilder = New StringBuilder()
      Dim sw As IO.StringWriter = New IO.StringWriter(sb)
      Dim writer As HtmlTextWriter = New HtmlTextWriter(sw)
      Try
        tbl.RenderControl(writer)
      Catch ex As Exception
      End Try
      Return sb.ToString
    End Function
  End Class
End Namespace

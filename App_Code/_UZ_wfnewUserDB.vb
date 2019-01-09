Imports System
Imports System.Collections.Generic
Imports System.Data
Imports System.Data.SqlClient
Imports System.ComponentModel
Namespace SIS.WF
  Partial Public Class wfnewUserDB
    Public Function GetColor() As System.Drawing.Color
      Dim mRet As System.Drawing.Color = Drawing.Color.Blue
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
    Public Shared Function UZ_wfnewUserDBSelectList(ByVal StartRowIndex As Integer, ByVal MaximumRows As Integer, ByVal OrderBy As String, ByVal SearchState As Boolean, ByVal SearchText As String, ByVal UserID As String, ByVal DashboardID As Int32, ByVal DBRows As Int32) As List(Of SIS.WF.wfnewUserDB)
      Dim Results As List(Of SIS.WF.wfnewUserDB) = Nothing
      Using Con As SqlConnection = New SqlConnection(SIS.SYS.SQLDatabase.DBCommon.GetConnectionString())
        Using Cmd As SqlCommand = Con.CreateCommand()
          Cmd.CommandType = CommandType.StoredProcedure
          If SearchState Then
            Cmd.CommandText = "spwf_LG_newUserDBSelectListSearch"
            Cmd.CommandText = "spwfnewUserDBSelectListSearch"
            SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@KeyWord", SqlDbType.NVarChar, 250, SearchText)
          Else
            Cmd.CommandText = "spwf_LG_newUserDBSelectListFilteres"
            Cmd.CommandText = "spwfnewUserDBSelectListFilteres"
            SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@Filter_UserID",SqlDbType.NVarChar,8, IIf(UserID Is Nothing, String.Empty,UserID))
            SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@Filter_DashboardID",SqlDbType.Int,10, IIf(DashboardID = Nothing, 0,DashboardID))
            SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@Filter_DBRows",SqlDbType.Int,10, IIf(DBRows = Nothing, 0,DBRows))
          End If
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@StartRowIndex", SqlDbType.Int, -1, StartRowIndex)
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@MaximumRows", SqlDbType.Int, -1, MaximumRows)
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@LoginID", SqlDbType.NvarChar, 9, HttpContext.Current.Session("LoginID"))
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@OrderBy", SqlDbType.NVarChar, 50, OrderBy)
          Cmd.Parameters.Add("@RecordCount", SqlDbType.Int)
          Cmd.Parameters("@RecordCount").Direction = ParameterDirection.Output
          _RecordCount = -1
          Results = New List(Of SIS.WF.wfnewUserDB)()
          Con.Open()
          Dim Reader As SqlDataReader = Cmd.ExecuteReader()
          While (Reader.Read())
            Results.Add(New SIS.WF.wfnewUserDB(Reader))
          End While
          Reader.Close()
          _RecordCount = Cmd.Parameters("@RecordCount").Value
        End Using
      End Using
      Return Results
    End Function
    Public Shared Function UZ_wfnewUserDBInsert(ByVal Record As SIS.WF.wfnewUserDB) As SIS.WF.wfnewUserDB
      Dim _Result As SIS.WF.wfnewUserDB = wfnewUserDBInsert(Record)
      Return _Result
    End Function
    Public Shared Function UZ_wfnewUserDBUpdate(ByVal Record As SIS.WF.wfnewUserDB) As SIS.WF.wfnewUserDB
      Dim _Result As SIS.WF.wfnewUserDB = wfnewUserDBUpdate(Record)
      Return _Result
    End Function
    Public Shared Function UZ_wfnewUserDBDelete(ByVal Record As SIS.WF.wfnewUserDB) As Integer
      Dim _Result as Integer = wfnewUserDBDelete(Record)
      Return _Result
    End Function
    Public Shared Function SetDefaultValues(ByVal sender As System.Web.UI.WebControls.FormView, ByVal e As System.EventArgs) As System.Web.UI.WebControls.FormView
      With sender
        Try
        CType(.FindControl("F_UserID"), TextBox).Text = ""
        CType(.FindControl("F_UserID_Display"), Label).Text = ""
        CType(.FindControl("F_DashboardID"), TextBox).Text = ""
        CType(.FindControl("F_DashboardID_Display"), Label).Text = ""
        CType(.FindControl("F_DBRows"), TextBox).Text = ""
        CType(.FindControl("F_DBRows_Display"), Label).Text = ""
        CType(.FindControl("F_Sequence"), TextBox).Text = 0
        CType(.FindControl("F_DataSource"), TextBox).Text = ""
        CType(.FindControl("F_IsLeft"), CheckBox).Checked = False
        CType(.FindControl("F_AppName_Left"), TextBox).Text = ""
        CType(.FindControl("F_vTOTSQLl"), TextBox).Text = ""
        CType(.FindControl("F_vREDSQLl"), TextBox).Text = ""
        CType(.FindControl("F_vAMBSQLl"), TextBox).Text = ""
        CType(.FindControl("F_vGRESQLl"), TextBox).Text = ""
        CType(.FindControl("F_IsRight"), CheckBox).Checked = False
        CType(.FindControl("F_AppName_Right"), TextBox).Text = ""
        CType(.FindControl("F_vTOTSQLr"), TextBox).Text = ""
        CType(.FindControl("F_vREDSQLr"), TextBox).Text = ""
        CType(.FindControl("F_vAMBSQLr"), TextBox).Text = ""
        CType(.FindControl("F_vGRESQLr"), TextBox).Text = ""
        Catch ex As Exception
        End Try
      End With
      Return sender
    End Function
  End Class
End Namespace

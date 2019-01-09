Imports System
Imports System.Collections.Generic
Imports System.Data
Imports System.Data.SqlClient
Imports System.ComponentModel
Namespace SIS.WF
  <DataObject()> _
  Partial Public Class wfnewUserDB
    Private Shared _RecordCount As Integer
    Private _UserID As String = ""
    Private _DashboardID As Int32 = 0
    Private _DBRows As Int32 = 0
    Private _Sequence As Decimal = 0
    Private _DataSource As String = ""
    Private _IsLeft As Boolean = False
    Private _AppName_Left As String = ""
    Private _vTOTSQLl As String = ""
    Private _vREDSQLl As String = ""
    Private _vAMBSQLl As String = ""
    Private _vGRESQLl As String = ""
    Private _IsRight As Boolean = False
    Private _AppName_Right As String = ""
    Private _vTOTSQLr As String = ""
    Private _vREDSQLr As String = ""
    Private _vAMBSQLr As String = ""
    Private _vGRESQLr As String = ""
    Private _aspnet_Users1_UserFullName As String = ""
    Private _WF_Dashboards2_DBDescription As String = ""
    Private _WF_DBRows3_Description As String = ""
    Private _FK_WF_newUserDB_UserID As SIS.QCM.qcmUsers = Nothing
    Private _FK_WF_newUserDB_DashboardID As SIS.WF.wfDashboards = Nothing
    Private _FK_WF_newUserDB_DBRows As SIS.WF.wfDBRows = Nothing
    Public ReadOnly Property ForeColor() As System.Drawing.Color
      Get
        Dim mRet As System.Drawing.Color = Drawing.Color.Blue
        Try
          mRet = GetColor()
        Catch ex As Exception
        End Try
        Return mRet
      End Get
    End Property
    Public ReadOnly Property Visible() As Boolean
      Get
        Dim mRet As Boolean = True
        Try
          mRet = GetVisible()
        Catch ex As Exception
        End Try
        Return mRet
      End Get
    End Property
    Public ReadOnly Property Enable() As Boolean
      Get
        Dim mRet As Boolean = True
        Try
          mRet = GetEnable()
        Catch ex As Exception
        End Try
        Return mRet
      End Get
    End Property
    Public Property UserID() As String
      Get
        Return _UserID
      End Get
      Set(ByVal value As String)
        _UserID = value
      End Set
    End Property
    Public Property DashboardID() As Int32
      Get
        Return _DashboardID
      End Get
      Set(ByVal value As Int32)
        _DashboardID = value
      End Set
    End Property
    Public Property DBRows() As Int32
      Get
        Return _DBRows
      End Get
      Set(ByVal value As Int32)
        _DBRows = value
      End Set
    End Property
    Public Property Sequence() As Decimal
      Get
        Return _Sequence
      End Get
      Set(ByVal value As Decimal)
        _Sequence = value
      End Set
    End Property
    Public Property DataSource() As String
      Get
        Return _DataSource
      End Get
      Set(ByVal value As String)
         If Convert.IsDBNull(Value) Then
           _DataSource = ""
         Else
           _DataSource = value
         End If
      End Set
    End Property
    Public Property IsLeft() As Boolean
      Get
        Return _IsLeft
      End Get
      Set(ByVal value As Boolean)
        _IsLeft = value
      End Set
    End Property
    Public Property AppName_Left() As String
      Get
        Return _AppName_Left
      End Get
      Set(ByVal value As String)
         If Convert.IsDBNull(Value) Then
           _AppName_Left = ""
         Else
           _AppName_Left = value
         End If
      End Set
    End Property
    Public Property vTOTSQLl() As String
      Get
        Return _vTOTSQLl
      End Get
      Set(ByVal value As String)
         If Convert.IsDBNull(Value) Then
           _vTOTSQLl = ""
         Else
           _vTOTSQLl = value
         End If
      End Set
    End Property
    Public Property vREDSQLl() As String
      Get
        Return _vREDSQLl
      End Get
      Set(ByVal value As String)
         If Convert.IsDBNull(Value) Then
           _vREDSQLl = ""
         Else
           _vREDSQLl = value
         End If
      End Set
    End Property
    Public Property vAMBSQLl() As String
      Get
        Return _vAMBSQLl
      End Get
      Set(ByVal value As String)
         If Convert.IsDBNull(Value) Then
           _vAMBSQLl = ""
         Else
           _vAMBSQLl = value
         End If
      End Set
    End Property
    Public Property vGRESQLl() As String
      Get
        Return _vGRESQLl
      End Get
      Set(ByVal value As String)
         If Convert.IsDBNull(Value) Then
           _vGRESQLl = ""
         Else
           _vGRESQLl = value
         End If
      End Set
    End Property
    Public Property IsRight() As Boolean
      Get
        Return _IsRight
      End Get
      Set(ByVal value As Boolean)
        _IsRight = value
      End Set
    End Property
    Public Property AppName_Right() As String
      Get
        Return _AppName_Right
      End Get
      Set(ByVal value As String)
         If Convert.IsDBNull(Value) Then
           _AppName_Right = ""
         Else
           _AppName_Right = value
         End If
      End Set
    End Property
    Public Property vTOTSQLr() As String
      Get
        Return _vTOTSQLr
      End Get
      Set(ByVal value As String)
         If Convert.IsDBNull(Value) Then
           _vTOTSQLr = ""
         Else
           _vTOTSQLr = value
         End If
      End Set
    End Property
    Public Property vREDSQLr() As String
      Get
        Return _vREDSQLr
      End Get
      Set(ByVal value As String)
         If Convert.IsDBNull(Value) Then
           _vREDSQLr = ""
         Else
           _vREDSQLr = value
         End If
      End Set
    End Property
    Public Property vAMBSQLr() As String
      Get
        Return _vAMBSQLr
      End Get
      Set(ByVal value As String)
         If Convert.IsDBNull(Value) Then
           _vAMBSQLr = ""
         Else
           _vAMBSQLr = value
         End If
      End Set
    End Property
    Public Property vGRESQLr() As String
      Get
        Return _vGRESQLr
      End Get
      Set(ByVal value As String)
         If Convert.IsDBNull(Value) Then
           _vGRESQLr = ""
         Else
           _vGRESQLr = value
         End If
      End Set
    End Property
    Public Property aspnet_Users1_UserFullName() As String
      Get
        Return _aspnet_Users1_UserFullName
      End Get
      Set(ByVal value As String)
        _aspnet_Users1_UserFullName = value
      End Set
    End Property
    Public Property WF_Dashboards2_DBDescription() As String
      Get
        Return _WF_Dashboards2_DBDescription
      End Get
      Set(ByVal value As String)
         If Convert.IsDBNull(Value) Then
           _WF_Dashboards2_DBDescription = ""
         Else
           _WF_Dashboards2_DBDescription = value
         End If
      End Set
    End Property
    Public Property WF_DBRows3_Description() As String
      Get
        Return _WF_DBRows3_Description
      End Get
      Set(ByVal value As String)
         If Convert.IsDBNull(Value) Then
           _WF_DBRows3_Description = ""
         Else
           _WF_DBRows3_Description = value
         End If
      End Set
    End Property
    Public Readonly Property DisplayField() As String
      Get
        Return ""
      End Get
    End Property
    Public Readonly Property PrimaryKey() As String
      Get
        Return _UserID & "|" & _DashboardID & "|" & _DBRows
      End Get
    End Property
    Public Shared Property RecordCount() As Integer
      Get
        Return _RecordCount
      End Get
      Set(ByVal value As Integer)
        _RecordCount = value
      End Set
    End Property
    Public Class PKwfnewUserDB
      Private _UserID As String = ""
      Private _DashboardID As Int32 = 0
      Private _DBRows As Int32 = 0
      Public Property UserID() As String
        Get
          Return _UserID
        End Get
        Set(ByVal value As String)
          _UserID = value
        End Set
      End Property
      Public Property DashboardID() As Int32
        Get
          Return _DashboardID
        End Get
        Set(ByVal value As Int32)
          _DashboardID = value
        End Set
      End Property
      Public Property DBRows() As Int32
        Get
          Return _DBRows
        End Get
        Set(ByVal value As Int32)
          _DBRows = value
        End Set
      End Property
    End Class
    Public ReadOnly Property FK_WF_newUserDB_UserID() As SIS.QCM.qcmUsers
      Get
        If _FK_WF_newUserDB_UserID Is Nothing Then
          _FK_WF_newUserDB_UserID = SIS.QCM.qcmUsers.qcmUsersGetByID(_UserID)
        End If
        Return _FK_WF_newUserDB_UserID
      End Get
    End Property
    Public ReadOnly Property FK_WF_newUserDB_DashboardID() As SIS.WF.wfDashboards
      Get
        If _FK_WF_newUserDB_DashboardID Is Nothing Then
          _FK_WF_newUserDB_DashboardID = SIS.WF.wfDashboards.wfDashboardsGetByID(_DashboardID)
        End If
        Return _FK_WF_newUserDB_DashboardID
      End Get
    End Property
    Public ReadOnly Property FK_WF_newUserDB_DBRows() As SIS.WF.wfDBRows
      Get
        If _FK_WF_newUserDB_DBRows Is Nothing Then
          _FK_WF_newUserDB_DBRows = SIS.WF.wfDBRows.wfDBRowsGetByID(_DashboardID, _DBRows)
        End If
        Return _FK_WF_newUserDB_DBRows
      End Get
    End Property
    <DataObjectMethod(DataObjectMethodType.Select)> _
    Public Shared Function wfnewUserDBGetNewRecord() As SIS.WF.wfnewUserDB
      Return New SIS.WF.wfnewUserDB()
    End Function
    <DataObjectMethod(DataObjectMethodType.Select)> _
    Public Shared Function wfnewUserDBGetByID(ByVal UserID As String, ByVal DashboardID As Int32, ByVal DBRows As Int32) As SIS.WF.wfnewUserDB
      Dim Results As SIS.WF.wfnewUserDB = Nothing
      Using Con As SqlConnection = New SqlConnection(SIS.SYS.SQLDatabase.DBCommon.GetConnectionString())
        Using Cmd As SqlCommand = Con.CreateCommand()
          Cmd.CommandType = CommandType.StoredProcedure
          Cmd.CommandText = "spwfnewUserDBSelectByID"
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@UserID",SqlDbType.NVarChar,UserID.ToString.Length, UserID)
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@DashboardID",SqlDbType.Int,DashboardID.ToString.Length, DashboardID)
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@DBRows",SqlDbType.Int,DBRows.ToString.Length, DBRows)
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@LoginID", SqlDbType.NvarChar, 9, HttpContext.Current.Session("LoginID"))
          Con.Open()
          Dim Reader As SqlDataReader = Cmd.ExecuteReader()
          If Reader.Read() Then
            Results = New SIS.WF.wfnewUserDB(Reader)
          End If
          Reader.Close()
        End Using
      End Using
      Return Results
    End Function
    <DataObjectMethod(DataObjectMethodType.Select)> _
    Public Shared Function GetByUserID(ByVal UserID As String, ByVal OrderBy as String) As List(Of SIS.WF.wfnewUserDB)
      Dim Results As List(Of SIS.WF.wfnewUserDB) = Nothing
      Using Con As SqlConnection = New SqlConnection(SIS.SYS.SQLDatabase.DBCommon.GetConnectionString())
        Using Cmd As SqlCommand = Con.CreateCommand()
          Cmd.CommandType = CommandType.StoredProcedure
          Cmd.CommandText = "spwfnewUserDBSelectByUserID"
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@UserID",SqlDbType.NVarChar,UserID.ToString.Length, UserID)
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
    <DataObjectMethod(DataObjectMethodType.Select)> _
    Public Shared Function wfnewUserDBSelectList(ByVal StartRowIndex As Integer, ByVal MaximumRows As Integer, ByVal OrderBy As String, ByVal SearchState As Boolean, ByVal SearchText As String, ByVal UserID As String, ByVal DashboardID As Int32, ByVal DBRows As Int32) As List(Of SIS.WF.wfnewUserDB)
      Dim Results As List(Of SIS.WF.wfnewUserDB) = Nothing
      Using Con As SqlConnection = New SqlConnection(SIS.SYS.SQLDatabase.DBCommon.GetConnectionString())
        Using Cmd As SqlCommand = Con.CreateCommand()
          Cmd.CommandType = CommandType.StoredProcedure
          If SearchState Then
            Cmd.CommandText = "spwfnewUserDBSelectListSearch"
            SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@KeyWord", SqlDbType.NVarChar, 250, SearchText)
          Else
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
    Public Shared Function wfnewUserDBSelectCount(ByVal SearchState As Boolean, ByVal SearchText As String, ByVal UserID As String, ByVal DashboardID As Int32, ByVal DBRows As Int32) As Integer
      Return _RecordCount
    End Function
      'Select By ID One Record Filtered Overloaded GetByID
    <DataObjectMethod(DataObjectMethodType.Select)> _
    Public Shared Function wfnewUserDBGetByID(ByVal UserID As String, ByVal DashboardID As Int32, ByVal DBRows As Int32, ByVal Filter_UserID As String, ByVal Filter_DashboardID As Int32, ByVal Filter_DBRows As Int32) As SIS.WF.wfnewUserDB
      Return wfnewUserDBGetByID(UserID, DashboardID, DBRows)
    End Function
    <DataObjectMethod(DataObjectMethodType.Insert, True)> _
    Public Shared Function wfnewUserDBInsert(ByVal Record As SIS.WF.wfnewUserDB) As SIS.WF.wfnewUserDB
      Dim _Rec As SIS.WF.wfnewUserDB = SIS.WF.wfnewUserDB.wfnewUserDBGetNewRecord()
      With _Rec
        .UserID = Record.UserID
        .DashboardID = Record.DashboardID
        .DBRows = Record.DBRows
        .Sequence = Record.Sequence
        .DataSource = Record.DataSource
        .IsLeft = Record.IsLeft
        .AppName_Left = Record.AppName_Left
        .vTOTSQLl = Record.vTOTSQLl
        .vREDSQLl = Record.vREDSQLl
        .vAMBSQLl = Record.vAMBSQLl
        .vGRESQLl = Record.vGRESQLl
        .IsRight = Record.IsRight
        .AppName_Right = Record.AppName_Right
        .vTOTSQLr = Record.vTOTSQLr
        .vREDSQLr = Record.vREDSQLr
        .vAMBSQLr = Record.vAMBSQLr
        .vGRESQLr = Record.vGRESQLr
      End With
      Return SIS.WF.wfnewUserDB.InsertData(_Rec)
    End Function
    Public Shared Function InsertData(ByVal Record As SIS.WF.wfnewUserDB) As SIS.WF.wfnewUserDB
      Using Con As SqlConnection = New SqlConnection(SIS.SYS.SQLDatabase.DBCommon.GetConnectionString())
        Using Cmd As SqlCommand = Con.CreateCommand()
          Cmd.CommandType = CommandType.StoredProcedure
          Cmd.CommandText = "spwfnewUserDBInsert"
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@UserID",SqlDbType.NVarChar,9, Record.UserID)
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@DashboardID",SqlDbType.Int,11, Record.DashboardID)
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@DBRows",SqlDbType.Int,11, Record.DBRows)
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@Sequence",SqlDbType.Decimal,12, Record.Sequence)
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@DataSource",SqlDbType.NVarChar,11, Iif(Record.DataSource= "" ,Convert.DBNull, Record.DataSource))
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@IsLeft",SqlDbType.Bit,3, Record.IsLeft)
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@AppName_Left",SqlDbType.NVarChar,101, Iif(Record.AppName_Left= "" ,Convert.DBNull, Record.AppName_Left))
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@vTOTSQLl",SqlDbType.NVarChar,4001, Iif(Record.vTOTSQLl= "" ,Convert.DBNull, Record.vTOTSQLl))
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@vREDSQLl",SqlDbType.NVarChar,4001, Iif(Record.vREDSQLl= "" ,Convert.DBNull, Record.vREDSQLl))
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@vAMBSQLl",SqlDbType.NVarChar,4001, Iif(Record.vAMBSQLl= "" ,Convert.DBNull, Record.vAMBSQLl))
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@vGRESQLl",SqlDbType.NVarChar,4001, Iif(Record.vGRESQLl= "" ,Convert.DBNull, Record.vGRESQLl))
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@IsRight",SqlDbType.Bit,3, Record.IsRight)
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@AppName_Right",SqlDbType.NVarChar,101, Iif(Record.AppName_Right= "" ,Convert.DBNull, Record.AppName_Right))
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@vTOTSQLr",SqlDbType.NVarChar,4001, Iif(Record.vTOTSQLr= "" ,Convert.DBNull, Record.vTOTSQLr))
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@vREDSQLr",SqlDbType.NVarChar,4001, Iif(Record.vREDSQLr= "" ,Convert.DBNull, Record.vREDSQLr))
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@vAMBSQLr",SqlDbType.NVarChar,4001, Iif(Record.vAMBSQLr= "" ,Convert.DBNull, Record.vAMBSQLr))
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@vGRESQLr",SqlDbType.NVarChar,4001, Iif(Record.vGRESQLr= "" ,Convert.DBNull, Record.vGRESQLr))
          Cmd.Parameters.Add("@Return_UserID", SqlDbType.NVarChar, 9)
          Cmd.Parameters("@Return_UserID").Direction = ParameterDirection.Output
          Cmd.Parameters.Add("@Return_DashboardID", SqlDbType.Int, 11)
          Cmd.Parameters("@Return_DashboardID").Direction = ParameterDirection.Output
          Cmd.Parameters.Add("@Return_DBRows", SqlDbType.Int, 11)
          Cmd.Parameters("@Return_DBRows").Direction = ParameterDirection.Output
          Con.Open()
          Cmd.ExecuteNonQuery()
          Record.UserID = Cmd.Parameters("@Return_UserID").Value
          Record.DashboardID = Cmd.Parameters("@Return_DashboardID").Value
          Record.DBRows = Cmd.Parameters("@Return_DBRows").Value
        End Using
      End Using
      Return Record
    End Function
    <DataObjectMethod(DataObjectMethodType.Update, True)> _
    Public Shared Function wfnewUserDBUpdate(ByVal Record As SIS.WF.wfnewUserDB) As SIS.WF.wfnewUserDB
      Dim _Rec As SIS.WF.wfnewUserDB = SIS.WF.wfnewUserDB.wfnewUserDBGetByID(Record.UserID, Record.DashboardID, Record.DBRows)
      With _Rec
        .Sequence = Record.Sequence
        .DataSource = Record.DataSource
        .IsLeft = Record.IsLeft
        .AppName_Left = Record.AppName_Left
        .vTOTSQLl = Record.vTOTSQLl
        .vREDSQLl = Record.vREDSQLl
        .vAMBSQLl = Record.vAMBSQLl
        .vGRESQLl = Record.vGRESQLl
        .IsRight = Record.IsRight
        .AppName_Right = Record.AppName_Right
        .vTOTSQLr = Record.vTOTSQLr
        .vREDSQLr = Record.vREDSQLr
        .vAMBSQLr = Record.vAMBSQLr
        .vGRESQLr = Record.vGRESQLr
      End With
      Return SIS.WF.wfnewUserDB.UpdateData(_Rec)
    End Function
    Public Shared Function UpdateData(ByVal Record As SIS.WF.wfnewUserDB) As SIS.WF.wfnewUserDB
      Using Con As SqlConnection = New SqlConnection(SIS.SYS.SQLDatabase.DBCommon.GetConnectionString())
        Using Cmd As SqlCommand = Con.CreateCommand()
          Cmd.CommandType = CommandType.StoredProcedure
          Cmd.CommandText = "spwfnewUserDBUpdate"
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@Original_UserID",SqlDbType.NVarChar,9, Record.UserID)
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@Original_DashboardID",SqlDbType.Int,11, Record.DashboardID)
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@Original_DBRows",SqlDbType.Int,11, Record.DBRows)
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@UserID",SqlDbType.NVarChar,9, Record.UserID)
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@DashboardID",SqlDbType.Int,11, Record.DashboardID)
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@DBRows",SqlDbType.Int,11, Record.DBRows)
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@Sequence",SqlDbType.Decimal,12, Record.Sequence)
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@DataSource",SqlDbType.NVarChar,11, Iif(Record.DataSource= "" ,Convert.DBNull, Record.DataSource))
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@IsLeft",SqlDbType.Bit,3, Record.IsLeft)
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@AppName_Left",SqlDbType.NVarChar,101, Iif(Record.AppName_Left= "" ,Convert.DBNull, Record.AppName_Left))
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@vTOTSQLl",SqlDbType.NVarChar,4001, Iif(Record.vTOTSQLl= "" ,Convert.DBNull, Record.vTOTSQLl))
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@vREDSQLl",SqlDbType.NVarChar,4001, Iif(Record.vREDSQLl= "" ,Convert.DBNull, Record.vREDSQLl))
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@vAMBSQLl",SqlDbType.NVarChar,4001, Iif(Record.vAMBSQLl= "" ,Convert.DBNull, Record.vAMBSQLl))
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@vGRESQLl",SqlDbType.NVarChar,4001, Iif(Record.vGRESQLl= "" ,Convert.DBNull, Record.vGRESQLl))
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@IsRight",SqlDbType.Bit,3, Record.IsRight)
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@AppName_Right",SqlDbType.NVarChar,101, Iif(Record.AppName_Right= "" ,Convert.DBNull, Record.AppName_Right))
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@vTOTSQLr",SqlDbType.NVarChar,4001, Iif(Record.vTOTSQLr= "" ,Convert.DBNull, Record.vTOTSQLr))
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@vREDSQLr",SqlDbType.NVarChar,4001, Iif(Record.vREDSQLr= "" ,Convert.DBNull, Record.vREDSQLr))
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@vAMBSQLr",SqlDbType.NVarChar,4001, Iif(Record.vAMBSQLr= "" ,Convert.DBNull, Record.vAMBSQLr))
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@vGRESQLr",SqlDbType.NVarChar,4001, Iif(Record.vGRESQLr= "" ,Convert.DBNull, Record.vGRESQLr))
          Cmd.Parameters.Add("@RowCount", SqlDbType.Int)
          Cmd.Parameters("@RowCount").Direction = ParameterDirection.Output
          _RecordCount = -1
          Con.Open()
          Cmd.ExecuteNonQuery()
          _RecordCount = Cmd.Parameters("@RowCount").Value
        End Using
      End Using
      Return Record
    End Function
    <DataObjectMethod(DataObjectMethodType.Delete, True)> _
    Public Shared Function wfnewUserDBDelete(ByVal Record As SIS.WF.wfnewUserDB) As Int32
      Dim _Result as Integer = 0
      Using Con As SqlConnection = New SqlConnection(SIS.SYS.SQLDatabase.DBCommon.GetConnectionString())
        Using Cmd As SqlCommand = Con.CreateCommand()
          Cmd.CommandType = CommandType.StoredProcedure
          Cmd.CommandText = "spwfnewUserDBDelete"
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@Original_UserID",SqlDbType.NVarChar,Record.UserID.ToString.Length, Record.UserID)
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@Original_DashboardID",SqlDbType.Int,Record.DashboardID.ToString.Length, Record.DashboardID)
          SIS.SYS.SQLDatabase.DBCommon.AddDBParameter(Cmd, "@Original_DBRows",SqlDbType.Int,Record.DBRows.ToString.Length, Record.DBRows)
          Cmd.Parameters.Add("@RowCount", SqlDbType.Int)
          Cmd.Parameters("@RowCount").Direction = ParameterDirection.Output
          _RecordCount = -1
          Con.Open()
          Cmd.ExecuteNonQuery()
          _RecordCount = Cmd.Parameters("@RowCount").Value
        End Using
      End Using
      Return _RecordCount
    End Function
    Public Sub New(ByVal Reader As SqlDataReader)
      Try
        For Each pi As System.Reflection.PropertyInfo In Me.GetType.GetProperties
          If pi.MemberType = Reflection.MemberTypes.Property Then
            Try
              Dim Found As Boolean = False
              For I As Integer = 0 To Reader.FieldCount - 1
                If Reader.GetName(I).ToLower = pi.Name.ToLower Then
                  Found = True
                  Exit For
                End If
              Next
              If Found Then
                If Convert.IsDBNull(Reader(pi.Name)) Then
                  Select Case Reader.GetDataTypeName(Reader.GetOrdinal(pi.Name))
                    Case "decimal"
                      CallByName(Me, pi.Name, CallType.Let, "0.00")
                    Case "bit"
                      CallByName(Me, pi.Name, CallType.Let, Boolean.FalseString)
                    Case Else
                      CallByName(Me, pi.Name, CallType.Let, String.Empty)
                  End Select
                Else
                  CallByName(Me, pi.Name, CallType.Let, Reader(pi.Name))
                End If
              End If
            Catch ex As Exception
            End Try
          End If
        Next
      Catch ex As Exception
      End Try
    End Sub
    Public Sub New()
    End Sub
  End Class
End Namespace

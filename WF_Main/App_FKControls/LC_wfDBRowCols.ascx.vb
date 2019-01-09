Imports System
Imports System.Data
Imports System.Configuration
Imports System.Collections
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls

<ValidationProperty("SelectedValue")> _
Partial Class LC_wfDBRowCols
  Inherits System.Web.UI.UserControl
  Private _OrderBy As String = String.Empty
  Private _IncludeDefault As Boolean = True
  Private _DefaultText As String = "-- Select --"
  Private _DefaultValue As String = String.Empty
  Public Event SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)
  Public ReadOnly Property LCClientID() As String
    Get
      Return DDLwfDBRowCols.ClientID
    End Get
  End Property
  Public Property AddAttributes() As String
    Get
      Return DDLwfDBRowCols.Attributes.ToString
    End Get
    Set(ByVal value As String)
      Try
        Dim aVal() As String = value.Split(",".ToCharArray)
        DDLwfDBRowCols.Attributes.Add(aVal(0), aVal(1))
      Catch ex As Exception
      End Try
    End Set
  End Property
  Public Property CssClass() As String
    Get
      Return DDLwfDBRowCols.CssClass
    End Get
    Set(ByVal value As String)
      DDLwfDBRowCols.CssClass = value
    End Set
  End Property
  Public Property Width() As System.Web.UI.WebControls.Unit
    Get
      Return DDLwfDBRowCols.Width
    End Get
    Set(ByVal value As System.Web.UI.WebControls.Unit)
      DDLwfDBRowCols.Width = value
    End Set
  End Property
  Public Property RequiredFieldErrorMessage() As String
    Get
      Return RequiredFieldValidatorwfDBRowCols.Text
    End Get
    Set(ByVal value As String)
      If value = String.Empty Then
        RequiredFieldValidatorwfDBRowCols.Enabled = False
      Else
        RequiredFieldValidatorwfDBRowCols.Text = value
      End If
    End Set
  End Property
  Public Property ValidationGroup() As String
    Get
      Return RequiredFieldValidatorwfDBRowCols.ValidationGroup
    End Get
    Set(ByVal value As String)
      RequiredFieldValidatorwfDBRowCols.ValidationGroup = value
    End Set
  End Property
  Public Property Enabled() As Boolean
    Get
      Return DDLwfDBRowCols.Enabled
    End Get
    Set(ByVal value As Boolean)
      DDLwfDBRowCols.Enabled = value
      RequiredFieldValidatorwfDBRowCols.Enabled = value
    End Set
  End Property
  Public Property AutoPostBack() As Boolean
    Get
      Return DDLwfDBRowCols.AutoPostBack
    End Get
    Set(ByVal value As Boolean)
      DDLwfDBRowCols.AutoPostBack = value
    End Set
  End Property
  Public Property DataTextField() As String
    Get
      Return DDLwfDBRowCols.DataTextField
    End Get
    Set(ByVal value As String)
      DDLwfDBRowCols.DataTextField = value
    End Set
  End Property
  Public Property DataValueField() As String
    Get
      Return DDLwfDBRowCols.DataValueField
    End Get
    Set(ByVal value As String)
      DDLwfDBRowCols.DataValueField = value
    End Set
  End Property
  Public Property SelectedValue() As String
    Get
      Return DDLwfDBRowCols.SelectedValue
    End Get
    Set(ByVal value As String)
      If Convert.IsDBNull(value) Then
        DDLwfDBRowCols.SelectedValue = String.Empty
      Else
        DDLwfDBRowCols.SelectedValue = value
      End If
    End Set
  End Property
  Public Property OrderBy() As String
    Get
      Return _OrderBy
    End Get
    Set(ByVal value As String)
      _OrderBy = value
    End Set
  End Property
  Public Property IncludeDefault() As Boolean
    Get
      Return _IncludeDefault
    End Get
    Set(ByVal value As Boolean)
      _IncludeDefault = value
    End Set
  End Property
  Public Property DefaultText() As String
    Get
      Return _DefaultText
    End Get
    Set(ByVal value As String)
      _DefaultText = value
    End Set
  End Property
  Public Property DefaultValue() As String
    Get
      Return _DefaultValue
    End Get
    Set(ByVal value As String)
      _DefaultValue = value
    End Set
  End Property
  Protected Sub OdsDdlwfDBRowCols_Selecting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.ObjectDataSourceSelectingEventArgs) Handles OdsDdlwfDBRowCols.Selecting
    e.Arguments.SortExpression = _OrderBy
  End Sub
  Protected Sub DDLwfDBRowCols_DataBinding(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLwfDBRowCols.DataBinding
    If _IncludeDefault Then
      DDLwfDBRowCols.Items.Add(new ListItem(_DefaultText, _DefaultValue))
    End If
  End Sub
  Protected Sub DDLwfDBRowCols_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLwfDBRowCols.SelectedIndexChanged
    RaiseEvent SelectedIndexChanged(sender, e)
  End Sub
End Class

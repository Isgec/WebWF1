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
Partial Class LC_wf_vDBRows
  Inherits System.Web.UI.UserControl
  Private _OrderBy As String = String.Empty
  Private _IncludeDefault As Boolean = True
  Private _DefaultText As String = "-- Select --"
  Private _DefaultValue As String = String.Empty
  Public Event SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)
  Public ReadOnly Property LCClientID() As String
    Get
      Return DDLwf_vDBRows.ClientID
    End Get
  End Property
  Public Property AddAttributes() As String
    Get
      Return DDLwf_vDBRows.Attributes.ToString
    End Get
    Set(ByVal value As String)
      Try
        Dim aVal() As String = value.Split(",".ToCharArray)
        DDLwf_vDBRows.Attributes.Add(aVal(0), aVal(1))
      Catch ex As Exception
      End Try
    End Set
  End Property
  Public Property CssClass() As String
    Get
      Return DDLwf_vDBRows.CssClass
    End Get
    Set(ByVal value As String)
      DDLwf_vDBRows.CssClass = value
    End Set
  End Property
  Public Property Width() As System.Web.UI.WebControls.Unit
    Get
      Return DDLwf_vDBRows.Width
    End Get
    Set(ByVal value As System.Web.UI.WebControls.Unit)
      DDLwf_vDBRows.Width = value
    End Set
  End Property
  Public Property RequiredFieldErrorMessage() As String
    Get
      Return RequiredFieldValidatorwf_vDBRows.Text
    End Get
    Set(ByVal value As String)
      If value = String.Empty Then
        RequiredFieldValidatorwf_vDBRows.Enabled = False
      Else
        RequiredFieldValidatorwf_vDBRows.Text = value
      End If
    End Set
  End Property
  Public Property ValidationGroup() As String
    Get
      Return RequiredFieldValidatorwf_vDBRows.ValidationGroup
    End Get
    Set(ByVal value As String)
      RequiredFieldValidatorwf_vDBRows.ValidationGroup = value
    End Set
  End Property
  Public Property Enabled() As Boolean
    Get
      Return DDLwf_vDBRows.Enabled
    End Get
    Set(ByVal value As Boolean)
      DDLwf_vDBRows.Enabled = value
      RequiredFieldValidatorwf_vDBRows.Enabled = value
    End Set
  End Property
  Public Property AutoPostBack() As Boolean
    Get
      Return DDLwf_vDBRows.AutoPostBack
    End Get
    Set(ByVal value As Boolean)
      DDLwf_vDBRows.AutoPostBack = value
    End Set
  End Property
  Public Property DataTextField() As String
    Get
      Return DDLwf_vDBRows.DataTextField
    End Get
    Set(ByVal value As String)
      DDLwf_vDBRows.DataTextField = value
    End Set
  End Property
  Public Property DataValueField() As String
    Get
      Return DDLwf_vDBRows.DataValueField
    End Get
    Set(ByVal value As String)
      DDLwf_vDBRows.DataValueField = value
    End Set
  End Property
  Public Property SelectedValue() As String
    Get
      Return DDLwf_vDBRows.SelectedValue
    End Get
    Set(ByVal value As String)
      If Convert.IsDBNull(value) Then
        DDLwf_vDBRows.SelectedValue = String.Empty
      Else
        DDLwf_vDBRows.SelectedValue = value
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
  Protected Sub OdsDdlwf_vDBRows_Selecting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.ObjectDataSourceSelectingEventArgs) Handles OdsDdlwf_vDBRows.Selecting
    e.Arguments.SortExpression = _OrderBy
  End Sub
  Protected Sub DDLwf_vDBRows_DataBinding(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLwf_vDBRows.DataBinding
    If _IncludeDefault Then
      DDLwf_vDBRows.Items.Add(new ListItem(_DefaultText, _DefaultValue))
    End If
  End Sub
  Protected Sub DDLwf_vDBRows_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLwf_vDBRows.SelectedIndexChanged
    RaiseEvent SelectedIndexChanged(sender, e)
  End Sub
End Class

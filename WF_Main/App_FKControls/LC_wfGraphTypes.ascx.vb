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
Partial Class LC_wfGraphTypes
  Inherits System.Web.UI.UserControl
  Private _OrderBy As String = String.Empty
  Private _IncludeDefault As Boolean = True
  Private _DefaultText As String = "-- Select --"
  Private _DefaultValue As String = String.Empty
  Public Event SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)
  Public ReadOnly Property LCClientID() As String
    Get
      Return DDLwfGraphTypes.ClientID
    End Get
  End Property
  Public Property AddAttributes() As String
    Get
      Return DDLwfGraphTypes.Attributes.ToString
    End Get
    Set(ByVal value As String)
      Try
        Dim aVal() As String = value.Split(",".ToCharArray)
        DDLwfGraphTypes.Attributes.Add(aVal(0), aVal(1))
      Catch ex As Exception
      End Try
    End Set
  End Property
  Public Property CssClass() As String
    Get
      Return DDLwfGraphTypes.CssClass
    End Get
    Set(ByVal value As String)
      DDLwfGraphTypes.CssClass = value
    End Set
  End Property
  Public Property Width() As System.Web.UI.WebControls.Unit
    Get
      Return DDLwfGraphTypes.Width
    End Get
    Set(ByVal value As System.Web.UI.WebControls.Unit)
      DDLwfGraphTypes.Width = value
    End Set
  End Property
  Public Property RequiredFieldErrorMessage() As String
    Get
      Return RequiredFieldValidatorwfGraphTypes.Text
    End Get
    Set(ByVal value As String)
      If value = String.Empty Then
        RequiredFieldValidatorwfGraphTypes.Enabled = False
      Else
        RequiredFieldValidatorwfGraphTypes.Text = value
      End If
    End Set
  End Property
  Public Property ValidationGroup() As String
    Get
      Return RequiredFieldValidatorwfGraphTypes.ValidationGroup
    End Get
    Set(ByVal value As String)
      RequiredFieldValidatorwfGraphTypes.ValidationGroup = value
    End Set
  End Property
  Public Property Enabled() As Boolean
    Get
      Return DDLwfGraphTypes.Enabled
    End Get
    Set(ByVal value As Boolean)
      DDLwfGraphTypes.Enabled = value
      RequiredFieldValidatorwfGraphTypes.Enabled = value
    End Set
  End Property
  Public Property AutoPostBack() As Boolean
    Get
      Return DDLwfGraphTypes.AutoPostBack
    End Get
    Set(ByVal value As Boolean)
      DDLwfGraphTypes.AutoPostBack = value
    End Set
  End Property
  Public Property DataTextField() As String
    Get
      Return DDLwfGraphTypes.DataTextField
    End Get
    Set(ByVal value As String)
      DDLwfGraphTypes.DataTextField = value
    End Set
  End Property
  Public Property DataValueField() As String
    Get
      Return DDLwfGraphTypes.DataValueField
    End Get
    Set(ByVal value As String)
      DDLwfGraphTypes.DataValueField = value
    End Set
  End Property
  Public Property SelectedValue() As String
    Get
      Return DDLwfGraphTypes.SelectedValue
    End Get
    Set(ByVal value As String)
      If Convert.IsDBNull(value) Then
        DDLwfGraphTypes.SelectedValue = String.Empty
      Else
        DDLwfGraphTypes.SelectedValue = value
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
  Protected Sub OdsDdlwfGraphTypes_Selecting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.ObjectDataSourceSelectingEventArgs) Handles OdsDdlwfGraphTypes.Selecting
    e.Arguments.SortExpression = _OrderBy
  End Sub
  Protected Sub DDLwfGraphTypes_DataBinding(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLwfGraphTypes.DataBinding
    If _IncludeDefault Then
      DDLwfGraphTypes.Items.Add(new ListItem(_DefaultText, _DefaultValue))
    End If
  End Sub
  Protected Sub DDLwfGraphTypes_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DDLwfGraphTypes.SelectedIndexChanged
    RaiseEvent SelectedIndexChanged(sender, e)
  End Sub
End Class

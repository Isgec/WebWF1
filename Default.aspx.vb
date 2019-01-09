Imports System.IO
Imports OfficeOpenXml
Imports System.Web.Script.Serialization
Imports System.Security.Principal
Imports System.Security
Partial Class LGDefault
  Inherits System.Web.UI.Page
  Public Property abcd As String = ""

  'Private Sub LGDefault_Init(sender As Object, e As EventArgs) Handles Me.Init
  '  If Not HttpContext.Current.User.Identity.IsAuthenticated Then
  '    Dim strUser As String = "0340"
  '    Dim pw As String = "lg"
  '    Try
  '      If Membership.ValidateUser(strUser, pw) Then
  '        Dim isPersistent As Boolean = True
  '        Dim userData As String = "ApplicationSpecific data for this user."
  '        Dim ticket As FormsAuthenticationTicket = New FormsAuthenticationTicket(1,
  '              strUser,
  '              DateTime.Now,
  '              DateTime.Now.AddMinutes(30),
  '              isPersistent,
  '              userData,
  '              FormsAuthentication.FormsCookiePath)
  '        ' Encrypt the ticket.
  '        Dim encTicket As String = FormsAuthentication.Encrypt(ticket)
  '        ' Create the cookie.
  '        Response.Cookies.Add(New HttpCookie(FormsAuthentication.FormsCookieName, encTicket))
  '        SIS.SYS.Utilities.SessionManager.InitializeEnvironment(Page.User.Identity.Name)

  '        'Redirect back to original URL.
  '        HttpContext.Current.Session("Redirected") = True
  '        'If Not cnt Then
  '        '  Response.Redirect("http://192.9.200.169/Webpay/Empuser/atnweb.aspx?cnt=1&uVal=" & uVal)
  '        'End If
  '        'If uVal = "2" Then
  '        '  Response.Redirect("~/TA_Main/App_Forms/GF_taTPUserInvoicing.aspx")
  '        'End If
  '      End If
  '    Catch ex As Exception
  '    End Try

  '  End If
  'End Sub

  Private Sub LGDefault_Load(sender As Object, e As EventArgs) Handles Me.Load

    If Not Page.User.Identity.IsAuthenticated Then
      'Dim headers As String = String.Empty
      'For Each key In Request.Headers.AllKeys
      '  headers &= key & "=" & Request.Headers(key) & Environment.NewLine
      'Next
      Dim userAgent As String = Request.Headers("User-Agent")
      If userAgent = "ISGEC_Registered_Mobile" Then
        Dim uid As String = ""
        Dim upw As String = ""
        Try
          uid = Request.QueryString("id")
          upw = Request.QueryString("pw")
          'abcd = userAgent & ", " & uid & ", " & upw
          If Membership.ValidateUser(uid, upw) Then
            Dim id As GenericIdentity = New GenericIdentity(uid, upw)
            Context.User = New GenericPrincipal(id, {"user"})
            FormsAuthentication.SetAuthCookie(uid, True)
            SIS.SYS.Utilities.SessionManager.InitializeEnvironment(uid)
            'Response.Redirect("~/WF_Main/App_Forms/GF_wfUserDB.aspx")
          Else
            'Response.Clear()
            'Response.AppendHeader("UA=", userAgent & "-Lalit")
            'Response.End()
          End If
        Catch ex As Exception
        End Try
      End If
    End If
  End Sub

  Private Sub LGDefault_PreRender(sender As Object, e As EventArgs) Handles Me.PreRender

    If Page.User.Identity.IsAuthenticated Then
    End If
  End Sub
End Class

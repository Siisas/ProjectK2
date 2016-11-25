Public Class CafeteriaCrearEmpClie
    Inherits System.Web.UI.Page

    Dim ObjProductosCafeteria As New clsCafeteriaProductos
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            If Session("permisos") Is Nothing Then
                Response.Redirect("~/entrada.aspx?ReturnUrl=" & Request.RawUrl)
            End If
            Pnl_Message.CssClass = Nothing
            lblmsg.Text = Nothing
            If Not IsPostBack Then
                Session("Formulario") = "Plantilla"
            End If
        Catch ex As Exception
            Pnl_Message.CssClass = "alert alert-danger"
            lblmsg.Text = "<span class='glyphicon glyphicon-remove-sign'></span> " & ex.Message
        End Try
    End Sub

    Protected Sub btn_AgregarEmpleado_Click(sender As Object, e As EventArgs) Handles btn_AgregarEmpleado.Click

        ObjProductosCafeteria.PublicNombreEmpleado = TxtNombreEmpleado.Text
        ObjProductosCafeteria.RegEmpleadosCafeteria()
    End Sub
End Class
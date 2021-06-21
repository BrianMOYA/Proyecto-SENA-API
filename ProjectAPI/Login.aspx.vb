Public Class Login
    Inherits System.Web.UI.Page
    Dim usuario1 As Usuario = New Usuario

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnIniciar_Click(sender As Object, e As EventArgs) Handles btnIniciar.Click



        usuario1.Acceder(txtCorreo.Text, txtContraseña.Text)
        If (usuario1.mensaje = "Bienvenido") Then
            Response.Redirect("Pages/Home/Home.aspx")
        Else
            lblMensaje.Text = usuario1.mensaje
        End If

        txtCorreo.Text = ""
        txtContraseña.Text = ""
    End Sub
End Class
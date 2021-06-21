Public Class Register
    Inherits System.Web.UI.Page
    Dim usuario1 As Usuario = New Usuario

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnRegistrar_Click(sender As Object, e As EventArgs) Handles btnRegistrar.Click
        usuario1.SetnombresUsuario(txtNombres.Text)
        usuario1.SetapellidosUsuario(txtApellidos.Text)
        usuario1.SetemailUsuario(txtCorreoConfirmar.Text)
        usuario1.SetcontraseñaUsuario(txtContraseñaRegistrar.Text)
        usuario1.SetcelularUsuario(txtCelular.Text)
        usuario1.GuardarUsuario()
        lblResultado.Text = usuario1.mensaje

        txtNombres.Text = ""
        txtApellidos.Text = ""
        txtCorreoConfirmar.Text = ""
        txtContraseñaRegistrar.Text = ""
        txtCelular.Text = ""
    End Sub
End Class
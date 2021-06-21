Public Class Cliente1
    Inherits System.Web.UI.Page
    Dim Cliente1 As New Cliente
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnRegistrarCliente_Click(sender As Object, e As EventArgs) Handles btnRegistrarCliente.Click
        Cliente1.SetnombreCliente(txtNombredelCliente.Text)
        Cliente1.SetapellidoCliente(txtApellidoCliente.Text)
        Cliente1.SetemailCliente(txtEmailCliente.Text)
        Cliente1.SetcelularCliente(txtCelularCliente.Text)
        Cliente1.GuardarCliente()

        txtNombredelCliente.Text = " "
        txtApellidoCliente.Text = " "
        txtEmailCliente.Text = " "
        txtCelularCliente.Text = " "

        gvCliente.DataBind()
    End Sub
End Class
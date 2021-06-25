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
        Cliente1.SetnegocioCliente(txtnegocioCliente.Text)
        Cliente1.SetdireccionNegocioCliente(txtdireccionNegocioCliente.Text)
        Cliente1.GuardarCliente()
        lblResultado.Text = Cliente1.mensaje

        txtNombredelCliente.Text = " "
        txtApellidoCliente.Text = " "
        txtEmailCliente.Text = " "
        txtCelularCliente.Text = " "
        txtnegocioCliente.Text = " "
        txtdireccionNegocioCliente.Text = " "

        gvCliente.DataBind()
    End Sub

    Protected Sub gvCliente_SelectedIndexChanged(sender As Object, e As EventArgs)

    End Sub

    Protected Sub gvCliente_SelectedIndexChanged1(sender As Object, e As EventArgs)

    End Sub

    Protected Sub gvCliente_SelectedIndexChanged2(sender As Object, e As EventArgs) Handles gvCliente.SelectedIndexChanged

    End Sub
End Class
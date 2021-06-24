Public Class Productos1
    Inherits System.Web.UI.Page
    Dim newproducto As New Productos
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnRegistrarProducto_Click(sender As Object, e As EventArgs) Handles btnRegistrarProducto.Click
        newproducto.SetnombreProducto(txtNombreProducto.Text)
        newproducto.SetprecioProducto(txtPrecioProducto.Text)
        newproducto.SetidProveedor(lstProveedor.SelectedValue)
        newproducto.SetidCliente(lstCliente.SelectedValue)
        newproducto.GuardarProducto()
        lblResultado.Text = newproducto.mensaje

        txtNombreProducto.Text = " "
        txtPrecioProducto.Text = " "
        gvProducto.DataBind()
    End Sub
End Class
Public Class Proveedor1
    Inherits System.Web.UI.Page
    Dim newproveedor As New Proveedor
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnRegistrarProveedor_Click(sender As Object, e As EventArgs) Handles btnRegistrarProveedor.Click
        newproveedor.SetempresaProveedor(txtempresaProveedor.Text)
        newproveedor.SetnombreProveedor(txtnombreProveedor.Text)
        newproveedor.GuardarProveedor()
        lblResultado.Text = newproveedor.mensaje

        txtempresaProveedor.Text = " "
        txtnombreProveedor.Text = " "
        gvProveedor.DataBind()
    End Sub

    Protected Sub txtempresaProveedor_TextChanged(sender As Object, e As EventArgs) Handles txtempresaProveedor.TextChanged

    End Sub
End Class
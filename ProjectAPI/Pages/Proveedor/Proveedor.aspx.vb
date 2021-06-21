Public Class Proveedor1
    Inherits System.Web.UI.Page
    Dim newproveedor As New Proveedor
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnRegistrarProveedor_Click(sender As Object, e As EventArgs) Handles btnRegistrarProveedor.Click
        newproveedor.SetmarcaProveedor(txtmarcaProveedor.Text)
        newproveedor.SetnombreProveedor(txtnombreProveedor.Text)
        newproveedor.GuardarProveedor()

        txtmarcaProveedor.Text = " "
        txtnombreProveedor.Text = " "
        gvProveedor.DataBind()
    End Sub
End Class
Public Class Inventaries_
    Inherits System.Web.UI.Page
    Dim Inventario1 As New Inventario
    Dim entrada, salida, venta, ingreso, totalBodega, dif As Integer

    Protected Sub txtTotalBodega_TextChanged(sender As Object, e As EventArgs) Handles txtTotalBodega.TextChanged

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Protected Sub btnRegistrarInventario_Click(sender As Object, e As EventArgs) Handles btnRegistrarInventario.Click
        Inventario1.Setentrada(txtEntrada.Text)
        Inventario1.Setsalida(txtSalida.Text)
        Inventario1.Setingreso(txtIngreso.Text)
        Inventario1.Setventa(txtVenta.Text)
        Inventario1.SettotalBodega(txtTotalBodega.Text)
        Inventario1.SetidProducto(lstProducto.SelectedValue)
        Inventario1.GuardarInventario()

        txtEntrada.Text = " "
        txtSalida.Text = " "
        txtIngreso.Text = " "
        txtVenta.Text = " "
        txtTotalBodega.Text = " "

        gvInventario.DataBind()
    End Sub

    Protected Sub btnCalcular_Click(sender As Object, e As EventArgs) Handles btnCalcular.Click
        entrada = Val(txtEntrada.Text)
        salida = Val(txtSalida.Text)
        venta = Val(txtVenta.Text)

        dif = entrada - salida
        ingreso = salida - venta
        totalBodega = ingreso + dif

        txtIngreso.Text = ingreso
        txtTotalBodega.Text = totalBodega
    End Sub
End Class
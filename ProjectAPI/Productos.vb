Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Imports System.Data

Public Class Productos
    Private idProducto As Integer
    Private nombreProducto As String
    Private precioProducto As String
    Private idProveedor As Integer
    Private idCliente As Integer
    Public mensaje As String = ""
    Private Cnn As String = ConfigurationManager.AppSettings("StrConexion")
    Private conexion As New SqlConnection(Cnn)
    Private Sub Conectar()
        If conexion.State = ConnectionState.Closed Then
            conexion.Open()
        End If
    End Sub
    Private Sub Desconectar()
        If conexion.State = ConnectionState.Open Then
            conexion.Close()
        End If
    End Sub
    Function GetidProducto() As Integer
        Return Me.idProducto
    End Function
    Function GetnombreProducto() As String
        Return nombreProducto
    End Function
    Function GetprecioProducto() As String
        Return precioProducto
    End Function
    Function GetidProveedor() As String
        Return idProveedor
    End Function
    Function GetidCliente() As String
        Return idCliente
    End Function
    Sub SetnombreProducto(ByVal nombreProducto As String)
        Me.nombreProducto = nombreProducto
    End Sub
    Sub SetprecioProducto(ByVal precioProducto As String)
        Me.precioProducto = precioProducto
    End Sub
    Sub SetidProveedor(ByVal idProveedor As String)
        Me.idProveedor = idProveedor
    End Sub
    Sub SetidCliente(ByVal idCliente As String)
        Me.idCliente = idCliente
    End Sub
    Public Sub GuardarProducto()
        Dim cmdSQL As New SqlCommand
        Dim drConsulta As SqlDataReader
        Dim cadSQL As String = ""
        Dim NuevoID As Integer
        cadSQL = "insert into Producto values('" & nombreProducto & "', '" & precioProducto & "','" & idProveedor & "','" & idCliente & "')"
        Conectar()
        cmdSQL = New SqlCommand(cadSQL, conexion)
        cmdSQL.ExecuteNonQuery()
        Desconectar()
        cadSQL = "Select top 1 idProducto from Producto order by idProducto desc"
        Conectar()
        cmdSQL = New SqlCommand(cadSQL, conexion)
        drConsulta = cmdSQL.ExecuteReader
        If (drConsulta.Read) Then
            NuevoID = drConsulta.Item("idProducto")
        End If
        Desconectar()
        mensaje = "Producto almacenado satisfactoriamente"
    End Sub
End Class

Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Imports System.Data
Public Class Inventario
    Private idInventario As Integer
    Private idProducto As Integer
    Private entrada As String
    Private salida As String
    Private venta As String
    Private ingreso As String
    Private totalBodega As String
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
    Function GetidInventario() As Integer
        Return Me.idInventario
    End Function
    Function GetidProducto() As Integer
        Return idProducto
    End Function
    Function Getentrada() As String
        Return entrada
    End Function
    Function Getsalida() As String
        Return salida
    End Function
    Function Getventa() As String
        Return venta
    End Function
    Function Getingreso() As String
        Return ingreso
    End Function
    Function GettotalBodega() As String
        Return totalBodega
    End Function
    Sub Setentrada(ByVal entrada As String)
        Me.entrada = entrada
    End Sub
    Sub Setsalida(ByVal salida As String)
        Me.salida = salida
    End Sub
    Sub Setventa(ByVal venta As String)
        Me.venta = venta
    End Sub
    Sub Setingreso(ByVal ingreso As String)
        Me.ingreso = ingreso
    End Sub
    Sub SettotalBodega(ByVal totalBodega As String)
        Me.totalBodega = totalBodega
    End Sub
    Sub SetidProducto(ByVal idProducto As String)
        Me.idProducto = idProducto
    End Sub
    Public Sub GuardarInventario()
        Dim cmdSQL As New SqlCommand
        Dim drConsulta As SqlDataReader
        Dim cadSQL As String = ""
        Dim NuevoID As Integer
        cadSQL = "insert into Inventario values('" & entrada & "', '" & salida & "', '" & venta & "', '" & ingreso & "', '" & totalBodega & "','" & idProducto & "')"
        Conectar()
        cmdSQL = New SqlCommand(cadSQL, conexion)
        cmdSQL.ExecuteNonQuery()
        Desconectar()
        cadSQL = "Select top 1 idInventario from Inventario order by idInventario desc"
        Conectar()
        cmdSQL = New SqlCommand(cadSQL, conexion)
        drConsulta = cmdSQL.ExecuteReader
        If (drConsulta.Read) Then
            NuevoID = drConsulta.Item("idInventario")
        End If
        Desconectar()
        mensaje = "Inventario almacenado satisfactoriamente"
    End Sub
End Class

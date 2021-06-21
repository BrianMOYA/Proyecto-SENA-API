Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Imports System.Data
Public Class Proveedor
    Private idProveedor As Integer
    Private marcaProveedor As String
    Private nombreProveedor As String
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
    Function GetidProveedor() As Integer
        Return Me.idProveedor
    End Function
    Function GetmarcaProveedor() As String
        Return marcaProveedor
    End Function
    Function GetnombreProveedor() As String
        Return nombreProveedor
    End Function
    Sub SetmarcaProveedor(ByVal marcaProveedor As String)
        Me.marcaProveedor = marcaProveedor
    End Sub
    Sub SetnombreProveedor(ByVal nombreProveedor As String)
        Me.nombreProveedor = nombreProveedor
    End Sub
    Public Sub GuardarProveedor()
        Dim cmdSQL As New SqlCommand
        Dim drConsulta As SqlDataReader
        Dim cadSQL As String = ""
        Dim NuevoID As Integer
        cadSQL = "insert into Proveedor values('" & marcaProveedor & "', '" & nombreProveedor & "', '  1  ')"
        Conectar()
        cmdSQL = New SqlCommand(cadSQL, conexion)
        cmdSQL.ExecuteNonQuery()
        Desconectar()
        cadSQL = "Select top 1 idProveedor from Proveedor order by idProveedor desc"
        Conectar()
        cmdSQL = New SqlCommand(cadSQL, conexion)
        drConsulta = cmdSQL.ExecuteReader
        If (drConsulta.Read) Then
            NuevoID = drConsulta.Item("idProveedor")
        End If
        Desconectar()
        mensaje = "Proveedor almacenado satisfactoriamente"
    End Sub
End Class

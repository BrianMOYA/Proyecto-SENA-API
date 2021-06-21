Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Imports System.Data
Public Class Cliente
    Private idCliente As Integer
    Private nombreCliente As String
    Private apellidoCliente As String
    Private emailCliente As String
    Private celularCliente As String
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
    Function GetidCliente() As Integer
        Return Me.idCliente
    End Function
    Function GetnombreCliente() As String
        Return nombreCliente
    End Function
    Function GetapellidoCliente() As String
        Return apellidoCliente
    End Function
    Function GetemailCliente() As String
        Return emailCliente
    End Function
    Function GetcelularCliente() As String
        Return celularCliente
    End Function
    Sub SetnombreCliente(ByVal nombreCliente As String)
        Me.nombreCliente = nombreCliente
    End Sub
    Sub SetapellidoCliente(ByVal apellidoCliente As String)
        Me.apellidoCliente = apellidoCliente
    End Sub
    Sub SetemailCliente(ByVal emailCliente As String)
        Me.emailCliente = emailCliente
    End Sub
    Sub SetcelularCliente(ByVal celularCliente As String)
        Me.celularCliente = celularCliente
    End Sub
    Public Sub GuardarCliente()
        Dim cmdSQL As New SqlCommand
        Dim drConsulta As SqlDataReader
        Dim cadSQL As String = ""
        Dim NuevoID As Integer
        cadSQL = "insert into Cliente values('" & nombreCliente & "', '" & apellidoCliente & "', '" & emailCliente & "', '" & celularCliente & "')"
        Conectar()
        cmdSQL = New SqlCommand(cadSQL, conexion)
        cmdSQL.ExecuteNonQuery()
        Desconectar()
        cadSQL = "Select top 1 idCliente from Cliente order by idCliente desc"
        Conectar()
        cmdSQL = New SqlCommand(cadSQL, conexion)
        drConsulta = cmdSQL.ExecuteReader
        If (drConsulta.Read) Then
            NuevoID = drConsulta.Item("idCliente")
        End If
        Desconectar()
        mensaje = "Cliente almacenado satisfactoriamente"
    End Sub
End Class

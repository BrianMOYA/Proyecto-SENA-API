Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Imports System.Data
Public Class Usuario
    Private idUsuario As Integer
    Private nombreUsuario As String
    Private apellidoUsuario As String
    Private emailUsuario As String
    Private contraseñaUsuario As String
    Private celularUsuario As String
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
    Function GetidUsuario() As Integer
        Return Me.idUsuario
    End Function
    Function GetnombresUsuario() As String
        Return nombreUsuario
    End Function
    Function GetapellidosUsuario() As String
        Return apellidoUsuario
    End Function
    Function GetemailUsuario() As String
        Return emailUsuario
    End Function
    Function GetcontraseñaUsuario() As String
        Return contraseñaUsuario
    End Function
    Function GetcelularUsuario() As String
        Return celularUsuario
    End Function
    Sub SetnombresUsuario(ByVal nombreUsuario As String)
        Me.nombreUsuario = nombreUsuario
    End Sub
    Sub SetapellidosUsuario(ByVal apellidoUsuario As String)
        Me.apellidoUsuario = apellidoUsuario
    End Sub
    Sub SetemailUsuario(ByVal emailUsuario As String)
        Me.emailUsuario = emailUsuario
    End Sub
    Sub SetcontraseñaUsuario(ByVal contraseñaUsuario As String)
        Me.contraseñaUsuario = contraseñaUsuario
    End Sub
    Sub SetcelularUsuario(ByVal celularUsuario As String)
        Me.celularUsuario = celularUsuario
    End Sub
    Public Sub GuardarUsuario()
        Dim cmdSQL As New SqlCommand
        Dim drConsulta As SqlDataReader
        Dim cadSQL As String = ""
        Dim NuevoID As Integer
        cadSQL = "insert into Usuario values('" & nombreUsuario & "', '" & apellidoUsuario & "', '" & emailUsuario & "', '" & contraseñaUsuario & "', '" & celularUsuario & "')"
        Conectar()
        cmdSQL = New SqlCommand(cadSQL, conexion)
        cmdSQL.ExecuteNonQuery()
        Desconectar()
        cadSQL = "Select top 1 idUsuario from Usuario order by idUsuario desc"
        Conectar()
        cmdSQL = New SqlCommand(cadSQL, conexion)
        drConsulta = cmdSQL.ExecuteReader
        If (drConsulta.Read) Then
            NuevoID = drConsulta.Item("idUsuario")
        End If
        Desconectar()
        mensaje = "Usuario almacenado satisfactoriamente"
    End Sub
    Public Sub Acceder(ByVal emailUsuario As String, ByVal contraseñaUsuario As String)
        Dim cmdSQL As New SqlCommand
        Dim drConsulta As SqlDataReader
        Dim cadSQL As String = ""
        cadSQL = "Select contraseñaUsuario from Usuario where emailUsuario='" & emailUsuario & "'"
        Conectar()
        cmdSQL = New SqlCommand(cadSQL, conexion)
        drConsulta = cmdSQL.ExecuteReader
        If (drConsulta.Read) Then
            If (drConsulta.Item("contraseñaUsuario") = contraseñaUsuario) Then
                mensaje = "Bienvenido"
            Else
                mensaje = "Contraseña incorrecta"
            End If
        Else
            mensaje = "Correo no registrado"
        End If
        Desconectar()
    End Sub
End Class

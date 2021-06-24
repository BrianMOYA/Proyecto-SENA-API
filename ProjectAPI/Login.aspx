<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="ProjectAPI.Login" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>La Molienda | Iniciar Sesión</title>
        <link href="Estilos/Estilo.css" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet" />
        <script src="https://kit.fontawesome.com/a81368914c.js"></script>
    </head>
    <body>
        <img class="wave" src="Images/Background.png" />
        <div class="container">
            <div class="img">
                <img src="Images/Molienda.png" />
            </div>
            <div class="login-content">
                <form id="Login" runat="server">
                    <img src="Images/Logo.png" />
                    <h2 class="title">Iniciar Sesión</h2>
                    <div class="input-div one">
                        <div class="i">
                            <i class="fas fa-user"></i>
                        </div>
                        <div class="div">
                            <h5>Correo</h5>
                            <asp:TextBox class="input" ID="txtCorreo" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="input-div pass">
                        <div class="i"> 
                            <i class="fas fa-lock"></i>
                        </div>
                        <div class="div">
                            <h5>Contraseña</h5>
                            <asp:TextBox class="input" ID="txtContraseña" runat="server" TextMode="Password"></asp:TextBox>
                        </div>
                    </div>
                    <asp:Button class="btn" ID="btnIniciar" runat="server" Text="Iniciar Sesión"/>
                    <div>
                        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                    </div>
                </form>
            </div>
        </div>
        <script src="JS/Return.js"></script>
        <script src="JS/Scripts.js"></script>
    </body>
</html>
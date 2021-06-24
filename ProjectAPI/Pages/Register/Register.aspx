<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Register.aspx.vb" Inherits="ProjectAPI.Register" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>La Molienda | Registrar</title>
        <link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet" />
        <link href="Estilos/Estilo.css" rel="stylesheet" />
    </head>
    <body>
        <img src="Images/Background.png" class="wave"/>
        <div class="container">
            <div class="img">
                <img src="Images/Molienda.png" />
            </div>
            <div class="login-content">
                <form id="Registro" runat="server">
                    <h2 class="title">Registrarse</h2>
                    <div class="input-div one">
                        <div class="i">
                            <i class="fas fa-user"></i>
                        </div>
                        <div class="div">
                            <h5>Nombres</h5>
                            <asp:TextBox class="input" ID="txtNombres" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="input-div one">
                        <div class="i"> 
                            <i class="fas fa-lock"></i>
                        </div>
                        <div class="div">
                            <h5>Apellidos</h5>
                            <asp:TextBox class="input" ID="txtApellidos" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="input-div one">
                        <div class="i"> 
                            <i class="fas fa-lock"></i>
                        </div>
                        <div class="div">
                            <h5>Correo</h5>
                            <asp:TextBox class="input" ID="txtCorreoConfirmar" runat="server" TextMode="Email"></asp:TextBox>
                        </div>
                    </div>                
                    
                    <div class="input-div one">
                        <div class="i"> 
                            <i class="fas fa-lock"></i>
                        </div>
                        <div class="div">
                            <h5>Contraseña</h5>
                            <asp:TextBox class="input" ID="txtContraseñaRegistrar" runat="server" TextMode="Password" MaxLength="15"></asp:TextBox>
                        </div>
                    </div>
                    <div class="input-div one">
                        <div class="i"> 
                            <i class="fas fa-lock"></i>
                        </div>
                        <div class="div">
                            <h5>Celular</h5>
                            <asp:TextBox class="input" ID="txtCelular" runat="server" TextMode="Number" MaxLength="10" oninput="if(this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"></asp:TextBox>
                        </div>
                    </div>
                    <asp:Button class="btn" ID="btnRegistrar" runat="server" Text="Registrarse"/>
                    <input class="btn" type="button" value="Regresar a Inicio" onclick = "location='../Home/Home.aspx'"/>
                    <br />
                    <div>
                        <asp:Label ID="lblResultado" runat="server"></asp:Label>
                    </div>
                </form>
            </div>
        </div>
        <script src="JS/Scripts.js"></script>
    </body>
</html>

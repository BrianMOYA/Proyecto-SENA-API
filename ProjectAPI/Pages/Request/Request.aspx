<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="Request.aspx.vb" Inherits="ProjectAPI.Request_" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>La Molienda | Pedidos</title>
    <link href="Styles/LaMolienda.css" rel="stylesheet" />
    <link href="Styles/Styles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <div class="banner">
        <img src="Images/Background.jpg" />
        <div class="contenedor">
            <h2 class="banner__titulo">Bienvenido, aquí podrá revisar sus pedidos</h2>
            <p class="banner__txt">Revisé de forma fácil y segura sus pedidos</p>
        </div>
    </div>
    <%--<div class="container-all" id="move-content">--%>
    <form runat="server">
      <div class="post" data-category="Clientes">
                            <center>
                                <img src="Images/Molienda.PNG" style="width:20%;"/>
                                <div>
                                    <asp:Label ID="lblNombreCliente" runat="server" Text="Nombre del cliente:"></asp:Label>
                                    &nbsp;<asp:TextBox ID="txtNombreCliente" runat="server"></asp:TextBox>
                                </div>
                                <div>
                                    <asp:Label ID="lblApellidoCliente" runat="server" Text="Apellido del cliente:"></asp:Label>
                                    &nbsp;<asp:TextBox ID="txtApellidoCliente" runat="server"></asp:TextBox>
                                </div>
                                <div>
                                    <asp:Label ID="lblNombreEmpresaCliente" runat="server" Text="Nombre de la empresa:"></asp:Label>
                                    &nbsp;<asp:TextBox ID="txtNombreEmpresaCliente" runat="server"></asp:TextBox>
                                </div>
                                <div>
                                    <asp:Label ID="lblDireccionCliente" runat="server" Text="Dirección del cliente:"></asp:Label>
                                    &nbsp;<asp:TextBox ID="txtDireccionCliente" runat="server"></asp:TextBox>
                                </div>
                                <div>
                                    <asp:Label ID="lblTelefonoCliente" runat="server" Text="Telefono del Cliente:"></asp:Label>
                                    &nbsp;<asp:TextBox ID="txtTelefonoCliente" runat="server"></asp:TextBox>
                                </div>
                                <div>
                                    <asp:Label ID="lblCelularCliente" runat="server" Text="Celular del cliente:"></asp:Label>
                                    &nbsp;<asp:TextBox ID="txtCelularCliente" runat="server"></asp:TextBox>
                                </div>
                                <div>
                                    <asp:Button ID="btnRegistrarCliente" runat="server" Text="Registrar Cliente" />
                                </div>
                                <div>
                                    <asp:Label ID="lblResultado2" runat="server"></asp:Label>
                                </div>

                                <br />

                                <div>
                                   
                                </div>
                            </center>
                        </div>
    </form>
                    </div>
                </div>     
        <%--</div>--%>
    <script src="JS/Scripts.js"></script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>

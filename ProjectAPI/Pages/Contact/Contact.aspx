<%@ Page Title="La Molienda | Contáctanos" Language="vb" AutoEventWireup="false" MasterPageFile="~/Page.Master" CodeBehind="Contact.aspx.vb" Inherits="ProjectAPI.Contact_" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Estilos/Estilo.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="banner">
        <img src="Images/Background12.jpg" class="banner_img"/>
        <div class="contenedor">
            <h2 class="banner__titulo">Bienvenidos a API (Ágil Proceso de inventarios)</h2>
            <p class="banner__txt">Si lo puedes imaginar, podremos hacerlo realidad</p>
        </div>
    </div>

    <main class="main">
        <div class="contenedort">
            <section class="acerca-de">
                <div class="contenedor">
                    <h2 class="sobre-nosotros">ÁGIL PROCESO DE INVENTARIOS</h2>
                    <p class="parrafo">Ágil proceso de inventarios mejor conocido como API, es el mejor sistema de información que le facilitará el registro, actualización y control de los productos del inventario para evitar pérdidas de tiempo y dinero, así, automatizando los procesos en el manejo y control de los inventarios de la empresa.</p>
                </div>
            </section>
      
            <h2 class="sobre-nosotros">Desarrolladores</h2>
            <section class="cont">
                <div class="flip-card">
                    <div class="flip-card-inner">
                        <div class="flip-card-front">
                            <img src="Images/User.png" class="Avatar" style="width:300px;height:300px;"/>
                        </div>
                        <div class="flip-card-back">
                            <h1>Desarrollador</h1>
                            <p>Brian Steven Moya Callejas</p>
                            <p>bsmoya1@misena.edu.co</p>
                            <p>3003955813</p>
                        </div>
                    </div>
                </div>
                
                <div class="flip-card">
                    <div class="flip-card-inner">
                        <div class="flip-card-front">
                            <img src="Images/User.png" class="Avatar" style="width:300px;height:300px;"/>
                        </div>
                        <div class="flip-card-back">
                            <h1>Desarrollador</h1>
                            <p>Luis Alfonso Quiroga Silva</p>
                            <p>laquiroga953@misena.edu.co</p>
                            <p>3207992799</p>
                        </div>
                    </div>
                </div>
                
                <div class="flip-card">
                    <div class="flip-card-inner">
                        <div class="flip-card-front">
                            <img src="Images/User.png" class="Avatar" style="width:300px;height:300px;"/>
                        </div>
                        <div class="flip-card-back">
                            <h1>Desarrollador</h1>
                            <p>Uriel Armando Astaiza Castro</p>
                            <p>Uaastaiza@misena.edu.co</p>
                            <p>3123598224</p>
                        </div>
                    </div>
                </div>
            </section>
            
            <section class="miembros">
                <div class="contenedor">
                    <h2 class="sobre-nosotros">Conocenos</h2>
                    <div class="cards">
                        <div class="card">
                            <h1>Misión</h1>
                            <p>El sistema de información API se encargará del registro y control del inventario de los productos a comercializar, igualmente de optimizar el tiempo y evitar la pérdida de desempeño laboral.</p>
                        </div>

                        <div class="card">
                            <h1>API</h1>
                            <center>
                                <img src="Images/Logo.png" />
                            </center>
                        </div>
                        
                        <div class="card">
                            <h1>Visión</h1>
                            <p>En el 2021, el sistema informatico API, será reconocido por su gran calidad y desempeño en la optimización de los procesos.</p>
                        </div>
                    </div>
                </div>
            </section>

            <section class="fondo">
                <div class="contenedor">
                    <h1 class="titulo-patrocinadores">Empresas asociadas</h1>
                    <h1 class="subtitulo-patrocinadores"></h1>
                    <div class="clientes">
                        <div class="cliente">
                            <img src="Images/Molienda.PNG" style="width: 330px;height:280px;"/>
                        </div>
                        
                        <div class="cliente">
                            <img src="Images/Logo.png" style="width:300px;height:280px;"/>
                        </div>
                        
                        <div class="cliente">
                            <img src="Images/Logo2.png" style="width:300px;height:250px;"/>
                        </div>
                    </div>
                </div>
                <div class="sesgoabajo-unico"></div>
            </section>
        </div>
    </main>
    <script src="JS/Scripts.js"></script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>

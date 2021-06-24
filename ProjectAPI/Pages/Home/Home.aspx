<%@ Page Title="La Molienda | Inicio" Language="vb" AutoEventWireup="false" MasterPageFile="~/Page.Master" CodeBehind="Home.aspx.vb" Inherits="ProjectAPI.Home_" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="banner">
        <img src="Images/Backgroundotro.jpg" class="banner_img"/>
        <div class="contenedor">
            <h2 class="banner__titulo">Los Mejores productos a tu alcance</h2>
            <h3 class="banner__txt">Una gran variedad de productos para tu hogar</h3>
        </div>
    </div>
    <main class="main">
        <div class="contenedor">
            <section class="info">
                <article class="info__columna">
                    <center>
                        <img src="Images/Request.jpg" class="info__img"/>
                        <h2 class="info__titulo">Registra tus productos</h2>
                        <p class="info__txt">Registra tus producto de forma rápida y segura</p> 
                    </center>
                </article>
                <article class="info__columna">
                    <img src="Images/Molienda.PNG" class="info__img"/>
                    <h2 class="info__titulo">Información</h2>
                    <center>
                        <p class="info__txt"><strong>Dirección:</strong>  Cll. 48 Sur #95, Soacha<br/><strong>Telefono:</strong> 4653839<br/><strong>Celular:</strong> 3003955475<br/><strong>Correo:</strong> adflor1@gmail.com</p>
                    </center>
                </article>
                <article class="info__columna">
                    <center>
                        <img src="Images/Logo.png" class="info__img"/>
                        <h2 class="info__titulo">API</h2>
                        <p class="info__txt">El mejor gestor de inventario para tu empresa!</p>
                        <p>
                            <input class="button" type="button" value="Contáctanos" onclick = "location='../Contact/Contact.aspx'"/>
                        </p>
                    </center>
                </article>
            </section>
            <section class="cursos">
                <h2 class="section__titulo">Empresa La Molienda</h2>
                <div class="cursos__columna">
                    <img src="Images/Product1.jpg" class="cursos__img"/>
                    <div class="cursos__descripcion">
                        <h2 class="cursos__titulo">Historia</h2>
                        <div class="cursos__txt">La empresa nace en el año 2001, con un enfoque comercial y un concepto de mercado, fue creada con el fin, de tener ingresos económicos y abastecer otras empresas ya sean grandes o pequeñas, con productos de gran calidad y precio. Por otro lado, fue creada para generar empleo.</div>
                    </div>
                </div>
                <div class="cursos__columna">
                    <img src="Images/Product2.jpg" class="cursos__img"/>
                    <div class="cursos__descripcion">
                        <h2 class="cursos__titulo">Misión</h2>
                        <div class="cursos__txt">Somos la empresa encargada de la comercilización y distribución de productos de alimento que tiene como objetivo complacer al cliente tanto en servico como en calidad.</div>
                    </div>
                </div>
                <div class="cursos__columna">
                    <img src="Images/Product3.png" class="cursos__img"/>
                    <div class="cursos__descripcion">
                        <h2 class="cursos__titulo">Visión</h2>
                        <div class="cursos__txt">Ser una empresa reconocida a nivel nacional, con la mejor calidad y servicio en la comercialización de productos de alimento</div>
                    </div>
                </div>
                <div class="cursos__columna">
                    <img src="Images/Product4.jpg" class="cursos__img"/>
                    <div class="cursos__descripcion">
                        <h2 class="cursos__titulo">Objetivos</h2>
                        <div class="cursos__txt">1. Brindar los mejores productos para las diferentes empresas al mejor precio<br /> 2. Reducir al máximo el desperdicio de alimentos<br /> 3. Fomentar el servicio más hospitalario.<br /> 4. Imponer una tendencia de consumo novedosa, rentable y respetuosa.<br /></div>
                    </div>
                </div>
            </section> 
        </div>
    </main>
    <script src="JS/Scripts.js"></script>
</asp:Content>

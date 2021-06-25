<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="error404Pagina.aspx.vb" Inherits="ProjectAPI.error404Pagina" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Error 404</title>
    <link href="../ErrorPaginas/Estilos/Estilo.css" rel="stylesheet" />
</head>
<body>
    <div>
        <h1>¡UPS! Página no encontrada</h1>
        <img src="../../ErrorPaginas/Imagenes/error404.png" />
        <p>Lo sentimos, al parecer la página en la que esta tratando de acceder no existe</p>
        <p>Regrese al Inicio de Sesión nuevamente</p>
        <input type="button" value="Volver a Iniciar Sesión" onclick="location='../Login.aspx'" />
    </div>
</body>
</html>

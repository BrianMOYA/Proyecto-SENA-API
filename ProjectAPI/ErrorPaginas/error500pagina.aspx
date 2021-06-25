<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="error500pagina.aspx.vb" Inherits="ProjectAPI.error500pagina" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Error 500</title>
    <link href="../ErrorPaginas/Estilos/Estilo.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>¡UPS! Haz hecho algo mal</h1>
            <img src="../../ErrorPaginas/Imagenes/error500.png" />
            <p>Recuerda revisar el manual de usuario para ver la correcta forma de registrar, editar o eliminar los datos del sistema</p>
            <p>Regresa e intenta nuevamente</p>
            <input type="button" value="Volver a Inicio" onclick="location='../../Pages/Home/Home.aspx'" />
        </div>
    </form>
</body>
</html>

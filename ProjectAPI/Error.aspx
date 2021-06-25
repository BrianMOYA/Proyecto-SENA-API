<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Error.aspx.vb" Inherits="ProjectAPI._Error" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Estilos/Estilo.css" rel="stylesheet" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Error 404</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>   
                <asp:Image ID="imgError" runat="server" ImageUrl="~/Images/error-404.svg" ImageAlign="AbsMiddle" alt="Error 404"/> 
            </div>
            <div id="Bold">
                 !UH¡
            </div>
            <div id="txterror" style="word-wrap:break-word;">
                <h3>Lo sentimos, al parecer esta pagina no existe, regresa a la pagina anterior</h3>
            </div>
            <div>
                <asp:Image ID="x_circle" runat="server" ImageUrl="~/Images/cancelar.svg" />
            </div>
        </div>
    </form>
</body>
</html>

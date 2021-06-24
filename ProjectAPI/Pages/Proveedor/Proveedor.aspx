<%@ Page Title="La Molienda | Proveedores" Language="vb" AutoEventWireup="false" MasterPageFile="~/Page.Master" CodeBehind="Proveedor.aspx.vb" Inherits="ProjectAPI.Proveedor1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Estilos/Estilo.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="banner">
        <img src="Images/Background3.jpg" class="banner_img" />
        <div class="contenedor">
            <h2 class="banner__titulo">Bienvenido, aquí podrá revisar sus proveedores</h2>
            <p class="banner__txt">De forma rapida y sencilla</p>
        </div>
    </div>
    <main class="main">
        <div class="posts">
            <center>
                <div class="post" data-category="Proveedor">
                    <img src="Images/Molienda.PNG" style="width: 20%;" />
                    <div>
                        <div>
                            &nbsp;  
                        </div>

                        <div>
                            <asp:Label ID="Label3" runat="server" Text="Empresa del Proveedor:"></asp:Label>
                            &nbsp;<asp:TextBox ID="txtempresaProveedor" runat="server" CssClass="input"></asp:TextBox>
                        </div>
                        <br />
                        <div>
                            <asp:Label ID="Label4" runat="server" Text="Nombre del Proveedor:"></asp:Label>
                            &nbsp;<asp:TextBox ID="txtnombreProveedor" runat="server" CssClass="input"></asp:TextBox>
                        </div>
                        <br />
                        <div>
                            <asp:Button class="btn" ID="btnRegistrarProveedor" runat="server" Text="Registrar Proveedor" />
                        </div>

                        <div>
                            <asp:Label ID="lblResultado" runat="server"></asp:Label>
                        </div>
                        <br />
                    </div>
                    <div>
                        <asp:GridView ID="gvProveedor" runat="server" AutoGenerateColumns="False" DataKeyNames="idProveedor" DataSourceID="SqlDataSource1Proveedor" HorizontalAlign="Center" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" AllowPaging="True" Width="90%">
                            <AlternatingRowStyle BackColor="#FFFFFF" />
                            <Columns>
                                <asp:BoundField DataField="idProveedor" HeaderText="ID Proveedor" InsertVisible="False" ReadOnly="True" SortExpression="idProveedor" />
                                <asp:BoundField DataField="empresaProveedor" HeaderText="Empresa Proveedor" SortExpression="empresaProveedor" />
                                <asp:BoundField DataField="nombreProveedor" HeaderText="Nombre Proveedor" SortExpression="nombreProveedor" />
                                <asp:BoundField DataField="idUsuario" HeaderText="ID Usuario" SortExpression="idUsuario" />
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Image" CancelImageUrl="~/Pages/ImgIconosCRUD/Cancelar1.png" DeleteImageUrl="~/Pages/ImgIconosCRUD/Delete1.png" EditImageUrl="~/Pages/ImgIconosCRUD/Editar1.png" UpdateImageUrl="~/Pages/ImgIconosCRUD/Actualizar1.png"/>
                            </Columns>
                            <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            <FooterStyle BackColor="#CCCC99" />
                            <HeaderStyle BackColor="#4472C4" ForeColor="White" Height="50px" />
                            <PagerStyle BackColor="#4472C4" ForeColor="#FFFFFF" HorizontalAlign="Center" />
                            <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#B4C6E7" Height="50px"/>
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                            <SortedAscendingHeaderStyle BackColor="#848384" />
                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                            <SortedDescendingHeaderStyle BackColor="#575357" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1Proveedor" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:API %>" DeleteCommand="DELETE FROM [Proveedor] WHERE [idProveedor] = @original_idProveedor AND [empresaProveedor] = @original_empresaProveedor AND [nombreProveedor] = @original_nombreProveedor AND [idUsuario] = @original_idUsuario" InsertCommand="INSERT INTO [Proveedor] ([empresaProveedor], [nombreProveedor], [idUsuario]) VALUES (@empresaProveedor, @nombreProveedor, @idUsuario)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Proveedor]" UpdateCommand="UPDATE [Proveedor] SET [empresaProveedor] = @empresaProveedor, [nombreProveedor] = @nombreProveedor, [idUsuario] = @idUsuario WHERE [idProveedor] = @original_idProveedor AND [empresaProveedor] = @original_empresaProveedor AND [nombreProveedor] = @original_nombreProveedor AND [idUsuario] = @original_idUsuario">
                            <DeleteParameters>
                                <asp:Parameter Name="original_idProveedor" Type="Int32" />
                                <asp:Parameter Name="original_empresaProveedor" Type="String" />
                                <asp:Parameter Name="original_nombreProveedor" Type="String" />
                                <asp:Parameter Name="original_idUsuario" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="empresaProveedor" Type="String" />
                                <asp:Parameter Name="nombreProveedor" Type="String" />
                                <asp:Parameter Name="idUsuario" Type="Int32" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="empresaProveedor" Type="String" />
                                <asp:Parameter Name="nombreProveedor" Type="String" />
                                <asp:Parameter Name="idUsuario" Type="Int32" />
                                <asp:Parameter Name="original_idProveedor" Type="Int32" />
                                <asp:Parameter Name="original_empresaProveedor" Type="String" />
                                <asp:Parameter Name="original_nombreProveedor" Type="String" />
                                <asp:Parameter Name="original_idUsuario" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
            </center>
        </div>
    </main>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>

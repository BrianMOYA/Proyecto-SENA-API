<%@ Page Title="La Molienda | Productos" Language="vb" AutoEventWireup="false" MasterPageFile="~/Page.Master" CodeBehind="Productos.aspx.vb" Inherits="ProjectAPI.Productos1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Estilos/Estilo.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="banner">
        <img src="Images/Background2.jpg" class="banner_img" />
        <div class="contenedor">
            <h2 class="banner__titulo">Bienvenido, aquí podrá revisar sus Productos</h2>
            <p class="banner__txt">Valide sus procutos de forma fácil y eficaz</p>
        </div>
    </div>
    <main class="main">
        <div class="posts">
            <center>
                <div class="post" data-category="Productos">
                    <img src="Images/Molienda.PNG" style="width: 20%;" />
                    <div>
                        <div>
                            <asp:Label ID="lblNombreProducto" runat="server" Text="Nombre del Producto:"></asp:Label>
                            &nbsp;<asp:TextBox ID="txtNombreProducto" runat="server" CssClass="input"></asp:TextBox>
                        </div>
                        <br />
                        <div>
                            <asp:Label ID="lblPrecioProducto" runat="server" Text="Precio del Producto:"></asp:Label>
                            &nbsp;<asp:TextBox ID="txtPrecioProducto" runat="server" CssClass="input"></asp:TextBox>
                        </div>
                        <br />
                        <div>
                            <asp:Label ID="Label1" runat="server" Text="ID Proveedor: "></asp:Label>
                            &nbsp;<asp:DropDownList ID="lstProveedor" runat="server" DataSourceID="ProductosConecctionString" DataTextField="nombreProveedor" DataValueField="idProveedor" CssClass="input">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="ProductosConecctionString" runat="server" ConnectionString="<%$ ConnectionStrings:API %>" SelectCommand="SELECT [idProveedor], [nombreProveedor] FROM [Proveedor]"></asp:SqlDataSource>
                        </div>
                        <br />
                        <div>
                            <asp:Label ID="Label2" runat="server" Text="ID Cliente: "></asp:Label>
                            &nbsp;<asp:DropDownList ID="lstCliente" runat="server" DataSourceID="ClientesDataSource" DataTextField="nombreCliente" DataValueField="idCliente" CssClass="input">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="ClientesDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:API %>" SelectCommand="SELECT [idCliente], [nombreCliente] FROM [Cliente]"></asp:SqlDataSource>
                        </div>
                        <div>
                            &nbsp;
                        </div>
                        <div>
                            <asp:Button class="btn" ID="btnRegistrarProducto" runat="server" Text="Registrar Producto" />
                        </div>
                        <div>
                            <asp:Label ID="lblResultado" runat="server"></asp:Label>
                        </div>
                    </div>
                    <br />
                    <div>
                        <asp:GridView ID="gvProducto" runat="server" AutoGenerateColumns="False" DataKeyNames="idProducto" DataSourceID="SqlDataSourceProductos" HorizontalAlign="Center" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" AllowPaging="True" Width="90%">
                            <AlternatingRowStyle BackColor="#FFFFFF" />
                            <Columns>
                                <asp:BoundField DataField="idProducto" HeaderText="ID Producto" ReadOnly="True" SortExpression="idProducto" InsertVisible="False" />
                                <asp:BoundField DataField="nombreProducto" HeaderText="Nombre Producto" SortExpression="nombreProducto" />
                                <asp:BoundField DataField="precioProducto" HeaderText="Precio Producto" SortExpression="precioProducto" />
                                <asp:BoundField DataField="idProveedor" HeaderText="ID Proveedor" SortExpression="idProveedor" />
                                <asp:BoundField DataField="idCliente" HeaderText="ID Cliente" SortExpression="idCliente" />
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Image" CancelImageUrl="~/Pages/ImgIconosCRUD/Cancelar1.png" DeleteImageUrl="~/Pages/ImgIconosCRUD/Delete1.png" EditImageUrl="~/Pages/ImgIconosCRUD/Editar1.png" UpdateImageUrl="~/Pages/ImgIconosCRUD/Actualizar1.png"/>
                            </Columns>
                            <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            <FooterStyle BackColor="#CCCC99" />
                            <HeaderStyle BackColor="#4472C4" ForeColor="#FFFFFF" Height="50px" />
                            <PagerStyle BackColor="#4472C4" ForeColor="#FFFFFF" HorizontalAlign="Center" />
                            <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#B4C6E7" Height="50px" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                            <SortedAscendingHeaderStyle BackColor="#848384" />
                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                            <SortedDescendingHeaderStyle BackColor="#575357" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSourceProductos" runat="server" ConnectionString="<%$ ConnectionStrings:API %>" DeleteCommand="DELETE FROM [Producto] WHERE [idProducto] = @original_idProducto AND [nombreProducto] = @original_nombreProducto AND [precioProducto] = @original_precioProducto AND [idProveedor] = @original_idProveedor AND [idCliente] = @original_idCliente" InsertCommand="INSERT INTO [Producto] ([nombreProducto], [precioProducto], [idProveedor], [idCliente]) VALUES (@nombreProducto, @precioProducto, @idProveedor, @idCliente)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Producto]" UpdateCommand="UPDATE [Producto] SET [nombreProducto] = @nombreProducto, [precioProducto] = @precioProducto, [idProveedor] = @idProveedor, [idCliente] = @idCliente WHERE [idProducto] = @original_idProducto AND [nombreProducto] = @original_nombreProducto AND [precioProducto] = @original_precioProducto AND [idProveedor] = @original_idProveedor AND [idCliente] = @original_idCliente" ConflictDetection="CompareAllValues">
                            <DeleteParameters>
                                <asp:Parameter Name="original_idProducto" Type="Int32" />
                                <asp:Parameter Name="original_nombreProducto" Type="String" />
                                <asp:Parameter Name="original_precioProducto" Type="String" />
                                <asp:Parameter Name="original_idProveedor" Type="Int32" />
                                <asp:Parameter Name="original_idCliente" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="nombreProducto" Type="String" />
                                <asp:Parameter Name="precioProducto" Type="String" />
                                <asp:Parameter Name="idProveedor" Type="Int32" />
                                <asp:Parameter Name="idCliente" Type="Int32" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="nombreProducto" Type="String" />
                                <asp:Parameter Name="precioProducto" Type="String" />
                                <asp:Parameter Name="idProveedor" Type="Int32" />
                                <asp:Parameter Name="idCliente" Type="Int32" />
                                <asp:Parameter Name="original_idProducto" Type="Int32" />
                                <asp:Parameter Name="original_nombreProducto" Type="String" />
                                <asp:Parameter Name="original_precioProducto" Type="String" />
                                <asp:Parameter Name="original_idProveedor" Type="Int32" />
                                <asp:Parameter Name="original_idCliente" Type="Int32" />
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

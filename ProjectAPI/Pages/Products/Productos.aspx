<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Page.Master" CodeBehind="Productos.aspx.vb" Inherits="ProjectAPI.Productos1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>La Molienda | Productos</title>
    
    <link href="../Inventaries/Styles/LaMolienda.css" rel="stylesheet" />
    <link href="../Inventaries/Styles/Styles.css" rel="stylesheet" />
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="banner">
        <img src="Images/Background.jpg" class="banner_img"/>
        <div class="contenedor">
            <h2 class="banner__titulo">Bienvenido, aquí podrá revisar sus Productos</h2>
            <p class="banner__txt">Valide sus procutos de forma fácil y eficaz</p>
        </div>
    </div>
    
    <main class="main">
      
    <div class="posts">
        <center>
           <div class="post" data-category="Productos">
                            
                                <img src="Images/Molienda.PNG" style="width:20%;"/>
                                <div>
                                    <div>
                                        <asp:Label ID="lblNombreProducto" runat="server" Text="Nombre del Producto:"></asp:Label>
                                        &nbsp;<asp:TextBox ID="txtNombreProducto" runat="server" required></asp:TextBox>
                                    </div>
                                    
                                    <div>
                                        <asp:Label ID="lblPrecioProducto" runat="server" Text="Precio del Producto:"></asp:Label>
                                        &nbsp;<asp:TextBox ID="txtPrecioProducto" runat="server" required></asp:TextBox>
                                    </div>
                                    <div>
                                        <asp:Label ID="Label1" runat="server" Text="idProveedor: "></asp:Label>
                                        &nbsp;<asp:DropDownList ID="lstProveedor" runat="server" DataSourceID="ProductosConecctionString" DataTextField="nombreProveedor" DataValueField="idProveedor">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="ProductosConecctionString" runat="server" ConnectionString="<%$ ConnectionStrings:API %>" SelectCommand="SELECT [idProveedor], [nombreProveedor] FROM [Proveedor]"></asp:SqlDataSource>
                                    </div>
                                    <div>
                                        <asp:Label ID="Label2" runat="server" Text="idCliente: "></asp:Label>
                                        &nbsp;<asp:DropDownList ID="lstCliente" runat="server" DataSourceID="ClientesDataSource" DataTextField="nombreCliente" DataValueField="idCliente">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="ClientesDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:API %>" SelectCommand="SELECT [idCliente], [nombreCliente] FROM [Cliente]"></asp:SqlDataSource>
                                    </div>
                                    
                                    <div>
                                        &nbsp;</div>
                                    
                                    <div>
                                        <asp:Button ID="btnRegistrarProducto" runat="server" Text="Registrar Producto" />
                                    </div>

                                    <div>
                                        <asp:Label ID="lblResultado" runat="server"></asp:Label>
                                    </div>
                                </div>

                                <br />

                                <div>
                                    <asp:GridView ID="gvProducto" runat="server" AutoGenerateColumns="False" DataKeyNames="idProducto" DataSourceID="SqlDataSourceProductos" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
                                        <Columns>
                                            <asp:BoundField DataField="idProducto" HeaderText="idProducto" ReadOnly="True" SortExpression="idProducto" InsertVisible="False" />
                                            <asp:BoundField DataField="nombreProducto" HeaderText="nombreProducto" SortExpression="nombreProducto" />
                                            <asp:BoundField DataField="precioProducto" HeaderText="precioProducto" SortExpression="precioProducto" />
                                            <asp:BoundField DataField="idProveedor" HeaderText="idProveedor" SortExpression="idProveedor" />
                                            <asp:BoundField DataField="idCliente" HeaderText="idCliente" SortExpression="idCliente" />
                                            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
                                        </Columns>
                                        <FooterStyle BackColor="White" ForeColor="#333333" />
                                        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="White" ForeColor="#333333" />
                                        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                        <SortedAscendingHeaderStyle BackColor="#487575" />
                                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                        <SortedDescendingHeaderStyle BackColor="#275353" />
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
                            </center>
                        </div>
        
        </div>
        </main>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>

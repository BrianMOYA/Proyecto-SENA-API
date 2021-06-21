<%@ Page Title="La Molienda | Inventarios" Language="vb" AutoEventWireup="false" MasterPageFile="~/Page.Master" CodeBehind="Inventaries.aspx.vb" Inherits="ProjectAPI.Inventaries_" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/LaMolienda.css" rel="stylesheet" />
    <link href="Styles/Styles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <span class="icon-menu" id="btn-menu"></span>   
    <div class="banner">
        <img src="Images/Background.jpg"  class="banner_img"/>
        <div class="contenedor">
            <h2 class="banner__titulo">Gestiona y revisa todos tus Inventarios</h2>
            <p class="banner__txt">Nosotros te ayudaremos a optimizar tu tiempo</p>
        </div>
    </div>
    <main class="main">
        <div class="posts">
            <div class="post" data-category="Inventario">
                <center>
                    <img src="Images/Molienda.PNG" style="width:20%;"/>
                    <div>
                        <div>
                            <asp:Label ID="lblEntrada" runat="server" Text="Entrada:"></asp:Label>
                            &nbsp;<asp:TextBox ID="txtEntrada" runat="server" required></asp:TextBox>
                        </div>
                        <div>
                            <asp:Label ID="lblSalida" runat="server" Text="Salida:"></asp:Label>
                            &nbsp;<asp:TextBox ID="txtSalida" runat="server" required></asp:TextBox>
                        </div>
                        <div>
                            <asp:Label ID="lblVenta" runat="server" Text="Venta:"></asp:Label>
                            &nbsp;<asp:TextBox ID="txtVenta" runat="server" required></asp:TextBox>
                        </div>
                        <div>
                            <asp:Label ID="lblIngreso" runat="server" Text="Ingreso:"></asp:Label>
                            &nbsp;<asp:TextBox ID="txtIngreso" runat="server" required ReadOnly="True"></asp:TextBox>
                        </div>
                        <div>
                            <asp:Label ID="lblTotalBodega" runat="server" Text="Total en bodega:"></asp:Label>
                            &nbsp;<asp:TextBox ID="txtTotalBodega" runat="server" required ReadOnly="True"></asp:TextBox>
                        </div>
                        <div>
                            <asp:Label ID="Label1" runat="server" Text="Producto: "></asp:Label>
                            &nbsp;<asp:DropDownList ID="lstProducto" runat="server" DataSourceID="ApidataSource" DataTextField="nombreProducto" DataValueField="idProducto">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="ApidataSource" runat="server" ConnectionString="<%$ ConnectionStrings:API %>" SelectCommand="SELECT [idProducto], [nombreProducto] FROM [Producto]"></asp:SqlDataSource>
                        </div>
                        <div>
                            <asp:Button ID="btnCalcular" runat="server" Text="Calcular" />&nbsp;
                            <asp:Button ID="btnRegistrarInventario" runat="server" Text="Registrar Inventario" />
                        </div>
                        <div>
                            <asp:Label ID="lblResultado1" runat="server"></asp:Label>
                        </div>
                    </div>
                    <br />
                    <div>
                        <asp:GridView ID="gvInventario" runat="server" AutoGenerateColumns="False" DataKeyNames="idInventario" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
                            <Columns>
                                <asp:BoundField DataField="idInventario" HeaderText="idInventario" InsertVisible="False" ReadOnly="True" SortExpression="idInventario" />
                                <asp:BoundField DataField="entrada" HeaderText="entrada" SortExpression="entrada" />
                                <asp:BoundField DataField="salida" HeaderText="salida" SortExpression="salida" />
                                <asp:BoundField DataField="venta" HeaderText="venta" SortExpression="venta" />
                                <asp:BoundField DataField="ingreso" HeaderText="ingreso" SortExpression="ingreso" />
                                <asp:BoundField DataField="totalBodega" HeaderText="totalBodega" SortExpression="totalBodega" />
                                <asp:BoundField DataField="idProducto" HeaderText="idProducto" SortExpression="idProducto" />
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
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:API %>" DeleteCommand="DELETE FROM [Inventario] WHERE [idInventario] = @original_idInventario AND [entrada] = @original_entrada AND [salida] = @original_salida AND [venta] = @original_venta AND [ingreso] = @original_ingreso AND [totalBodega] = @original_totalBodega AND [idProducto] = @original_idProducto" InsertCommand="INSERT INTO [Inventario] ([entrada], [salida], [venta], [ingreso], [totalBodega], [idProducto]) VALUES (@entrada, @salida, @venta, @ingreso, @totalBodega, @idProducto)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Inventario]" UpdateCommand="UPDATE [Inventario] SET [entrada] = @entrada, [salida] = @salida, [venta] = @venta, [ingreso] = @ingreso, [totalBodega] = @totalBodega, [idProducto] = @idProducto WHERE [idInventario] = @original_idInventario AND [entrada] = @original_entrada AND [salida] = @original_salida AND [venta] = @original_venta AND [ingreso] = @original_ingreso AND [totalBodega] = @original_totalBodega AND [idProducto] = @original_idProducto">
                            <DeleteParameters>
                                <asp:Parameter Name="original_idInventario" Type="Int32" />
                                <asp:Parameter Name="original_entrada" Type="String" />
                                <asp:Parameter Name="original_salida" Type="String" />
                                <asp:Parameter Name="original_venta" Type="String" />
                                <asp:Parameter Name="original_ingreso" Type="String" />
                                <asp:Parameter Name="original_totalBodega" Type="String" />
                                <asp:Parameter Name="original_idProducto" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="entrada" Type="String" />
                                <asp:Parameter Name="salida" Type="String" />
                                <asp:Parameter Name="venta" Type="String" />
                                <asp:Parameter Name="ingreso" Type="String" />
                                <asp:Parameter Name="totalBodega" Type="String" />
                                <asp:Parameter Name="idProducto" Type="Int32" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="entrada" Type="String" />
                                <asp:Parameter Name="salida" Type="String" />
                                <asp:Parameter Name="venta" Type="String" />
                                <asp:Parameter Name="ingreso" Type="String" />
                                <asp:Parameter Name="totalBodega" Type="String" />
                                <asp:Parameter Name="idProducto" Type="Int32" />
                                <asp:Parameter Name="original_idInventario" Type="Int32" />
                                <asp:Parameter Name="original_entrada" Type="String" />
                                <asp:Parameter Name="original_salida" Type="String" />
                                <asp:Parameter Name="original_venta" Type="String" />
                                <asp:Parameter Name="original_ingreso" Type="String" />
                                <asp:Parameter Name="original_totalBodega" Type="String" />
                                <asp:Parameter Name="original_idProducto" Type="Int32" />
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

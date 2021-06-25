<%@ Page Title="La Molienda | Clientes" Language="vb" AutoEventWireup="false" MasterPageFile="~/Page.Master" CodeBehind="Cliente.aspx.vb" Inherits="ProjectAPI.Cliente1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Estilos/Estilo.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="banner">
        <img src="Images/imgBannerClientes2.jpg" class="banner_img" />
        <div class="contenedor">
            <h2 class="banner__titulo">Clientes</h2>
            <p class="banner__txt">Actualiza los datos de tus clientes</p>
        </div>
    </div>
    <main class="main">
        <div class="posts">
            <div class="post" data-category="Clientes">
                <center>
                    <img class="MoliendaImg" src="Images/Molienda.PNG" style="width: 20%;" dir="ltr" />
                    <div>
                        <asp:Label ID="lblNombreDelCliente" runat="server" Text="Nombre del cliente:"></asp:Label>
                        <asp:TextBox ID="txtNombredelCliente" runat="server" CssClass="input"></asp:TextBox>
                    </div>
                    <br />
                    <div>
                        <asp:Label ID="lblApellidoCliente" runat="server" Text="Apellido del cliente:"></asp:Label>
                        &nbsp;<asp:TextBox ID="txtApellidoCliente" runat="server" CssClass="input"></asp:TextBox>
                    </div>
                    <br />
                    <div>
                        <asp:Label ID="lblCorreoCliente" runat="server" Text="Correo del cliente:"></asp:Label>
                        &nbsp;<asp:TextBox ID="txtEmailCliente" runat="server" CssClass="input" TextMode="Email"></asp:TextBox>
                    </div>
                    <br />
                    <div>
                        <asp:Label ID="lblCelularCliente" runat="server" Text="Celular del cliente:"></asp:Label>
                        &nbsp;<asp:TextBox ID="txtCelularCliente" runat="server" CssClass="input" TextMode="Number" MaxLength="10" oninput="if(this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);"></asp:TextBox>
                    </div>
                    <br />
                    <div>
                        <asp:Label ID="lblNegocioCliente" runat="server" Text="Negocio del cliente:"></asp:Label>
                        &nbsp;<asp:TextBox ID="txtnegocioCliente" runat="server" CssClass="input"></asp:TextBox>
                    </div>
                    <br />
                    <div>
                        <asp:Label ID="lblDireccionNegocioCliente" runat="server" Text="Dirección Negocio del cliente:"></asp:Label>
                        &nbsp;<asp:TextBox ID="txtdireccionNegocioCliente" runat="server" CssClass="input"></asp:TextBox>
                    </div>
                    <br />
                    <div>
                        <asp:Button class="btn" ID="btnRegistrarCliente" runat="server" Text="Registrar Cliente" />
                    </div>
                    <div>
                        <asp:Label ID="lblResultado" runat="server"></asp:Label>
                    </div>
                    <br />
                    <div>
                        <asp:GridView ID="gvCliente" runat="server" AutoGenerateColumns="False" DataKeyNames="idCliente" DataSourceID="SqlDataSourceClientes" HorizontalAlign="Center" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" AllowPaging="True" Width="90%">
                            <AlternatingRowStyle BackColor="#FFFFFF" />
                            <Columns>
                                <asp:BoundField DataField="idCliente" HeaderText="idCliente" InsertVisible="False" ReadOnly="True" SortExpression="idCliente" />
                                <asp:BoundField DataField="nombreCliente" HeaderText="nombreCliente" SortExpression="nombreCliente" />
                                <asp:BoundField DataField="apellidoCliente" HeaderText="apellidoCliente" SortExpression="apellidoCliente" />
                                <asp:BoundField DataField="emailCliente" HeaderText="emailCliente" SortExpression="emailCliente" />
                                <asp:BoundField DataField="celularCliente" HeaderText="celularCliente" SortExpression="celularCliente" />
                                <asp:BoundField DataField="negocioCliente" HeaderText="negocioCliente" SortExpression="negocioCliente" />
                                <asp:BoundField DataField="direccionNegocioCliente" HeaderText="direccionNegocioCliente" SortExpression="direccionNegocioCliente" />
                                <asp:CommandField ButtonType="Image" CancelImageUrl="~/Pages/ImgIconosCRUD/Cancelar1.png" DeleteImageUrl="~/Pages/ImgIconosCRUD/Delete1.png" EditImageUrl="~/Pages/ImgIconosCRUD/Editar1.png" ShowDeleteButton="True" ShowEditButton="True" UpdateImageUrl="~/Pages/ImgIconosCRUD/Actualizar1.png" />
                            </Columns>
                            <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            <FooterStyle BackColor="#CCCC99" />
                            <HeaderStyle BackColor="#4472C4" ForeColor="White" Height="50px" />
                            <PagerStyle BackColor="#4472C4" ForeColor="#FFFFFF" HorizontalAlign="Center" />
                            <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#B4C6E7" Height="50px" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                            <SortedAscendingHeaderStyle BackColor="#848384" />
                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                            <SortedDescendingHeaderStyle BackColor="#575357" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSourceClientes" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:APICliente %>" DeleteCommand="DELETE FROM [Cliente] WHERE [idCliente] = @original_idCliente AND [nombreCliente] = @original_nombreCliente AND [apellidoCliente] = @original_apellidoCliente AND [emailCliente] = @original_emailCliente AND [celularCliente] = @original_celularCliente AND [negocioCliente] = @original_negocioCliente AND [direccionNegocioCliente] = @original_direccionNegocioCliente" InsertCommand="INSERT INTO [Cliente] ([nombreCliente], [apellidoCliente], [emailCliente], [celularCliente], [negocioCliente], [direccionNegocioCliente]) VALUES (@nombreCliente, @apellidoCliente, @emailCliente, @celularCliente, @negocioCliente, @direccionNegocioCliente)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Cliente]" UpdateCommand="UPDATE [Cliente] SET [nombreCliente] = @nombreCliente, [apellidoCliente] = @apellidoCliente, [emailCliente] = @emailCliente, [celularCliente] = @celularCliente, [negocioCliente] = @negocioCliente, [direccionNegocioCliente] = @direccionNegocioCliente WHERE [idCliente] = @original_idCliente AND [nombreCliente] = @original_nombreCliente AND [apellidoCliente] = @original_apellidoCliente AND [emailCliente] = @original_emailCliente AND [celularCliente] = @original_celularCliente AND [negocioCliente] = @original_negocioCliente AND [direccionNegocioCliente] = @original_direccionNegocioCliente">
                            <DeleteParameters>
                                <asp:Parameter Name="original_idCliente" Type="Int32" />
                                <asp:Parameter Name="original_nombreCliente" Type="String" />
                                <asp:Parameter Name="original_apellidoCliente" Type="String" />
                                <asp:Parameter Name="original_emailCliente" Type="String" />
                                <asp:Parameter Name="original_celularCliente" Type="String" />
                                <asp:Parameter Name="original_negocioCliente" Type="String" />
                                <asp:Parameter Name="original_direccionNegocioCliente" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="nombreCliente" Type="String" />
                                <asp:Parameter Name="apellidoCliente" Type="String" />
                                <asp:Parameter Name="emailCliente" Type="String" />
                                <asp:Parameter Name="celularCliente" Type="String" />
                                <asp:Parameter Name="negocioCliente" Type="String" />
                                <asp:Parameter Name="direccionNegocioCliente" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="nombreCliente" Type="String" />
                                <asp:Parameter Name="apellidoCliente" Type="String" />
                                <asp:Parameter Name="emailCliente" Type="String" />
                                <asp:Parameter Name="celularCliente" Type="String" />
                                <asp:Parameter Name="negocioCliente" Type="String" />
                                <asp:Parameter Name="direccionNegocioCliente" Type="String" />
                                <asp:Parameter Name="original_idCliente" Type="Int32" />
                                <asp:Parameter Name="original_nombreCliente" Type="String" />
                                <asp:Parameter Name="original_apellidoCliente" Type="String" />
                                <asp:Parameter Name="original_emailCliente" Type="String" />
                                <asp:Parameter Name="original_celularCliente" Type="String" />
                                <asp:Parameter Name="original_negocioCliente" Type="String" />
                                <asp:Parameter Name="original_direccionNegocioCliente" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>
                </center>
                <br />
            </div>
        </div>
    </main>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>

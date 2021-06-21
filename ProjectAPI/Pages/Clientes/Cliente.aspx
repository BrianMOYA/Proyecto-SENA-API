<%@ Page Title="La Molienda | Clientes" Language="vb" AutoEventWireup="false" MasterPageFile="~/Page.Master" CodeBehind="Cliente.aspx.vb" Inherits="ProjectAPI.Cliente1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Inventaries/Styles/LaMolienda.css" rel="stylesheet" />
    <link href="../Inventaries/Styles/Styles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="banner">
     <img src="Images/Background.jpg" class="banner_img"/>
      <div class="contenedor">
        <h2 class="banner__titulo">Clientes</h2>
        <p class="banner__txt">Actualiza los datos de tus clientes</p>
      </div>
    </div>

  
        <main class="main">
            <div>
            <div class="contenedor">
                <div class="posts">
                    <br />
                    <div class="post" data-category="Clientes">
                            <center class="Cajita">
                                <img class="MoliendaImg"src="Images/Molienda.PNG" style="width:20%;" dir="ltr"/>
                                <div>
                                   
                                    <asp:Label ID="lblNombreDelCliente" runat="server" Text="Nombre del cliente:"></asp:Label>
                                    <asp:TextBox ID="txtNombredelCliente" runat="server" required></asp:TextBox>
                                   
                                </div>
                                <div>
                                    <asp:Label ID="lblApellidoCliente" runat="server" Text="Apellido del cliente:"></asp:Label>
                                    &nbsp;<asp:TextBox ID="txtApellidoCliente" runat="server" required></asp:TextBox>
                                </div>
                                <div>
                                    <asp:Label ID="lblDireccionCliente" runat="server" Text="Correo del cliente:"></asp:Label>
                                    &nbsp;<asp:TextBox ID="txtEmailCliente" runat="server" required></asp:TextBox>
                                </div>
                                <div>
                                    <asp:Label ID="lblCelularCliente" runat="server" Text="Celular del cliente:"></asp:Label>
                                    &nbsp;<asp:TextBox ID="txtCelularCliente" runat="server" TextMode="Number" required></asp:TextBox>
                                </div>
                                <div>
                                    <asp:Button ID="btnRegistrarCliente" runat="server" Text="Registrar Cliente" />
                                </div>
                                <div>
                                    <asp:Label ID="lblResultado2" runat="server"></asp:Label>
                                </div>

                                <div>
                                    <asp:GridView ID="gvCliente" runat="server" AutoGenerateColumns="False" DataKeyNames="idCliente" DataSourceID="SqlDataSourceClientes" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
                                        <Columns>
                                            <asp:BoundField DataField="idCliente" HeaderText="idCliente" InsertVisible="False" ReadOnly="True" SortExpression="idCliente" />
                                            <asp:BoundField DataField="nombreCliente" HeaderText="nombreCliente" SortExpression="nombreCliente" />
                                            <asp:BoundField DataField="apellidoCliente" HeaderText="apellidoCliente" SortExpression="apellidoCliente" />
                                            <asp:BoundField DataField="emailCliente" HeaderText="emailCliente" SortExpression="emailCliente" />
                                            <asp:BoundField DataField="celularCliente" HeaderText="celularCliente" SortExpression="celularCliente" />
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
                                    <asp:SqlDataSource ID="SqlDataSourceClientes" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:API %>" DeleteCommand="DELETE FROM [Cliente] WHERE [idCliente] = @original_idCliente AND [nombreCliente] = @original_nombreCliente AND [apellidoCliente] = @original_apellidoCliente AND [emailCliente] = @original_emailCliente AND [celularCliente] = @original_celularCliente" InsertCommand="INSERT INTO [Cliente] ([nombreCliente], [apellidoCliente], [emailCliente], [celularCliente]) VALUES (@nombreCliente, @apellidoCliente, @emailCliente, @celularCliente)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Cliente]" UpdateCommand="UPDATE [Cliente] SET [nombreCliente] = @nombreCliente, [apellidoCliente] = @apellidoCliente, [emailCliente] = @emailCliente, [celularCliente] = @celularCliente WHERE [idCliente] = @original_idCliente AND [nombreCliente] = @original_nombreCliente AND [apellidoCliente] = @original_apellidoCliente AND [emailCliente] = @original_emailCliente AND [celularCliente] = @original_celularCliente">
                                        <DeleteParameters>
                                            <asp:Parameter Name="original_idCliente" Type="Int32" />
                                            <asp:Parameter Name="original_nombreCliente" Type="String" />
                                            <asp:Parameter Name="original_apellidoCliente" Type="String" />
                                            <asp:Parameter Name="original_emailCliente" Type="String" />
                                            <asp:Parameter Name="original_celularCliente" Type="String" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="nombreCliente" Type="String" />
                                            <asp:Parameter Name="apellidoCliente" Type="String" />
                                            <asp:Parameter Name="emailCliente" Type="String" />
                                            <asp:Parameter Name="celularCliente" Type="String" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="nombreCliente" Type="String" />
                                            <asp:Parameter Name="apellidoCliente" Type="String" />
                                            <asp:Parameter Name="emailCliente" Type="String" />
                                            <asp:Parameter Name="celularCliente" Type="String" />
                                            <asp:Parameter Name="original_idCliente" Type="Int32" />
                                            <asp:Parameter Name="original_nombreCliente" Type="String" />
                                            <asp:Parameter Name="original_apellidoCliente" Type="String" />
                                            <asp:Parameter Name="original_emailCliente" Type="String" />
                                            <asp:Parameter Name="original_celularCliente" Type="String" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                 
                                </div>
                           </center>
                                <br />

                              
                                </div>
                            
                        </div>
                    <br />
                </div>
                <br />

            </div>
            </div>
        </main>
   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>

<%@ Page Title="La Molienda | Proveedor" Language="vb" AutoEventWireup="false" MasterPageFile="~/Page.Master" CodeBehind="Proveedor.aspx.vb" Inherits="ProjectAPI.Proveedor1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Inventaries/Styles/LaMolienda.css" rel="stylesheet" />
    <link href="../Inventaries/Styles/Styles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="banner">
        <img src="Images/Background.jpg" class="banner_img"/>
        <div class="contenedor">
            <h2 class="banner__titulo">Bienvenido, aquí podrá revisar sus proveedores</h2>
            <p class="banner__txt">De forma rapida y sencilla</p>
        </div>
    </div>
    <main class="main">
        <div class="posts">
            <center>
                <div class="post" data-category="Proveedor">
                    <img src="Images/Molienda.PNG" style="width:20%;"/>        
                    <div>
                        <div>
                            &nbsp;  
                        </div>
                                            
                        <div>
                            <asp:Label ID="Label3" runat="server" Text="Marca del Proveedor:"></asp:Label>
                            &nbsp;<asp:TextBox ID="txtmarcaProveedor" runat="server" ></asp:TextBox>
                        </div>
                                            
                        <div>
                            <asp:Label ID="Label4" runat="server" Text="Nombre del Proveedor:"></asp:Label>
                            &nbsp;<asp:TextBox ID="txtnombreProveedor" runat="server" ></asp:TextBox>
                        </div>
                                            
                        <div>
                            <asp:Button ID="btnRegistrarProveedor" runat="server" Text="Registrar Proveedor" />
                        </div>

                        <div>
                            <asp:Label ID="lblResultado4" runat="server"></asp:Label>
                        </div>
                    </div>
                    <div>
                        <asp:GridView ID="gvProveedor" runat="server" AutoGenerateColumns="False" DataKeyNames="idProveedor" DataSourceID="SqlDataSource1Proveedor" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
                            <Columns>
                                <asp:BoundField DataField="idProveedor" HeaderText="idProveedor" InsertVisible="False" ReadOnly="True" SortExpression="idProveedor" />
                                <asp:BoundField DataField="marcaProveedor" HeaderText="marcaProveedor" SortExpression="marcaProveedor" />
                                <asp:BoundField DataField="nombreProveedor" HeaderText="nombreProveedor" SortExpression="nombreProveedor" />
                                <asp:BoundField DataField="idUsuario" HeaderText="idUsuario" SortExpression="idUsuario" />
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
                        <asp:SqlDataSource ID="SqlDataSource1Proveedor" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:API %>" DeleteCommand="DELETE FROM [Proveedor] WHERE [idProveedor] = @original_idProveedor AND [marcaProveedor] = @original_marcaProveedor AND [nombreProveedor] = @original_nombreProveedor AND [idUsuario] = @original_idUsuario" InsertCommand="INSERT INTO [Proveedor] ([marcaProveedor], [nombreProveedor], [idUsuario]) VALUES (@marcaProveedor, @nombreProveedor, @idUsuario)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Proveedor]" UpdateCommand="UPDATE [Proveedor] SET [marcaProveedor] = @marcaProveedor, [nombreProveedor] = @nombreProveedor, [idUsuario] = @idUsuario WHERE [idProveedor] = @original_idProveedor AND [marcaProveedor] = @original_marcaProveedor AND [nombreProveedor] = @original_nombreProveedor AND [idUsuario] = @original_idUsuario">
                            <DeleteParameters>
                                <asp:Parameter Name="original_idProveedor" Type="Int32" />
                                <asp:Parameter Name="original_marcaProveedor" Type="String" />
                                <asp:Parameter Name="original_nombreProveedor" Type="String" />
                                <asp:Parameter Name="original_idUsuario" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="marcaProveedor" Type="String" />
                                <asp:Parameter Name="nombreProveedor" Type="String" />
                                <asp:Parameter Name="idUsuario" Type="Int32" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="marcaProveedor" Type="String" />
                                <asp:Parameter Name="nombreProveedor" Type="String" />
                                <asp:Parameter Name="idUsuario" Type="Int32" />
                                <asp:Parameter Name="original_idProveedor" Type="Int32" />
                                <asp:Parameter Name="original_marcaProveedor" Type="String" />
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
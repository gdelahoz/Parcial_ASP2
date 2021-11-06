<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Datos.aspx.cs" Inherits="Parcial_ASP2.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="Content/bootstrap.min.css" rel="stylesheet" /> 
    <title>Gestionar datos</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary mb-4 container-fluid">
      <a class="navbar-brand text-light" href="#"><b>COVID 19</b></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
          <a class="nav-item nav-link active text-light" href="Cliente.aspx">Registrar cliente</a>
          <a class="nav-item nav-link text-light" href="Vendedor.aspx">Registrar vendedor</a>
          <a class="nav-item nav-link text-light" href="Pedidos.aspx">Realizar pedido</a>
          <a class="nav-item nav-link text-light" href="Datos.aspx">Ver datos</a>
        </div>
      </div>
    </nav>
    <div class="d-flex justify-content-center p-4">
        <form id="form1" runat="server">
            <div class="card p-3 mb-4">
                <h2 class="mb-3">Gestionar clientes</h2>
                <asp:GridView CssClass="table table-striped" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="Cedula" HeaderText="Cedula" SortExpression="Cedula" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                        <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                        <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                        <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                        <asp:BoundField DataField="Celular" HeaderText="Celular" SortExpression="Celular" />
                        <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                        <asp:BoundField DataField="Edad" HeaderText="Edad" SortExpression="Edad" />
                        <asp:BoundField DataField="Sexo" HeaderText="Sexo" SortExpression="Sexo" />
                        <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Cliente] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Cliente] ([Cedula], [Nombre], [Apellido], [Direccion], [Telefono], [Celular], [Correo], [Edad], [Sexo], [Fecha]) VALUES (@Cedula, @Nombre, @Apellido, @Direccion, @Telefono, @Celular, @Correo, @Edad, @Sexo, @Fecha)" SelectCommand="SELECT * FROM [Cliente]" UpdateCommand="UPDATE [Cliente] SET [Cedula] = @Cedula, [Nombre] = @Nombre, [Apellido] = @Apellido, [Direccion] = @Direccion, [Telefono] = @Telefono, [Celular] = @Celular, [Correo] = @Correo, [Edad] = @Edad, [Sexo] = @Sexo, [Fecha] = @Fecha WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Cedula" Type="String" />
                        <asp:Parameter Name="Nombre" Type="String" />
                        <asp:Parameter Name="Apellido" Type="String" />
                        <asp:Parameter Name="Direccion" Type="String" />
                        <asp:Parameter Name="Telefono" Type="String" />
                        <asp:Parameter Name="Celular" Type="String" />
                        <asp:Parameter Name="Correo" Type="String" />
                        <asp:Parameter Name="Edad" Type="String" />
                        <asp:Parameter Name="Sexo" Type="String" />
                        <asp:Parameter Name="Fecha" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Cedula" Type="String" />
                        <asp:Parameter Name="Nombre" Type="String" />
                        <asp:Parameter Name="Apellido" Type="String" />
                        <asp:Parameter Name="Direccion" Type="String" />
                        <asp:Parameter Name="Telefono" Type="String" />
                        <asp:Parameter Name="Celular" Type="String" />
                        <asp:Parameter Name="Correo" Type="String" />
                        <asp:Parameter Name="Edad" Type="String" />
                        <asp:Parameter Name="Sexo" Type="String" />
                        <asp:Parameter Name="Fecha" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>

            <div class="card p-3">
                <h2 class="mb-3">Gestionar vendedores</h2>
                <asp:GridView CssClass="table table-striped" ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="Cedula" HeaderText="Cedula" SortExpression="Cedula" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                        <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                        <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                        <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                        <asp:BoundField DataField="Celular" HeaderText="Celular" SortExpression="Celular" />
                        <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                        <asp:BoundField DataField="Edad" HeaderText="Edad" SortExpression="Edad" />
                        <asp:BoundField DataField="Sexo" HeaderText="Sexo" SortExpression="Sexo" />
                        <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Vendedor] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Vendedor] ([Cedula], [Nombre], [Apellido], [Direccion], [Telefono], [Celular], [Correo], [Edad], [Sexo], [Fecha]) VALUES (@Cedula, @Nombre, @Apellido, @Direccion, @Telefono, @Celular, @Correo, @Edad, @Sexo, @Fecha)" SelectCommand="SELECT * FROM [Vendedor]" UpdateCommand="UPDATE [Vendedor] SET [Cedula] = @Cedula, [Nombre] = @Nombre, [Apellido] = @Apellido, [Direccion] = @Direccion, [Telefono] = @Telefono, [Celular] = @Celular, [Correo] = @Correo, [Edad] = @Edad, [Sexo] = @Sexo, [Fecha] = @Fecha WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Cedula" Type="String" />
                        <asp:Parameter Name="Nombre" Type="String" />
                        <asp:Parameter Name="Apellido" Type="String" />
                        <asp:Parameter Name="Direccion" Type="String" />
                        <asp:Parameter Name="Telefono" Type="String" />
                        <asp:Parameter Name="Celular" Type="String" />
                        <asp:Parameter Name="Correo" Type="String" />
                        <asp:Parameter Name="Edad" Type="String" />
                        <asp:Parameter Name="Sexo" Type="String" />
                        <asp:Parameter Name="Fecha" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Cedula" Type="String" />
                        <asp:Parameter Name="Nombre" Type="String" />
                        <asp:Parameter Name="Apellido" Type="String" />
                        <asp:Parameter Name="Direccion" Type="String" />
                        <asp:Parameter Name="Telefono" Type="String" />
                        <asp:Parameter Name="Celular" Type="String" />
                        <asp:Parameter Name="Correo" Type="String" />
                        <asp:Parameter Name="Edad" Type="String" />
                        <asp:Parameter Name="Sexo" Type="String" />
                        <asp:Parameter Name="Fecha" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </form>
    </div>
</body>
</html>

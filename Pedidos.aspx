<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pedidos.aspx.cs" Inherits="Parcial_ASP2.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Content/bootstrap.min.css" rel="stylesheet" /> 
    <title>Tienda Covid 19 | Pedido</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-primary mb-4 container-fluid">
      <a class="navbar-brand text-light" href="#"><b>COVID 19</b></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
          <a class="nav-item nav-link  text-light" href="Cliente.aspx">Registrar cliente</a>
          <a class="nav-item nav-link  text-light" href="Vendedor.aspx">Registrar vendedor</a>
          <a class="nav-item nav-link active text-light" href="Pedidos.aspx">Realizar pedido</a>
          <a class="nav-item nav-link text-light" href="Datos.aspx">Ver datos</a>
        </div>
      </div>
    </nav>
    <div  class="d-flex justify-content-center align-items-center vh-100">
        <!-- Card pedido -->
        <section class="card col-md-6 col-lg-5 mb-4">
            <div class="card-header">
                <h4>Registro de pedido</h4>
            </div>
            <div class="card-body">
                <form id="form2" runat="server">
                    <asp:GridView CssClass="table table-hover" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4">
                        <Columns>
                            <asp:BoundField DataField="NOMBRE" HeaderText="CLIENTE" SortExpression="NOMBRE" />
                            <asp:BoundField DataField="NOMBRE1" HeaderText="VENDEDOR" SortExpression="NOMBRE1" />
                            <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" />
                            <asp:BoundField DataField="NOMBRE2" HeaderText="PRODUCTO" SortExpression="NOMBRE2" />
                            <asp:BoundField DataField="Cantidad" HeaderText="CANTIDAD" SortExpression="Cantidad" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT C.NOMBRE, V.NOMBRE, P.ESTADO, PR.NOMBRE, P.Cantidad
                        FROM CLIENTE C, VENDEDOR V, PEDIDO P, PRODUCTO PR
                        WHERE C.Id = P.IdCliente AND V.Id = P.IdVendedor AND PR.Id = P.IdProducto;"></asp:SqlDataSource>
                    <div class="row mb-4">
                        <div class="col">
                            <asp:Label ID="Cliente" runat="server" Text="Cliente" CssClass="form-label"></asp:Label>
                            <asp:DropDownList CssClass="form-select" ID="DropDownListCliente" runat="server" DataSourceID="SqlDataSource2" DataTextField="Nombre" DataValueField="Id">
                                
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Cliente]" ></asp:SqlDataSource>
                        </div>
                        <div class="col">
                            <asp:Label ID="Vendedor" runat="server" Text="Vendedor" CssClass="form-label"></asp:Label>
                            <asp:DropDownList CssClass="form-select" ID="DropDownListVendedor" runat="server" DataSourceID="SqlDataSource3" DataTextField="Nombre" DataValueField="Id">
                                
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Vendedor]" ></asp:SqlDataSource>
                        </div>
                    </div>
                    <div class="mb-4">
                        <asp:Label ID="LabelArticulo" runat="server" Text="Articulo" CssClass="form-label"></asp:Label>
                        <asp:DropDownList CssClass="form-select" ID="DropDownListArticulo" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nombre" DataValueField="Id">
                                
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Producto]" ></asp:SqlDataSource>
                    </div>
                    <div class="row mb-4">
                        <div class="col">
                            <asp:Label CssClass="form-label" ID="LabelEstado" runat="server" Text="Estado"></asp:Label>
                            <asp:DropDownList CssClass="form-select" ID="estado" runat="server">
                                <asp:ListItem Value="pendiente"> Pendiente </asp:ListItem>
                                <asp:ListItem Value="pagado"> Pagado </asp:ListItem>
                                <asp:ListItem Value="procesado"> Procesado </asp:ListItem>
                                <asp:ListItem Value="enviado"> Enviado </asp:ListItem>
                                <asp:ListItem Value="entregado"> Entragado </asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col">
                            <asp:Label ID="LabelCantidad" runat="server" Text="Cantidad" CssClass="form-label"></asp:Label>
                            <asp:TextBox ID="txtCantidad" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="d-flex justify-content-end"><asp:Button ID="Button1" runat="server" Text="Agregar producto" class="btn btn-primary" OnClick="Button1_Click"/></div>
                </form>
            </div>
        </section>
    </div>
</body>
</html>

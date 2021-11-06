<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="Parcial_ASP2.WebForm3" %>

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
          <a class="nav-item nav-link text-light" href="WebForm1.aspx">Registrar cliente</a>
          <a class="nav-item nav-link text-light" href="WebForm2.aspx">Registrar vendedor</a>
          <a class="nav-item nav-link active text-light" href="WebForm3.aspx">Realizar pedido</a>
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
                    <div class="row mb-4">
                        <div class="col">
                            <asp:Label ID="LabelArticulo" runat="server" Text="Articulo" CssClass="form-label"></asp:Label>
                            <asp:DropDownList CssClass="form-select" ID="DropDownListArticulo" runat="server">
                                
                            </asp:DropDownList>
                        </div>
                        <div class="col">
                            <asp:Label ID="LabelCantidad" runat="server" Text="Cantidad" CssClass="form-label"></asp:Label>
                            <asp:TextBox ID="txtCantidad" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="d-flex justify-content-end"><asp:Button ID="Button1" runat="server" Text="Agregar producto" class="btn btn-primary"/></div>
                </form>
            </div>
        </section>
    </div>
</body>
</html>

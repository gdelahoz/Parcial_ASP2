<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Parcial_ASP2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Content/bootstrap.min.css" rel="stylesheet" /> 
    <title>Covid 19 | Tienda</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary mb-4 container-fluid">
      <a class="navbar-brand text-light" href="#">COVID 19</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
          <a class="nav-item nav-link active text-light" href="WebForm1.aspx">Registrar cliente</a>
          <a class="nav-item nav-link text-light" href="#">Registrar vendedor</a>
        </div>
      </div>
    </nav>
    <div  class="d-flex justify-content-center">
        <!-- Card cliente -->
        <section class="card col-md-6 col-lg-5 mb-4">
            <div class="card-header">
                <h4>Cliente</h4>
            </div>
            <div class="card-body">
                <form id="form1" runat="server">
                    <div class="row mb-3">
                        <div class="col">
                            <asp:Label ID="LabelNombre" runat="server" Text="Nombre" CssClass="form-label"></asp:Label>
                            <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col">
                            <asp:Label ID="LabelApellido" runat="server" Text="Apellido" CssClass="form-label"></asp:Label>
                            <asp:TextBox ID="txtApellido" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="mb-3">
                        <asp:Label ID="LabelCedula" runat="server" Text="Número de cedula" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="txtCedula" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <asp:Label ID="LabelDireccion" runat="server" Text="Dirección" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="txtDireccion" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="row mb-3">
                        <div class="col">
                            <asp:Label ID="LabelTelefono" runat="server" Text="Telefono fijo" CssClass="form-label"></asp:Label>
                            <asp:TextBox ID="txtTelefono" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col">
                            <asp:Label ID="LabelCelular" runat="server" Text="Celular" CssClass="form-label"></asp:Label>
                            <div class="input-group">
                                <div class="input-group-text">+57</div>
                                <asp:TextBox ID="txtCelular" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <asp:Label ID="LabelCorreo" runat="server" Text="Correo" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="row mb-3">
                        <div class="col">
                            <asp:Label ID="LabelEdad" runat="server" Text="Edad" CssClass="form-label"></asp:Label>
                            <asp:TextBox ID="txtEdad" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col">
                            <asp:Label ID="LabelSexo" runat="server" Text="Sexo" CssClass="form-label"></asp:Label>
                            <asp:DropDownList CssClass="form-select" ID="DropDownListSexo" runat="server">
                                <asp:ListItem>Masculino</asp:ListItem>
                                <asp:ListItem>Femenino</asp:ListItem>
                                <asp:ListItem>Otro</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col">
                            <asp:Label ID="LabelFecha" runat="server" Text="Fecha" CssClass="form-label"></asp:Label>
                            <asp:TextBox ID="txtFecha" runat="server" CssClass="form-control" type="date"></asp:TextBox>
                        </div>
                    </div>
                </form>
            </div>
        </section>
    </div>
</body>
</html>

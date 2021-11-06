<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cliente.aspx.cs" Inherits="Parcial_ASP2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Content/bootstrap.min.css" rel="stylesheet" /> 
    <title>Tienda Covid 19 | Cliente</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-primary mb-4 container-fluid">
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
    <div  class="d-flex justify-content-center align-items-center vh-100">
        <!-- Card cliente -->
        <section class="card col-md-6 col-lg-5 mb-4">
            <div class="card-header">
                <h4>Registro de cliente</h4>
            </div>
            <div class="card-body">
                <form id="form1" runat="server">
                    <div class="row mb-3">
                        <div class="col">
                            <asp:Label ID="LabelNombre" runat="server" Text="Nombre" CssClass="form-label"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombre" ErrorMessage="Campo requerido." ForeColor="Red">Campo requerido*</asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col">
                            <asp:Label ID="LabelApellido" runat="server" Text="Apellido" CssClass="form-label"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtApellido" ErrorMessage="Campo requerido*" ForeColor="Red">Campo requerido*</asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtApellido" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="mb-3">
                        <asp:Label ID="LabelCedula" runat="server" Text="Número de cedula" CssClass="form-label"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCedula" ErrorMessage="Campo requerido*" ForeColor="Red">Campo requerido*</asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtCedula" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <asp:Label ID="LabelDireccion" runat="server" Text="Dirección" CssClass="form-label"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDireccion" ErrorMessage="Campo requerido*" ForeColor="Red">Campo requerido*</asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtDireccion" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="row mb-3">
                        <div class="col">
                            <asp:Label ID="LabelTelefono" runat="server" Text="Telefono fijo" CssClass="form-label"></asp:Label>
                            <asp:TextBox ID="txtTelefono" runat="server" CssClass="form-control" TextMode="Phone"></asp:TextBox>
                        </div>
                        <div class="col">
                            <asp:Label ID="LabelCelular" runat="server" Text="Celular" CssClass="form-label"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtCelular" ErrorMessage="Campo requerido*" ForeColor="Red">Campo requerido*</asp:RequiredFieldValidator>
                            <div class="input-group">
                                <div class="input-group-text">+57</div>
                                <asp:TextBox ID="txtCelular" runat="server" CssClass="form-control" TextMode="Phone"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <asp:Label ID="LabelCorreo" runat="server" Text="Correo" CssClass="form-label"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtCorreo" ErrorMessage="Campo requerido*" ForeColor="Red">Campo requerido*</asp:RequiredFieldValidator>
                        <div class="input-group">
                            <div class="input-group-text">@</div>
                            <asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row mb-4">
                        <div class="col">
                            <asp:Label ID="LabelEdad" runat="server" Text="Edad" CssClass="form-label"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtEdad" ErrorMessage="Campo requerido*" ForeColor="Red">Campo requerido*</asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtEdad" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                        </div>
                        <div class="col">
                            <asp:Label ID="LabelSexo" runat="server" Text="Sexo" CssClass="form-label"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="DropDownListSexo" ErrorMessage="Campo requerido*" ForeColor="Red">Campo requerido*</asp:RequiredFieldValidator>
                            <asp:DropDownList CssClass="form-select" ID="DropDownListSexo" runat="server">
                                <asp:ListItem>Masculino</asp:ListItem>
                                <asp:ListItem>Femenino</asp:ListItem>
                                <asp:ListItem>Otro</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col">
                            <asp:Label ID="LabelFecha" runat="server" Text="Fecha" CssClass="form-label"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtFecha" ErrorMessage="Campo requerido*" ForeColor="Red">Campo requerido*</asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtFecha" runat="server" CssClass="form-control" type="date" TextMode="Date"></asp:TextBox>
                        </div>
                    </div>
                    <div class="d-flex justify-content-end"><asp:Button ID="Button1" runat="server" Text="Registrar datos" class="btn btn-primary" OnClick="Button1_Click"/></div>
                </form>
            </div>
        </section>
    </div>
</body>
</html>

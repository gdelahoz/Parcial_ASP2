﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Parcial_ASP2.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Content/bootstrap.min.css" rel="stylesheet" /> 
    <title>Tienda Covid 19 | Vendedor</title>
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
          <a class="nav-item nav-link active text-light" href="WebForm2.aspx">Registrar vendedor</a>
          <a class="nav-item nav-link text-light" href="WebForm3.aspx">Realizar pedido</a>
        </div>
      </div>
    </nav>
    <div  class="d-flex justify-content-center align-items-center vh-100">
        <!-- Card vendedor -->
        <section class="card col-md-6 col-lg-5 mb-4">
            <div class="card-header">
                <h4>Registro de vendedor</h4>
            </div>
            <div class="card-body">
                <form id="form2" runat="server">
                    <div class="row mb-3">
                        <div class="col">
                            <asp:Label ID="LabelNombreV" runat="server" Text="Nombre" CssClass="form-label"></asp:Label>
                            <asp:TextBox ID="txtNombreV" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col">
                            <asp:Label ID="LabelApellidoV" runat="server" Text="Apellido" CssClass="form-label"></asp:Label>
                            <asp:TextBox ID="txtApellidoV" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="mb-3">
                        <asp:Label ID="LabelCedulaV" runat="server" Text="Número de cedula" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="txtCedulaV" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <asp:Label ID="LabelDireccionV" runat="server" Text="Dirección" CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="txtDireccionV" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="row mb-3">
                        <div class="col">
                            <asp:Label ID="LabelTelefonoV" runat="server" Text="Telefono fijo" CssClass="form-label"></asp:Label>
                            <asp:TextBox ID="txtTelefonoV" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col">
                            <asp:Label ID="LabelCelularV" runat="server" Text="Celular" CssClass="form-label"></asp:Label>
                            <div class="input-group">
                                <div class="input-group-text">+57</div>
                                <asp:TextBox ID="txtCelularV" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <asp:Label ID="LabelCorreoV" runat="server" Text="Correo" CssClass="form-label"></asp:Label>
                        <div class="input-group">
                            <div class="input-group-text">@</div>
                            <asp:TextBox ID="txtCorreoV" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row mb-4">
                        <div class="col">
                            <asp:Label ID="LabelEdadV" runat="server" Text="Edad" CssClass="form-label"></asp:Label>
                            <asp:TextBox ID="txtEdadV" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col">
                            <asp:Label ID="LabelSexoV" runat="server" Text="Sexo" CssClass="form-label"></asp:Label>
                            <asp:DropDownList CssClass="form-select" ID="DropDownListSexoV" runat="server">
                                <asp:ListItem>Masculino</asp:ListItem>
                                <asp:ListItem>Femenino</asp:ListItem>
                                <asp:ListItem>Otro</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col">
                            <asp:Label ID="LabelFechaV" runat="server" Text="Fecha" CssClass="form-label"></asp:Label>
                            <asp:TextBox ID="txtFechaV" runat="server" CssClass="form-control" type="date"></asp:TextBox>
                        </div>
                    </div>
                    <div class="d-flex justify-content-end"><asp:Button ID="Button1" runat="server" Text="Registrar datos" class="btn btn-primary"/></div>
                </form>
            </div>
        </section>
    </div>
</body>
</html>
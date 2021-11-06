using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Parcial_ASP2
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\DataStore.mdf;Integrated Security=True");
            string query = "INSERT INTO Pedido (IdCliente, IdVendedor, IdProducto, Cantidad, Estado) VALUES (" + DropDownListCliente.SelectedValue + "," + DropDownListVendedor.SelectedValue + "," + DropDownListArticulo.SelectedValue + ","+ txtCantidad.Text +",'"+estado.SelectedValue+"');";
            connection.Open();
            SqlCommand cmd = new SqlCommand(query, connection);
            cmd.ExecuteNonQuery();
            Response.Redirect("Pedidos.aspx");
        }


    }
}
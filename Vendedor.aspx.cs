using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parcial_ASP2
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        private SqlConnection con;
        private SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

        public void Conectar()
        {
            con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Gabo\source\repos\Parcial_ASP2\App_Data\DataStore.mdf;Integrated Security = True");
            con.Open();
        }

        public void AbrirConexion()
        {
            con.Open();
        }

        public void Desconectar()
        {
            con.Close();
            con = null;
            cmd = null;
        }

        public void CrearComando(string consulta)
        {
            cmd = new SqlCommand(consulta, con);
        }

        public void AsignarParametro(string param, SqlDbType tipo, object val)
        {
            cmd.Parameters.Add(param, tipo).Value = val;
        }

        public int EjecutarComando()
        {
            int id = Convert.ToInt32(cmd.ExecuteScalar());

            if (con.State == System.Data.ConnectionState.Open)
                Desconectar();

            return id;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String nombre, apellido, cedula, direccion, telefono, celular, correo, edad, sexo, fecha;

            nombre = txtNombreV.Text;
            apellido = txtApellidoV.Text;
            cedula = txtCedulaV.Text;
            direccion = txtCedulaV.Text;
            telefono = txtTelefonoV.Text;
            celular = txtCelularV.Text;
            correo = txtCorreoV.Text;
            edad = txtEdadV.Text;
            sexo = DropDownListSexoV.SelectedValue;
            fecha = txtFechaV.Text;

            Conectar();
            CrearComando(
                "INSERT INTO Vendedor" + "(Cedula, Nombre, Apellido, Direccion, Telefono, Celular, Correo, Edad, Sexo, Fecha)" + "VALUES" +
                "(@Cedula, @Nombre, @Apellido, @Direccion, @Telefono, @Celular, @Correo, @Edad, @Sexo, @Fecha);SELECT SCOPE_IDENTITY();"
            );

            AsignarParametro("@Cedula", SqlDbType.VarChar, cedula);
            AsignarParametro("@Nombre", SqlDbType.VarChar, nombre);
            AsignarParametro("@Apellido", SqlDbType.VarChar, apellido);
            AsignarParametro("@Direccion", SqlDbType.VarChar, direccion);
            AsignarParametro("@Telefono", SqlDbType.VarChar, telefono);
            AsignarParametro("@Celular", SqlDbType.VarChar, celular);
            AsignarParametro("@Correo", SqlDbType.VarChar, correo);
            AsignarParametro("@Edad", SqlDbType.VarChar, edad);
            AsignarParametro("@Sexo", SqlDbType.VarChar, sexo);
            AsignarParametro("@Fecha", SqlDbType.VarChar, fecha);

            EjecutarComando();
            Response.Redirect("Vendedor.aspx");
        }
    }
}
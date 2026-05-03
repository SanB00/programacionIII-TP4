using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP4Grupo18
{
    public partial class Ejercicio2 : System.Web.UI.Page
    {
        string NeptunoSQL = "Data Source=localhost\\sqlexpress;Initial Catalog=Neptuno;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarGrillaDeProductos();
            }
        }

        private void CargarGrillaDeProductos(string consultaSQL = "SELECT IdProducto, NombreProducto, IdCategoría, PrecioUnidad FROM Productos")
        {
            SqlConnection sqlConnection = new SqlConnection(NeptunoSQL);
            sqlConnection.Open();

            SqlDataAdapter adaptador = new SqlDataAdapter(consultaSQL, sqlConnection);
            DataTable tablaProductos = new DataTable();

            adaptador.Fill(tablaProductos);

            gvProductos.DataSource = tablaProductos;
            gvProductos.DataBind();

            sqlConnection.Close();
        }

        protected void btnQuitarFiltro_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";

            DropDownList1.SelectedIndex = 0;
            DropDownList2.SelectedIndex = 0;

            CargarGrillaDeProductos();
        }
    }
}
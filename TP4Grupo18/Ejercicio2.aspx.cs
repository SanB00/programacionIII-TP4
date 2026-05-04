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
        //string NeptunoSQL = "Data Source=localhost\\sqlexpress;Initial Catalog=Neptuno;Integrated Security=True";
        string NeptunoSQL = "Data Source=localhost;Initial Catalog=Neptuno;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e) {
            if (!IsPostBack) {
                CargarGrillaDeProductos();
            }
        }

        private void CargarGrillaDeProductos(string consultaSQL = "SELECT IdProducto, NombreProducto, IdCategoría, CantidadPorUnidad, PrecioUnidad FROM Productos") {
            SqlConnection sqlConnection = new SqlConnection(NeptunoSQL);
            sqlConnection.Open();

            SqlDataAdapter adaptador = new SqlDataAdapter(consultaSQL, sqlConnection);
            DataTable tablaProductos = new DataTable();

            adaptador.Fill(tablaProductos);

            gvProductos.DataSource = tablaProductos;
            gvProductos.DataBind();

            sqlConnection.Close();
        }
        protected void btnFiltrar_Click(object sender, EventArgs e) {
            string consultaSQL = "SELECT IdProducto, NombreProducto, IdCategoría, PrecioUnidad FROM Productos WHERE 1=1";
            int idProducto = int.Parse(txtFiltroProducto.Text);
            string operadorProducto = ddlFiltroProducto.SelectedValue;
            consultaSQL += " AND IdProducto " + operadorProducto + " " + idProducto;
            CargarGrillaDeProductos(consultaSQL);
        }

        protected void btnQuitarFiltro_Click(object sender, EventArgs e) {
            string consultaSQL = "SELECT IdProducto, NombreProducto, IdCategoría, PrecioUnidad FROM Productos WHERE 1=1";

            txtFiltroProducto.Text = "";
            txtFiltroCategoria.Text = "";

            ddlFiltroProducto.SelectedIndex = 0;
            ddlFiltroCategoria.SelectedIndex = 0;
            CargarGrillaDeProductos(consultaSQL);
        }

        protected void gvProductos_SelectedIndexChanged(object sender, EventArgs e) {

        }

    }
}
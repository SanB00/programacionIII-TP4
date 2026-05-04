using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP4Grupo18
{
    public partial class Ejercicio2 : System.Web.UI.Page
    {

#pragma warning disable IDE1006 // Naming Styles
        protected void Page_Load(object sender, EventArgs e) {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack) {
                cargarGrillaDeProductos();
            }
        }

        private void cargarGrillaDeProductos(string consultaSQL = "SELECT IdProducto, NombreProducto, IdCategoría, CantidadPorUnidad, PrecioUnidad FROM Productos") {
            string cadenaConexion = new ConexionBBDD().obtenerCadenaDeConexion("Neptuno");
            DataTable tablaProductos = new ConexionBBDD().obtenerTablaDeLaBaseDeDatos(consultaSQL, cadenaConexion);
            gvProductos.DataSource = tablaProductos;
            gvProductos.DataBind();
        }
        protected void btnFiltrar_Click(object sender, EventArgs e) {
            string consultaSQL = "SELECT IdProducto, NombreProducto, IdCategoría, CantidadPorUnidad, PrecioUnidad FROM Productos WHERE 1=1";
            int idProducto = int.Parse(txtFiltroProducto.Text);
            string operadorProducto = ddlFiltroProducto.SelectedValue;
            consultaSQL += " AND IdProducto " + operadorProducto + " " + idProducto;

            if (txtFiltroCategoria.Text != "") {
                int idCategoria = int.Parse(txtFiltroCategoria.Text);
                string operador2 = "";
                switch (ddlFiltroCategoria.SelectedValue) {
                    case "Mayor a":
                        operador2 = ">";
                        break;

                    case "Menor a":
                        operador2 = "<";
                        break;

                    case "Igual a":
                        operador2 = "=";
                        break;
                    default:
                        operador2 = "=";
                        break;
                }

                consultaSQL += " AND IdCategoría " + operador2 + " " + idCategoria;
            }
            cargarGrillaDeProductos(consultaSQL);
        }

        protected void btnQuitarFiltro_Click(object sender, EventArgs e) {
            string consultaSQL = "SELECT IdProducto, NombreProducto, IdCategoría, CantidadPorUnidad, PrecioUnidad FROM Productos WHERE 1=1";
            txtFiltroProducto.Text = "";
            txtFiltroCategoria.Text = "";

            ddlFiltroProducto.SelectedIndex = 0;
            ddlFiltroCategoria.SelectedIndex = 0;
            cargarGrillaDeProductos(consultaSQL);
        }
    }
}
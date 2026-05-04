using System;
using System.Data;
using System.Web.UI;

namespace TP4Grupo18
{
    public partial class Ejercicio2 : System.Web.UI.Page
    {

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
            lblCantResultados.Text = $"Hay {tablaProductos.Rows.Count} resultado/s";
        }

        protected void btnFiltrar_Click(object sender, EventArgs e) {
            string consultaSQL = "SELECT IdProducto, NombreProducto, IdCategoría, CantidadPorUnidad, PrecioUnidad FROM Productos WHERE 1=1";
            string strIdProducto = Common.eliminarEspaciosDelTexto(txtFiltroProducto.Text);
            if (Common.esUnNroValido(strIdProducto)) {
                int idProducto = int.Parse(strIdProducto);
                string operadorProducto = ddlFiltroProducto.SelectedValue;
                consultaSQL += " AND IdProducto " + operadorProducto + " " + idProducto;
            }

            string strIdCategoria = Common.eliminarEspaciosDelTexto(txtFiltroCategoria.Text);
            if (Common.esUnNroValido(strIdCategoria)) {
                int idCategoria = int.Parse(strIdCategoria);
                string operadorCategoria = ddlFiltroCategoria.SelectedValue;
                consultaSQL += " AND IdCategoría " + operadorCategoria + " " + idCategoria;
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
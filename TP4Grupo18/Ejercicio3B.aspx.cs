using System;
using System.Data;

namespace TP4Grupo18
{
    public partial class Ejercicio3B : System.Web.UI.Page
    {
#pragma warning disable IDE1006 // Naming Styles
        protected void Page_Load(object sender, EventArgs e) {
#pragma warning disable IDE1006 // Naming Styles
            if (!IsPostBack) {
                //string idTemaSeleccionado =
                cargarLibrosPorTema();
            }
        }

        private void cargarLibrosPorTema(string idTema = "1") {
            string consultaSQL = $"SELECT * FROM Libros WHERE idTema = {idTema}";
            string cadenaConexion = new ConexionBBDD().obtenerCadenaDeConexion("Libreria");
            DataTable tablaLibros = new ConexionBBDD().obtenerTablaDeLaBaseDeDatos(consultaSQL, cadenaConexion);
            gvLibros.DataSource = tablaLibros;
            gvLibros.DataBind();

            lblCantResultados.Text = $"Hay {tablaLibros.Rows.Count} resultado/s";
        }

        protected void lbConsultarOtroTema_Click(object sender, EventArgs e) {
            Response.Redirect($"Ejercicio3.aspx");
        }
    }
}
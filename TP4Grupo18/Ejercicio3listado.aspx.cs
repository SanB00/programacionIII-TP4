using System;
using System.Data;

namespace TP4Grupo18
{
    public partial class Ejercicio3Listado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) {
            cargarGrillaLibros();
        }

        private void cargarGrillaLibros(string consultaSQL = "SELECT * FROM Libros") {
            string cadenaConexion = new ConexionBBDD().obtenerCadenaDeConexion("Libreria");
            DataTable tablaLibros = new ConexionBBDD().obtenerTablaDeLaBaseDeDatos(consultaSQL, cadenaConexion);
            gvLibros.DataSource = tablaLibros;
            gvLibros.DataBind();
        }
    }
}
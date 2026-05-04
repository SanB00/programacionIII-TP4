using System;
using System.Data;

namespace TP4Grupo18
{
    public partial class Ejercicio3 : System.Web.UI.Page
    {
#pragma warning disable IDE1006 // Naming Styles
        protected void Page_Load(object sender, EventArgs e) {
#pragma warning disable IDE1006 // Naming Styles
            if (!IsPostBack) {
                cargarTemas();
            }
        }

        private void cargarTemas() {
            const string consultaSQL = "SELECT * FROM Temas";
            string cadenaConexion = new ConexionBBDD().obtenerCadenaDeConexion("Libreria");
            DataTable tablaTemas = new ConexionBBDD().obtenerTablaDeLaBaseDeDatos(consultaSQL, cadenaConexion);
            ddlTemas.Items.Clear();
            ddlTemas.DataSource = tablaTemas;
            ddlTemas.DataTextField = "Tema";
            ddlTemas.DataValueField = "IdTema";
            ddlTemas.DataBind();
        }

        protected void ddlTemas_SelectedIndexChanged(object sender, EventArgs e) {

        }
    }
}
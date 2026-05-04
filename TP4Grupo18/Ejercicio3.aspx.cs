using System;
using System.Data;
using System.Web.UI.WebControls;

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

            ddlTemas.Items.Insert(0, new ListItem("--Seleccione un tema--", "0"));
        }

        protected void lbVerLibros_Click(object sender, EventArgs e) {
            string idTemaSeleccionado = ddlTemas.SelectedValue;
            Response.Redirect($"Ejercicio3B.aspx?idTemaSeleccionado={idTemaSeleccionado}");
        }
    }
}
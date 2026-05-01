using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP4Grupo18
{
    public partial class Ejercicio1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack) {
                asignarReglasEnLosValidadores();
                cargarListaProvincias();
                cargarListaLocalidades();
            }
        }

        private void asignarReglasEnLosValidadores() {
            rfvLocalidadSeleccionada.ErrorMessage = "Seleccione una localidad del desplegable";
        }

        protected void btnGuardarLocalidad_Click(object sender, EventArgs e) {
            #region 1) Preparar variables y limpiar inputs
            String strLocalidad = Common.eliminarEspaciosDelTexto(ddlLocalidades.SelectedItem.Text);
            #endregion

            #region 2) Validar campos
            string msgDeErrores = String.Empty;
            if (string.IsNullOrEmpty(strLocalidad)) { msgDeErrores += "\n * La localidad no debe quedar en blanco."; }
            if (!string.IsNullOrEmpty(msgDeErrores)) {
                Common.mostrarMensajeEnAlerta(msgDeErrores, this);
                return;
            }
            #endregion

            #region 3) Validar repetidos con listado de localidades
            foreach (ListItem item in ddlLocalidades.Items) {
                if (item.Text.Equals(strLocalidad, StringComparison.OrdinalIgnoreCase)) {
                    string mensaje = $"La localidad \"{strLocalidad}\" ya existe en el listado. Por favor no repetir el valor";
                    Common.mostrarMensajeEnAlerta(mensaje, this);
                    return;
                }
            }
            #endregion

            #region 4) Cargar listado de localidades
            strLocalidad = Common.obtenerTextoPrimerLetraMayuscula(strLocalidad);
            ddlLocalidades.Items.Add(new ListItem(strLocalidad, strLocalidad));
            #endregion

            #region 5) Limpiar campos después de cargar la tabla
            #endregion
        }

        private void cargarListaProvincias()
        {
            const string cadenaConexion = @"Data Source=DESKTOP-RFDMNU2\SQLEXPRESS;Initial Catalog=Viajes;Integrated Security=True;Encrypt=False;TrustServerCertificate=True";//yulieth
            //const string cadenaConexion = @"Data Source=localhost;Initial Catalog=Viajes;Integrated Security=True;";
            //const string cadenaConexion = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=Viajes;Integrated Security=True;TrustServerCertificate=True;";
            string consultaSQL = "SELECT * FROM Provincias";
            DataTable dataTable = obtenerTablaDeLaBaseDeDatos(consultaSQL, cadenaConexion);
            ddlProvincia.DataSource = dataTable;
            ddlProvincia.DataTextField = "NombreProvincia";
            ddlProvincia.DataValueField = "IdProvincia";
            ddlProvincia.DataBind();
        }
        private void cargarListaLocalidades(int idProvincia = 0) {
            const string cadenaConexion = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Viajes;Integrated Security=True;";
            //const string cadenaConexion = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=Viajes;Integrated Security=True;TrustServerCertificate=True;";
            string consultaSQL = "SELECT IdLocalidad, NombreLocalidad FROM Localidades WHERE IdProvincia = @IdProvincia";
            SqlParameter[] parametros = new SqlParameter[] {
                new SqlParameter("@IdProvincia", idProvincia)
            };
            DataTable dataTable = obtenerTablaDeLaBaseDeDatos(consultaSQL, cadenaConexion, parametros);
            ddlLocalidades.DataSource = dataTable;
            ddlLocalidades.DataTextField = "NombreLocalidad";
            ddlLocalidades.DataValueField = "IdLocalidad";
            ddlLocalidades.DataBind();
        }
        private void cargarListaPrivinciaFinal()
        {

            //const string cadenaConexion = @"Data Source=DESKTOP-RFDMNU2\SQLEXPRESS;Initial Catalog=Viajes;Integrated Security=True;Encrypt=False;TrustServerCertificate=True";//yulieth
            const string cadenaConexion = @"Data Source=localhost;Initial Catalog=Viajes;Integrated Security=True;";
            //const string cadenaConexion = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=Viajes;Integrated Security=True;TrustServerCertificate=True;";
            
            string consultaSQL = "SELECT * FROM Provincias ";
            const string cadenaConexion = @"Data Source=DESKTOP-RFDMNU2\SQLEXPRESS;Initial Catalog=Viajes;Integrated Security=True;Encrypt=False;TrustServerCertificate=True";
            if (ddlProvincia.SelectedIndex > 0)
            {
                string idProvinciaSeleccionada = ddlProvincia.SelectedValue;
                consultaSQL = "SELECT * FROM Provincias WHERE IdProvincia <> " + idProvinciaSeleccionada;
            }
            DataTable dataTable = obtenerTablaDeLaBaseDeDatos(consultaSQL, cadenaConexion);

            ddlProvinciaFinal.Items.Clear();

            ddlProvinciaFinal.DataSource = dataTable;
            ddlProvinciaFinal.DataTextField = "NombreProvincia";
            ddlProvinciaFinal.DataValueField = "IdProvincia";
            ddlProvinciaFinal.DataBind();

                sqlConnection.Close();

        }

        public DataTable obtenerTablaDeLaBaseDeDatos(string consultaSQL, string cadenaConexion, SqlParameter[] parametros = null) {
            string connectionString = cadenaConexion;//ConfigurationManager.ConnectionStrings["dbViajes"].ConnectionString;
            DataTable dataTable = new DataTable();

            // El bloque 'using' asegura que la conexión se cierre SIEMPRE, incluso si hay error
            using (SqlConnection sqlConnection = new SqlConnection(connectionString)) {
                try {
                    SqlCommand sqlCommand = new SqlCommand(consultaSQL, sqlConnection);
                    if (parametros != null)
                    {
                        sqlCommand.Parameters.AddRange(parametros);
                    }
                    SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand);
                    sqlConnection.Open();
                    sqlDataAdapter.Fill(dataTable); 
                }
                catch (Exception ex) {
                    throw new Exception("Error al consultar la base de datos: " + ex.Message);
                }
            }
            return dataTable;
        }

        protected void ddlProvincia_SelectedIndexChanged(object sender, EventArgs e)
        {
            
              cargarListaPrivinciaFinal();
            
        }
    }
}
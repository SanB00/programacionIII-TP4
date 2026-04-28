using System;
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
                txtContrasena.TextMode = TextBoxMode.Password;
                txtContrasenaRepetida.TextMode = TextBoxMode.Password;
                cargarGrilla();
            }
        }

        private void asignarReglasEnLosValidadores() {
            revLocalidad.ValidationExpression = $"^.{{{Common.MIN_CHARS_TEXTO},{Common.MAX_CHARS_TEXTO}}}$"; //ValidationExpression = "^.{1,25}$"
            revLocalidad.ErrorMessage = $"Mínimo {Common.MIN_CHARS_TEXTO} y máximo {Common.MAX_CHARS_TEXTO} caracteres"; //ErrorMessage="Mínimo 1 y máximo 25 caracteres." 
            rfvLocalidad.ErrorMessage = "La localidad es un campo requerido. Por favor completar";
            rfvLocalidadSeleccionada.ErrorMessage = "Seleccione una localidad del desplegable";
        }

        protected void btnGuardarLocalidad_Click(object sender, EventArgs e) {
            #region 1) Preparar variables y limpiar inputs
            String strLocalidad = Common.eliminarEspaciosDelTexto(txtLocalidad.Text);
            #endregion

            #region 2) Validar campos
            string msgDeErrores = String.Empty;
            if (string.IsNullOrEmpty(strLocalidad)) { msgDeErrores += "\n * La localidad no debe tener espacios o quedar en blanco."; }
            if (!Common.estaElTextoDentroDelRango(strLocalidad)) { msgDeErrores += $"\n * La localidad debe tener entre {Common.MIN_CHARS_TEXTO} y {Common.MAX_CHARS_TEXTO} caracteres."; }
            if (!Common.esAlfanumerico(strLocalidad)) { msgDeErrores += $"\n * La localidad solo puede llevar números y letras. Por favor elimine los caracteres especiales."; }
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
            this.btnLimpiar_Click(this, e);
            #endregion
        }

        protected void btnLimpiar_Click(object sender, EventArgs e) {
            txtLocalidad.Text = string.Empty;
        }

        protected void btnGuardarUsuario_Click(object sender, EventArgs e) {
            #region 1) Preparar variables y limpiar inputs
            String strNombreUsuario = Common.eliminarEspaciosDelTexto(txtNombreUsuario.Text);
            /*
                txtNombreUsuario
                txtContrasena
                txtContrasenaRepetida
                txtCorreoElectronico
                txtCodigoPostal
                ddlLocalidades
            */
            #endregion

            #region 2) Validar campos
            string msgDeErrores = String.Empty;
            if (string.IsNullOrEmpty(strNombreUsuario)) { msgDeErrores += "\n * El nombre de usuario no debe tener espacios o quedar en blanco."; }
            if (!string.IsNullOrEmpty(msgDeErrores)) {
                Common.mostrarMensajeEnAlerta(msgDeErrores, this);
                return;
            }
            #endregion

            #region 4) Cargar label de bienvenida
            lblResultadoUsuario.Text = $"Bienvenido {strNombreUsuario} !";
            #endregion

            #region 5) Limpiar campos después de cargar la tabla
            //this.btnLimpiar_Click(this, e);
            #endregion
        }

        protected void btnInicio_Click(object sender, EventArgs e) {
            Response.Redirect("Inicio.aspx");
        }


        private void cargarGrilla() {
            const string cadenaConexion = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Viajes;Integrated Security=True";
            string consultaSQL = "SELECT * FROM Localidades";


            SqlConnection sqlConnection = new SqlConnection(cadenaConexion);
            sqlConnection.Open();

            SqlCommand sqlCommand = new SqlCommand(consultaSQL, sqlConnection);
            SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
            if (!sqlDataReader.Read()) { return; }
            gvPrueba.DataSource = sqlDataReader;
            gvPrueba.DataBind();
            sqlDataReader.Close();
            sqlConnection.Close();
        }
    }
}
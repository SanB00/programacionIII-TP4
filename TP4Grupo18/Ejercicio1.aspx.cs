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
#pragma warning disable IDE1006 // Naming Styles
        protected void Page_Load(object sender, EventArgs e) {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack) {
                asignarReglasEnLosValidadores();
                cargarListaProvincias();
            }
        }
#pragma warning restore IDE1006 // Naming Styles

        private void asignarReglasEnLosValidadores() {
            rfvLocalidadSeleccionada.ErrorMessage = "Seleccione una localidad del desplegable";
        }

        private void cargarListaProvincias() {
            string cadenaConexion = new ConexionBBDD().obtenerCadenaDeConexion("Viajes");
            string consultaSQL = "SELECT * FROM Provincias";
            DataTable dataTable = new ConexionBBDD().obtenerTablaDeLaBaseDeDatos(consultaSQL, cadenaConexion);
            ddlProvincia.Items.Clear();
            ddlProvincia.DataSource = dataTable;
            ddlProvincia.DataTextField = "NombreProvincia";
            ddlProvincia.DataValueField = "IdProvincia";
            ddlProvincia.DataBind();
            ddlProvincia.Items.Insert(0, new ListItem("--Seleccionar--", "0"));
        }
        private void cargarListaLocalidades(int idProvincia = 0, DropDownList ddlLocalidades = null) {
            string cadenaConexion = new ConexionBBDD().obtenerCadenaDeConexion("Viajes");
            string consultaSQL = "SELECT IdLocalidad, NombreLocalidad FROM Localidades WHERE IdProvincia = @IdProvincia";
            SqlParameter[] parametros = new SqlParameter[] {
                new SqlParameter("@IdProvincia", idProvincia)
            };
            DataTable dataTable = new ConexionBBDD().obtenerTablaDeLaBaseDeDatos(consultaSQL, cadenaConexion, parametros);
            ddlLocalidades.Items.Clear();
            ddlLocalidades.DataSource = dataTable;
            ddlLocalidades.DataTextField = "NombreLocalidad";
            ddlLocalidades.DataValueField = "IdLocalidad";
            ddlLocalidades.DataBind();
            ddlLocalidades.Items.Insert(0, new ListItem("--Seleccionar--", "0"));
        }
        private void cargarListaProvinciaFinal(int idProvincia = 0) {
            string cadenaConexion = new ConexionBBDD().obtenerCadenaDeConexion("Viajes");
            string consultaSQL = "SELECT * FROM Provincias ";
            string idProvinciaSeleccionada = idProvincia.ToString();
            consultaSQL = "SELECT * FROM Provincias WHERE IdProvincia <> " + idProvinciaSeleccionada;
            DataTable dataTable = new ConexionBBDD().obtenerTablaDeLaBaseDeDatos(consultaSQL, cadenaConexion);
            ddlProvinciaFinal.Items.Clear();
            ddlProvinciaFinal.DataSource = dataTable;
            ddlProvinciaFinal.DataTextField = "NombreProvincia";
            ddlProvinciaFinal.DataValueField = "IdProvincia";
            ddlProvinciaFinal.DataBind();
            ddlProvinciaFinal.Items.Insert(0, new ListItem("--Seleccionar--", "0"));
        }



        protected void ddlProvincia_SelectedIndexChanged(object sender, EventArgs e) {
            int idProvincia = int.Parse(ddlProvincia.SelectedValue);
            cargarListaLocalidades(idProvincia, ddlLocalidades);
            ddlProvinciaFinal.Items.Clear();
            cargarListaProvinciaFinal(idProvincia);
        }

        protected void ddlProvinciaFinal_SelectedIndexChanged(object sender, EventArgs e) {
            int idProvincia = int.Parse(ddlProvinciaFinal.SelectedValue);
            cargarListaLocalidades(idProvincia, ddlLocalidadesFinal);
        }

        protected void ddlLocalidadesFinal_SelectedIndexChanged(object sender, EventArgs e) {
            String strLocalidadInicio = Common.eliminarEspaciosDelTexto(ddlLocalidades.SelectedItem.Text);
            String strProvinciaInicio = Common.eliminarEspaciosDelTexto(ddlProvincia.SelectedItem.Text);
            String strLocalidadFin = Common.eliminarEspaciosDelTexto(ddlLocalidadesFinal.SelectedItem.Text);
            String strProvinciaFin = Common.eliminarEspaciosDelTexto(ddlProvinciaFinal.SelectedItem.Text);


            string msgDeErrores = String.Empty;
            if (string.IsNullOrEmpty(strLocalidadInicio)) { msgDeErrores += "\n * Falta localidad inicio."; }
            if (string.IsNullOrEmpty(strLocalidadFin)) { msgDeErrores += "\n * Falta localidad final."; }
            if (ddlLocalidades.SelectedValue == "0") { msgDeErrores += "\n * Falta seleccionar una localidad de inicio."; }
            if (ddlLocalidadesFinal.SelectedValue == "0") { msgDeErrores += "\n * Falta seleccionar una localidad de fin."; }
            if (ddlProvincia.SelectedValue == "0") { msgDeErrores += "\n * Falta seleccionar una provincia de inicio."; }
            if (ddlProvinciaFinal.SelectedValue == "0") { msgDeErrores += "\n * Falta seleccionar una provincia de fin."; }
            if (!string.IsNullOrEmpty(msgDeErrores)) {
                Common.mostrarMensajeEnAlerta("Errores:" + msgDeErrores, this);
                return;
            }

            double tarifaBase = 1500.50;
            string tipoSrv = ddlTipoServicio.SelectedItem.Text;
            string valSrv = ddlTipoServicio.SelectedValue;

            if (valSrv == "3") { tarifaBase *= 1.5; }
            else if (valSrv == "2") { tarifaBase += 500.00; }


            string mensajeFinal = $"VIAJE LISTO ({tipoSrv})\n\n";
            mensajeFinal += $"- Desde: {strLocalidadInicio} ({strProvinciaInicio})\n";
            mensajeFinal += $"- Hasta: {strLocalidadFin} ({strProvinciaFin})\n";
            mensajeFinal += $"- Costo Estimado: ${tarifaBase:N2}";


            Common.mostrarMensajeEnAlerta(mensajeFinal, this);
        }

        protected void ddlTipoServicio_SelectedIndexChanged(object sender, EventArgs e) {
            ddlLocalidadesFinal_SelectedIndexChanged(sender, e);
        }
    }
}
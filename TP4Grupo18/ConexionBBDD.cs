using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace TP4Grupo18
{
    public class ConexionBBDD
    {
        public string obtenerCadenaDeConexion(string nombreBBDD) {
            const string webconfigAttribute = "dbBase";
            try {
                string dbBaseWebconfig = ConfigurationManager.ConnectionStrings[webconfigAttribute].ConnectionString;
                return $"{dbBaseWebconfig};Initial Catalog = {nombreBBDD}";
            }
            catch (Exception ex) {
                throw new Exception($"Error al obtener la cadena de conexión {webconfigAttribute}: " + ex.Message);
            }
        }
        public DataTable obtenerTablaDeLaBaseDeDatos(string consultaSQL, string cadenaConexion = null, SqlParameter[] parametros = null) {
            string connectionString = string.IsNullOrEmpty(cadenaConexion) ? ConfigurationManager.ConnectionStrings["dbViajes"].ConnectionString : cadenaConexion;
            DataTable dataTable = new DataTable();

            // El bloque 'using' asegura que la conexión se cierre SIEMPRE, incluso si hay error
            using (SqlConnection sqlConnection = new SqlConnection(connectionString)) {
                try {
                    SqlCommand sqlCommand = new SqlCommand(consultaSQL, sqlConnection);
                    if (parametros != null) {
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
    }

}
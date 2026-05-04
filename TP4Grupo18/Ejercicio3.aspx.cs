using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP4Grupo18
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        //string LibreriaSQL = "Data Source=localhost;Initial Catalog=Neptuno;Integrated Security=True";
        string LibreriaSQL = "Data Source=DESKTOP-RFDMNU2\\SQLEXPRESS;Initial Catalog=Libreria;Integrated Security=True;Encrypt=False;TrustServerCertificate=True"; //yulieth
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
              
                string consultaSQL = "SELECT * FROM Temas";
                SqlConnection sqlConnection = new SqlConnection(LibreriaSQL);
                sqlConnection.Open();

                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(consultaSQL, sqlConnection);
                DataSet dataSet = new DataSet();

                sqlDataAdapter.Fill(dataSet, "TablaTemas");

                ddlTemas.DataSource = dataSet.Tables["TablaTemas"];
                ddlTemas.DataTextField = "Tema";
                ddlTemas.DataValueField = "IdTema";
                ddlTemas.DataBind();

                sqlConnection.Close();

                

            
            }
        }
    }
}
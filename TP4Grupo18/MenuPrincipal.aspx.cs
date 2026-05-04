using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP2Grupo18
{
    public partial class MenuPrincipal : System.Web.UI.Page
    {
        protected void btnEj1_Click(object sender, EventArgs e) {
            Response.Redirect("Ejercicio1.aspx");
        }

        protected void btnEj2_Click(object sender, EventArgs e) {
            Response.Redirect("Ejercicio2.aspx");
        }

        protected void btnEj3_Click(object sender, EventArgs e) {
            Response.Redirect("Ejercicio3.aspx");
        }
    }
}
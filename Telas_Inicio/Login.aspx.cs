using SITE_pim.LINQtoSQL;
using SITE_pim.Teslas_PosLC;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SITE_pim
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //BUSCA PARA FAZER LOGIN
            EXCHANGEDataContext bd = new EXCHANGEDataContext();

            var lon = (from lo in bd.Usuario
                       where lo.usu_email == txbEmail.Text.Trim()
                       && lo.usu_senha == txbSenha.Text.Trim()
                       select lo);

            if(lon.Count() > 0)
            {
                Server.Transfer("~/Teslas_PosLC/ContaPessoal.aspx");
            }
            else
            {
                Response.Redirect("~/Telas_Inicio/Login.aspx");
                txbEmail.Text = "Vôcê não possui um cadastro";
            }
        }
    }
}
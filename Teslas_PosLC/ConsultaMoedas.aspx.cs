using SITE_pim.LINQtoSQL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SITE_pim.Teslas_PosLC
{
    public partial class ConsultaMoedas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnMoeda_Click(object sender, EventArgs e)
        {
            EXCHANGEDataContext bd = new EXCHANGEDataContext();

            string nomeMoeda = txbMoeda.Text;
            try { 
            var consulMoeda = from cm in bd.Moeda
                              where cm.moeda_descricao.Contains(nomeMoeda)
                              join vm in bd.moeda_valor on cm.id_moeda equals vm.id_moeda_fk
                              select new
                              {
                                  cm.id_moeda,
                                  cm.moeda_descricao,
                                  cm.moeda_tipo,
                                  cm.moeda_padrao,
                                  vm.mv_valor
                              };
                gvMoeda.DataSource = consulMoeda;
                gvMoeda.DataBind();
                lblInfoM.Text = "Informações da moeda";
            }
            catch(Exception)
            {
                lblMoeda.Text = "O nome da moeda não existe";
            }
        }
    }
}
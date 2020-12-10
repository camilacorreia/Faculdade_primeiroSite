using SITE_pim.LINQtoSQL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SITE_pim.Teslas_PosLC
{
    public partial class Relatorios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bntRelat_Click(object sender, EventArgs e)
        {

            EXCHANGEDataContext bd = new EXCHANGEDataContext();

            try { 

                //PRIMEIRO GRID
            int idRelat = Convert.ToInt32(txbRelat.Text);

            var Relat = from cr in bd.transacoes
                           where cr.id_transacao.Equals(idRelat)
                           select new
                           {
                               cr.id_transacao,
                               cr.dt_transacao,
                               cr.tipo_transacao
                           };
            gvRelat.DataSource = Relat;
            gvRelat.DataBind();
                lblInfo.Text = "Informações da transação";

                //SEGUNDO GRID
      
                var Relat2 = from cr in bd.transacoes
                            where cr.id_transacao.Equals(idRelat)
                            select new
                            {
                                cr.transacao_qtd,
                                cr.transacao_vlr_total,
                                cr.transacao_status
                            };
                gvRelat2.DataSource = Relat2;
                gvRelat2.DataBind();
                lblValor.Text="Valores da Transação";
            }
            catch (Exception)
            {
                lblStatus.Text = "Identificador incorreto. Para visualizar os dados de transação por favor insira o id correto.";
            }
        }
    }
}
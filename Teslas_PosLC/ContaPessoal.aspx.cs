using SITE_pim.LINQtoSQL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SITE_pim.Teslas_PosLC
{
    public partial class ContaPessoal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConfirmar_Click(object sender, EventArgs e)
        {
            EXCHANGEDataContext bd = new EXCHANGEDataContext();

            try
            {
                //PRIMEIRO GRID
                string doc = txbConfirmar.Text;
                var cpessoal = from ct in bd.Usuario
                               where ct.usu_num_doc.Contains(doc)
                               select new
                               {
                                   ct.usu_nome,
                                   ct.usu_email,
                                   ct.usu_senha,
                               };

                dgPessoal.DataSource = cpessoal;
                dgPessoal.DataBind();
                lblPessoa.Text="Dados Pessoais";

                //SEGUNDO GRID
                string doc2 = txbConfirmar.Text;
                var cpessoal2 = from ct in bd.Usuario
                               where ct.usu_num_doc.Contains(doc)
                               select new
                               {
                                   ct.tipo_num_doc,
                                   ct.usu_num_doc,
                                   ct.usu_status
                                  
                               };

                dgPessoal2.DataSource = cpessoal2;
                dgPessoal2.DataBind();
                lblDocumento.Text = "Documentos";

                //TERCEIRO GRID
                string doc3 = txbConfirmar.Text;
                var cpessoal3 = from ct in bd.Usuario
                                where ct.usu_num_doc.Contains(doc)
                                select new
                                {
                                    ct.tipo_num_doc,
                                    ct.usu_num_doc,
                                    ct.usu_status,
                                };

                dgPessoal3.DataSource = cpessoal3;
                dgPessoal3.DataBind();
                lblContato.Text = "Contatos";

                //QUARTO GRID
                string doc4 = txbConfirmar.Text;
                var cpessoal4 = from ct in bd.Usuario
                                where ct.usu_num_doc.Contains(doc)
                                select new
                                {
                                    ct.usu_cep,
                                    ct.usu_num,
                                    ct.usu_comp,
                                };

                dgPessoal4.DataSource = cpessoal4;
                dgPessoal4.DataBind();
                lblInform.Text = "Informações extras";

            }
            catch (Exception)
            {
                lblStatus.Text = "Senha incorreta. Para visualizar os dados pessoais por favor insira a senha correta.";
            }
        }
    }
}
using SITE_pim.LINQtoSQL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SITE_pim.Telas_Inicio
{
    public partial class Cadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        { 
            EXCHANGEDataContext bd = new EXCHANGEDataContext();

            try
            {
                //RELAIZANDO O CADASTRO
                int num = Convert.ToInt32(Text_Num.Text);

                Usuario usua = new Usuario();

                usua.usu_nome = Text_Nome.Text;
                usua.usu_email = Text_Email.Text;
                usua.usu_senha = Text_Senha.Text;
                usua.tipo_num_doc = Text_TipoNum_Doc.Text;
                usua.usu_num_doc = Text_Usunumdoc.Text;
                usua.usu_telefone = Text_Telefone.Text;
                usua.usu_celular = Text_Celular.Text;
                usua.usu_status = "ATIVO";
                usua.usu_cep = Text_Cep.Text;
                usua.usu_num = num;
                usua.usu_comp = Text_Comp.Text;
                usua.cod_tipoUsu_fk = 3;

                bd.Usuario.InsertOnSubmit(usua);
                bd.SubmitChanges();
                Server.Transfer("~/Teslas_PosLC/ContaPessoal.aspx");
            }
            catch (Exception ex)
            {
                lblStatus.Text = "Alguma informação incerida não esta conforme solicitado ou "+ex.Message;
            }


        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Telas_Inicio/TelaInicial.aspx");
        }
    }
}
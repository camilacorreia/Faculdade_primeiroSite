<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContaPessoal.aspx.cs" Inherits="SITE_pim.Teslas_PosLC.ContaPessoal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <title>Conta Pessoal</title>
    <link rel="stylesheet" type="text/css" href="../Estilos/estiloMenuPrincipal.css" />
  
</head>
<body>
    <form id="form1" runat="server">
        <div class="row" >
             <div class="header">
            <h1>CriptoMoney S.A</h1>
        </div>

        <div class="topnav">
            <a href="https://localhost:44348/Teslas_PosLC/ConsultaMoedas.aspx" target="_self">Moedas</a> 
            <a href="https://localhost:44348/Teslas_PosLC/Relatorios.aspx" target="_self">Relatórios</a>
            <a href="https://localhost:44348/Teslas_PosLC/ContaPessoal.aspx" target="_self">Conta</a>
            <a href="https://localhost:44348/Telas_Inicio/TelaInicial.aspx" target="_self">Sair</a>
        </div>

            <div class="column">
                <img src="../Imagens/Ekwj.gif" width="600" height="560" id="imgper"/>
            </div>

            <div class="column">
            <div style="color:white" >
                <asp:Label ID="Label1" runat="server" Text="Por medidas de segurança informe o número do documento (CPF ou CNPJ, de acordo com o que foi apresentado no cadastro) para apresentar os dados pessoais:"></asp:Label>
                <br />
                <asp:TextBox ID="txbConfirmar" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="btnConfirmar" runat="server" Text="Confirmar" OnClick="btnConfirmar_Click"  />
                <br />
                <asp:Label ID="lblStatus" runat="server" Text="" style="color:red"></asp:Label>
                <br /><br />
                <asp:Label ID="lblPessoa" runat="server" Text="" style="color:white"></asp:Label>
                <asp:GridView ID="dgPessoal" runat="server"></asp:GridView>

                <br />
                <asp:Label ID="lblDocumento" runat="server" Text="" style="color:white"></asp:Label>
                <asp:GridView ID="dgPessoal2" runat="server"></asp:GridView>

                <br />
                <asp:Label ID="lblContato" runat="server" Text="" style="color:white"></asp:Label>
                <asp:GridView ID="dgPessoal3" runat="server"></asp:GridView>

                <br />
                <asp:Label ID="lblInform" runat="server" Text="" style="color:white"></asp:Label>
                <asp:GridView ID="dgPessoal4" runat="server"></asp:GridView>

             </div> 

         </div>
        </div>
    </form>
</body>
</html>

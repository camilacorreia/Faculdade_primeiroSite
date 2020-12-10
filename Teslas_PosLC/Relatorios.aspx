<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Relatorios.aspx.cs" Inherits="SITE_pim.Teslas_PosLC.Relatorios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Ralatórios</title>
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
                <img id="imgper" src="../Imagens/iot-post.gif" width="600" height="560"/>
            </div>

            <div class="column " style="color:white">
                <h3>Facilidade de consulta</h3>
                <p>
                    O processo de transferência de ativos digitais é muito simples. 
                    Basta clicar em alguns botões e confirmar a transação. O pagamento pode ser recebido em tempo real
                    , porque existem milhares de mineradores que processam essas transações na blockchain.
                </p>
                <p>
                    E melhor ainda, as criptomoedas, por sua própria natureza, não estão sujeitas
                    às taxas de câmbio, taxas de juros, encargos de transação ou outras taxas 
                    impostas por um país específico. E usando uma rede ponto a ponto, transferências
                    e transações transfronteiriças podem ser realizadas sem complicações devido a 
                    flutuações de câmbio, e assim por diante.
                </p>

                <div style="color:white">
                <br /><br />
                <asp:Label ID="lblRelat" runat="server" Text="Por medidas de segurança informe o id da transação"></asp:Label>
                <br />
                <asp:TextBox ID="txbRelat" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="bntRelat" runat="server" Text="Consultar" OnClick="bntRelat_Click" />
                <br />
                <asp:Label ID="lblStatus" runat="server" Text="" style="color:red"></asp:Label>

                <br />
                
                <asp:Label ID="lblInfo" runat="server" Text="" style="color:white"></asp:Label>
                <asp:GridView ID="gvRelat" runat="server"></asp:GridView>
                <br /><br />
                <asp:Label ID="lblValor" runat="server" Text="" style="color:white"></asp:Label>
                <asp:GridView ID="gvRelat2" runat="server"></asp:GridView>
            </div>
            </div>

        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultaMoedas.aspx.cs" Inherits="SITE_pim.Teslas_PosLC.ConsultaMoedas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Consulta moedas</title>
    <link rel="stylesheet" type="text/css" href="../Estilos/estiloMenuPrincipal.css" />

</head>
<body>
    <form id="form1" runat="server">
        <div class="row">
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
                <img src="../Imagens/bitcoin-1.gif"width="600" height="560" id="imgper" />
            </div>

            <div class="column" style="color:white">
                 <h3>O que são criptomoedas?</h3>
                <p>
                    As criptomoedas são moedas digitais. Isso significa que elas não existem
                    fisicamente, estão presentes apenas no ambiente virtual. Uma das características
                    mais notáveis das criptomoedas é que elas não são controladas por uma autoridade,
                    como um governo ou instituição financeira. Essa descentralização é provocada por
                    transações ponto a ponto (peer-to-peer), facilitadas pela tecnologia blockchain,
                    que processa as transferências e as registra em um livro-razão visível ao público.
                </p>
                <h3>Vantagens</h3>
                <ul>
                    <li>Potencial de valorização</li>
                    <li>Privacidade, anonimato e autonomia</li>
                    <li>Transferência com facilidade, rapidez e custo reduzido</li>
                    <li>Acessibilidade</li>
                    <li>Blockchain: um novo meio de inovação</li>
                    <li>Sua liberdade financeira em um único lugar</li>
                
                </ul>
            </div>

            <div class="column" style="color:white">
               
                <asp:Label ID="lblMoeda" runat="server" Text="Informe o nome da moeda:"></asp:Label>
                <br />
                <asp:TextBox ID="txbMoeda" runat="server"></asp:TextBox>
            
            <div class="column">
                <asp:Button ID="btnMoeda" runat="server" Text="Consultar" OnClick="btnMoeda_Click" Width="110px" />
            </div>

                <br />
                <asp:Label ID="lblStatus" runat="server" Text="" style="color:red"></asp:Label>
                <br />

                <asp:Label ID="lblInfoM" runat="server" Text="" ></asp:Label>
                <asp:GridView ID="gvMoeda" runat="server" Width="342px"></asp:GridView>
            </div>
            </div>
    </form>
</body>
</html>

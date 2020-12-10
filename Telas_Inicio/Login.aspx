<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SITE_pim.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Login</title>

    <link rel="stylesheet" type="text/css" href="../Estilos/estiloMenuPrincipal.css" />
    <link rel="stylesheet" type="text/css" href="../Estilos/EstiloLogin.css"/>

    <style type="text/css">
        .login {
            height: 599px;
        }
    </style>

</head>
<body style="height: 939px">
    <form id="form1" runat="server">
        <div >

        <div class="header">
            <h1>CriptoMoney S.A</h1>
        </div>

        <div class="topnav">
            <a href="https://localhost:44348/Telas_Inicio/TelaInicial.aspx" target="_self">Sobre</a>
            <a href="https://localhost:44348/Telas_Inicio/Login.aspx" target="_self">Login</a>
            <a href="https://localhost:44348/Telas_Inicio/Cadastro.aspx" target="_self">Cadastro</a>
        </div>

        <div class="box">

        <div >
        <div >

            <h2>Login</h2>
            <asp:Label ID="lblEmail"   runat="server" Text="E-mail:">Informe seu e-mail</asp:Label>
            <asp:TextBox ID="txbEmail" runat="server" Width="313px" Height="50px"></asp:TextBox>
            </div>

            <div >
            <asp:Label ID="lblSenha"  runat="server" Text="Senha:"></asp:Label>
            <asp:TextBox ID="txbSenha" type="password" runat="server" Width="310px" Height="50px"></asp:TextBox>
            </div>

            <div >
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" Width="140px" Height="39px"/>
            </div>

        </div>
        </div>

        </div>
    </form>
</body>
</html>

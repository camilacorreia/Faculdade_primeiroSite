<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="SITE_pim.Telas_Inicio.Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Cadastro</title>
    <link rel="stylesheet" type="text/css" href="../Estilos/ComponentesCadastro.css"/>
</head>
<body>
    <form id="form1" runat="server">
       
    <div class="row">
        <div class="header">
            <h1>CriptoMoney S.A</h1>
        </div>

        <div class="topnav">
            <a href="https://localhost:44348/Telas_Inicio/TelaInicial.aspx" target="_self">Sobre</a> 
            <a href="https://localhost:44348/Telas_Inicio/Login.aspx" target="_self">Login</a>
            <a href="https://localhost:44348/Telas_Inicio/Cadastro.aspx" target="_self">Cadastro</a>
        </div>




        <div class="full-box">
        <div id="main-container" >

            <div class="full-box spacing ">
            <asp:Label ID="Label1" runat="server" Text="Nome Completo"></asp:Label>
            <asp:TextBox ID="Text_Nome" runat="server" Width="475px" placeholder=""></asp:TextBox>
            </div>
        
            <div class="full-box">
            <asp:Label ID="Label2" runat="server" Text="E-mail"></asp:Label>
            <asp:TextBox ID="Text_Email" runat="server" Width="473px" placeholder="ex: xxx@xxx.com"></asp:TextBox>
            </div>    
        
            <div class="half-box">
            <asp:Label ID="Label3" runat="server" Text="Senha para login"></asp:Label>
            <asp:TextBox ID="Text_Senha" runat="server" Width="475px" type="password"></asp:TextBox>
            </div>   
         
            <div class="half-box">
            <asp:Label ID="Label5" runat="server" Text="Digite tipo de documento"></asp:Label>
            <asp:TextBox ID="Text_TipoNum_Doc" runat="server" Width="475px" placeholder="CPF OU CNPJ"></asp:TextBox>
            </div>  
          
            <div class="half-box">
            <asp:Label ID="Label13" runat="server" Text="Número do documento de acordo como escolhido(CPF ou CNPJ)"></asp:Label>
            <asp:TextBox ID="Text_Usunumdoc" runat="server" Width="474px" placeholder="não é necessário caracteres especiais"></asp:TextBox>
            </div>
          
            <div class="half-box">
            <asp:Label ID="Label8" runat="server" Text="Telefone:"></asp:Label>
            <asp:TextBox ID="Text_Telefone" runat="server" Width="472px" placeholder="não é necessário caracteres especiais"></asp:TextBox>           
            </div> 
          
            <div class="half-box">
            <asp:Label ID="Label9" runat="server" Text="Celular:"></asp:Label>
            <asp:TextBox ID="Text_Celular" runat="server" Width="474px" placeholder="não é necessário caracteres especiais"></asp:TextBox>            
            </div>  
          
            <div class="half-box">
            <asp:Label ID="Label10" runat="server" Text="CEP:"></asp:Label>
            <asp:TextBox ID="Text_Cep" runat="server" Width="472px" placeholder="não é necessário caracteres especiais"></asp:TextBox>            
            </div>

            <div class="half-box">
            <asp:Label ID="Label11" runat="server" Text="Número da residencia:"></asp:Label>
            <asp:TextBox ID="Text_Num" runat="server" Width="474px"></asp:TextBox>            
            </div>
            
            <div class="full-box">
            <asp:Label ID="Label12" runat="server" Text="Complemento:"></asp:Label>
            <asp:TextBox ID="Text_Comp" runat="server" Width="474px" placeholder="ex: casa1"></asp:TextBox>            
            </div>

            <div class="full-box">
            <asp:Label ID="Label4" runat="server" Text="Li e aceito os termos e condições"></asp:Label>
            <asp:RadioButton ID="RadioButton1" runat="server" />
            <a  href="https://localhost:44348/LGPD/TermodeUso.aspx" target="_blank">Termos e Condições de Uso</a>
            </div>
            <br />
            <br />
            <div class="full-box">
            <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" OnClick="btnCadastrar_Click" Width="495px" />
            </div>

            <div class="half-box">
            <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" Width="500px" />
            </div>

            <div class="half-box">
            <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
            </div>
        
        </div>    
        </div>

    </div>
    </form>
</body>
</html>

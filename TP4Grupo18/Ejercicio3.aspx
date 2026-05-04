<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio3.aspx.cs" Inherits="TP4Grupo18.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 185px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        &nbsp;<table class="auto-style1">
                <tr>
                    <td class="auto-style2">Seleccionar Tema:</td>
                    <td>
                        <asp:DropDownList ID="ddlTemas" runat="server">
                            <asp:ListItem>Tema 1</asp:ListItem>
                            <asp:ListItem>Tema 2</asp:ListItem>
                            <asp:ListItem>Tema 3</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <p>
            <asp:LinkButton ID="lbVerLibros" runat="server">Ver Libros</asp:LinkButton>
        </p>
    </form>
</body>
</html>

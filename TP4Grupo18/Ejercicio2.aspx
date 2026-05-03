<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio2.aspx.cs" Inherits="TP4Grupo18.Ejercicio2" %>

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
            height: 23px;
        }
        .auto-style3 {
            height: 23px;
            width: 105px;
        }
        .auto-style4 {
            width: 105px;
        }
        .auto-style5 {
            height: 23px;
            width: 91px;
        }
        .auto-style6 {
            width: 91px;
        }
        .auto-style7 {
            height: 23px;
            width: 242px;
        }
        .auto-style8 {
            width: 242px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">IdProducto</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Igual a </asp:ListItem>
                        <asp:ListItem>Mayor a </asp:ListItem>
                        <asp:ListItem>Menor a</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox1" runat="server" Width="205px"></asp:TextBox>
                </td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style4">IdCategoria</td>
                <td class="auto-style6">
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>Igual a</asp:ListItem>
                        <asp:ListItem>Menor a</asp:ListItem>
                        <asp:ListItem>Mayor a</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox2" runat="server" Width="205px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Button ID="btnFiltrar" runat="server" style="margin-left: 21px" Text="Filtrar" />
                    <asp:Button ID="btnQuitarFiltro" runat="server" style="margin-left: 31px" Text="Quitar Filtro" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style6">
                    <asp:GridView ID="gvProductos" runat="server">
                    </asp:GridView>
                </td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>

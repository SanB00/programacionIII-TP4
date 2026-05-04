<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio2.aspx.cs" Inherits="TP4Grupo18.Ejercicio2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .colBordes {
            width: 10%;
        }

        .colEtiquetas {
            width: 20%;
            text-align: right;
            font-weight: bold;
        }

        .colCampos {
            width: 20%;
            text-align: center;
        }

        .colValidacion {
            width: 35%;
            text-align: left;
        }

        td {
            vertical-align: top;
            height: 100%;
        }

            td select {
                width: 205px;
                height: 100%;
            }

        h3 {
            border-bottom: 2px solid darkblue; /* Línea azul de 2px de grosor */
            display: inline-block; /* Hace que la línea solo cubra el texto, no el ancho total */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td class="colBordes">&nbsp;</td>
                <td class="colEtiquetas">&nbsp;</td>
                <td class="colCampos">
                    <h2>Ejercicio 2</h2>
                </td>
                <td class="colValidacion">&nbsp;</td>
                <td class="colBordes">&nbsp;</td>
            </tr>
            <tr>
                <td class="colBordes">&nbsp;</td>
                <td class="colEtiquetas"></td>
                <td class="colCampos">&nbsp;</td>
                <td class="colValidacion">&nbsp;</td>
                <td class="colBordes">&nbsp;</td>
            </tr>
            <tr>
                <td class="colBordes">&nbsp;</td>
                <td class="colEtiquetas">Id Producto</td>
                <td class="colCampos">
                    <asp:DropDownList ID="ddlFiltroProducto" runat="server">
                        <asp:ListItem Value="=">Igual a</asp:ListItem>
                        <asp:ListItem Value=">">Mayor a</asp:ListItem>
                        <asp:ListItem Value="<">Menor a</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="colValidacion">
                    <asp:TextBox ID="txtFiltroProducto" runat="server" Width="205px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="revIdProducto" runat="server" ControlToValidate="txtFiltroProducto" ValidationExpression="^\d+$" ErrorMessage="Sólo números" ForeColor="Red" />
                </td>
                <td class="colBordes">&nbsp;</td>
            </tr>
            <tr>
                <td class="colBordes">&nbsp;</td>
                <td class="colEtiquetas">Id Categoría</td>
                <td class="colCampos">
                    <asp:DropDownList ID="ddlFiltroCategoria" runat="server">
                        <asp:ListItem Value="=">Igual a</asp:ListItem>
                        <asp:ListItem Value=">">Mayor a</asp:ListItem>
                        <asp:ListItem Value="<">Menor a</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="colValidacion">
                    <asp:TextBox ID="txtFiltroCategoria" runat="server" Width="205px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="revIdCategoria" runat="server" ControlToValidate="txtFiltroCategoria" ValidationExpression="^\d+$" ErrorMessage="Sólo números" ForeColor="Red" />
                </td>
                <td class="colBordes">&nbsp;</td>
            </tr>
            <tr>
                <td class="colBordes">&nbsp;</td>
                <td class="colCampos">&nbsp;</td>
                <td class="colValidacion">&nbsp;</td>
                <td class="colBordes">&nbsp;</td>
            </tr>
            <tr>
                <td class="colBordes">&nbsp;</td>
                <td class="colEtiquetas">&nbsp;</td>
                <td class="colCampos">&nbsp;</td>
                <td class="colValidacion">
                    <asp:Button ID="btnFiltrar" runat="server" Style="margin-left: 21px" Text="Filtrar" OnClick="btnFiltrar_Click" />
                    <asp:Button ID="btnQuitarFiltro" runat="server" Style="margin-left: 31px" Text="Quitar Filtro" OnClick="btnQuitarFiltro_Click" />
                </td>
                <td class="colBordes">&nbsp;</td>
            </tr>
            <tr>
                <td class="colBordes">&nbsp;</td>
                <td class="colCampos">&nbsp;</td>
                <td class="colValidacion">&nbsp;</td>
                <td class="colBordes">&nbsp;</td>
            </tr>
            <tr>
                <td class="colBordes">&nbsp;</td>
                <td class="colCampos">&nbsp;</td>
                <td class="colBordes">&nbsp;</td>
            </tr>
            <tr>
                <td class="colBordes">&nbsp;</td>
                <td class="colEtiquetas">&nbsp;</td>
                <td class="colBordes">
                    <asp:Label ID="lblCantResultados" runat="server" Text="Resultados:" BorderColor="#003366" Font-Bold="True" ForeColor="#006666"></asp:Label></td>
                <td class="colValidacion">&nbsp;</td>
                <td class="colBordes">&nbsp;</td>
            </tr>
            <tr>
                <td class="colBordes">&nbsp;</td>
                <td class="colCampos"></td>
                <td class="colValidacion">
                    <asp:GridView ID="gvProductos" runat="server">
                    </asp:GridView>
                </td>
                <td class="colBordes">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>

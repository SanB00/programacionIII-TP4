<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio3.aspx.cs" Inherits="TP4Grupo18.Ejercicio3" %>

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
        <div>
            <table>
                <tr>
                    <td class="colBordes">&nbsp;</td>
                    <td class="colEtiquetas">&nbsp;</td>
                    <td class="colCampos">
                        <h2>Ejercicio 3</h2>
                    </td>
                    <td class="colValidacion">&nbsp;</td>
                    <td class="colBordes">&nbsp;</td>
                </tr>
                <tr>
                    <td class="colBordes">&nbsp;</td>
                    <td class="colEtiquetas">&nbsp;</td>
                    <td class="colCampos"></td>
                    <td class="colValidacion">&nbsp;</td>
                    <td class="colBordes">&nbsp;</td>
                </tr>
                <tr>
                    <td class="colBordes">&nbsp;</td>
                    <td class="colEtiquetas">Seleccionar Tema:</td>
                    <td class="colCampos">
                        <asp:DropDownList ID="ddlTemas" runat="server">
                            <asp:ListItem Value="1">Tema 1</asp:ListItem>
                            <asp:ListItem Value="2">Tema 2</asp:ListItem>
                            <asp:ListItem Value="3">Tema 3</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="colValidacion">&nbsp;</td>
                    <td class="colBordes">&nbsp;</td>
                </tr>
                <tr>
                    <td class="colBordes">&nbsp;</td>
                    <td class="colEtiquetas">&nbsp;</td>
                    <td class="colCampos"></td>
                    <td class="colValidacion">&nbsp;</td>
                    <td class="colBordes">&nbsp;</td>
                </tr>
                <tr>
                    <td class="colBordes">
                        <asp:LinkButton ID="lbVerLibros" runat="server">Ver Libros</asp:LinkButton>
                    </td>
                    <td class="colEtiquetas">&nbsp;</td>
                    <td class="colCampos"></td>
                    <td class="colValidacion">&nbsp;</td>
                    <td class="colBordes">&nbsp;</td>
                </tr>
            </table>
        </div>

    </form>
</body>
</html>

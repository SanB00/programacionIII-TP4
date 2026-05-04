<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio3B.aspx.cs" Inherits="TP4Grupo18.Ejercicio3B" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
                    <h2>Ejercicio 3</h2>
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
                    <asp:GridView ID="gvLibros" runat="server">
                    </asp:GridView>
                </td>
                <td class="colBordes">&nbsp;</td>
            </tr>
            <tr>
                <td class="colBordes">&nbsp;</td>
                <td class="colCampos">&nbsp;</td>
                <td class="colBordes">&nbsp;</td>
            </tr>

            <tr>
                <td class="colBordes">&nbsp;</td>
                <td class="colEtiquetas"><asp:LinkButton ID="lbConsultarOtroTema" runat="server">Consultar Otro Tema</asp:LinkButton></td>
                <td class="colCampos">&nbsp;</td>
                <td class="colValidacion">&nbsp;</td>
                <td class="colBordes">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>

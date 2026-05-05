<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio3B.aspx.cs" Inherits="TP4Grupo18.Ejercicio3B" MasterPageFile="Principal.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

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
                <td class="colEtiquetas"><asp:LinkButton ID="lbConsultarOtroTema" runat="server" OnClick="lbConsultarOtroTema_Click">Consultar Otro Tema</asp:LinkButton></td>
                <td class="colCampos">&nbsp;</td>
                <td class="colValidacion">&nbsp;</td>
                <td class="colBordes">&nbsp;</td>
            </tr>
        </table>
    
</asp:Content>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio3.aspx.cs" Inherits="TP4Grupo18.Ejercicio3" MasterPageFile="Principal.Master" %>
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
                    <td class="colBordes">&nbsp;</td>
                    <td class="colEtiquetas">
                        <asp:LinkButton ID="lbVerLibros" runat="server" OnClick="lbVerLibros_Click">Ver Libros</asp:LinkButton></td>
                    <td class="colCampos"></td>
                    <td class="colValidacion">&nbsp;</td>
                    <td class="colBordes">&nbsp;</td>
                </tr>
            </table>
</asp:Content>
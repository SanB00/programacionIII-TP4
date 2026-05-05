<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio2.aspx.cs" Inherits="TP4Grupo18.Ejercicio2" MasterPageFile="Principal.Master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
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
    
</asp:Content>
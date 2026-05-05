<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio1.aspx.cs" Inherits="TP4Grupo18.Ejercicio1" MasterPageFile="Principal.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <div>
            <table>
                <tr>
                    <td class="colBordes">&nbsp;</td>
                    <td class="colEtiquetas">&nbsp;</td>
                    <td class="colCampos">
                        <h2>Ejercicio 1</h2>
                    </td>
                    <td class="colValidacion">&nbsp;</td>
                    <td class="colBordes">&nbsp;</td>
                </tr>
                <tr>
                    <td class="colBordes">&nbsp;</td>
                    <td class="colEtiquetas">
                        <h3>DESTINO INICIO</h3>
                    </td>
                    <td class="colCampos">&nbsp;</td>
                    <td class="colValidacion">&nbsp;</td>
                    <td class="colBordes">&nbsp;</td>
                </tr>
                <tr>
                    <td class="colBordes "></td>
                    <td class="colEtiquetas">PROVINCIA: </td>
                    <td class="colCampos">
                        <asp:DropDownList ID="ddlProvincia" runat="server" ToolTip="Seleccione una de las provincias cargadas" AppendDataBoundItems="True" AutoPostBack="True" OnSelectedIndexChanged="ddlProvincia_SelectedIndexChanged">
                            <asp:ListItem>--Seleccionar--</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="colValidacion">
                        <asp:RequiredFieldValidator
                            ID="rfvProvinciaSeleccionada"
                            runat="server"
                            ControlToValidate="ddlProvincia"
                            ErrorMessage="Seleccione una Provincia"
                            ValidationGroup="vgProvinciaLocalidad"
                            Display="Dynamic"
                            ForeColor="Red">* Seleccione una Provincia</asp:RequiredFieldValidator>
                    </td>
                    <td class="colBordes">&nbsp;</td>
                </tr>
                <tr>
                    <td class="colBordes "></td>
                    <td class="colEtiquetas">LOCALIDAD: </td>
                    <td class="colCampos">
                        <asp:DropDownList ID="ddlLocalidades" runat="server" ToolTip="Seleccione una de las localidades cargadas" AppendDataBoundItems="True" AutoPostBack="True">
                            <asp:ListItem>--Seleccionar--</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="colValidacion">
                        <asp:RequiredFieldValidator
                            ID="rfvLocalidadSeleccionada"
                            runat="server"
                            ControlToValidate="ddlLocalidades"
                            ErrorMessage="Seleccione una localidad"
                            ValidationGroup="vgProvinciaLocalidad"
                            Display="Dynamic"
                            ForeColor="Red">* Seleccione una localidad</asp:RequiredFieldValidator>
                    </td>
                    <td class="colBordes">&nbsp;</td>
                </tr>
                <tr>
                    <td class="colBordes ">&nbsp;</td>
                    <td class="colEtiquetas">&nbsp;</td>
                    <td class="colCampos">&nbsp;</td>
                    <td class="colValidacion">&nbsp;</td>
                    <td class="colBordes">&nbsp;</td>
                </tr>
                <tr>
                    <td class="colBordes "></td>
                    <td class="colEtiquetas"></td>
                    <td class="colCampos"></td>
                    <td class="colValidacion"></td>
                    <td class="colBordes">&nbsp;</td>
                </tr>
                <tr>
                    <td class="colBordes">&nbsp;</td>
                    <td class="colEtiquetas">
                        <h3>DESTINO FINAL</h3>
                    </td>
                    <td class="colCampos">&nbsp;</td>
                    <td class="colValidacion">&nbsp;</td>
                    <td class="colBordes">&nbsp;</td>
                </tr>
                <tr>
                    <td class="colBordes "></td>
                    <td class="colEtiquetas">PROVINCIA: </td>
                    <td class="colCampos">
                        <asp:DropDownList ID="ddlProvinciaFinal" runat="server" ToolTip="Seleccione una de las provincias cargadas" AppendDataBoundItems="True" AutoPostBack="True" OnSelectedIndexChanged="ddlProvinciaFinal_SelectedIndexChanged">
                            <asp:ListItem>--Seleccionar--</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="colValidacion">
                        <asp:RequiredFieldValidator
                            ID="rfvProvinciaFinal"
                            runat="server"
                            ControlToValidate="ddlProvinciaFinal"
                            ErrorMessage="Seleccione una Provincia"
                            ValidationGroup="vgProvinciaLocalidad"
                            Display="Dynamic"
                            ForeColor="Red">* Seleccione una Provincia</asp:RequiredFieldValidator>
                    </td>
                    <td class="colBordes">&nbsp;</td>
                </tr>
                <tr>
                    <td class="colBordes "></td>
                    <td class="colEtiquetas">LOCALIDAD: </td>
                    <td class="colCampos">
                        <asp:DropDownList ID="ddlLocalidadesFinal" runat="server" ToolTip="Seleccione una de las localidades cargadas" AppendDataBoundItems="True" OnSelectedIndexChanged="ddlLocalidadesFinal_SelectedIndexChanged">
                            <asp:ListItem>--Seleccionar--</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="colValidacion">
                        <asp:RequiredFieldValidator
                            ID="rfvLocalidadFinal"
                            runat="server"
                            ControlToValidate="ddlLocalidadesFinal"
                            ErrorMessage="Seleccione una localidad"
                            ValidationGroup="vgProvinciaLocalidad"
                            Display="Dynamic"
                            ForeColor="Red">* Seleccione una localidad</asp:RequiredFieldValidator>
                    </td>
                    <td class="colBordes">&nbsp;</td>
                </tr>
                 <tr>
                    <td class="colBordes ">&nbsp;</td>
                    <td class="colEtiquetas">&nbsp;</td>
                    <td class="colCampos">
&nbsp;</td>
                    <td class="colValidacion">
&nbsp;</td>
                    <td class="colBordes">&nbsp;</td>
                </tr>
                <tr>
                    <td class="colBordes ">&nbsp;</td>
                    <td class="colEtiquetas">TIPO DE VIAJE</td>
                    <td class="colCampos">
                        <asp:DropDownList ID="ddlTipoServicio" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlTipoServicio_SelectedIndexChanged">
                            <asp:ListItem>-- Seleccione --</asp:ListItem>
                            <asp:ListItem Value="1">Estándar</asp:ListItem>
                            <asp:ListItem Value="2">Premium</asp:ListItem>
                            <asp:ListItem Value="3">Ultra vip premium</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="colValidacion">
                        <asp:RequiredFieldValidator
                            ID="rfvLocalidadFinal0"
                            runat="server"
                            ControlToValidate="ddlTipoServicio"
                            ErrorMessage="Seleccione un el tipo de sevicio"
                            ValidationGroup="vgProvinciaLocalidad"
                            Display="Dynamic"
                            ForeColor="Red">* Seleccione un el tipo de servicio</asp:RequiredFieldValidator>
                    </td>
                    <td class="colBordes">&nbsp;</td>
                </tr>
                <tr>
                    <td class="colBordes ">&nbsp;</td>
                    <td class="colEtiquetas">&nbsp;</td>
                    <td class="colCampos">&nbsp;</td>
                    <td class="colValidacion">&nbsp;</td>
                    <td class="colBordes">&nbsp;</td>
                </tr>
            </table>
        </div>
</asp:Content>
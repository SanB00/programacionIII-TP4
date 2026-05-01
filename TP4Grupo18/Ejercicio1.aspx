<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio1.aspx.cs" Inherits="TP4Grupo18.Ejercicio1" %>

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
            </table>
        </div>

    </form>
</body>
</html>

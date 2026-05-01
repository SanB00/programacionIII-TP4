<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio1.aspx.cs" Inherits="TP4Grupo18.Ejercicio1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

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
            border-bottom: 2px solid blue; /* Línea azul de 2px de grosor */
            display: inline-block; /* Hace que la línea solo cubra el texto, no el ancho total */
        }
        .auto-style2 {
            height: 100%;
        }
        .auto-style3 {
            width: 20%;
            text-align: right;
            font-weight: bold;
            height: 100%;
        }
        .auto-style4 {
            width: 20%;
            text-align: center;
            height: 100%;
        }
        .auto-style5 {
            width: 35%;
            text-align: left;
            height: 100%;
        }
        .auto-style6 {
            width: 10%;
            height: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">


        <div>
            <table class="auto-style1">
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
                        <asp:Label ID="Label2" runat="server" Font-Size="Large" Font-Underline="True" Text="DESTINO INICIO"></asp:Label>
                    </td>
                    <td class="colCampos">&nbsp;               </td>
                    <td class="colValidacion">&nbsp;</td>
                    <td class="colBordes">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style3">PROVINCIA: </td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="ddlProvincia" runat="server" ToolTip="Seleccione una de las provincias cargadas" AppendDataBoundItems="True" AutoPostBack="True">
                            <asp:ListItem>--Seleccionar--</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator
                            ID="rfvProvinciaSeleccionada"
                            runat="server"
                            ControlToValidate="ddlProvincia"
                            ErrorMessage="Seleccione una Provincia"
                            ValidationGroup="vgProvinciaLocalidad"
                            Display="Dynamic"
                            ForeColor="Red">* Seleccione una Provincia</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style6"></td>
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
                    <td class="auto-style2"></td>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Font-Size="Large" Font-Underline="True" Text="DESTINO FINAL"></asp:Label>
                    </td>
                    <td class="auto-style4"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style6"></td>
                </tr>

                <tr>
                    <td class="colBordes ">&nbsp;</td>
                    <td class="colEtiquetas">PROVINCIA:</td>
                    <td class="colCampos">
                        <asp:DropDownList ID="ddlProvinciaFinal" runat="server" ToolTip="Seleccione una de las provincias cargadas" AppendDataBoundItems="True" AutoPostBack="True">
                            <asp:ListItem>--Seleccionar--</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="colValidacion">&nbsp;</td>
                    <td class="colBordes">&nbsp;</td>
                </tr>

                <tr>
                    <td class="colBordes ">&nbsp;</td>
                    <td class="colEtiquetas">LOCALIDAD:</td>
                    <td class="colCampos">
                        <asp:DropDownList ID="ddlLocalidadesFinal" runat="server" ToolTip="Seleccione una de las localidades cargadas" AppendDataBoundItems="True" AutoPostBack="True">
                            <asp:ListItem>--Seleccionar--</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="colValidacion">&nbsp;</td>
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
                    <td class="colBordes ">&nbsp;</td>
                    <td class="colEtiquetas">&nbsp;</td>
                    <td class="colCampos">&nbsp;</td>
                    <td class="colValidacion">&nbsp;</td>
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
                    <td class="colBordes ">&nbsp;</td>
                    <td class="colEtiquetas">&nbsp;</td>
                    <td class="colCampos">&nbsp;</td>
                    <td class="colValidacion">&nbsp;</td>
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
                    <td class="colBordes ">&nbsp;</td>
                    <td class="colEtiquetas">&nbsp;</td>
                    <td class="colCampos">&nbsp;</td>
                    <td class="colValidacion">&nbsp;</td>
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
                    <td class="auto-style2"></td>
                    <td class="auto-style3"></td>
                    <td class="auto-style4"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style6"></td>
                </tr>

                <tr>
                    <td class="colBordes ">&nbsp;</td>
                    <td class="colEtiquetas">&nbsp;</td>
                    <td class="colCampos">&nbsp;</td>
                    <td class="colValidacion">&nbsp;</td>
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

        <asp:GridView ID="gvPrueba" runat="server">
        </asp:GridView>

    </form>
</body>
</html>

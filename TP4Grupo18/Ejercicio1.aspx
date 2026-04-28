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
            width: 15%;
            background-color: lightblue;
            background-color: lightblue;
        }

        .colEtiquetas {
            width: 20%;
            text-align: right;
            font-weight: bold;
            font-weight: bold;
        }

        .colCampos {
            width: 25%;
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
        .auto-style2 {
            height: 100%;
        }
        .auto-style3 {
            width: 20%;
            text-align: right;
            font-weight: bold;
            font-weight: bold;
            height: 100%;
        }
        .auto-style4 {
            width: 25%;
            text-align: center;
            height: 100%;
        }
        .auto-style5 {
            width: 35%;
            text-align: left;
            height: 100%;
        }
        .auto-style6 {
            width: 15%;
            background-color: lightblue;
            background-color: lightblue;
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
                        <h3>Localidades</h3>
                    </td>
                    <td class="colValidacion">&nbsp;</td>
                    <td class="colBordes">&nbsp;</td>
                </tr>
                <tr>
                    <td class="colBordes ">&nbsp;</td>
                    <td class="colEtiquetas">Nombre de la localidad </td>
                    <td class="colCampos">
                        <asp:TextBox ID="txtLocalidad" runat="server" Width="198px"></asp:TextBox>
                    </td>
                    <td class="colValidacion">
                        <asp:RequiredFieldValidator
                            ID="rfvLocalidad"
                            runat="server"
                            ControlToValidate="txtLocalidad"
                            ErrorMessage="La localidad es un campo requerido"
                            ValidationGroup="vgLocalidad"
                            Display="Dynamic"
                            ForeColor="Red" />

                        <asp:RegularExpressionValidator
                            ID="revLocalidad"
                            runat="server"
                            ValidationGroup="vgLocalidad"
                            ControlToValidate="txtLocalidad"
                            Display="Dynamic"
                            ForeColor="Red" />
                    </td>
                    <td class="colBordes">&nbsp;</td>
                </tr>
                <tr>
                    <td class="colBordes ">&nbsp;</td>
                    <td class="colEtiquetas">&nbsp;</td>
                    <td class="colCampos">
                        <asp:Button ID="btnGuardarLocalidad"
                            ValidationGroup="vgLocalidad"
                            Text="Guardar Localidad"
                            ToolTip=":)"
                            runat="server"
                            OnClick="btnGuardarLocalidad_Click"
                            Width="205px" />
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
                    <td class="auto-style2"></td>
                    <td class="auto-style3"></td>
                    <td class="auto-style4">
                        <h3>Usuarios</h3>
                    </td>
                    <td class="auto-style5"></td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="colBordes ">&nbsp;</td>
                    <td class="colEtiquetas">Nombre usuario: </td>
                    <td class="colCampos">
                        <asp:TextBox ID="txtNombreUsuario" runat="server" Width="198px"></asp:TextBox></td>
                    <td class="colValidacion">
                        <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombreUsuario" ValidationGroup="vgUsuario" ErrorMessage="Ingrese un Nombre de usuario">* Ingrese un Nombre de usuario</asp:RequiredFieldValidator>
                    </td>
                    <td class="colBordes">&nbsp;</td>
                </tr>
                <tr>
                    <td class="colBordes ">&nbsp;</td>
                    <td class="colEtiquetas">Contraseña: </td>
                    <td class="colCampos">
                        <asp:TextBox ID="txtContrasena" runat="server" Width="198px"></asp:TextBox></td>
                    <td class="colValidacion">
                        <asp:RequiredFieldValidator ID="rfvContrasenia" runat="server" ControlToValidate="txtContrasena" ValidationGroup="vgUsuario" ErrorMessage="Debe ingresar una contraseña">* Debe ingresar una contraseña</asp:RequiredFieldValidator>
                    </td>
                    <td class="colBordes">&nbsp;</td>
                </tr>
                <tr>
                    <td class="colBordes "></td>
                    <td class="colEtiquetas">Repetir Contraseña: </td>
                    <td class="colCampos">
                        <asp:TextBox ID="txtContrasenaRepetida" runat="server" Width="198px" ToolTip="Las contraseñas deben coincidir"></asp:TextBox></td>
                    <td class="colValidacion">
                        <asp:RequiredFieldValidator ID="rfvContraseniaRepetida" runat="server" ControlToValidate="txtContrasenaRepetida" ValidationGroup="vgUsuario" ErrorMessage="Completar la contraseña repetida"> * Completar la contraseña repetida</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvContrasenia" runat="server" ControlToCompare="txtContrasenaRepetida" ValidationGroup="vgUsuario" ControlToValidate="txtContrasena" ErrorMessage="Las contraseñas no coinciden">* Las contraseñas no coinciden</asp:CompareValidator>
                    </td>
                    <td class="colBordes">&nbsp;</td>
                </tr>
                <tr>
                    <td class="colBordes ">&nbsp;</td>
                    <td class="colEtiquetas">Correo Electrónico: </td>
                    <td class="colCampos">
                        <asp:TextBox ID="txtCorreoElectronico" runat="server" Width="198px"></asp:TextBox></td>
                    <td class="colValidacion">
                        <asp:RequiredFieldValidator ID="rfvCorreo" runat="server" ControlToValidate="txtCorreoElectronico" ValidationGroup="vgUsuario" ErrorMessage="Debe ingresar un correo electrónico">* Debe ingresar un correo electrónico</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revCorreo" runat="server" ControlToValidate="txtCorreoElectronico" ValidationGroup="vgUsuario" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Correo electronico no valido</asp:RegularExpressionValidator>
                    </td>
                    <td class="colBordes">&nbsp;</td>
                </tr>
                <tr>
                    <td class="colBordes ">&nbsp;</td>
                    <td class="colEtiquetas">CP Código Postal: </td>
                    <td class="colCampos">
                        <asp:TextBox ID="txtCodigoPostal" runat="server" Width="198px" ToolTip="Solo se permiten 4 digitos"></asp:TextBox>
                    </td>
                    <td class="colValidacion">
                        <asp:RequiredFieldValidator ID="rfvCodPostal" runat="server" ControlToValidate="txtCodigoPostal" ValidationGroup="vgUsuario" ErrorMessage="Debe ingresar un Código postal">* Debe ingresar un Código postal</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revCp" runat="server" ControlToValidate="txtCodigoPostal" ValidationGroup="vgUsuario" ValidationExpression="\d{4}" ErrorMessage="Código postal no valido, debe tener 4 digitos">* Código postal no valido, debe tener 4 digitos</asp:RegularExpressionValidator>
                    </td>
                    <td class="colBordes">&nbsp;</td>
                </tr>
                <tr>
                    <td class="colBordes "></td>
                    <td class="colEtiquetas">Localidades: </td>
                    <td class="colCampos">
                        <asp:DropDownList ID="ddlLocalidades" runat="server" ToolTip="Seleccione una de las localidades cargadas"></asp:DropDownList>
                    </td>
                    <td class="colValidacion">
                        <asp:RequiredFieldValidator
                            ID="rfvLocalidadSeleccionada"
                            runat="server"
                            ControlToValidate="ddlLocalidades"
                            ErrorMessage="Seleccione una localidad"
                            ValidationGroup="vgUsuario"
                            Display="Dynamic"
                            ForeColor="Red">* Seleccione una localidad</asp:RequiredFieldValidator>
                    </td>
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
                    <td class="colBordes ">&nbsp;</td>
                    <td class="colEtiquetas">&nbsp;</td>
                    <td class="colCampos">
                        <asp:Button ID="btnGuardarUsuario" runat="server" Text="Guardar Usuario" ValidationGroup="vgUsuario" OnClick="btnGuardarUsuario_Click" Width="205px" />
                    </td>
                    <td class="colValidacion">&nbsp;</td>
                    <td class="colBordes">&nbsp;</td>
                </tr>
                <tr>
                    <td class="colBordes ">&nbsp;</td>
                </tr>
                <tr>
                    <td class="colBordes ">&nbsp;</td>
                    <td class="colEtiquetas">
                        <asp:Button ID="btnInicio" runat="server" Text="Ir al Inicio" OnClick="btnInicio_Click" />
                    </td>
                    <td class="colCampos">
                        <asp:Label ID="lblResultadoUsuario" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                    </td>
                    <td class="colValidacion">
                        <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="vgUsuario" runat="server" ShowMessageBox="True" ShowSummary="True" />
                    </td>
                    <td class="colBordes">&nbsp;</td>
                </tr>

            </table>
        </div>

        <asp:GridView ID="gvPrueba" runat="server">
        </asp:GridView>

    </form>
</body>
</html>

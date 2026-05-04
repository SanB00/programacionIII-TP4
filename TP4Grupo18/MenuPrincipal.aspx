<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuPrincipal.aspx.cs" Inherits="TP2Grupo18.MenuPrincipal" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Menú de Ejercicios</title>

    <style type="text/css">
        body {
            font-family: Arial;
            background-color: #f2f2f2;
        }

        .contenedor {
            width: 400px;
            margin: 25px auto;
            padding: 25px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0px 0px 10px gray;
            text-align: center;
        }

        .titulo {
            font-size: 22px;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .subtitulo {
            margin-bottom: 20px;
        }

        .boton {
            width: 100%;
            margin: 8px 0;
            padding: 10px;
            font-size: 16px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div class="contenedor">
            <asp:Label ID="Label2" runat="server" Text="Bienvenido/a!" CssClass="titulo"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server"
                Text="Elija el ejercicio a ejecutar:"
                CssClass="subtitulo"></asp:Label>
            <br />
            <asp:Button ID="btnEj1" runat="server" Text="Ejercicio 1" CssClass="boton" OnClick="btnEj1_Click" />
            <asp:Button ID="btnEj2" runat="server" Text="Ejercicio 2" CssClass="boton" OnClick="btnEj2_Click" />
            <asp:Button ID="btnEj3" runat="server" Text="Ejercicio 3" CssClass="boton" OnClick="btnEj3_Click" />
        </div>
        <div class="contenedor">
            Integrantes Grupo18:
            <br />
            <br />
            Guillermo Maydana
            <br />
            Elian Maspero
            <br />
            Derly Yulieth Valencia
            <br />
            Lautaro Gimenez
            <br />
            Franco Casamento
            <br />
            Santiago Burgos
        </div>
    </form>
</body>
</html>

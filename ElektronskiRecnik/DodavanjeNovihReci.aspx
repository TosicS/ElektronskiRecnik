<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DodavanjeNovihReci.aspx.cs" Inherits="ElektronskiRecnik.DodavanjeNovihReci" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/StyleSheet1.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <header>
            <p>Elektronski Recnik</p>
        </header>
    </div>

        <div class="menu">
            <asp:Button class="dumge" ID="Button1" runat="server" Text="Recnik" OnClick="Button1_Click1"  />
            <asp:Button class="dumge" style="width:150px" ID="Button2" runat="server" Text="Dodavanje novih reci" OnClick="Button2_Click1" />
            <asp:Button class="dumge" ID="Button3" runat="server" Text="Uputstvo" OnClick="Button3_Click"  />
        </div>

            <div class="tabela">
                    <table class="auto-style1">

                <tr>
                    <td class="auto-style2">Engleska rec:</td>
                    <td class="element">
                        <asp:TextBox class="sirina" ID="TextBoxEngRec" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>

                </tr>
                <tr>
                    <td class="auto-style2" id="kom">Srpska rec:</td>
                    <td class="element">
                        <asp:TextBox class="sirina" ID="TextBoxSrpRec" runat="server"></asp:TextBox>
                    </td>
                    <td rowspan="3">
                        &nbsp;</td>

                </tr>
                <tr>
                    <td class="auto-style2">Opis:</td>

                    <td class="element">
                        <asp:TextBox class="sirina" ID="TextBoxOpis" runat="server" Height="80px" TextMode="MultiLine" ></asp:TextBox>
                    </td>

                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="ButtonSnimi" style="width:80%" runat="server" Text="Snimi" OnClick="ButtonPrevedi_Click" />
                    </td>

                    <td class="element">
                        &nbsp;</td>

                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="element">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>

                </tr>
                </table>
                    </div>

        <footer>
        <p>@ Muzej Srbije</p>
        </footer>

    </form>
</body>
</html>

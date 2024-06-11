<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ElektronskiRecnik.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/StyleSheet1.css" rel="stylesheet" />



    <style type="text/css">
        .auto-style3 {
            width: 20%;
            height: 26px;
        }
        .auto-style4 {
            width: 50%;
            height: 26px;
        }
        .auto-style5 {
            height: 26px;
        }
    </style>



</head>
<body>
    <form id="form1" runat="server">
        <div>
            <header>
                <p>Elektronski Recnik</p>
            </header>
        </div>

        <div class="menu">
            <asp:Button class="dumge" ID="Button1" runat="server" Text="Recnik" OnClick="Button1_Click"  />
            <asp:Button class="dumge" style="width:150px" ID="Button2" runat="server" Text="Dodavanje novih reci" OnClick="Button2_Click"  />
            <asp:Button class="dumge" ID="Button3" runat="server" Text="Uputstvo" OnClick="Button3_Click"  />
        </div>

            <div class="tabela">
            <table class="auto-style1">
        <tr>
            <td class="auto-style3">Smer:</td>
            <td class="auto-style4">
                <asp:DropDownList class="sirina" ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem>Selektuj smer prevodjenja</asp:ListItem>
                    <asp:ListItem>Od srpski na engleski</asp:ListItem>
                    <asp:ListItem>Od engleski na srpski</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style5">
                </td>

        </tr>
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
                <asp:Button ID="ButtonPrevedi" style="width:80%" runat="server" Text="Prevedi" OnClick="ButtonPrevedi_Click" />
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

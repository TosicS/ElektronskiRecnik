<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Uputstvo.aspx.cs" Inherits="ElektronskiRecnik.Uputstvo" %>

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

        <div  >
            <p id="uputstvo">Koriscenje ovog sajta je veoma lako. Na prvoj strani, birate sa kog jezika zelite da rec, i ptiskom na dugme Vam se prevodi rec 
                i daje dodatni opis. Na drugoj Strani postoji mogucnost da se unese nova rec.
            </p>
        </div>

        <footer>
        <p>@ Muzej Srbije</p>
        </footer>
    </form>
</body>
</html>

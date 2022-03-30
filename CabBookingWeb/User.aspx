<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="CabBookingWeb.User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Address &nbsp;&nbsp;&nbsp;: <asp:TextBox ID="address" runat="server" OnTextChanged="address_TextChanged"></asp:TextBox>
            <br />Age &nbsp;&nbsp;&nbsp;&nbsp;: <asp:TextBox ID="age" runat="server" OnTextChanged="age_TextChanged"></asp:TextBox>
            <br />Email &nbsp;&nbsp;&nbsp;&nbsp;: <asp:TextBox ID="email" runat="server" OnTextChanged="email_TextChanged"></asp:TextBox>
            <br />First Name &nbsp;&nbsp;: <asp:TextBox ID="firstname" runat="server" OnTextChanged="firstname_TextChanged"></asp:TextBox>
            <br />Last Name &nbsp;&nbsp;: <asp:TextBox ID="lsatname" runat="server" OnTextChanged="lsatname_TextChanged"></asp:TextBox>
            <br />Mobile &nbsp;&nbsp;: <asp:TextBox ID="mobile" runat="server" OnTextChanged="mobile_TextChanged"></asp:TextBox>
            <br /><asp:Button ID="Button1" runat="server" Text="Create" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>

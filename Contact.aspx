<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ASP.Net_Tutorial.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact</title>
    <style type="text/css">
        .auto-style1 {
            width: 50%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" method="get">
        <div>
            <table align="center">
                <caption>Login Form</caption>
                <tr>
                    <td>User Name:</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" /></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td>
                        <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" MaxLength="16" /></td>
                </tr>
                <tr>
                    <td>Email Id</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" /></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" PostBackUrl="~/ResponsePage.aspx" />
                        <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Label ID="lblStatus" runat="server" ForeColor="Red" />
                    </td>
                </tr>
            </table>
        </div>
       
    </form>
</body>
</html>

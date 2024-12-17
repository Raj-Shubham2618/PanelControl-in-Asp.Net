<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ASP.Net_Tutorial.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Page1</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Page1</h3>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Post Back Submission" OnClick="Button1_Click" /><br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="Cross Page Submission" OnClick="Button2_Click" PostBackUrl="~/WebForm2.aspx" /><br />
            <br />

        </div>

        <div>
            <table>
                <tr>
                    <td><b>Enter UserName:</b></td>
                    <td>
                        <asp:TextBox ID="txtUserName" runat="server" /></td>
                </tr>
                <tr>
                    <td><b>Enter Location:</b></td>
                    <td>
                        <asp:TextBox ID="txtLocation" runat="server" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnPostback" Text="Postback" runat="server" PostBackUrl="~/WebForm2.aspx"  />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

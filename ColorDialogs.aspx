<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ColorDialogs.aspx.cs" Inherits="ASP.Net_Tutorial.ColorDialogs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <div id="div1" runat="server">
                        <br />
                        Change Color:
    <asp:TextBox ID="txtColor1" runat="server" TextMode="Color" OnTextChanged="txtColor1_TextChanged" AutoPostBack="true" />
                        <br />
                        <br />
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>

            <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <div id="div2" runat="server">
                        <br />
                        Change Color:
    <asp:TextBox ID="txtColor2" runat="server" TextMode="Color" OnTextChanged="txtColor2_TextChanged" AutoPostBack="true" />
                        <br />
                        <br />
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>

            <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <div id="div3" runat="server">
                        <br />
                        Change Color:
    <asp:TextBox ID="txtColor3" runat="server" TextMode="Color" OnTextChanged="txtColor3_TextChanged" AutoPostBack="true" />
                        <br />
                        <br />
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>

            <asp:Button ID="Button1" runat="server" Text="Button" />
        </div>
    </form>
</body>
</html>

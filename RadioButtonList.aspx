<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RadioButtonList.aspx.cs" Inherits="ASP.Net_Tutorial.RadioButtonList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>RadioButtonList ex:</h2>
            <br />
            <hr />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatLayout="UnorderedList">
                <asp:ListItem Value="1">Red</asp:ListItem>
                <asp:ListItem Value="2">Green</asp:ListItem>
                <asp:ListItem Value="3">Blue</asp:ListItem>
                <asp:ListItem Value="4">Yellow</asp:ListItem>
                <asp:ListItem Value="5">Brown</asp:ListItem>
                <asp:ListItem Value="6">Grey</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

            <hr />
            <asp:RadioButtonList ID="RadioButtonList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged">
                <asp:ListItem Value="1" Text="Lion.png"></asp:ListItem>
                <asp:ListItem Value="2" Text="Tiger.png"></asp:ListItem>
                <asp:ListItem Value="3" Text="Eagle.png"></asp:ListItem>
                <asp:ListItem Value="4" Text="Dog.png"></asp:ListItem>    
            </asp:RadioButtonList>
            <br />
            <asp:Image ID="Image1" runat="server" Width="200" Height="200" />
            <br />
            <br />
            <br />

        </div>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="County" DataValueField="CountryId">
        </asp:CheckBoxList>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WinVFConnectionString %>" ProviderName="<%$ ConnectionStrings:WinVFConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Country]"></asp:SqlDataSource>
    </form>
 </body>
</html>

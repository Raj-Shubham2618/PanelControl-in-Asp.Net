<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ASP.Net_Tutorial.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <%--//source view
            <asp:TextBox ID="txt1" runat="server"/>
            <br />
          <asp:Button ID="btn1" runat="server" text="Login" />
            <asp:CheckBox ID="check" runat="server" />--%>
            <asp:TextBox ID="txtUserName" runat="server" BackColor="#66FF33" Font-Size="25pt" ForeColor="Red">Coder Baba</asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btn2" runat="server" Text="Click" BackColor="#FF9966" OnClick="btn2_Click" />
            <br />
            <br />
            <asp:Button ID="Btn3" runat="server" Text="Source view event" />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="View" />
        </div>
        <br />
        <hr />
        <p>Login Panel</p>
        <asp:Label ID="Label1" runat="server" Text="Enter UserName"></asp:Label>   <asp:TextBox ID="TextBox1" runat="server" placeholder="enter username"></asp:TextBox> <br /><br />

        <asp:Label ID="Label2" runat="server" Text="Enter Password"></asp:Label>  <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox> <br /><br />

        <asp:Label ID="Label3" runat="server" Text="Enter Email" ></asp:Label>  <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox> <br /><br />

        <asp:Button ID="Button3" runat="server" Text="Login" />
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Forgot Password</asp:LinkButton>
        <br /> <br />
        <asp:ImageButton ID="ImageButton1" runat="server" Height="41px" Width="50px" ImageUrl="~/Image/DALL·E-2024-11-27-11.16.jpg" />
    </form>

</body>
</html>

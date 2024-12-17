 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ASP.Net_Tutorial.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 150px; border: solid red 2px;">
            <h2>This is my first page of asp.net web application </h2>
        </div>

        <div>
            <%--<% Response.Write("Server Date: " + DateTime.Now.ToShortDateString()); %>
            <br />
            <% Response.Write("Server Time: " + DateTime.Now.ToLongTimeString()); %>
            <br />
            <% Response.Write("Hi this is code inline method"); %> <br /> <br />--%>

            <p>HTML control</p><br />
             Enter Name: 
             <input name = "txtName1" type = "text" id = "txtName1" />
             <input type = "submit" name = "btnSubmit1" value = "Save" id = "btnSubmit1" />
             <br />
             <br />
            <p>Asp.Net server side control</p><br />
             Enter Name:
             <asp:TextBox ID="txtName2" runat="server" />
             <asp:Button ID="btnSubmit2" runat="server" Text="Save" />
        </div>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Show your name" BorderColor="#FF3300" OnClick="Button1_Click" />
        
        <hr />

        <asp:TextBox ID="TextBox1" runat="server" Font-Size="30" text="Hello Coder"  AutoPostBack="true" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
    </form>
</body>
</html>

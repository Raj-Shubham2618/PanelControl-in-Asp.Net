<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="“ListControls2.aspx.cs" Inherits="ASP.Net_Tutorial.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" border="1">
                <tr>
                    <td align="center">
                        <asp:DropDownList ID="DropDownList1" runat="server" /></td>
                    <td align="center">
                        <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple" /></td>
                    <td align="center">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" /></td>
                    <td align="center">
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server" /></td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:Button ID="Button1" runat="server" Text="Display Product" OnClick="Button1_Click" /></td>
                    <td align="center">
                        <asp:Button ID="Button2" runat="server" Text="Display Products" OnClick="Button2_Click" /></td>
                    <td align="center">
                        <asp:Button ID="Button3" runat="server" Text="Display Product" OnClick="Button3_Click" /></td>
                    <td align="center">
                        <asp:Button ID="Button4" runat="server" Text="Display Products" OnClick="Button4_Click" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" ForeColor="Red" /></td>
                    <td>
                        <asp:Label ID="Label2" runat="server" ForeColor="Red" /></td>
                    <td>
                        <asp:Label ID="Label3" runat="server" ForeColor="Red" /></td>
                    <td>
                        <asp:Label ID="Label4" runat="server" ForeColor="Red" /></td>
                </tr>
            </table>
        </div>
         <hr />
 <div>
     <asp:BulletedList ID="BulletedList1" runat="server" BulletStyle="Numbered" DisplayMode="HyperLink">
         <asp:ListItem Value="Color1" Text="Red" />
         <asp:ListItem Value="Color2" Text="Blue" />
         <asp:ListItem Value="Color3" Text="Black" />
         <asp:ListItem Value="Color4" Text="Green" />
         <asp:ListItem Value="Color5" Text="White" />
         <asp:ListItem Value="Color6" Text="Purple" />
         <asp:ListItem Value="Color7" Text="Yellow" />
         <asp:ListItem Value="Color8" Text="Magenta" />
     </asp:BulletedList>
 </div>

        <hr />
    
            <asp:DropDownList ID="DropDownList2" runat="server">
            </asp:DropDownList>

        <hr />
        <p>Select Country</p>
          <asp:DropDownList ID="DropDownList3" runat="server">
  </asp:DropDownList>
        <br />

       
    </form>
</body>
</html>

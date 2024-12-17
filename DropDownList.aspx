<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DropDownList.aspx.cs" Inherits="ASP.Net_Tutorial.DropDownList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h4>DropDownList control example:</h4>
            <br />
            <br />

            <asp:DropDownList ID="DropDownList1" runat="server">
                <%--<asp:ListItem Value="1">Monitor</asp:ListItem>
                <asp:ListItem Value="1">Keyboard</asp:ListItem>
                <asp:ListItem Value="3">Mouse</asp:ListItem>
                <asp:ListItem Value="4">Camera</asp:ListItem>
                <asp:ListItem Value="5">Speakers</asp:ListItem>
                <asp:ListItem Value="6">CPU</asp:ListItem>--%>
            </asp:DropDownList>

            <%--  <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem Value="">Please Select</asp:ListItem>
                <asp:ListItem>New Delhi </asp:ListItem>
                <asp:ListItem>Greater Noida</asp:ListItem>
                <asp:ListItem>NewYork</asp:ListItem>
                <asp:ListItem>Paris</asp:ListItem>
                <asp:ListItem>London</asp:ListItem>
            </asp:DropDownList>--%>


            <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" Width="250" Font-Size="Medium" Font-Names="Comic Sans MS" ForeColor="DarkBlue" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                <asp:ListItem>AliceBlue</asp:ListItem>
                <asp:ListItem>AntiqueWhite</asp:ListItem>
                <asp:ListItem>Aqua</asp:ListItem> 
                <asp:ListItem>Aquamarine</asp:ListItem>
                <asp:ListItem>Azure</asp:ListItem>
                <asp:ListItem>Beige</asp:ListItem>
                <asp:ListItem>Bisque</asp:ListItem>
                <asp:ListItem>Black</asp:ListItem>
                <asp:ListItem>BlanchedAlmond</asp:ListItem>
            </asp:DropDownList>

            <br />

            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

            <asp:Label ID="Label1" runat="server" Text=" " ForeColor="Green"></asp:Label>
            <br />
            <hr />
            <asp:DropDownList
                ID="DropDownList4" runat="server" Width="250"
                Font-Size="Medium" Font-Names="Comic Sans MS"
                ForeColor="MidnightBlue" BackColor="FloralWhite">
                <asp:ListItem Selected="True">Select Option</asp:ListItem>
                <asp:ListItem>BulletedList</asp:ListItem>
                <asp:ListItem>Button</asp:ListItem>
                <asp:ListItem>Calendar</asp:ListItem>
                <asp:ListItem>DataGrid</asp:ListItem>
                <asp:ListItem>DataList</asp:ListItem>
                <asp:ListItem>DataPager</asp:ListItem>
            </asp:DropDownList>
            <%--      <asp:RequiredFieldValidator
                ID="RequiredFieldValidator1" runat="server"
                ControlToValidate="DropDownList4"
                InitialValue="Select Option" ErrorMessage="* Please select an item."
                ForeColor="Red" Font-Names="Impact">
            </asp:RequiredFieldValidator>--%>


            <br />
            <br />

            <asp:Button
                ID="Button1" runat="server" Text="Validate DropDownList"
                Font-Bold="true"
                Font-Size="Large"
                ForeColor="DodgerBlue" Font-Names="Monaco" Height="45" Width="350" OnClick="Button1_Click" />

            <asp:Button ID="Button2" runat="server" Text="Count" OnClick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" Text="Value" OnClick="Button2_Click" />
            <asp:Button ID="Button4" runat="server" Text="Index" OnClick="Button3_Click" />
            <asp:Button ID="Button5" runat="server" Text="Clear" OnClick="Button4_Click" />
            <asp:Button ID="Button6" runat="server" Text="Add" OnClick="Button5_Click" />
            <asp:Button ID="Button7" runat="server" Text="Remove" OnClick="Button6_Click" />
            <asp:Button ID="Button8" runat="server" Text="Newly added items" OnClick="Button7_Click"  />


        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Radio_Checkbox_Button.aspx.cs" Inherits="ASP.Net_Tutorial.Radio_Checkbox_Button" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>Select your Gender:</p>
            <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" GroupName="res" />
            <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" GroupName="res" />
            <%--             <asp:RadioButton ID="RadioButton3" runat="server" Text="none" GroupName="res"/>--%>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            <br />
            <asp:Label ID="genderId" runat="server"></asp:Label>
        </div>
        <hr />
        <div style="border: solid 3px red">
            <h4>CheckBox Control</h4>
            <asp:CheckBox ID="CheckBox1" runat="server" Text="Rahul" />
            <br />
            <asp:CheckBox ID="CheckBox2" runat="server" Text="Ambuj" />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="Submit2" OnClick="Button2_Click" />

        </div>

        <hr />
        <div style="border: solid 3px red">
            <h2>Select Courses</h2>
            <asp:CheckBox ID="CheckBox3" runat="server" Text="J2SE" AutoPostBack="True" OnCheckedChanged="CheckBox3_CheckedChanged" />
            <asp:CheckBox ID="CheckBox4" runat="server" Text="J2EE" />
            <asp:CheckBox ID="CheckBox5" runat="server" Text="Spring" />
            <br />
            <br />
            <br>
            Courses Selected:
            <asp:Label runat="server" ID="ShowCourses"></asp:Label>
            <br>
            <br /><br />
            <asp:Button ID="Button3" runat="server" Text="Submit2" OnClick="Button2_Click" />

        </div>
    </form>
</body>
</html>

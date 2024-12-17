<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DropDown_default3.aspx.cs" Inherits="ASP.Net_Tutorial.DropDown_default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <table>
                        <tr>
                            <td>Country:</td>
                            <td>
                                <asp:DropDownList ID="ddlCountries" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlCountries_SelectedIndexChanged" >
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>State:</td>
                            <td>
                                <asp:DropDownList ID="ddlStates" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlStates_SelectedIndexChanged">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>City:</td>
                            <td>
                                <asp:DropDownList ID="ddlCities" runat="server" AutoPostBack="True">
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>

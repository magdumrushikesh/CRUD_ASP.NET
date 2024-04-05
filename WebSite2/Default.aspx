<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>1

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #0066FF;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 100%;
            height: 136px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            margin-left: 53px;
        }
        .auto-style6 {
            margin-left: 58px;
        }
        .auto-style7 {
            height: 49px;
        }
        .auto-style8 {
            margin-left: 148px;
            margin-bottom: 18px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <h1 class="auto-style2"><strong>Login Form</strong></h1>
        </div>
        <table class="auto-style3">
            <tr>
                <td>Username<asp:TextBox ID="txtuser" runat="server" CssClass="auto-style5"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">Password<asp:TextBox ID="txtpass" runat="server" CssClass="auto-style6"></asp:TextBox>
                </td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style8" Text="Button" Width="96px"  OnClick="Button1_Click" />
                </td>
                <td class="auto-style4"></td>
            </tr>
        </table>
    </form>
</body>
</html>

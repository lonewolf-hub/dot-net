<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Admin1.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 44px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="header">
    
        <asp:Image ID="Image1" runat="server" ImageUrl="~/vs.jpg" />
    
    </div>
    <div id="login">
        <table class="style1">
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center; color: #369; font-size: large; font-family: 'Arial Rounded MT Bold'; font-weight: 700;">
                    ADMIN LOGIN AREA</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:TextBox ID="txtname" runat="server" placeholder="Username" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:TextBox ID="txtpasss" runat="server" placeholder="Password" CssClass="txt" 
                        TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: center" class="style2">
                    <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn" 
                        onclick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="lbl" runat="server" ForeColor="#369"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>

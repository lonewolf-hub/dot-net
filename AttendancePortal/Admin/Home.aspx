<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Admin_Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Admin.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="aheader">
    
        <asp:Image ID="Image1" runat="server" ImageUrl="~/img/logo1.png" />
    </div>
    <div id="alogin">
        <table class="style1">
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="atitle">
                    Admin Login Panel</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:TextBox ID="txtuname" runat="server" placeholder="Enter UserName" 
                        CssClass="ltxt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:TextBox ID="txtupass" runat="server" placeholder="Enter Password" 
                        CssClass="ltxt" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Button ID="btnlogin" runat="server" CssClass="lbtn" Text="Login" 
                        onclick="btnlogin_Click" />
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="lbl" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Home.aspx">Back to Home</asp:LinkButton>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>

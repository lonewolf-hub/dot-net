<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StudentFPass.aspx.cs" Inherits="StudentFPass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 371px;
    }
    .auto-style3 {
        text-align: right;
        color: #369;
        width: 141px;
    }
    .auto-style2 {
        width: 176px;
    }
    .auto-style4 {
        width: 141px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">Forgot Password - Student</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style3">Enter Email :</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtemail" runat="server" CssClass="txt"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Enter Mobile :</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtmobile" runat="server" CssClass="txt"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="btngetpass" runat="server" CssClass="btn" OnClick="btngetpass_Click" Text="Get Password" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="lblpass" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student.master" AutoEventWireup="true" CodeFile="Password.aspx.cs" Inherits="Student_Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style4
    {
        width: 295px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            Change Password Form</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <table align="center" class="style4">
                <tr>
                    <td class="lbl">
                        Current Password :
                    </td>
                    <td>
                        <asp:TextBox ID="txtcurrent" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">
                        New Password :
                    </td>
                    <td>
                        <asp:TextBox ID="txtnewpass" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">
                        Confirm-Pass :
                    </td>
                    <td>
                        <asp:TextBox ID="txtconfpass" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="btnchangepass" runat="server" CssClass="btn" 
                            onclick="btnchangepass_Click" Text="Change Password" Width="140px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="lbl" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>


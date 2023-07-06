<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 303px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            FeedBack Form</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <table align="center" class="style1">
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        Enter Name :</td>
                    <td>
                        <asp:TextBox ID="txtemail" runat="server" CssClass="txt"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">
                        Contact :
                    </td>
                    <td>
                        <asp:TextBox ID="txtcont" runat="server" CssClass="txt"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">
                        Feddback :</td>
                    <td>
                        <asp:TextBox ID="txtfeed" runat="server" CssClass="txt" Height="40px" 
                            TextMode="MultiLine" Width="160px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button9" runat="server" CssClass="btn" Text="Send Feedback" 
                            Width="120px" onclick="Button9_Click" />
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


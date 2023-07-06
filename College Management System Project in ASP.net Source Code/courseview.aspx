<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="courseview.aspx.cs" Inherits="courseview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 90%;
        }
        .style5
        {
            width: 82px;
        }
        .style6
        {
            width: 147px;
        }
        .style7
        {
            width: 105px;
        }
        .style8
        {
            width: 160px;
        }
    </style>
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

    <div style="height:344px; overflow:scroll; width: 656px;">

        <table class="style1" style="color: #003366; font-weight: bold">
            <tr>
                <td class="style5">
                    Sr. No.</td>
                <td class="style6">
                    course</td>
                <td class="style8">
                    Fees</td>
                <td>
                    year</td>
            </tr>
        </table>

        <asp:Table ID="tbl" runat="server" Width="594px" BackColor="White" 
             BorderWidth="0px" Font-Italic="False" 
            ForeColor="Black" Font-Bold="False" BorderStyle="None">
<asp:TableRow ID="row" runat="server" BorderStyle="Solid" BorderWidth="2"  ForeColor="White" Font-Bold="True">
<asp:TableCell ID="cell" runat="server" BorderStyle="Solid" BorderWidth="2"  CssClass="style7"> 
                </asp:TableCell>
</asp:TableRow>
</asp:Table>
        <br />
</div>
</asp:Content>


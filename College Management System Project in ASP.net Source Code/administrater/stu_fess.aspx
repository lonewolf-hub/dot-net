<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="stu_fess.aspx.cs" Inherits="administrater_stu_fess" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
 <style type="text/css">
        .style1
        {
            width: 510px;
        }
        .style2
        {
            width: 81px;
        }
        .style3
        {
            width: 213px;
        }
        .style4
        {
            width: 168px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

<div align="right">
            <asp:LinkButton ID="LinkButton17" runat="server" Font-Bold="True" 
                ForeColor="#003366" onclick="LinkButton17_Click">logout</asp:LinkButton>
        </div>
    <div align="center" style="width: 812px; height: 410px;">
    <div align="left" style="width: 533px">
    
        <table class="style1">
            <tr>
                <td align="center" colspan="2" 
                    style="color: #FFFFFF; background-color: #003366; font-weight: bold;">
                    Student Fees Entry</td>
            </tr>
            <tr>
                <td style="color: #003366; font-weight: bold;">
                    Student name</td>
                <td>
                    <asp:TextBox ID="sname" runat="server" BorderStyle="Solid" BorderWidth="0px" 
                        ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="color: #003366; font-weight: bold;">
                    Fees Amount</td>
                <td>
                    <asp:TextBox ID="feeamt" onkeypress="return isNumber(event)" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="color: #003366; font-weight: bold;">
                    Fees Date</td>
                <td>
                    <asp:TextBox ID="fees_date" runat="server" BorderStyle="Solid" 
                        BorderWidth="0px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="color: #003366; font-weight: bold;">
                    Fees For course</td>
                <td>
                    <asp:TextBox ID="cname" runat="server" BorderStyle="Solid" BorderWidth="0px" 
                        ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2" 
                    style="background-color: #003366; color: #FFFFFF; font-weight: bold;">
                    <asp:Button ID="Button1" runat="server" BackColor="#003366" BorderColor="White" 
                        BorderStyle="Solid" Font-Bold="True" ForeColor="White" Text="Save" 
                        onclick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" BackColor="#003366" BorderColor="White" 
                        BorderStyle="Solid" Font-Bold="True" ForeColor="White" onclick="Button2_Click" 
                        Text="Back" />
                </td>
            </tr>
        </table>
    
    </div>
    <div align="left" style="width: 536px; height: 226px;">
        <table class="style1"><tr align="left">
                    <td align="left" bgcolor="#990000" 
                        style="color: #FFFFFF; font-weight: bold; background-color: #003366;" 
                        class="style2">
              Sr.NO.</td>
                    <td align="left" bgcolor="#990000" 
                        
                        style="color: #FFFFFF; font-weight: bold; background-color: #003366;" 
                        class="style4">
                        Fess date</td>
                    <td bgcolor="#990000" 
                        
                        style="color: #FFFFFF; font-weight: bold; background-color: #003366;" 
                        align="left" class="style7">
                        Fees Amount</td> 
                    </tr></table>
        <div style="height:175px; overflow:scroll; width: 507px;">
        <asp:Table ID="tbl" runat="server" Width="619px" BackColor="White" 
             BorderWidth="0px" Font-Italic="False" 
            ForeColor="Black" Font-Bold="False" BorderStyle="None">
<asp:TableRow ID="row" runat="server" BorderStyle="Solid" BorderWidth="2"  ForeColor="White" Font-Bold="True">
<asp:TableCell ID="cell" runat="server" BorderStyle="Solid" BorderWidth="2"  CssClass="style7"> 
                </asp:TableCell>
</asp:TableRow>
</asp:Table></div>
<div style="width: 527px; height: 34px;">
    <table class="style3" style="537px; width: 525px;">
        <tr>
            <td style="color: #FFFFFF; background-color: #003366; font-weight: bold;">
                Total Fees</td>
            <td>
                <asp:TextBox ID="tfees" runat="server" BorderStyle="Solid" BorderWidth="0px" 
                    ReadOnly="True" Width="85px"></asp:TextBox>
            </td>
            <td style="color: #FFFFFF; background-color: #003366; font-weight: bold;">
                Total Paid Fees</td>
            <td style="margin-left: 120px">
                <asp:TextBox ID="tpfees" runat="server" BorderStyle="Solid" BorderWidth="0px" 
                    ReadOnly="True" Width="88px"></asp:TextBox>
            </td>
            <td style="color: #FFFFFF; background-color: #003366; font-weight: bold;">
                Balance</td>
            <td>
                <asp:TextBox ID="bfees" runat="server" BorderStyle="Solid" BorderWidth="0px" 
                    ReadOnly="True" Width="83px"></asp:TextBox>
            </td>
        </tr>
    </table>
        </div>
    </div>
    
</div>

</asp:Content>


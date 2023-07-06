<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="student_view.aspx.cs" Inherits="administrater_student_view" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
<style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 136px;
        }
        .style4
        {
            width: 78px;
        }
        .style5
        {
            width: 90px;
        }
        .style6
        {
            width: 108px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

<div style="height: 488px">
 <form id="form1"><div align="center"><div align="left" 
            style="width: 709px">
<div align="right">
            <asp:LinkButton ID="LinkButton17" runat="server" Font-Bold="True" 
                ForeColor="#003366" onclick="LinkButton17_Click">logout</asp:LinkButton>
        </div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="find" runat="server" onclick="find_Click" Text="Find" 
            BackColor="#003366" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" 
            ForeColor="White" /></div>
    <div style="height:400px; overflow:scroll; width: 823px;" align="left">
      <table class="style1">
            <tr>
                <td class="style4" 
                    style="color: #FFFFFF; font-weight: bold; background-color: #003366">
                    IDNO</td>
                <td class="style5" 
                    style="color: #FFFFFF; font-weight: bold; background-color: #003366">
                    NAME</td>
                <td class="style2" 
                    style="color: #FFFFFF; font-weight: bold; background-color: #003366">
                    FATHER NAME</td>
                <td class="style6" 
                    style="color: #FFFFFF; font-weight: bold; background-color: #003366">
                    MOBILE</td>
                <td style="color: #FFFFFF; font-weight: bold; background-color: #003366">
                    ACTION</td>
            </tr>
        </table>
&nbsp;
    <asp:Table ID="tbl" runat="server" Width="811px" BackColor="White" 
             BorderWidth="0px" Font-Italic="True" 
            ForeColor="Black" Font-Bold="True">
<asp:TableRow ID="row" runat="server" BorderStyle="Solid" BorderWidth="2"  ForeColor="White" Font-Bold="True">
<asp:TableCell ID="cell" runat="server" BorderStyle="Solid" BorderWidth="2"  CssClass="style7"> 
                </asp:TableCell>
</asp:TableRow>
</asp:Table>
    </div>
    <div>
        <asp:Button ID="Button1" runat="server" BackColor="White" BorderColor="#003366" 
            BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="#003366" 
            onclick="Button1_Click" Text="Back" />
    </div>
    </div>
    </form>
</div>


</asp:Content>


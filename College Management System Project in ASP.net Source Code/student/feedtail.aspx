<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="feedtail.aspx.cs" Inherits="student_feedtail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">

 <style type="text/css">
        .style1
        {
            width: 490px;
        }
    </style>
    <script type = "text/javascript">
        function PrintPanel() {
            var panel = document.getElementById("<%=pnlContents.ClientID %>");
            var printWindow = window.open('', '', 'height=400,width=800');
            printWindow.document.write('<html><head><title>DIV Contents</title>');
            printWindow.document.write('</head><body >');
            printWindow.document.write(panel.innerHTML);
            printWindow.document.write('</body></html>');
            printWindow.document.close();
            setTimeout(function () {
                printWindow.print();
            }, 500);
            return false;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">


<div align="right">

            

            <asp:LinkButton ID="LinkButton17" runat="server" Font-Bold="True" 
                ForeColor="#003366" onclick="LinkButton17_Click">logout</asp:LinkButton>

</div>
<asp:Panel ID="pnlContents" runat="server">
                
<div>


<div align="center">
<table class="style1">
            <tr>
                <td align="center" colspan="2" 
                    style="color: #FFFFFF; background-color: #003366; font-weight: bold;">
                    Student Fees Details</td>
            </tr>
            <tr>
                <td style="color: #003366; font-weight: bold;">
                    Student name</td>
                <td>
                    <asp:TextBox ID="sname" runat="server" BorderStyle="Solid" BorderWidth="0px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="color: #003366; font-weight: bold;">
                    Fees For course</td>
                <td style="color: #003366; font-weight: bold;">
                    <asp:TextBox ID="cname" runat="server" BorderStyle="Solid" BorderWidth="0px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2" 
                    style="background-color: #003366; color: #FFFFFF; font-weight: bold;">
                    &nbsp;</td>
            </tr>
        </table>
</div>
<div align="center" style="width: 873px; height: 226px;">
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
        <asp:Table ID="tbl" runat="server" Width="594px" BackColor="White" 
             BorderWidth="0px" Font-Italic="False" 
            ForeColor="Black" Font-Bold="False" BorderStyle="None">
<asp:TableRow ID="row" runat="server" BorderStyle="Solid" BorderWidth="2"  ForeColor="White" Font-Bold="True">
<asp:TableCell ID="cell" runat="server" BorderStyle="Solid" BorderWidth="2"  CssClass="style7"> 
                </asp:TableCell>
</asp:TableRow>
</asp:Table></div>
<div style="width: 527px; height: 25px;">
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
    <div align="center" style="height: 37px">

            <asp:Button ID="btnPrint" runat="server" Text="Print" 
                OnClientClick = "return PrintPanel();" BackColor="White" BorderColor="#003366" 
                BorderStyle="Solid" Font-Bold="True" ForeColor="#003366" />

        <asp:Button ID="Button2" runat="server" BorderColor="#003366" 
            BorderStyle="Solid" Font-Bold="True" ForeColor="#003366" Text="Back" 
            onclick="Button2_Click" />

    </div>
    </div>
    </asp:Panel>

</asp:Content>


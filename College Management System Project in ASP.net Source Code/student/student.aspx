<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="student.aspx.cs" Inherits="student_student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

<div style="height: 505px; width: 886px; margin-left: 3px;">
<form id="form1">
    <div style="height: 512px; width: 883px;">
    <div align="center" 
            
            style="color: #FFFFFF; background-color: #003366; font-weight: bold; font-size: xx-large; width: 878px;">
        STUDENT LOGGED</div>
        <div align="right" style="background-color: #003366; width: 878px;">
            <asp:LinkButton ID="LinkButton4" runat="server" BackColor="#003366" 
                BorderStyle="Solid" BorderWidth="0px" Font-Bold="True" ForeColor="White" 
                onclick="LinkButton4_Click">Logout</asp:LinkButton>
        </div>
        <div align="right" style="width: 878px">
            <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
                onclick="LinkButton1_Click">Admission online</asp:LinkButton>
&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton5" runat="server" Font-Bold="True" 
                onclick="LinkButton5_Click">Print Details</asp:LinkButton>
&nbsp; &nbsp;
            <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" 
                onclick="LinkButton2_Click">Fees details</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" 
                onclick="LinkButton3_Click">Query</asp:LinkButton>
        </div>
        <div align="center" style="width: 878px">
        

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div></div>
        </form>
</div>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="administrater.aspx.cs" Inherits="administrater_administrater" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
 <div style="height: 460px; width: 798px;" align="right">&nbsp;<div align="center" 
            
        
            style="color: #FFFFFF; font-weight: bold; background-color: #003366; height: 55px; width: 800px; font-size: x-large; margin-left: 0px;">

        WELCOME&nbsp; ADMIN PAGE</div>&nbsp;<div style="width: 192px; height: 28px;">
            <asp:LinkButton ID="LinkButton17" runat="server" Font-Bold="True" 
                ForeColor="#003366" onclick="LinkButton17_Click">logout</asp:LinkButton>
        </div>
        <div align="left" style="float: left; width: 511px; height: 266px;">
        <asp:Image ID="Image2" runat="server" Width="505px" Height="257px" 
                ImageUrl="~/IMAGES/adminlogin.png" /></div>
        <div style="width: 280px; height: 269px; color: #003366; font-weight: bold;" 
        align="center">
            <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#003366" 
                BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="White" 
                Height="37px" Width="238px" onclick="LinkButton1_Click">Student view</asp:LinkButton>
            <br />
            <asp:LinkButton ID="LinkButton2" runat="server" BackColor="#003366" 
                BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="White" 
                Height="43px" Width="238px" onclick="LinkButton2_Click1">Add new country</asp:LinkButton>
            <asp:LinkButton ID="LinkButton3" runat="server" BackColor="#003366" 
                BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="White" 
                Height="42px" Width="238px" onclick="LinkButton3_Click">Add new state</asp:LinkButton>
            <br />
            <asp:LinkButton ID="LinkButton4" runat="server" BackColor="#003366" 
                BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="White" 
                Height="40px" Width="238px" onclick="LinkButton4_Click">Add new city</asp:LinkButton>
            <br />Course<br />
            <asp:LinkButton ID="LinkButton11" runat="server" BackColor="#003366" 
                BorderColor="White" BorderStyle="Dotted" BorderWidth="1px" ForeColor="White" 
                Height="28px" Width="47px" onclick="LinkButton11_Click">Add</asp:LinkButton>
            <asp:LinkButton ID="LinkButton12" runat="server" BackColor="#003366" 
                BorderColor="White" BorderStyle="Solid" BorderWidth="1px" ForeColor="White" 
                Height="28px" Width="63px" onclick="LinkButton12_Click">Delete</asp:LinkButton>
            <asp:LinkButton ID="LinkButton13" runat="server" BackColor="#003366" 
                BorderColor="White" BorderStyle="Solid" BorderWidth="1px" ForeColor="White" 
                Height="28px" Width="59px" onclick="LinkButton13_Click">View</asp:LinkButton>
            <asp:Button ID="edt" runat="server" BackColor="#003366" BorderStyle="Solid" 
                BorderWidth="0px" Font-Bold="True" ForeColor="White" Height="28px" 
                onclick="edt_Click" Text="Edit" Width="57px" />
            <br />Image<br />
            <asp:LinkButton ID="LinkButton14" runat="server" BackColor="#003366" 
                BorderColor="White" BorderStyle="Dotted" BorderWidth="1px" ForeColor="White" 
                Height="30px" Width="239px" onclick="LinkButton14_Click">Add Images</asp:LinkButton>
        </div>&nbsp;</div>


</asp:Content>


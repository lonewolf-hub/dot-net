<%@ Page Title="Loginpage" Language="C#" MasterPageFile="~/Users/usermaster.Master" AutoEventWireup="true" CodeBehind="Loginpage.aspx.cs" Inherits="Hospital_management_System.Users.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    

   <center>
        <h1 style="font-size: xx-large; font-weight: bold; color: #0000FF">Sign In</h1>
       <table style="width: 351px; height: 200px; background-color: #0000FF; font-size: large; font-weight: bold; color: #FFFFFF;" >
           <tr>
               <td style="width: 121px" align="center">Username</td>
               <td style="width: 188px">
                   <asp:TextBox ID="txt_login_username" runat="server" Width="203px"></asp:TextBox></td>
           </tr>

            <tr>
               <td style="width: 121px" align="center">Password</td>
               <td style="width: 188px">
                   <asp:TextBox ID="txt_login_pass" runat="server"></asp:TextBox></td>
           </tr>
            <tr>
               <td colspan="2" align="center" style="height: 54px">
                   <asp:CheckBox ID="CheckBox1" runat="server" />Remember me</td>
               
           </tr>

           <tr>
               <td colspan="2" align="center">
                   <asp:Button ID="btn_login_b" runat="server" Text="Login" Font-Bold="True" OnClick="btn_login_b_Click" />&nbsp&nbsp<asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Underline="True" OnClick="LinkButton1_Click">Sign Up</asp:LinkButton></td>
           </tr>
       </table>


   </center>
    


</asp:Content>

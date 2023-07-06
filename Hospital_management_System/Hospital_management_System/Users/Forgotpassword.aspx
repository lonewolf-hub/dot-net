<%@ Page Title="ForgotPassword" Language="C#" MasterPageFile="~/Users/usermaster.Master" AutoEventWireup="true" CodeBehind="Forgotpassword.aspx.cs" Inherits="Hospital_management_System.Users.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
   <center>
        <h1 style="font-size: xx-large; font-weight: bold; color: #0000FF">Forgot Password</h1>
       <table style="width: 377px; height: 200px; background-color: #0000FF; font-size: large; font-weight: bold; color: #FFFFFF;" >
           <tr>
               <td style="width: 121px" align="center">Email</td>
               <td style="width: 188px">
                   <asp:TextBox ID="txt_fpass_Email" runat="server" Width="203px"></asp:TextBox></td>
           </tr>

           <tr>
               <td style="width: 121px" align="center">Mobile</td>
               <td style="width: 188px">
                   <asp:TextBox ID="txt_fpass_mobile" runat="server" Width="203px"></asp:TextBox></td>
           </tr>



            <tr>
               <td style="width: 121px" align="center"> Old Password</td>
               <td style="width: 188px">
                   <asp:TextBox ID="txt_fpass_oldpass" TextMode="Password" runat="server"></asp:TextBox></td>
           </tr>

           
            <tr>
               <td style="width: 121px" align="center"> New Password</td>
               <td style="width: 188px">
                   <asp:TextBox ID="txt_fpass_newpass" TextMode="Password" runat="server"></asp:TextBox></td>
           </tr>




           <tr>
               <td colspan="2" align="center">
                   <asp:Button ID="btn_fpass" runat="server" Text="Forgot Password" Font-Bold="True" OnClick="btn_fpass_Click" />&nbsp&nbsp<asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Underline="True" OnClick="LinkButton1_Click" >Sign In</asp:LinkButton></td>
           </tr>
       </table>




</asp:Content>

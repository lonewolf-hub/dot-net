<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/aDMIN.master" AutoEventWireup="true" CodeFile="Satff.aspx.cs" Inherits="Admin_Satff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .style2
    {
        width: 428px;
    }
        .style3
        {
            width: 162px;
        }
        .auto-style1 {
            color: #369;
            font-size: medium;
            text-align: right;
            height: 30px;
        }
        .auto-style2 {
            width: 162px;
            height: 30px;
        }
        .auto-style3 {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">&nbsp;<table class="tbl">
    <tr>
        <td class="tblhead">
            ADD STAFF DETAIL</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <table align="center" class="style2">
                <tr>
                    <td class="auto-style1">
                        Name :</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtname" runat="server" CssClass="txtt" 
                            ontextchanged="txtname_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtname" ErrorMessage="!!!" ForeColor="Red" 
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">
                        Mobile :</td>
                    <td class="style3">
                        <asp:TextBox ID="txtmobile" runat="server" CssClass="txtt" 
                            ontextchanged="txtmobile_TextChanged" MaxLength="10"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        Address :
                    </td>
                    <td class="style3">
                        <asp:TextBox ID="txtadd" runat="server" CssClass="txtt" 
                            ontextchanged="txtadd_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        City :
                    </td>
                    <td class="style3">
                        <asp:TextBox ID="txtcity" runat="server" CssClass="txtt" 
                            ontextchanged="txtcity_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        Pincode :
                    </td>
                    <td class="style3">
                        <asp:TextBox ID="txtpin" runat="server" CssClass="txtt" 
                            ontextchanged="txtpin_TextChanged" MaxLength="6"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" 
                            ControlToValidate="txtpin" ErrorMessage="must be 6 digit" ForeColor="Red" 
                            MaximumValue="999999" MinimumValue="100000" Type="Double"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">
                        Education :
                    </td>
                    <td class="style3">
                        <asp:TextBox ID="txteducation" runat="server" CssClass="txtt" 
                            ontextchanged="txteducation_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        Experience :
                    </td>
                    <td class="style3">
                        <asp:TextBox ID="txtexperience" runat="server" CssClass="txtt" 
                            ontextchanged="txtexperience_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        Branch :
                    </td>
                    <td class="style3">
                        <asp:DropDownList ID="drpcourse" runat="server" CssClass="txtt">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="drpcourse" ErrorMessage="!!!" ForeColor="Red" 
                            InitialValue="SELECT" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">
                        Image :</td>
                    <td class="style3">
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="txtt" />
                    </td>
                    <td>
                        <asp:Label ID="lblfile" runat="server" ForeColor="Red"></asp:Label>
                        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">
                        &nbsp;</td>
                    <td class="style3">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        Email :
                    </td>
                    <td class="style3">
                        <asp:TextBox ID="txtemail" runat="server" CssClass="txtt" 
                            ontextchanged="txtemail_TextChanged"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="txtemail" ErrorMessage="invalid email" ForeColor="Red" 
                            SetFocusOnError="True" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">
                        Password :
                    </td>
                    <td class="style3">
                        <asp:TextBox ID="txtpassword" runat="server" CssClass="txtt" 
                            ontextchanged="txtpassword_TextChanged" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        Confirm-Pass :
                    </td>
                    <td class="style3">
                        <asp:TextBox ID="txtconfirmpass" runat="server" CssClass="txtt" 
                            ontextchanged="txtconfirmpass_TextChanged" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="txtpassword" ControlToValidate="txtconfirmpass" 
                            ErrorMessage="not same" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td class="style3">
                        <asp:Button ID="btnaddstaff" runat="server" Text="ADD STAFF" CssClass="btnn" 
                            onclick="btnaddstaff_Click" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td style="text-align: center">
            <asp:Label ID="lblerror" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>


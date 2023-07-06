<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registartion.aspx.cs" Inherits="Registartion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
.upper-case
{
    text-transform: uppercase
}

    .style5
    {
        width: 387px;
    }
                
            
             .txtt
   {
       width:140px;
       height:22px;
       border:solid 1px red;
       border-radius:4px;
       padding-left:3px;
       }
       
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                Registration
            </td>
        </tr>
        <tr>
            <td>
                                <table class="style5" __designer:mapid="7e" align="center">
                                    <tr __designer:mapid="7f">
                                        <td __designer:mapid="80">
                                            &nbsp;</td>
                                        <td __designer:mapid="81">
                                            &nbsp;</td>
                                        <td __designer:mapid="82">
                                            &nbsp;</td>
                                    </tr>
                                    <tr __designer:mapid="8c">
                                        <td class="lbl" __designer:mapid="8d">
                                            Student Name :</td>
                                        <td __designer:mapid="8e">
                                            <asp:TextBox ID="txtname" runat="server" CssClass="txt"></asp:TextBox>
                                        </td>
                                        <td __designer:mapid="90">
                                            &nbsp;</td>
                                    </tr>
                                    <tr __designer:mapid="8c">
                                        <td class="lbl" __designer:mapid="8d">
                                            Roll No:</td>
                                        <td __designer:mapid="8e">
                                            <asp:TextBox ID="txtroll" runat="server" CssClass="txt upper-case"></asp:TextBox>
                                        </td>
                                        <td __designer:mapid="90">
                                            &nbsp;</td>
                                    </tr>
                                    <tr __designer:mapid="91">
                                        <td class="lbl" __designer:mapid="92">
                                            Mobile :
                                        </td>
                                        <td __designer:mapid="93">
                                            <asp:TextBox ID="txtmobi" runat="server" CssClass="txt"></asp:TextBox>
                                        </td>
                                        <td __designer:mapid="95">
                                            &nbsp;</td>
                                    </tr>
                                    <tr __designer:mapid="96">
                                        <td class="lbl" __designer:mapid="97">
                                            Email :
                                        </td>
                                        <td __designer:mapid="98">
                                            <asp:TextBox ID="txtemail" runat="server" CssClass="txt"></asp:TextBox>
                                        </td>
                                        <td __designer:mapid="9a">
                                            &nbsp;</td>
                                    </tr>
                                    <tr __designer:mapid="ae">
                                        <td class="lbl" __designer:mapid="af">
                                            Address :
                                        </td>
                                        <td __designer:mapid="b0">
                                            <asp:TextBox ID="txtadd" runat="server" CssClass="txt"></asp:TextBox>
                                        </td>
                                        <td __designer:mapid="b2">
                                            &nbsp;</td>
                                    </tr>
                                    <tr __designer:mapid="b3">
                                        <td class="lbl" __designer:mapid="b4">
                                            City :
                                        </td>
                                        <td __designer:mapid="b5">
                                            <asp:TextBox ID="txtcity" runat="server" CssClass="txt"></asp:TextBox>
                                        </td>
                                        <td __designer:mapid="b7">
                                            &nbsp;</td>
                                    </tr>
                                    <tr __designer:mapid="b8">
                                        <td class="lbl" __designer:mapid="b9">
                                            Pincode :
                                        </td>
                                        <td __designer:mapid="ba">
                                            <asp:TextBox ID="txtpin" runat="server" CssClass="txt"></asp:TextBox>
                                        </td>
                                        <td __designer:mapid="bc">
                                            &nbsp;</td>
                                    </tr>
                                    <tr __designer:mapid="bd">
                                        <td class="lbl" __designer:mapid="be">
                                            Image :
                                        </td>
                                        <td __designer:mapid="bf">
                                            <asp:FileUpload ID="FileUpload1" runat="server" />
                                        </td>
                                        <td __designer:mapid="c1">
                                            &nbsp;</td>
                                    </tr>
                                    <tr __designer:mapid="bd">
                                        <td class="lbl" __designer:mapid="be">
                                            Branch :
                                        </td>
                                        <td __designer:mapid="bf">
                        <asp:DropDownList ID="drpcourse" runat="server" CssClass="txtt">
                        </asp:DropDownList>
                                        </td>
                                        <td __designer:mapid="c1">
                                            &nbsp;</td>
                                    </tr>
                                    <tr __designer:mapid="c2">
                                        <td class="lbl" __designer:mapid="c3">
                                            UserName :</td>
                                        <td __designer:mapid="c4">
                                            <asp:TextBox ID="txtuname" runat="server" CssClass="txt"></asp:TextBox>
                                        </td>
                                        <td __designer:mapid="c6">
                                            &nbsp;</td>
                                    </tr>
                                    <tr __designer:mapid="c7">
                                        <td class="lbl" __designer:mapid="c8">
                                            Password :
                                        </td>
                                        <td __designer:mapid="c9">
                                            <asp:TextBox ID="txtpass" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
                                        </td>
                                        <td __designer:mapid="cb">
                                            &nbsp;</td>
                                    </tr>
                                    <tr __designer:mapid="cc">
                                        <td class="lbl" __designer:mapid="cd">
                                            Confirm-Pass :
                                        </td>
                                        <td __designer:mapid="ce">
                                            <asp:TextBox ID="txtcpass" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
                                        </td>
                                        <td __designer:mapid="d0">
                                            &nbsp;</td>
                                    </tr>
                                    <tr __designer:mapid="d1">
                                        <td class="lbl" __designer:mapid="d2">
                                            &nbsp;</td>
                                        <td __designer:mapid="d3">
                                            <asp:Button ID="btnstuadd" runat="server" CssClass="btn" Text="ADD Student" 
                                                Width="120px" onclick="btnstuadd_Click" />
                                        </td>
                                        <td __designer:mapid="d5">
                                            &nbsp;</td>
                                    </tr>
                                    <tr __designer:mapid="d6">
                                        <td class="lbl" __designer:mapid="d7">
                                            &nbsp;</td>
                                        <td __designer:mapid="d8">
                                            <asp:Label ID="lblmsg" runat="server"></asp:Label>
                                        </td>
                                        <td __designer:mapid="da">
                                            &nbsp;</td>
                                    </tr>
                                    <tr __designer:mapid="db">
                                        <td __designer:mapid="dc">
                                            &nbsp;</td>
                                        <td __designer:mapid="dd">
                                            &nbsp;</td>
                                        <td __designer:mapid="de">
                                            &nbsp;</td>
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


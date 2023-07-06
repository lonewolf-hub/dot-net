<%@ Page Title="" Language="C#" MasterPageFile="~/Staff/Staff.master" AutoEventWireup="true" CodeFile="AddStudent.aspx.cs" Inherits="Staff_AddStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style4
    {
        width: 449px;
    }
    .style5
    {
        width: 387px;
    }
    .style7
    {
        text-align: right;
        color: Red;
        width: 242px;
    }
    .style6
    {
        width: 140px;
    }
    .style8
    {
        width: 242px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            ADD NEW STUDENT DATA.</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <table align="left" class="style4">
                <tr>
                    <td class="style7">
                        Select Standard :
                    </td>
                    <td class="style6">
                        <asp:Label ID="lblstd" runat="server"></asp:Label>
                        </td>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style7">
                        Select Division :
                    </td>
                    <td class="style6">
                        <asp:DropDownList ID="drpdiv" runat="server" CssClass="txt">
                        </asp:DropDownList>
                        </td>
                    <td class="style5">
                        <asp:Button ID="Button7" runat="server" CssClass="btn" onclick="Button7_Click" 
                            Text="Select" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style8">
                        &nbsp;</td>
                    <td class="style6">
                        &nbsp;</td>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                </table>
            </td>
    </tr>
    <tr>
        <td>
                        <asp:Label ID="lblcnt" runat="server"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblstudent" runat="server"></asp:Label>
                    </td>
    </tr>
    <tr>
        <td>
            <table align="center" class="style4">
                <tr>
                    <td colspan="3">
                        <asp:MultiView ID="MultiView1" runat="server">
                            <asp:View ID="View1" runat="server">
                                <table class="style5">
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="lbl">
                                            RollNo : </td>
                                        <td>
                                            <asp:TextBox ID="txtroll" runat="server" CssClass="txt" ReadOnly="True"></asp:TextBox>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="lbl">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="lbl">
                                            Student Name :</td>
                                        <td>
                                            <asp:TextBox ID="txtname" runat="server" CssClass="txt"></asp:TextBox>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="lbl">
                                            Mobile :
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtmobi" runat="server" CssClass="txt"></asp:TextBox>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="lbl">
                                            Email :
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtemail" runat="server" CssClass="txt"></asp:TextBox>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="lbl">
                                            DOB :
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="drpdd" runat="server">
                                                <asp:ListItem>DD</asp:ListItem>
                                                <asp:ListItem>01</asp:ListItem>
                                                <asp:ListItem>02</asp:ListItem>
                                                <asp:ListItem>03</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:DropDownList ID="drpmm" runat="server">
                                                <asp:ListItem>MM</asp:ListItem>
                                                <asp:ListItem>Jan</asp:ListItem>
                                                <asp:ListItem>Feb</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:DropDownList ID="drpyyyy" runat="server">
                                                <asp:ListItem>YYYY</asp:ListItem>
                                                <asp:ListItem>1980</asp:ListItem>
                                                <asp:ListItem>1981</asp:ListItem>
                                                <asp:ListItem>1982</asp:ListItem>
                                                <asp:ListItem>1983</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="lbl">
                                            Address :
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtadd" runat="server" CssClass="txt"></asp:TextBox>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="lbl">
                                            City :
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtcity" runat="server" CssClass="txt"></asp:TextBox>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="lbl">
                                            Pincode :
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtpin" runat="server" CssClass="txt"></asp:TextBox>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="lbl">
                                            Image :
                                        </td>
                                        <td>
                                            <asp:FileUpload ID="FileUpload1" runat="server" />
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="lbl">
                                            UserName :</td>
                                        <td>
                                            <asp:TextBox ID="txtuname" runat="server" CssClass="txt"></asp:TextBox>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="lbl">
                                            Password :
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtpass" runat="server" CssClass="txt"></asp:TextBox>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="lbl">
                                            Confirm-Pass :
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtcpass" runat="server" CssClass="txt"></asp:TextBox>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="lbl">
                                            &nbsp;</td>
                                        <td>
                                            <asp:Button ID="btnstuadd" runat="server" CssClass="btn" Text="ADD Student" 
                                                Width="120px" onclick="btnstuadd_Click" />
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="lbl">
                                            &nbsp;</td>
                                        <td>
                                            <asp:Label ID="lblmsg" runat="server"></asp:Label>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </asp:View>
                        </asp:MultiView>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
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


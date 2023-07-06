<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AddStaff.aspx.cs" Inherits="Admin_AddStaff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .style3
    {
        height: 19px;
    }
    .style2
    {
        width: 394px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                ADD Staff</td>
        </tr>
        <tr>
            <td class="style3">
            </td>
        </tr>
        <tr>
            <td>
                <table align="center" class="style2">
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
                            Staff Name :</td>
                        <td>
                            <asp:TextBox ID="txtname" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                        <td>
                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Email :</td>
                        <td>
                            <asp:TextBox ID="txtemail" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                        <td>
                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Mobile :</td>
                        <td>
                            <asp:TextBox ID="txtmobile" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Qualification : </td>
                        <td>
                            <asp:TextBox ID="txtqual" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Address : </td>
                        <td>
                            <asp:TextBox ID="txtadd" runat="server" CssClass="txt" Height="33px" 
                                TextMode="MultiLine" Width="161px"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            City : </td>
                        <td>
                            <asp:TextBox ID="txtcity" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Picode : </td>
                        <td>
                            <asp:TextBox ID="txtpin" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Gender : </td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="txt">
                                <asp:ListItem>SELECT</asp:ListItem>
                                <asp:ListItem>MALE</asp:ListItem>
                                <asp:ListItem>FEMALE</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Photo : </td>
                        <td>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            StdName : </td>
                        <td>
                        <asp:DropDownList ID="drpstd" runat="server" CssClass="txt">
                        </asp:DropDownList>
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
                            Password : </td>
                        <td>
                            <asp:TextBox ID="txtpass" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Confi-Pass : </td>
                        <td>
                            <asp:TextBox ID="txtcpass" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="lbl" runat="server"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                        &nbsp;</td>
                        <td>
                            <asp:Button ID="btnadd" runat="server" CssClass="btn" Text="ADD" 
                                onclick="btnadd_Click" />
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


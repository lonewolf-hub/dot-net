<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="StudentReport.aspx.cs" Inherits="Admin_StudentReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">




        .style4
    {
        width: 644px;
    }
    .style6
    {
            width: 52px;
        }
    .style5
    {
            width: 56px;
        }
        .style8
    {
        width: 527px;
    }
    .style9
    {
        width: 493px;
    }
    .style10
    {
        width: 133px;
        text-align: center;
    }
    .style11
    {
        width: 332px;
    }
    .style14
    {
        text-align: right;
        color: Red;
        width: 89px;
    }
        .style13
    {
        width: 89px;
    }
    .style15
    {
        color: #004AE6;
        text-align: right;
        width: 142px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            ADVANCE REPORTS</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <table align="left" class="style4">
                <tr>
                    <td class="style15">
                        Select Standard :
                    </td>
                    <td class="style6">
                        <asp:DropDownList ID="drpstd" runat="server" CssClass="txt" AutoPostBack="True" 
                            onselectedindexchanged="drpstd_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="lblstd" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style15">
                        Select Division :
                    </td>
                    <td class="style6">
                        <asp:DropDownList ID="drpdiv" runat="server" CssClass="txt" AutoPostBack="True" 
                            onselectedindexchanged="drpdiv_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style15">
                        Select Student : 
                    </td>
                    <td class="style6">
                        <asp:DropDownList ID="drpstudent" runat="server" CssClass="txt">
                        </asp:DropDownList>
                    </td>
                    <td class="style5" valign="bottom">
                        <asp:Button ID="btnsarch" runat="server" CssClass="btn" 
                            Text="Select" onclick="btnsarch_Click" />
                    </td>
                    <td valign="bottom">
                        <asp:Label ID="lblcnt" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <table align="center" class="style8">
                <tr>
                    <td>
                        <asp:MultiView ID="MultiView1" runat="server">
                            <asp:View ID="View1" runat="server">
                                <table class="tbl">
                                    <tr>
                                        <td class="tblhead">
                                            Student Name :
                                            <asp:Label ID="lblname" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <table class="style9">
                                                <tr>
                                                    <td class="style10">
                                                        <asp:Image ID="imgg" runat="server" Height="130px" Width="118px" />
                                                    </td>
                                                    <td colspan="3" valign="top">
                                                        <table class="style11">
                                                            <tr>
                                                                <td class="style14">
                                                                    Roll No :</td>
                                                                <td>
                                                                    <asp:Label ID="lblroll" runat="server"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style14">
                                                                    Email :
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lblemail" runat="server"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style14">
                                                                    Mobile :
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lblmobile" runat="server"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style14">
                                                                    BirthDate :
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lbldob" runat="server"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="style13">
                                                                    &nbsp;</td>
                                                                <td>
                                                                    &nbsp;</td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style10">
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="lbl">
                                                        Address :
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lbladd" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="lbl">
                                                        City :
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblcity" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="lbl">
                                                        Pincode :
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblpin" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="style10">
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="lbl">
                                                        UserName :</td>
                                                    <td>
                                                        <asp:Label ID="lbluname" runat="server"></asp:Label>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="lbl">
                                                        Password :</td>
                                                    <td>
                                                        <asp:Label ID="lblpass" runat="server"></asp:Label>
                                                    </td>
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
                            </asp:View>
                        </asp:MultiView>
                    </td>
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


<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="StaffView.aspx.cs" Inherits="Admin_StaffView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
    {
        height: 19px;
            text-align: center;
        }
    .style2
    {
        width: 610px;
    }
        .style4
        {
            width: 210px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                Staff Report</td>
        </tr>
        <tr>
            <td class="style3">
            </td>
        </tr>
        <tr>
            <td class="style3">
                Select Staff :
                <asp:DropDownList ID="drpstaff" runat="server" CssClass="txt">
                </asp:DropDownList>
                <asp:Button ID="btnselect" runat="server" CssClass="btn" Text="Select" 
                            onclick="btnaddstd_Click" />
                <asp:Label ID="lbl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <table align="center" class="style2">
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Staff Name :</td>
                        <td class="style4">
                            <asp:TextBox ID="txtname" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                        <td class="lbl">
                            Address : </td>
                        <td>
                            <asp:TextBox ID="txtadd" runat="server" CssClass="txt" Height="33px" 
                                TextMode="MultiLine" Width="161px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Email :</td>
                        <td class="style4">
                            <asp:TextBox ID="txtemail" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                        <td class="lbl">
                            City : </td>
                        <td>
                            <asp:TextBox ID="txtcity" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Mobile :</td>
                        <td class="style4">
                            <asp:TextBox ID="txtmobile" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                        <td class="lbl">
                            Picode : </td>
                        <td>
                            <asp:TextBox ID="txtpin" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Qualification : </td>
                        <td class="style4">
                            <asp:TextBox ID="txtqual" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                        <td class="lbl">
                            StdName : </td>
                        <td>
                        <asp:DropDownList ID="drpstd" runat="server" CssClass="txt">
                        </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Photo : </td>
                        <td class="style4">
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            UserName :</td>
                        <td class="style4">
                            <asp:TextBox ID="txtuname" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Password : </td>
                        <td class="style4">
                            <asp:TextBox ID="txtpass" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Confi-Pass : </td>
                        <td class="style4">
                            <asp:TextBox ID="txtcpass" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            &nbsp;</td>
                        <td class="style4">
                            <asp:Button ID="btnadd" runat="server" CssClass="btn" Text="UPDATE" 
                                 />
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style4">
                            <asp:Label ID="lbl0" runat="server"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style4">
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


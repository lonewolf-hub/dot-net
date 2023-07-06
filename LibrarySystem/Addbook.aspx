<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Addbook.aspx.cs" Inherits="Addbook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 437px;
            height: 355px;
        }
    .style2
    {
        text-align: right;
        color: Green;
        height: 20px;
    }
    .style3
    {
        height: 20px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                ADD NEW BOOK</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <table align="center" class="style1">
                    <tr>
                        <td class="lbl">
                            BookName :</td>
                        <td>
                            <asp:TextBox ID="txtbname" runat="server" CssClass="txt"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtbname" ErrorMessage="??" ForeColor="Red" 
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Detail :
                        </td>
                        <td>
                            <asp:TextBox ID="txtdetail" runat="server" CssClass="txt" TextMode="MultiLine" 
                                Height="50px" Width="200px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtdetail" ErrorMessage="??" ForeColor="Red" 
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Autor :
                        </td>
                        <td>
                            <asp:TextBox ID="txtauthor" runat="server" CssClass="txt"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="txtauthor" ErrorMessage="??" ForeColor="Red" 
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Publication :</td>
                        <td>
                            <asp:DropDownList ID="drppublication" runat="server" CssClass="txt">
                                
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="drppublication" ErrorMessage="??" ForeColor="Red" 
                                InitialValue="SELECT" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            Branch :
                        </td>
                        <td class="style3" align="left">
                            <asp:DropDownList ID="drpbranch" runat="server" CssClass="txt">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                ControlToValidate="drpbranch" ErrorMessage="??" ForeColor="Red" 
                                InitialValue="SELECT" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Price :
                        </td>
                        <td>
                            <asp:TextBox ID="txtprice" runat="server" CssClass="txt"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                ControlToValidate="txtprice" ErrorMessage="??" ForeColor="Red" 
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator2" runat="server" 
                                ControlToValidate="txtprice" ErrorMessage="??" ForeColor="Red" 
                                MaximumValue="9999999999" MinimumValue="0" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Quantity&nbsp; :</td>
                        <td>
                            <asp:TextBox ID="txtqnt" runat="server" CssClass="txt"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                ControlToValidate="txtqnt" ErrorMessage="??" ForeColor="Red" 
                                SetFocusOnError="True"></asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                                ControlToValidate="txtqnt" ErrorMessage="??" ForeColor="Red" 
                                MaximumValue="9999999999" MinimumValue="0" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Book Photo :  
                        </td>
                        <td>
                            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="txt" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="btnadd" runat="server" CssClass="btn" Text="ADD Book" 
                                onclick="btnadd_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="lblmsg" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Download.aspx.cs" Inherits="Download" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 687px;
        }
        .style2
        {
            text-align: right;
            color: #369;
            width: 99px;
        }
        .style3
        {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                Download Material</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td class="style2">
                            Select Course :
                        </td>
                        <td>
                            <asp:DropDownList ID="drpcourse" runat="server" CssClass="txt">
                            </asp:DropDownList>
                            <asp:Button ID="btnsearch" runat="server" CssClass="btn" Text="Search" 
                                onclick="btnsearch_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btndnload" runat="server" CssClass="btn" 
                                Text="Top Downloaded" OnClick="btndnload_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3" colspan="2">
            <asp:GridView ID="GvUpload" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" 
                DataKeyNames="uid" onrowcommand="GvUpload_RowCommand" style="text-align: center">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="title" HeaderText="Title" />
                    <asp:BoundField DataField="course" HeaderText="Course" />
                    <asp:BoundField DataField="staff" HeaderText="Staff" />
                    <asp:BoundField DataField="download" HeaderText="Download" />
                    <asp:TemplateField HeaderText="Download">
                    <ItemTemplate>
                    <asp:LinkButton runat="server" Text="Download" ID="lnkdnl" Font-Bold="true"></asp:LinkButton>
                    </ItemTemplate>
                    </asp:TemplateField>
                </Columns>

                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">
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


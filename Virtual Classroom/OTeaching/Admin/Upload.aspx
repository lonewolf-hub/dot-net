<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/aDMIN.master" AutoEventWireup="true" CodeFile="Upload.aspx.cs" Inherits="Admin_Upload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 882px;
        }
        .style2
        {
            width: 201px;
        }
        .style3
        {
            width: 157px;
        }
        .style4
        {
            width: 899px;
        }
        .style5
        {
            width: 133px;
        }
        .auto-style1 {
            color: #369;
            font-size: medium;
            text-align: right;
            height: 26px;
        }
        .auto-style2 {
            width: 157px;
            height: 26px;
        }
        .auto-style3 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                Upload Reports</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td class="auto-style1">
                            </td>
                        <td class="auto-style2">
                            <asp:RadioButton ID="rdofile" runat="server" Checked="True" GroupName="a" 
                                Text="File" />
&nbsp;&nbsp;
                            </td>
                        <td class="auto-style3">
                            </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Seelct Branch :
                        </td>
                        <td class="style3">
                            <asp:DropDownList ID="drpcourse" runat="server" CssClass="txtt">
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:Button ID="btnsearchcourse" runat="server" CssClass="btnn" 
                                onclick="btnsearchcourse_Click" Text="Search" />
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Select Staff :
                        </td>
                        <td class="style3">
                            <asp:DropDownList ID="drpstaff" runat="server" CssClass="txtt">
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:Button ID="btnsearchstafff" runat="server" CssClass="btnn" 
                                onclick="btnsearchstafff_Click" Text="Search" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="style3">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
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
                <table class="style4">
                    <tr>
                        <td class="style5">
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="lbl" runat="server" ForeColor="#660066"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5">
                            &nbsp;</td>
                        <td>
                            <asp:MultiView ID="MultiView1" runat="server">
                                <asp:View ID="View1" runat="server">
                                    <asp:GridView ID="GvUpload" runat="server" AutoGenerateColumns="False" 
                                        CellPadding="4" DataKeyNames="uid" ForeColor="#333333" GridLines="None" 
                                        onrowcommand="GvUpload_RowCommand" style="text-align: center" Width="100%">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="title" HeaderText="Title" />
                                            <asp:BoundField DataField="course" HeaderText="Branch" />
                                            <asp:BoundField DataField="staff" HeaderText="Staff" />
                                            <asp:BoundField DataField="download" HeaderText="Download" />
                                            <asp:TemplateField HeaderText="Download">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="lnkdnl" runat="server" 
                                                        CommandArgument='<%#Eval("Upload") %>' Font-Bold="true" Text="Download"></asp:LinkButton>
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
                                </asp:View>
                                <asp:View ID="View2" runat="server">
                                    <asp:GridView ID="GvPDF" runat="server" AutoGenerateColumns="False" 
                                        CellPadding="4" DataKeyNames="vid" ForeColor="#333333" GridLines="None" 
                                        onrowcommand="GvPDF_RowCommand" style="text-align: center" Width="100%">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <%--  <asp:TemplateField HeaderText="Download">
                            <ItemTemplate>
                                <asp:LinkButton runat="server" Text="Download" ID="lnkdnl" Font-Bold="true" CommandName="download" CommandArgument='<%#Eval("Video") %>' ></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>--%>
                                            <asp:BoundField DataField="title" HeaderText="Title" />
                                            <asp:BoundField DataField="course" HeaderText="Branch" />
                                            <asp:BoundField DataField="staff" HeaderText="Staff" />
                                            <asp:BoundField DataField="Download" HeaderText="View" />
                                            <asp:TemplateField HeaderText="Read">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="lnkread" runat="server" 
                                                        CommandArgument='<%#Eval("Video") %>' CommandName="read" Font-Bold="true" 
                                                        Text="Read"></asp:LinkButton>
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
                                </asp:View>
                            </asp:MultiView>
                        </td>
                    </tr>
                    <tr>
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
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


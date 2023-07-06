<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student.master" AutoEventWireup="true" CodeFile="Download.aspx.cs" Inherits="Student_Download" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 6px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                You can Download only <strong>
                <asp:Label ID="lblcourse0" runat="server"></asp:Label>
            &nbsp;Branch Material for study.</strong></td>
        </tr>
        <tr>
            <td>
                <strong>Your Course :
                <asp:Label ID="lblcourse" runat="server"></asp:Label>
                </strong>
            </td>
        </tr>
        <tr>
            <td class="style1" 
                style="border-top-style: solid; border-top-width: thin; border-top-color: #800080;">
            </td>
        </tr>
        <tr>
            <td>
                Select Teacher :
                <asp:DropDownList ID="drpteacher" runat="server" CssClass="txt" DataSourceID="SqlDataSource1" DataTextField="Staff" DataValueField="Staff">
                </asp:DropDownList>
&nbsp;<asp:Button ID="btnsearch" runat="server" CssClass="btn" onclick="btnsearch_Click" 
                    Text="Search" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbl" runat="server" ForeColor="#660066"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
            <asp:GridView ID="GvUpload" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" 
                DataKeyNames="uid" onrowcommand="GvUpload_RowCommand" style="text-align: center">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="title" HeaderText="Title" />
                    <asp:BoundField DataField="course" HeaderText="Course" />
                    <asp:BoundField DataField="staff" HeaderText="Staff" />
                    <asp:BoundField DataField="Download" HeaderText="Download" />
                    <asp:TemplateField HeaderText="Download">
                    <ItemTemplate>
                    <asp:LinkButton runat="server" Text="Download" ID="lnkdnl" Font-Bold="true" CommandArgument='<%#Eval("uid") %>' ></asp:LinkButton>
                    </ItemTemplate>
                    </asp:TemplateField>
                </Columns>

                <FooterStyle BackColor="#CCCC99" />
                                                    <HeaderStyle BackColor="#8506A9" Font-Bold="True" ForeColor="White" />
                                                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                                    <RowStyle BackColor="#F7F7DE" />
                                                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                                    <SortedAscendingHeaderStyle BackColor="#848384" />
                                                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                                    <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
                        </td>
        </tr>
        <tr>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OTeachingConnectionString2 %>" SelectCommand="SELECT DISTINCT [Staff] FROM [UploadMst]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>


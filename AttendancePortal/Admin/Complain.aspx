<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Complain.aspx.cs" Inherits="Admin_Complain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .style3
    {
        height: 19px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                Complain Form</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Total =
                <asp:Label ID="lblcomplain" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                    BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                                    Width="659px">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="rollno" HeaderText="RollNo" />
                                        <asp:BoundField DataField="name" HeaderText="Student Name" />
                                        <asp:BoundField DataField="subject" HeaderText="Subject" />
                                        <asp:BoundField DataField="message" HeaderText="Complain" />
                                        <asp:BoundField DataField="reply" HeaderText="Reply" />
                                    </Columns>
                                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                    <SortedDescendingHeaderStyle BackColor="#820000" />
                                </asp:GridView>
                            </td>
        </tr>
        <tr>
            <td>
            &nbsp;</td>
        </tr>
    </table>
</asp:Content>


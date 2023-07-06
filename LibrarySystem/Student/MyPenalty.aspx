<%@ Page Title="" Language="C#" MasterPageFile="~/Student/MasterPage.master" AutoEventWireup="true" CodeFile="MyPenalty.aspx.cs" Inherits="Student_MyPanalty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-size: 45pt;
            color: #003300;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            PENATY REPORT</td>
    </tr>
    <tr>
        <td style="text-align: center">
                </td>
    </tr>
    <tr>
        <td align="center">
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                CellPadding="2" ForeColor="Black" GridLines="None" Width="668px">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:BoundField DataField="bookname" HeaderText="BookName" />
                    <asp:BoundField DataField="price" HeaderText="Price">
                    <ItemStyle Width="70px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="panalty" HeaderText="Penalty Amt">
                    <ItemStyle Width="110px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="detail" HeaderText="Detail" />
                    <asp:BoundField DataField="entrydate" HeaderText="Date" />
                </Columns>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                    HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>


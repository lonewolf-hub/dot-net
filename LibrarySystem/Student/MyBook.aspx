<%@ Page Title="" Language="C#" MasterPageFile="~/Student/MasterPage.master" AutoEventWireup="true" CodeFile="MyBook.aspx.cs" Inherits="Student_MyBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 580px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                MY BOOK REPORT</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                <asp:Button ID="btntaken" runat="server" CssClass="btn" Text="BORROW BOOK" 
                    onclick="btntaken_Click" />
&nbsp;<asp:Button ID="btnreturn" runat="server" CssClass="btn" Text="RETURN BOOK" 
                    onclick="btnreturn_Click" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <table align="center" class="style1">
                            <tr>
                                <td>
                                    Borrow Book List -
                                    <asp:Label ID="lblb" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                        BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                                        CellPadding="2" ForeColor="Black" GridLines="None" style="text-align: center" 
                                        Width="482px">
                                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                        <Columns>
                                            <asp:BoundField DataField="bookname" HeaderText="Book Name" />
                                            <asp:BoundField DataField="issuedate" HeaderText="Issue Date" />
                                            <asp:BoundField DataField="days" HeaderText="Days" />
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
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <table align="center" class="style1">
                            <tr>
                                <td>
                                    Return Book List -
                                    <asp:Label ID="lblr" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                        BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                                        CellPadding="2" ForeColor="Black" GridLines="None" style="text-align: center" 
                                        Width="630px">
                                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                        <Columns>
                                            <asp:BoundField DataField="bookname" HeaderText="Book Name" />
                                            <asp:BoundField DataField="issuedate" HeaderText="Issue Date" />
                                            <asp:BoundField DataField="days" HeaderText="Days">
                                            <ItemStyle Width="50px" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="returndate" HeaderText="Return Date" />
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
                    </asp:View>
                </asp:MultiView>
            </td>
        </tr>
    </table>
</asp:Content>


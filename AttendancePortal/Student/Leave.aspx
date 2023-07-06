<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student.master" AutoEventWireup="true" CodeFile="Leave.aspx.cs" Inherits="Student_Leave" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 403px;
        }
        .style5
        {
            width: 551px;
        }
        .style6
        {
            width: 288px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                Leave Formm<br />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button7" runat="server" CssClass="btn" onclick="Button7_Click" 
                    Text="Apply For Leave" Width="180px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button8" runat="server" CssClass="btn" onclick="Button8_Click" 
                    Text="Leave Status Report" Width="180px" />
            </td>
        </tr>
        <tr>
            <td>
                <table align="center" class="style5">
                    <tr>
                        <td>
                            <asp:MultiView ID="MultiView1" runat="server">
                                <asp:View ID="View1" runat="server">
                                    <table align="center" class="style4">
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                Leave Reasone :</td>
                                            <td>
                                                <asp:TextBox ID="txtmsg" runat="server" CssClass="txt" Height="50px" 
                                                    TextMode="MultiLine" Width="200px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lbl">
                                                No of Days :</td>
                                            <td>
                                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="txt" Width="50px">
                                                    <asp:ListItem>01</asp:ListItem>
                                                    <asp:ListItem>02</asp:ListItem>
                                                    <asp:ListItem>03</asp:ListItem>
                                                    <asp:ListItem>04</asp:ListItem>
                                                    <asp:ListItem>05</asp:ListItem>
                                                    <asp:ListItem>06</asp:ListItem>
                                                    <asp:ListItem>07</asp:ListItem>
                                                    <asp:ListItem>08</asp:ListItem>
                                                    <asp:ListItem>09</asp:ListItem>
                                                    <asp:ListItem>10</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                <asp:Button ID="btnappluleave" runat="server" CssClass="btn" 
                                                    onclick="btnappluleave_Click" Text="Apply Leave" ToolTip=" " Width="120px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                <asp:Label ID="lbl" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>
                                <asp:View ID="View2" runat="server">
                                    <table class="style6">
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                                    BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                                                    CellPadding="4" ForeColor="Black" GridLines="Vertical" 
                                                    style="text-align: center" Width="523px">
                                                    <AlternatingRowStyle BackColor="White" />
                                                    <Columns>
                                                        <asp:BoundField DataField="Message" HeaderText="Leave Reasone" />
                                                        <asp:BoundField DataField="Nodays" HeaderText="Days" />
                                                        <asp:BoundField DataField="Reply" HeaderText="Status" />
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
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
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
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Staff/Staff.master" AutoEventWireup="true" CodeFile="Att.aspx.cs" Inherits="Staff_Att" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style4
    {
        width: 503px;
    }
    .style7
    {
            text-align: right;
            color: Red;
            width: 128px;
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
            width: 128px;
        }
        .style9
        {
            width: 100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            ADD ATTENDANCE</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <table align="left" class="style4">
                <tr>
                    <td class="style7">
                        Select Standard :
                    </td>
                    <td class="style6">
                        <asp:Label ID="lblstd" runat="server"></asp:Label>
                    </td>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style7">
                        Select Division :
                    </td>
                    <td class="style6">
                        <asp:DropDownList ID="drpdiv" runat="server" CssClass="txt">
                        </asp:DropDownList>
                    </td>
                    <td class="style5">
                        <asp:Button ID="Button7" runat="server" CssClass="btn" onclick="Button7_Click" 
                            Text="Select" />
                    </td>
                    <td>
            <asp:Label ID="lblcnt" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style8">
                        &nbsp;</td>
                    <td class="style6">
                        &nbsp;</td>
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
            <asp:Label ID="lblatt" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
                    <table class="style9">
                        <tr>
                            <td valign="top">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                    CellPadding="4" ForeColor="#333333" GridLines="None" Width="425px">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="rollno" HeaderText="RollNo" />
                                        <asp:BoundField DataField="name" HeaderText="StudentName" />
                                        <asp:TemplateField HeaderText="Attendance">
                                            <ItemTemplate>
                                                <asp:DropDownList ID="drpatt" runat="server">
                                                    <asp:ListItem Text="Present" Value="P"></asp:ListItem>
                                                    <asp:ListItem Text="Absent" Value="A"></asp:ListItem>
                                                    <asp:ListItem Text="Leave" Value="L"></asp:ListItem>
                                                </asp:DropDownList>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                    <SortedDescendingHeaderStyle BackColor="#820000" />
                                </asp:GridView>
                            </td>
                            <td valign="bottom">
                                <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" 
                                    BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
                                    Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" 
                                    ShowGridLines="True" Width="225px">
                                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                    <OtherMonthDayStyle ForeColor="#CC9966" />
                                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                    <SelectorStyle BackColor="#FFCC66" />
                                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                                        ForeColor="#FFFFCC" />
                                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                                </asp:Calendar>
                                <asp:Button ID="btnaddatt" runat="server" CssClass="btn" Font-Bold="True" 
                                    Font-Size="Medium" Height="45px" onclick="btnaddatt_Click" 
                                    Text="ADD Attendance" Width="225px" />
                            </td>
                        </tr>
                    </table>
                </asp:View>
            </asp:MultiView>
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


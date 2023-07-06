<%@ Page Title="" Language="C#" MasterPageFile="~/Staff/Staff.master" AutoEventWireup="true" CodeFile="StudentReport.aspx.cs" Inherits="Staff_StudentReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
    {
        width: 535px;
    }
    .style5
    {
        width: 45px;
    }
    .style6
    {
        width: 140px;
    }
    .style7
    {
        text-align: right;
        color: Red;
        width: 121px;
    }
    .style8
    {
        width: 121px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                STUDENT REPORTS</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: left">
            <table align="left" class="style4">
                <tr>
                    <td class="style7">
                        Select Standard :
                    </td>
                    <td class="style6">
                        <asp:DropDownList ID="drpstd" runat="server" CssClass="txt" AutoPostBack="True" 
                            onselectedindexchanged="drpstd_SelectedIndexChanged">
                        </asp:DropDownList>
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
                        <asp:Label ID="lbl" runat="server"></asp:Label>
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
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" ForeColor="#333333" GridLines="None" Width="718px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="Photo"> <ItemTemplate>
                    <asp:Image runat="server" ID="imgg" ImageUrl='<%#Eval("Image") %>' Width="45px" Height="50px" />
                    </ItemTemplate>                 </asp:TemplateField>
                        <asp:BoundField DataField="rollno" HeaderText="RollNo" />
                        <asp:BoundField DataField="name" HeaderText="Name" />
                        <asp:BoundField DataField="mobile" HeaderText="Mobile" />
                        <asp:BoundField DataField="email" HeaderText="Email" />
                        <asp:BoundField DataField="DOB" HeaderText="BirthDate" />
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
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


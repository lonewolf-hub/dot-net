<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Staff.aspx.cs" Inherits="Staff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .style1
    {
        width: 100%;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            Staff Reports -
            <asp:Label ID="lblstaff" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GvStaff" runat="server" 
                BorderColor="#339966" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" 
                AutoGenerateColumns="False" 
                DataKeyNames="sid" ForeColor="#333333" GridLines="None" Width="100%">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Photo"> <ItemTemplate>
                    <asp:Image runat="server" ID="imgg" ImageUrl='<%#Eval("Image") %>' Width="45px" Height="50px" />
                    </ItemTemplate>                 
                    </asp:TemplateField>
                    <asp:BoundField DataField="name" HeaderText="Name" />
                    <asp:BoundField DataField="email" HeaderText="Email" />
                    <asp:BoundField DataField="mobile" HeaderText="Mobile" />
                    <asp:BoundField DataField="qualification" HeaderText="Qualification" />
                    <asp:BoundField DataField="city" HeaderText="City" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" CssClass="gv" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
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


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Notification.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 185px;
        }
        .auto-style2 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="tbl">
        <tr>
            <td class="tblhead">
                Notification</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>

        <tr>
            <td>
                <table align="center" class="style5">
                    <tr>
                        <td>
                            <asp:MultiView ID="MultiView1" runat="server">
                                <asp:View ID="View1" runat="server">
                                    <table class="style10">
                                        <tr>
                                            <td class="auto-style2">
                                                Total Message :
                                                <asp:Label ID="lblnew" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style1">
                                                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                                    CellPadding="3" 
                                                    style="text-align: center" Width="523px" 
                                                    onrowcommand="GridView2_RowCommand" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                                                    <Columns>
                                                        <asp:BoundField DataField="name" HeaderText="Message From" />
                                                        <asp:BoundField DataField="title" HeaderText="Title" />
                                                        <asp:BoundField DataField="date" HeaderText="Date" />
                                                        <asp:TemplateField HeaderText="Read">
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="lnkread" runat="server" CommandArgument='<%#Eval("title") %>' ForeColor="Green" Text="Read"></asp:LinkButton>
                                                                    
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                    <FooterStyle BackColor="White" ForeColor="#000066" />
                                                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                                    <RowStyle ForeColor="#000066" />
                                                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                                                </asp:GridView>
                                
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>
                                
                                <asp:View ID="View2" runat="server">

                                    <asp:Button ID="Button1"  NavigateUrl="~/Notification.aspx" runat="server" CssClass="btn"  
                    Text="Back" Width="100px" />
                                  
                                        <br />
                                  
                                        <br />
                                  
                                        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="8" style="overflow:scroll" AutoGenerateColumns="False">
                             
                                <Columns>
                                    <asp:BoundField DataField="name" HeaderText="Message From" >
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="title" HeaderText="Title" />
                                    <asp:BoundField DataField="message" HeaderText="Message" >
                                    <ControlStyle Width="200px" />
                                    <ItemStyle Width="200px" HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="date" HeaderText="Date" />
                                    <asp:BoundField DataField="time" HeaderText="Time" />
                                </Columns>
                             
                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                <RowStyle ForeColor="#000066" />
                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#00547E" />
                            </asp:GridView>
                              
                                        <asp:Label ID="lblnew0" runat="server"></asp:Label>
                                        <br />
                              
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


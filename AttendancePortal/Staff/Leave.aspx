<%@ Page Title="" Language="C#" MasterPageFile="~/Staff/Staff.master" AutoEventWireup="true" CodeFile="Leave.aspx.cs" Inherits="Staff_Leave" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                LEAVE MODULE</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnnewleave" runat="server" CssClass="btn" 
                    onclick="btnnewleave_Click" Text="New Leave Report" Width="160px" />
&nbsp;
                <asp:Button ID="btnapprove" runat="server" CssClass="btn" 
                    onclick="btnapprove_Click" Text="Approve Leave" Width="160px" />
&nbsp;
                <asp:Button ID="btnreject" runat="server" CssClass="btn" 
                    onclick="btnreject_Click" Text="Reject Leave" Width="160px" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <table class="style1">
                            <tr>
                                <td>
                                    Total New Leave =
                                    <asp:Label ID="lblnew" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                        CellPadding="4" ForeColor="#333333" GridLines="None" 
                                        onrowcommand="GridView1_RowCommand" style="text-align: center" Width="727px">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="rollno" HeaderText="RollNo" />
                                            <asp:BoundField DataField="name" HeaderText="Student Name" />
                                            <asp:BoundField DataField="message" HeaderText="Subject" />
                                            <asp:BoundField DataField="nodays" HeaderText="Days" />
                                            <asp:BoundField DataField="Reply" HeaderText="Status" />
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="lnkapprove" runat="server" ForeColor="Green" Text="Approve" CommandName="Approve" CommandArgument='<%#Eval("LID") %>'></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="lnkreject" runat="server" ForeColor="Red" Text="Reject" CommandName="Reject" CommandArgument='<%#Eval("LID") %>'></asp:LinkButton>
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
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <table class="style1">
                            <tr>
                                <td>
                                    Total Apporved Leave =
                                    <asp:Label ID="lblapp" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                        CellPadding="4" ForeColor="#333333" GridLines="None" style="text-align: center" 
                                        Width="727px" onrowcommand="GridView2_RowCommand" 
                                        onrowcreated="GridView2_RowCreated">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="rollno" HeaderText="RollNo" />
                                            <asp:BoundField DataField="name" HeaderText="Student Name" />
                                            <asp:BoundField DataField="message" HeaderText="Subject" />
                                            <asp:BoundField DataField="nodays" HeaderText="Days" />
                                            <asp:BoundField DataField="Reply" HeaderText="Status" />
                                          <%--  <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="lnkapprove0" runat="server" ForeColor="Green" 
                                                        Text="Approve" CommandName="Approve" CommandArgument='<%#Eval("LID") %>'></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>--%>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="lnkreject0" runat="server" ForeColor="Red" Text="Reject" CommandName="Reject" CommandArgument='<%#Eval("LID") %>'></asp:LinkButton>
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
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="View3" runat="server">
                        <table class="style1">
                            <tr>
                                <td>
                                    Total Rejected Leave =
                                    <asp:Label ID="lblrej" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                                        CellPadding="4" ForeColor="#333333" GridLines="None" style="text-align: center" 
                                        Width="727px" onrowcommand="GridView3_RowCommand">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="rollno" HeaderText="RollNo" />
                                            <asp:BoundField DataField="name" HeaderText="Student Name" />
                                            <asp:BoundField DataField="message" HeaderText="Subject" />
                                            <asp:BoundField DataField="nodays" HeaderText="Days" />
                                            <asp:BoundField DataField="Reply" HeaderText="Status" />
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="lnkapprove1" runat="server" ForeColor="Green" 
                                                        Text="Approve" CommandName="Approve" CommandArgument='<%#Eval("LID") %>'></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                           <%-- <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="lnkreject1" runat="server" ForeColor="Red" Text="Reject" CommandName="Reject" CommandArgument='<%#Eval("LID") %>'></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>--%>
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
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


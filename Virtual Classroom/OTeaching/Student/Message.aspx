<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student.master" AutoEventWireup="true" CodeFile="Message.aspx.cs" Inherits="Student_Message" %>

 
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <script type="text/javascript">
function changeColor(e) {
    e.style.color = "red";
}
        </script>
  
    <style type="text/css">
        a:active {
            color: gray;
        }
         a:visited {
            color:black;
        }
        .style5
        {
            width: 551px;
        }
        .style6
        {
            width: 288px;
        }
        .style7
        {
            width: 445px;
        }
        .style8
        {
            text-align: right;
            color: #8506A9;
            width: 123px;
        }
        .style9
        {
            width: 123px;
        }
        .style10
        {
            width: 100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                Message Form<br />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button9" runat="server" CssClass="btn" onclick="Button9_Click" 
                    Text="Send Message" Width="180px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button7" runat="server" CssClass="btn" onclick="Button7_Click" 
                    Text="Read Message" Width="180px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button8" runat="server" CssClass="btn" onclick="Button8_Click" 
                    Text="Delete Message" Width="180px" />
            </td>
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
                                            <td>
                                                Total Message :
                                                <asp:Label ID="lblnew" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                                    BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                                                    CellPadding="4" ForeColor="Black" GridLines="Vertical" 
                                                    style="text-align: center" Width="523px" 
                                                    onrowcommand="GridView2_RowCommand" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                                                    <AlternatingRowStyle BackColor="White" />
                                                    <Columns>
                                                        <asp:BoundField DataField="Fname" HeaderText="Message From" />
                                                        <asp:BoundField DataField="subject" HeaderText="Subject" />
                                                        <asp:TemplateField HeaderText="Read">
                                                            <ItemTemplate>
                                                               <a href="#"> <asp:LinkButton ID="lnkread" OnClientClick="return changeColor(this);" runat="server" CommandArgument='<%#Eval("MID") %>' 
                                                                    ForeColor="Green" Text="Read" CssClass="bttn"></asp:LinkButton>
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
                                    </table>
                                </asp:View>
                                <asp:View ID="View2" runat="server">
                                    <table class="style6">
                                        <tr>
                                            <td>
                                                Total Message :
                                                <asp:Label ID="lblold" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                                                    BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                                                    CellPadding="4" ForeColor="Black" GridLines="Vertical" 
                                                    style="text-align: center" Width="523px" 
                                                    onrowcommand="GridView3_RowCommand">
                                                    <AlternatingRowStyle BackColor="White" />
                                                    <Columns>
                                                        <asp:BoundField DataField="Fname" HeaderText="Message From" />
                                                        <asp:BoundField DataField="subject" HeaderText="Subject" />
                                                        <asp:TemplateField HeaderText="Read">
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="lnkread0" runat="server" 
                                                                    CommandArgument='<%#Eval("MID") %>' ForeColor="Red" Text="Delete"></asp:LinkButton>
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
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </asp:View>
                                <asp:View ID="View3" runat="server">
                                    <table class="tbl">
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <table class="style7">
                                                    <tr>
                                                        <td class="style8">
                                                            Message From :
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="lblfname" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style8">
                                                            Subject :
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="lblsub" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style8">
                                                            Message :
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="lblmsg" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style9">
                                                            &nbsp;</td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="lbl">
                                                            Reply :
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtreply" runat="server" CssClass="txt" Height="40px" 
                                                                TextMode="MultiLine" Width="220px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="lbl">
                                                            &nbsp;</td>
                                                        <td>
                                                            <asp:Button ID="btnreply" runat="server" CssClass="btn" Text="Reply" 
                                                                onclick="btnreply_Click" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="lbl">
                                                            &nbsp;</td>
                                                        <td>
                                                            <asp:Label ID="lblreply" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </asp:View>

                                <asp:View ID="View4" runat="server">
                                    <table class="tbl">
                                        <tr>
                                            <td class="tblhead">
                                                Send Message To Staff</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <table style="width: 422px">
                                                    <tr>
                                                        <td class="lbl">
                                                            Message To :</td>
                                                        <td>
                                                            <asp:DropDownList ID="drpstaff" runat="server" CssClass="txt" DataSourceID="SqlDataSource1" DataTextField="Email" DataValueField="Email">
                                                            </asp:DropDownList>
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="lbl">
                                                            Subject&nbsp; :
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtsubmsg" runat="server" CssClass="txt"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="lbl">
                                                            Message :
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtmsgmsg" runat="server" CssClass="txt" Height="40px" 
                                                                TextMode="MultiLine" Width="220px"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                        <td>
                                                            <asp:Button ID="btnsendmsg" runat="server" CssClass="btn" 
                                                                onclick="btnsendmsg_Click" Text="Send" />
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                        <td>
                                                            <asp:Label ID="lblsendmsg" runat="server"></asp:Label>
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OTeachingConnectionString2 %>" SelectCommand="SELECT DISTINCT [Name], [Email] FROM [StaffMst]"></asp:SqlDataSource>
                                            </td>
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


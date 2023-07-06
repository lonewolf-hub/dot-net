<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="stu.aspx.cs" Inherits="administrater_stu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div style="height:448px; overflow:scroll; width: 874px;" align="center">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" 
        ShowHeader="false" Width="223px">
        <Columns>
            <asp:ImageField  DataImageUrlField="Value" ControlStyle-Height="200" 
                ControlStyle-Width="200" >
<ControlStyle Height="320px" Width="640px"></ControlStyle>
            </asp:ImageField>
        </Columns>
        <RowStyle HorizontalAlign="Left" />
    </asp:GridView>
    
</div>
</asp:Content>


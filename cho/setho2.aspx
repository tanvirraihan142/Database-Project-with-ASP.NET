<%@ Page Title="" Language="C#" MasterPageFile="~/cho/Site4.master" AutoEventWireup="true" CodeFile="setho2.aspx.cs" Inherits="cho_setho2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style10
        {
            width: 61px;
        }
        .style11
        {
            width: 309px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<h2>
Select Health Officer
</h2>
<p>

    <table style="width:100%;">
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td colspan="2">
                Center:<br />
                <asp:Label ID="Label1" runat="server"></asp:Label>
&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td colspan="2">
                Health Officers:</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style11">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                    GridLines="None" onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="NAME" HeaderText="NAME" 
                            SortExpression="NAME" />
                        <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" 
                            SortExpression="ADDRESS" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td colspan="2">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Confirm" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td colspan="2">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
                    SelectCommand="SELECT &quot;NAME&quot;, &quot;ADDRESS&quot; FROM &quot;USERS&quot;">
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
                    SelectCommand="SELECT * FROM &quot;CENTER_CAMPAIGN&quot;">
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
                    SelectCommand="SELECT * FROM &quot;CENTER&quot;"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
                    SelectCommand="SELECT * FROM &quot;USERS&quot;"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</p>
</asp:Content>


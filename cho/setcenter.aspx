<%@ Page Title="" Language="C#" MasterPageFile="~/cho/Site4.master" AutoEventWireup="true" CodeFile="setcenter.aspx.cs" Inherits="cho_setcenter" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style10
        {
            width: 92px;
        }
        .style11
        {
            width: 321px;
        }
        .style13
        {
            width: 5px;
        }
        .style14
        {
            width: 442px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>
    Set Center
</h2>
    <p>
        Select Centers</p>
<p>
    
    <table style="width:100%;">
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style11" colspan="2">
                Please Select Centers</td>
            <td>
                <asp:Label ID="ErrorLabel" runat="server">Selected Centers</asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style11" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                    GridLines="None" onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
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
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="SqlDataSource4" ForeColor="#333333" 
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
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
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style11" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style11" colspan="2">
                Selected Centers:</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style11" colspan="2">
                <asp:GridView ID="GridView2" runat="server" CellPadding="5" ForeColor="#333333" 
                    GridLines="None" onselectedindexchanged="GridView2_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
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
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style13">
                <br />
                <asp:Button ID="ButtonClear" runat="server" 
                    Text="Remove All" onclick="ButtonClear_Click" />
            </td>
            <td class="style14">
                <br />
                <asp:Button ID="ButtonConfirm" runat="server" onclick="ButtonConfirm_Click" 
                    Text="Confirm" Width="89px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    
</p>
    <p>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
            SelectCommand="SELECT name,address from center
MINUS
SELECT	B.Name,B.address
from CENTER_CAMPAIGN A, CENTER B
where A.CENTER_ID = B.CENTER_ID " ></asp:SqlDataSource>
    
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
            SelectCommand="SELECT * FROM &quot;CENTER_CAMPAIGN&quot;">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
            SelectCommand="SELECT * FROM &quot;CENTER&quot;"></asp:SqlDataSource>
    
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="SELECT	B.Name
from CENTER_CAMPAIGN A, CENTER B
where A.CENTER_ID = B.CENTER_ID and A.CAMPAIGN_ID = 'CMP0001' "></asp:SqlDataSource>
    
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="select * from center_campaign
"></asp:SqlDataSource>
    
</p>
</asp:Content>


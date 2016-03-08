<%@ Page Title="" Language="C#" MasterPageFile="~/rep/Site5.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="ha_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 68px;
    }
        .style3
        {
            width: 231px;
        }
        .style4
        {
            width: 63px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>
        Profile 
    </h2>
    <p>
        <table style="width:100%;">
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td rowspan="3" style="text-align: left">
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                        CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                        GridLines="None" Height="50px" Width="125px">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                            <asp:BoundField DataField="FATHERS_NAME" HeaderText="FATHERS_NAME" 
                                SortExpression="FATHERS_NAME" />
                            <asp:BoundField DataField="MOTHERS_NAME" HeaderText="MOTHERS_NAME" 
                                SortExpression="MOTHERS_NAME" />
                            <asp:BoundField DataField="GENDER" HeaderText="GENDER" 
                                SortExpression="GENDER" />
                            <asp:BoundField DataField="Date of Birth" HeaderText="Date of Birth" 
                                SortExpression="Date of Birth" />
                            <asp:BoundField DataField="MOBILE_NO" HeaderText="MOBILE_NO" 
                                SortExpression="MOBILE_NO" />
                            <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" 
                                SortExpression="ADDRESS" />
                        </Fields>
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                    </asp:DetailsView>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
            
            
            SelectCommand="select name,fathers_name,mothers_name,gender,to_char(date_of_birth,'DD-MM-YYYY')  &quot;Date of Birth&quot;,mobile_no,address from recipient"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
        <br />
    </p>
    <p>
        <table style="width:100%;">
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style3">
                    Recipients History</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style3">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="VACCINATED BY" HeaderText="VACCINATED BY" 
                            SortExpression="VACCINATED BY" />
                        <asp:BoundField DataField="CENTER" HeaderText="CENTER" 
                            SortExpression="CENTER" />
                        <asp:BoundField DataField="VACC DATE" HeaderText="VACC DATE" 
                            SortExpression="VACC DATE" />
                        <asp:BoundField DataField="VACCINE" HeaderText="VACCINE" 
                            SortExpression="VACCINE" />
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

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="select (SELECT name from &quot;USERS&quot; where id = C.HA_ID) &quot;VACCINATED BY&quot;,CENTER,TO_DATE(C.&quot;VACC_DATE&quot;,'DD-MM-YYYY') &quot;VACC DATE&quot;,C.vaccine
from VACC_RECORD C"></asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>


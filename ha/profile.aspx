<%@ Page Title="" Language="C#" MasterPageFile="~/ha/Site2.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="ha_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 68px;
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
                            <asp:BoundField DataField="GENDER" HeaderText="GENDER" 
                                SortExpression="GENDER" />
                            <asp:BoundField DataField="Date of Birth" HeaderText="Date of Birth" 
                                SortExpression="Date of Birth" />
                            <asp:BoundField DataField="DESIGNATION" HeaderText="DESIGNATION" 
                                SortExpression="DESIGNATION" />
                            <asp:BoundField DataField="MOBILE_NO" HeaderText="MOBILE_NO" 
                                SortExpression="MOBILE_NO" />
                            <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
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
                    &nbsp;</td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
            
            SelectCommand="select name,gender,to_char(date_of_birth,'DD-MM-YYYY')  &quot;Date of Birth&quot;,designation,mobile_no,email,address from users"></asp:SqlDataSource>
        <br />
    </p>
</asp:Content>


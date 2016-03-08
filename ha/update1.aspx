<%@ Page Title="" Language="C#" MasterPageFile="~/ha/Site2.master" AutoEventWireup="true" CodeFile="update1.aspx.cs" Inherits="ha_update1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 75px;
    }
    .style2
    {
        width: 193px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>
Update Recipients Vaccination Record
</h2>
<p>

    <table style="width:100%;">
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                Enter Recipients ID</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" />
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
        SelectCommand="SELECT * FROM &quot;RECIPIENT&quot;"></asp:SqlDataSource>

</p>
</asp:Content>


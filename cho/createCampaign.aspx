<%@ Page Title="" Language="C#" MasterPageFile="~/cho/Site4.master" AutoEventWireup="true" CodeFile="createCampaign.aspx.cs" Inherits="cho_createCampaign" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
    .style10
    {
        width: 54px;
    }
    .style11
    {
        width: 116px;
        text-align: right;
    }
    .style12
    {
        width: 54px;
        height: 26px;
    }
    .style13
    {
        width: 116px;
        text-align: right;
        height: 26px;
    }
    .style14
    {
        height: 26px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>
       Create Campaign 
    </h2>
<p>
       <asp:Label ID="ErrorLabel" runat="server" Font-Size="Large"></asp:Label>
    </p>
    <table style="width:100%;">
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style11">
                Campaign Name</td>
            <td colspan="6">
                <asp:TextBox ID="TextBoxCampaign" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style11">
                Vaccine</td>
            <td colspan="6">
                <asp:TextBox ID="TextBoxVaccine" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style11">
                Campaign Date</td>
            <td class="style3">
                Date</td>
            <td class="style8">
                <asp:TextBox ID="TextBoxDate" runat="server" Width="34px"></asp:TextBox>
            </td>
            <td class="style6" style="text-align: right">
                Month</td>
            <td class="style7">
                <asp:TextBox ID="TextBoxMonth" runat="server" Width="32px"></asp:TextBox>
            </td>
            <td class="style9" style="text-align: right">
                Year</td>
            <td>
                <asp:TextBox ID="TextBoxYear" runat="server" Width="42px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style11">
                Start Age(in months)</td>
            <td colspan="6">
                <asp:TextBox ID="TextBoxAge1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style12">
            </td>
            <td class="style13">
                End Age(in months)</td>
            <td class="style14" colspan="6">
                <asp:TextBox ID="TextBoxAge2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style14" colspan="6">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Create" />
            </td>
        </tr>
</table>
<p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
        SelectCommand="select count(*)+1 from campaign"></asp:SqlDataSource>
   </p>
</asp:Content>


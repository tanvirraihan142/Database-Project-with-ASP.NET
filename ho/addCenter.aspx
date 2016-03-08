<%@ Page Title="" Language="C#" MasterPageFile="~/ho/Site3.master" AutoEventWireup="true" CodeFile="addCenter.aspx.cs" Inherits="cho_createCampaign" %>

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
        Add Center</h2>
<p>
       <asp:Label ID="ErrorLabel" runat="server" Font-Size="Large"></asp:Label>
    </p>
    <table style="width:100%;">
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style11">
                Center Name</td>
            <td>
                <asp:TextBox ID="TextBoxCampaign" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style11">
                Address</td>
            <td>
                <asp:TextBox ID="TextBoxVaccine" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style12">
            </td>
            <td class="style13">
                Mobile No.</td>
            <td class="style14">
                <asp:TextBox ID="TextBoxAge2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td class="style14">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Create" />
            </td>
        </tr>
</table>
<p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
        SelectCommand="select count(*)+1 from center"></asp:SqlDataSource>
   </p>
</asp:Content>


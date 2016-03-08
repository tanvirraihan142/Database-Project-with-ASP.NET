<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="login2.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
    .style1
    {
    }
    .style5
    {
        width: 87%;
    }
    .style6
    {
        width: 4px;
    }
    .style7
    {
        }
        .style8
        {
            width: 4px;
            height: 69px;
        }
        .style9
        {
            width: 11%;
            height: 69px;
        }
        .style10
        {
            width: 87%;
            height: 69px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
   <h2>
        Log in : Employee
    </h2>
    <p>
    <br />
    <table style="width: 100%; margin-top: 0px;">
        <tr>
            <td class="style1" colspan="3">
&nbsp;&nbsp;&nbsp;&nbsp; Enter User ID and Password.
            </td>
        </tr>
        <tr>
            <td class="style1" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Employee
                ID</td>
            <td class="style5">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Password</td>
            <td class="style5">
                <asp:TextBox ID="TextBox2" runat="server" ontextchanged="TextBox2_TextChanged" 
                    TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style8">
                </td>
            <td class="style9">
                </td>
            <td class="style10">
                <asp:Button ID="LoginButton0" runat="server" onclick="LoginButton_Click" 
                    Text="Log In" />
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style7" colspan="2">
<asp:Label ID="ErrorLabel" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style7" colspan="2">
              Not Registered? Register <a href="register.aspx" title="sign up for employees">here</a> . </td>
        </tr>
    </table>
</p>
<br />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
    onselecting="SqlDataSource1_Selecting" 
    ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
    SelectCommand="SELECT * FROM &quot;LOGIN&quot;"></asp:SqlDataSource>
</asp:Content>


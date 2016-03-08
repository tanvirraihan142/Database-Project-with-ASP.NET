<%@ Page Title="" Language="C#" MasterPageFile="~/ha/Site2.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style10
        {
            width: 6%;
        }
        .style11
        {
            width: 12%;
            text-align: right;
        }
        .style12
        {
            width: 5%;
            text-align: right;
        }
        .style13
        {
            width: 50%;
        }
        .style19
        {
            width: 5%;
            text-align: left;
        }
        .style20
        {
            width: 190px;
        }
        .style21
        {
            width: 8%;
        }
        .style22
        {
            width: 6%;
            height: 49px;
        }
        .style23
        {
            width: 12%;
            text-align: right;
            height: 49px;
        }
        .style24
        {
            height: 49px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>
        Register : Recipient
    </h2>
    <p>
    
        <asp:Label ID="LabelError" runat="server"></asp:Label>
    </p>
    <p>
    
        <table style="width:100%;">
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td class="style11">
                    Recipient ID</td>
                <td colspan="6">
                    <asp:TextBox ID="TextBoxID" runat="server" 
                         ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td class="style11">
                    Password</td>
                <td colspan="6">
                    <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td class="style11">
                    Retype Password</td>
                <td colspan="6">
                    <asp:TextBox ID="TextBoxPassword2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style22">
                    </td>
                <td class="style23">
                    </td>
                <td colspan="6" class="style24">
                    </td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td class="style11">
                    Name</td>
                <td colspan="6">
                    <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td class="style11">
                    Father&#39;s Name</td>
                <td colspan="6">
                    <asp:TextBox ID="TextBoxFather" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td class="style11">
                    Mother&#39;s Name</td>
                <td colspan="6">
                    <asp:TextBox ID="TextBoxMother" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td class="style11">
                    Gender</td>
                <td colspan="6">
                    <asp:DropDownList ID="DropDownList2" runat="server" 
                        onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td class="style11">
                    Date of Birth</td>
                <td class="style12">
                    Date&nbsp;&nbsp;
                </td>
                <td class="style21">
                    <asp:TextBox ID="TextBoxDate" runat="server" Width="37px"></asp:TextBox>
                </td>
                <td class="style10" style="text-align: right">
                    Month&nbsp;&nbsp;&nbsp;
                </td>
                <td class="style20">
                    <asp:TextBox ID="TextBoxMonth" runat="server" 
                         Width="37px"></asp:TextBox>
                </td>
                <td class="style19">
                    Year&nbsp;&nbsp;
                </td>
                <td class="style13">
                    <asp:TextBox ID="TextBoxYear" runat="server" 
                         Width="37px" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td class="style11">
                    Mobile No.</td>
                <td colspan="6">
                    <asp:TextBox ID="TextBoxMobile" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td class="style11">
                    present address</td>
                <td colspan="6">
                    <asp:TextBox ID="TextBoxAddress" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td class="style11">
                    &nbsp;</td>
                <td colspan="6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td class="style11">
                    &nbsp;</td>
                <td colspan="6">
                    <asp:Button ID="ButtonRegister" runat="server" onclick="Button1_Click" 
                        Text="Register" />
                </td>
            </tr>
        </table>
    
    </p>
    <p>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
            InsertCommand="INSERT INTO USERS(ID, &quot;PASSWORD&quot;, NAME, GENDER, DATE_OF_BIRTH, MOBILE_NO, EMAIL, ADDRESS) VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)" 
            ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
            SelectCommand="SELECT * FROM recipient"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>"  
            ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
            SelectCommand="SELECT * FROM recipient"></asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>


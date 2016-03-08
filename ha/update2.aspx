<%@ Page Title="" Language="C#" MasterPageFile="~/ha/Site2.master" AutoEventWireup="true" CodeFile="update2.aspx.cs" Inherits="ha_update2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 70px;
        }
        .style2
        {
            width: 276px;
        }
        .style3
        {
            width: 70px;
            height: 25px;
            text-align: right;
        }
        .style4
        {
            width: 145px;
            height: 25px;
            text-align: right;
        }
        .style5
        {
            height: 25px;
        }
        .style6
        {
            width: 276px;
            height: 25px;
            text-align: left;
        }
        .style8
        {
            width: 42px;
        }
        .style7
        {
            width: 43px;
        }
        .style9
        {
            width: 36px;
        }
        .style10
        {
            width: 48px;
            height: 25px;
            text-align: left;
        }
        .style11
        {
            width: 38px;
            height: 25px;
            text-align: right;
        }
        .style12
        {
            width: 86px;
        }
        .style13
        {
            width: 182px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<h2>
Update Vaccination Record
</h2>
<p>

    <table style="width:100%;">
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2" colspan="7">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2" colspan="7">
                Recipients History :</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2" colspan="7">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
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
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2" colspan="7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                Vaccine</td>
            <td class="style6" colspan="6">
                <asp:TextBox ID="TextBoxVaccine" runat="server" style="text-align: left"></asp:TextBox>
            </td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                </td>
            <td class="style4">
                Center Name </td>
            <td class="style6" colspan="6">
                <asp:TextBox ID="TextBoxCenter" runat="server" style="text-align: left"></asp:TextBox>
            </td>
            <td class="style5">
                </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                If previous </td>
            <td class="style6" colspan="6">
                <asp:CheckBox ID="CheckBox1" runat="server" 
                    oncheckedchanged="CheckBox1_CheckedChanged" />
            </td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;Date</td>
            <td class="style11">
                Day</td>
            <td class="style8">
                <asp:TextBox ID="TextBoxDate" runat="server" Width="34px"></asp:TextBox>
            </td>
            <td class="style10" style="text-align: right">
                Month</td>
            <td class="style7">
                <asp:TextBox ID="TextBoxMonth" runat="server" Width="32px"></asp:TextBox>
            </td>
            <td class="style9" style="text-align: right">
                Year</td>
            <td>
                <asp:TextBox ID="TextBoxYear" runat="server" Width="42px"></asp:TextBox>
            </td>
            <td class="style5">
                &nbsp;</td>
        </tr>
    </table>


</p>
<p>

    <table style="width:100%;">
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style12">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Add" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    Text="Confirm" />
            </td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</p>
    <p>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" SelectCommand="select (SELECT name from &quot;USERS&quot; where id = C.HA_ID) &quot;VACCINATED BY&quot;,CENTER,TO_DATE(C.&quot;VACC_DATE&quot;,'DD-MM-YYYY') &quot;VACC DATE&quot;,C.vaccine
from VACC_RECORD C"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
            SelectCommand="SELECT * FROM &quot;VACC_RECORD&quot;"></asp:SqlDataSource>

</p>
</asp:Content>


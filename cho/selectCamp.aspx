<%@ Page Title="" Language="C#" MasterPageFile="~/cho/Site4.master" AutoEventWireup="true" CodeFile="selectCamp.aspx.cs" Inherits="cho_selectCamp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>
        Set Center&nbsp; 
    </h2>
     <p>
        
        
        
         Select campaign</p>
<p>
        
        
        
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
         CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
         GridLines="None" onselectedindexchanged="GridView1_SelectedIndexChanged">
         <AlternatingRowStyle BackColor="White" />
         <Columns>
             <asp:CommandField ShowSelectButton="True" />
             <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
             <asp:BoundField DataField="VACCINE" HeaderText="VACCINE" 
                 SortExpression="VACCINE" />
             <asp:BoundField DataField="CAMPAIGN_DATE" HeaderText="CAMPAIGN_DATE" 
                 SortExpression="CAMPAIGN_DATE" />
             <asp:BoundField DataField="START_AGE" HeaderText="START_AGE" 
                 SortExpression="START_AGE" />
             <asp:BoundField DataField="END_AGE" HeaderText="END_AGE" 
                 SortExpression="END_AGE" />
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
        
        
        
     </p>
<p>
        
        
        
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
         ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
         ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
         SelectCommand="select * from campaign"></asp:SqlDataSource>
        
        
        
     <asp:Label ID="ErrorLabel" runat="server"></asp:Label>
        
        
        
     </p>

</asp:Content>


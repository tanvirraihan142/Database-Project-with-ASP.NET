<%@ Page Title="" Language="C#" MasterPageFile="~/rep/Site5.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="ho_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>
        Welcome 
    </h2>
     <p>
        
         <asp:Label ID="Label1" runat="server" Text="  " Font-Size="X-Large"></asp:Label>
        
     </p>
     <p>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
            SelectCommand="SELECT * FROM &quot;USERS&quot;"></asp:SqlDataSource>
        
     </p>

</asp:Content>


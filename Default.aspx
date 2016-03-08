<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Welcome to Vaccination Management System
    </h2>
    <p>
        This is a project on vaccination management in Bangladesh.
    </p>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Timer ID="Timer1" runat="server" Interval="3000" OnTick="Timer1_Tick">
            </asp:Timer>
            <asp:Image ID="Image1" Height="350px" Width="650px" runat="server" 
                style="margin-left: 125px; margin-top: 18px" />
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

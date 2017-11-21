<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" GroupingText ="ADMIN LOGIN">
        USERNAME:<br />
        <asp:TextBox ID="user" runat="server" ValidationGroup="av"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="user" Display="Dynamic" ErrorMessage="Required" 
            ForeColor="Red" SetFocusOnError="True" ValidationGroup="av"></asp:RequiredFieldValidator>
        <br />
        PASSWORD:<br />
        <asp:TextBox ID="pass" runat="server" TextMode="Password" ValidationGroup="av"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="pass" Display="Dynamic" ErrorMessage="Required" 
            ForeColor="Red" SetFocusOnError="True" ValidationGroup="av"></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="LOGIN" 
            ValidationGroup="av" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" ForeColor="#003300"></asp:Label>

    </asp:Panel>
</asp:Content>


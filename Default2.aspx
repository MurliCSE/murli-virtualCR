<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit.HTMLEditor" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<br />
<asp:Label ID="Label1" runat="server" Text="EMAIL:"></asp:Label>
<br />
<asp:TextBox ID="TextBox1" runat="server" BorderColor="#336600" 
    BorderStyle="Solid" BorderWidth="2px" Height="28px" Width="274px"></asp:TextBox>
<br />
<br />
FEED BACK CONTENT:<br />
<cc1:Editor ID="Editor1" runat="server" />
<br />
<asp:Button ID="Button1" runat="server" Text="FEED BACK" />
<br />
<br />
<br />
</asp:Content>


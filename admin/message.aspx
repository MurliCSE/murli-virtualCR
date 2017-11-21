<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="message.aspx.cs" Inherits="admin_message" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit.HTMLEditor"
    TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Panel ID="Panel1" runat="server" GroupingText ="message to student">
    Email:
    <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
        content:<br/>

        <cc1:Editor ID="Editor1" runat="server" />
        <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />

    </asp:Panel>

</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/tutor/Tutor.master" AutoEventWireup="true" CodeFile="answer.aspx.cs" Inherits="tutor_answer" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit.HTMLEditor" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:Panel ID="Panel1" runat="server" GroupingText ="Answer to student" 
        BackColor="White">
        Email:<br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        Answer:<br />
        <cc1:Editor ID="Editor1" runat="server" /><br />
        <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />

        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>

    </asp:Panel>

</asp:Content>


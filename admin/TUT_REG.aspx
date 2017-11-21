<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="TUT_REG.aspx.cs" Inherits="admin_TUT_REG" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" GroupingText ="ADD TUTOR" 
        BackColor="White">
        Tutor_name:<br />
        <asp:TextBox ID="TextBox5" runat="server" TabIndex="1"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ErrorMessage="RequiredField" ForeColor="Red" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
        <br />
        Email:<br />
        <asp:TextBox ID="TextBox1" runat="server" TabIndex="2" 
           ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        Password:<br />
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" TabIndex="3"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        Mobile No:<br />
        <asp:TextBox ID="TextBox3" runat="server" MaxLength="10" TabIndex="4"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="TextBox3" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        Tutor ID:<br />
        <asp:TextBox ID="TextBox4" runat="server" MaxLength="1" TabIndex="5"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="TextBox4" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="ADD TUTOR" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
    </asp:Panel>
</asp:Content>


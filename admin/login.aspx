<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="admin_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type ="text/javascript" >
       function validation() {
           if (confirm("are you sure you want to change your old password")) {
               return true;
           }

       }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" GroupingText ="Change password" 
        BackColor="White">
        Current password:<br />
        <asp:TextBox ID="TextBox1" runat="server" TextMode="Password" 
            ValidationGroup="lv"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="#CC0000" 
            ValidationGroup="lv"></asp:RequiredFieldValidator>
        <br />
        New Password:<br />
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" 
            ValidationGroup="lv"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="#CC0000" 
            ValidationGroup="lv"></asp:RequiredFieldValidator>
        <br />
        Confirm Password:<br />
        <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" 
            ValidationGroup="lv"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
            ErrorMessage="*" ForeColor="#CC0000" ValidationGroup="lv"></asp:CompareValidator>
        <br />
        <asp:Button ID="Submit" runat="server" Text="Submit" 
            onclick="Button1_Click1"  OnClientClick ="return validation()" 
            ValidationGroup="lv" />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </asp:Panel>  
</asp:Content>


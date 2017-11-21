<%@ Page Title="" Language="C#" MasterPageFile="~/student/student.master" AutoEventWireup="true" CodeFile="student.aspx.cs" Inherits="student_student" %>

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
<asp:Panel ID="Panel1" runat="server" BackColor="White" 
        GroupingText="Change password">
        Current password:<br />
        <asp:TextBox ID="TextBox1" runat="server" TextMode="Password" 
            ValidationGroup="rn"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="#CC0000" 
            ValidationGroup="rn"></asp:RequiredFieldValidator>
        <br />
        New Password:<br />
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" 
            ValidationGroup="rn"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="#CC0000" 
            ValidationGroup="rn"></asp:RequiredFieldValidator>
        <br />
        Confirm Password:<br />
        <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="*" 
            ForeColor="#CC0000" ValidationGroup="rn"></asp:CompareValidator>
        <br />
        <asp:Button ID="Submit" runat="server" onclick="Button1_Click1" 
            OnClientClick="return validation()" Text="Submit" ValidationGroup="rn" />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </asp:Panel>
</asp:Content>


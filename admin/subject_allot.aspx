<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="subject_allot.aspx.cs" Inherits="admin_subject_allot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript" >
    function validation() {

        var e = document.getElementById("<%=DropDownList2.ClientID%>");
        var val11 = e.options[e.selectedIndex].value;
        var e1 = document.getElementById("<%=DropDownList3.ClientID%>");
        var val1 = e1.options[e1.selectedIndex].value;

        if (val11 == "select subject code") {
            alert("please choose subject code");
            return false;
        }
        if (val1 == "select Tutor Id") {
            alert("please choose Tutor id");
            return false;
        }
    }



</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" GroupingText ="SUBJECT ALLOTMENT" 
        Width="535px" BackColor="White">
        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList3_SelectedIndexChanged">
        </asp:DropDownList>
        <br />
        <br />
        <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList3_SelectedIndexChanged">
        </asp:DropDownList>
        <br />
        <br />

        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            Height="24px" onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
            Width="181px">
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <asp:DropDownList ID="DropDownList2" runat="server" Height="24px" Width="181px">
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Allot Subject" OnClientClick ="return validation()" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <br />
        <br />





    </asp:Panel>
</asp:Content>


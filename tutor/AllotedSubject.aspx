<%@ Page Title="" Language="C#" MasterPageFile="~/tutor/Tutor.master" AutoEventWireup="true" CodeFile="AllotedSubject.aspx.cs" Inherits="tutor_AllotedSubject" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Panel ID="Panel1" runat="server" GroupingText ="Enter Data in Alloted Subject " 
        Width="586px" BackColor="White">
        <asp:DropDownList ID="DropDownList1" runat="server" Width="206px">
        </asp:DropDownList>
       
        <br />
        <asp:Label ID="Label1" runat="server" Text="Enter Video File"></asp:Label>
        :<br />
        <asp:FileUpload ID="FileUpload3" runat="server" />
        (.wmv and .mp4)<br />
        <asp:Label ID="Label2" runat="server" Text="Enter PPT  File"></asp:Label>
        :<br />
        <asp:FileUpload ID="FileUpload2" runat="server" />
        (.ppt and .pptx file)<br />
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
            Text="Button" />
        <br />
        <asp:Label ID="Label3" runat="server"></asp:Label>
        <br />
        <br />
       
    </asp:Panel>

</asp:Content>


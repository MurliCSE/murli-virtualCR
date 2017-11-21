<%@ Page Title="" Language="C#" MasterPageFile="~/student/student.master" AutoEventWireup="true" CodeFile="asking.aspx.cs" Inherits="student_asking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" GroupingText ="Asking Question to Tutor" 
        BackColor="White" >
    Selct Tutor Id:
        <asp:DropDownList ID="DropDownList1" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="Tut_id" DataValueField="Tut_id" 
            Height="17px" Width="178px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:dbConnectionString %>" 
            SelectCommand="SELECT [Tut_id] FROM [Tutor]"></asp:SqlDataSource>

        <br />

        content:<br /> <br />
        <asp:TextBox ID="TextBox1" runat="server" Height="159px" TextMode="MultiLine" 
            Width="406px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Submit " />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <br />

    </asp:Panel>
</asp:Content>


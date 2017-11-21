<%@ Page Title="" Language="C#" MasterPageFile="~/student/student.master" AutoEventWireup="true" CodeFile="video.aspx.cs" Inherits="student_video" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" GroupingText="Play video file" 
        BackColor="White">
        <asp:FormView ID="FormView1" runat="server">
        <ItemTemplate>
        <embed src='<%# Eval("Video_url") %>' />
        </ItemTemplate>
        </asp:FormView>
    </asp:Panel>
</asp:Content>


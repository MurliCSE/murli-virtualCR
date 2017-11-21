<%@ Page Title="" Language="C#" MasterPageFile="~/student/student.master" AutoEventWireup="true" CodeFile="tut_subject.aspx.cs" Inherits="student_tut_subject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:Panel ID="Panel1" runat="server" GroupingText ="Tutorial_Subject_Data" BackColor ="White">
        <asp:GridView ID="GridView1" runat="server" GridLines="None" 
            AutoGenerateColumns="False" Height="201px">
        <Columns >
        <asp:TemplateField >
        <HeaderTemplate >
            <asp:Label ID="Label1" runat="server" Text="Subject Code"></asp:Label>
        
        </HeaderTemplate>
        <ItemTemplate>
            <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("SubjectCode")%>' NavigateUrl='<%# Eval("SubjectCode","~/student/allotment.aspx?Subject_code={0}") %>' />  
        
        </ItemTemplate>
        
        
        </asp:TemplateField>
        
        
        </Columns>
        
        </asp:GridView>
        <br />
        <br />
        <br />

    </asp:Panel>
    
</asp:Content>


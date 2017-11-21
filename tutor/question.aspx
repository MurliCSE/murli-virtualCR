<%@ Page Title="" Language="C#" MasterPageFile="~/tutor/Tutor.master" AutoEventWireup="true" CodeFile="question.aspx.cs" Inherits="tutor_question" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" GroupingText ="Asking Question" 
        BackColor="White">
        <asp:GridView ID="GridView1" runat="server" 
    AutoGenerateColumns="False" DataKeyNames="sno" DataSourceID="SqlDataSource1" 
            Width="495px">
            <Columns>
                <asp:BoundField DataField="sno" HeaderText="sno" InsertVisible="False" 
            ReadOnly="True" SortExpression="sno" />
                <asp:BoundField DataField="Tut_id" HeaderText="Tut_id" 
            SortExpression="Tut_id" />
                <asp:BoundField DataField="content1" HeaderText="content1" 
            SortExpression="content1" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:dbConnectionString %>" 
    SelectCommand="SELECT * FROM [asking_question] WHERE ([Tut_id] = @Tut_id)">
            <SelectParameters>
                <asp:SessionParameter Name="Tut_id" SessionField="Tut_id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

    </asp:Panel>
</asp:Content>


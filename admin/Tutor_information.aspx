<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="Tutor_information.aspx.cs" Inherits="admin_Tutor_information" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:Panel ID="panel1" runat ="server" GroupingText ="Tutor_information" 
        BackColor="White">
    <asp:GridView ID="GridView1" runat="server" 
    AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="sno" 
    DataSourceID="SqlDataSource1" BackColor="White" Height="179px" Width="667px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="sno" HeaderText="sno" InsertVisible="False" 
            ReadOnly="True" SortExpression="sno" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="password" HeaderText="password" 
            SortExpression="password" />
            <asp:BoundField DataField="mobileno" HeaderText="mobileno" 
            SortExpression="mobileno" />
            <asp:BoundField DataField="Tut_id" HeaderText="Tut_id" 
            SortExpression="Tut_id" />
            <asp:BoundField DataField="Tutor_name" HeaderText="Tutor_name" 
            SortExpression="Tutor_name" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:dbConnectionString %>" 
    DeleteCommand="DELETE FROM [Tutor] WHERE [sno] = @sno" 
    InsertCommand="INSERT INTO [Tutor] ([email], [password], [mobileno], [Tut_id], [Tutor_name]) VALUES (@email, @password, @mobileno, @Tut_id, @Tutor_name)" 
    SelectCommand="SELECT * FROM [Tutor]" 
    
        UpdateCommand="UPDATE [Tutor] SET [email] = @email, [password] = @password, [mobileno] = @mobileno, [Tut_id] = @Tut_id, [Tutor_name] = @Tutor_name WHERE [sno] = @sno">
        <DeleteParameters>
            <asp:Parameter Name="sno" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="mobileno" Type="String" />
            <asp:Parameter Name="Tut_id" Type="Int32" />
            <asp:Parameter Name="Tutor_name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="mobileno" Type="String" />
            <asp:Parameter Name="Tut_id" Type="Int32" />
            <asp:Parameter Name="Tutor_name" Type="String" />
            <asp:Parameter Name="sno" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Panel>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/student/student.master" AutoEventWireup="true" CodeFile="allotment.aspx.cs" Inherits="student_allotment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <asp:Panel ID="Panel1" runat="server" 
    GroupingText ="Download  current  ppt and video file" BackColor="White">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            AllowPaging="True" DataKeyNames="sno" DataSourceID="SqlDataSource1" 
            Height="148px" Width="697px">
        <Columns >
            <asp:BoundField DataField="Tutor_id" HeaderText="Tutor_id" 
                SortExpression="Tutor_id" />
            <asp:HyperLinkField DataNavigateUrlFields="ppt_url" 
                DataTextField="Subject_code" HeaderText="Download ppt file" />
            <asp:HyperLinkField DataNavigateUrlFields="Video_url" 
                DataTextField="Subject_code" HeaderText="Download video file " />
            <asp:BoundField DataField="date_time" HeaderText="date_time" 
                SortExpression="date_time" />
        </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:dbConnectionString %>" 
            SelectCommand="SELECT * FROM [subject_mat] WHERE ([Subject_code] = @Subject_code)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Subject_code" QueryStringField="Subject_code" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>


</asp:Content>


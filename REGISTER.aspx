<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="REGISTER.aspx.cs" Inherits="REGISTER" %>

<%@ Register src="userControl/WebUserControl.ascx" tagname="WebUserControl" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

    <asp:Panel ID="Panel1" runat="server" GroupingText="LogIn">
        <asp:Label ID="Label1" runat="server" Text="Email" 
            AccessKey="U" AssociatedControlID="TextBox1" TabIndex="1"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="FirstName" 
            MaxLength="30" TabIndex="2" ValidationGroup="lv" Width="275px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Field is Required" 
            ForeColor="#CC3300" SetFocusOnError="True" ValidationGroup="lv"></asp:RequiredFieldValidator>
        <asp:DropDownList ID="branch" runat="server" Height="17px" Width="163px">
            <asp:ListItem>Select Branch</asp:ListItem>
            <asp:ListItem>IT</asp:ListItem>
            <asp:ListItem>CS</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Label ID="Label2" runat="server" AccessKey="P" 
            AssociatedControlID="TextBox2" Text="&lt;u&gt;P&lt;/u&gt;assword"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox2" runat="server" AutoCompleteType="FirstName" 
            MaxLength="15" TabIndex="2" TextMode="Password" ValidationGroup="lv" 
            Width="275px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Field is Required" 
            ForeColor="#CC3300" SetFocusOnError="True" ValidationGroup="lv"></asp:RequiredFieldValidator>
        <asp:DropDownList ID="yr" runat="server" Height="17px" Width="163px">
            <asp:ListItem>Select Year</asp:ListItem>
            <asp:ListItem>2nd</asp:ListItem>
            <asp:ListItem>3rd</asp:ListItem>
            <asp:ListItem>4th</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="LogIn" onclick="Button1_Click" />
        <br />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
        <br />
    </asp:Panel>
  <div>
  
      <uc1:WebUserControl ID="WebUserControl1" runat="server" />
  
  </div>

</asp:Content>


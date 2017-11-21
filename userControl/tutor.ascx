<%@ Control Language="C#" AutoEventWireup="true" CodeFile="tutor.ascx.cs" Inherits="userControl_tutor" %>
<asp:Panel ID="Panel1" runat="server" GroupingText="TUTOR LOGIN">
    EMAIL:<br />
    <asp:TextBox ID="tuser" runat="server" Height="32px" TabIndex="1" 
        ValidationGroup="tlv" Width="255px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="tuser" Display="Dynamic" ErrorMessage="required field" 
        ForeColor="Red" ValidationGroup="tlv"></asp:RequiredFieldValidator>
    <br />
    PASSWORD:<br />
    <asp:TextBox ID="tpass" runat="server" Height="32px" TextMode="Password" 
        ValidationGroup="tlv" Width="255px" TabIndex="2"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="tpass" Display="Dynamic" ErrorMessage="required field" 
        ForeColor="Red" ValidationGroup="tlv"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="TUTOR LOGIN" ValidationGroup="tlv" TabIndex="3" />
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" 
        NavigateUrl="~/forgetpass/forget.aspx">FORGET PASSWORD</asp:HyperLink>
</asp:Panel>


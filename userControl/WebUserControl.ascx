<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControl.ascx.cs" Inherits="userControl_WebUserControl" %>
<link href="../Styles/Site.css" rel="stylesheet" type="text/css" />
<script type ="text/javascript">
    function validation() {
        alert("To activate your account plz. Click on the link, sent to your registered e-mail. ");
        return true;
    }


</script>
<asp:Panel ID="Panel1" runat="server" GroupingText ="Student Registration">
    <asp:Label ID="Label1" runat="server" Text="&lt;u&gt;U&lt;/U&gt;sername"></asp:Label>
    <br />
    <asp:TextBox ID="user" runat="server" AccessKey="u" MaxLength="15" 
        TabIndex="1" Width="205px" ValidationGroup="rv"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="user" Display="Dynamic" ErrorMessage="Filled is Required" 
        ForeColor="Red" SetFocusOnError="True" ValidationGroup="rv"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label2" runat="server" Text="&lt;u&gt;P&lt;/u&gt;assword"></asp:Label>
    <br />
    <asp:TextBox ID="pwd" runat="server" AccessKey="p" MaxLength="15" 
        TabIndex="2" TextMode="Password" Width="205px" ValidationGroup="rv"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="pwd" Display="Dynamic" ErrorMessage="Filled is Required" 
        ForeColor="Red" ValidationGroup="rv"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label3" runat="server" Text="&lt;u&gt;E&lt;/u&gt;mail"></asp:Label>
    <br />
    <asp:TextBox ID="email" runat="server" AccessKey="e" MaxLength="30" 
        TabIndex="3" Width="205px" ValidationGroup="rv"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="email" Display="Dynamic" 
        ErrorMessage="Please enter abc@example.com" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
        ForeColor="Red" ValidationGroup="rv"></asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="email" Display="Dynamic" ErrorMessage="Filled is Required" 
        ForeColor="Red" SetFocusOnError="True" ValidationGroup="rv"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label4" runat="server" Text="&lt;u&gt;C&lt;/u&gt;onfirmEmail"></asp:Label>
    <br />
    <asp:TextBox ID="cemail" runat="server" AccessKey="c" MaxLength="30" 
        TabIndex="4" Width="205px" ValidationGroup="rv"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        ControlToValidate="email" Display="Dynamic" 
        ErrorMessage="Please Reenter Email" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
        ForeColor="Red" ValidationGroup="rv"></asp:RegularExpressionValidator>
    <asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToCompare="email" ControlToValidate="cemail" 
        ErrorMessage="Does not match" ForeColor="#990000" ValidationGroup="rv"></asp:CompareValidator>
    <br />
    <asp:Label ID="Label5" runat="server" Text="&lt;u&gt;A&lt;/u&gt;ddress"></asp:Label>
    <br />
    <asp:TextBox ID="add" runat="server" AccessKey="a" TabIndex="5" 
        TextMode="MultiLine" Width="205px" CssClass="resize" ValidationGroup="rv"></asp:TextBox>
    <br />
    <asp:Label ID="Label6" runat="server" Text="&lt;u&gt;M&lt;/u&gt;obileNo"></asp:Label>
    <br />
    <asp:TextBox ID="mob" runat="server" AccessKey="m" MaxLength="11" 
        TabIndex="6" Width="205px" ValidationGroup="rv"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="mob" Display="Dynamic" 
        ErrorMessage="Enter Mobile No with STD code" ForeColor="Red" 
        ValidationGroup="rv"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:DropDownList ID="branch" runat="server">
       
    </asp:DropDownList>
    <asp:DropDownList ID="yr" runat="server">
       
    </asp:DropDownList>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Register" 
        onclick="Button1_Click" ValidationGroup="rv" OnClientClick ="return validation();" />
    <br />
    <asp:Label ID="sucess" runat="server" Font-Size="Large" ForeColor="#003300"></asp:Label>
    <br />
   
&nbsp;<br />
    <br />
    Check Email: Verification Code Sent to your E- Mail &nbsp; <br /><br />To Activate your account, Click on the verification Link.<br />
    <br />
   

</asp:Panel>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" %>


<%@ Register src="userControl/tutor.ascx" tagname="tutor" tagprefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

    <uc1:tutor ID="tutor1" runat="server" />

</asp:Content>


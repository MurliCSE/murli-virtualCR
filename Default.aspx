<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
<br /><br /><br /><br />
    <div id="main_part">
        <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center" GroupingText ="Demo About virtual classes">
        <OBJECT ID=RVOCX CLASSID="clsid:CFCDAA03-8BE4-11cf-B84B-0020AFBBCCFA"   WIDTH=320 HEIGHT=240>
        <PARAM NAME="SRC" VALUE="video/videoplayback.MP4">
        <PARAM NAME="CONTROLS" VALUE="ImageWindow">
        <PARAM NAME="CONSOLE" VALUE="one">
        <PARAM NAME="wmode" VALUE="transparent">
        <EMBED SRC="video/videoplayback.MP4" WIDTH=600 HEIGHT=400 NOJAVA=true  CONTROLS=ImageWindow CONSOLE=one>
        </OBJECT>


        </asp:Panel>
    </div>
</asp:Content>

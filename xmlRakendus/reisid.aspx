<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OmaSugupuu.aspx.cs" Inherits="xmlRakendus.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <main>
    <h1>XML katsetamine: Elizaveta II sugupuu</h1>

    <div class="row">
        <asp:Xml runat="server"
            DocumentSource="~/reisid.xml"
            TransformSource="~/reisid.xslt">


        </asp:Xml>

       
    </div>
</main>
</asp:Content>

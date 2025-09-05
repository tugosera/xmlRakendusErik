<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="xmlRakendus._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <h1>XML katsetamine: Elizaveta II sugupuu</h1>

        <div class="row">
            <asp:Xml runat="server"
                DocumentSource="~/elizaveta2sugupuu.xml"
                TransformSource="~/elizaveta2paring.xslt">


            </asp:Xml>

           
        </div>
    </main>

</asp:Content>

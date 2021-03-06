<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Albuns.aspx.cs" Inherits="FrameworkPadawans.Albuns" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  	
    <script type="text/javascript"  src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.23/css/jquery.dataTables.min.css">
    <h2>Albuns</h2><br />

<asp:GridView ID="GridAlbuns" runat="server" AutoGenerateColumns="false"
    AlternatingRowStyle-BackColor="#c0c0c0"
        HeaderStyle-BackColor="#666666" >
    <Columns>
        <asp:BoundField DataField="userId" HeaderText="userId" />
        <asp:BoundField DataField="id" HeaderText="id" />
        <asp:BoundField DataField="title" HeaderText="title" />
    </Columns>
</asp:GridView>
	
<a href="Default.aspx" class="btn btn-primary">Voltar</a>

 <script>
     $(document).ready(function () {
         $('#<%= GridAlbuns.ClientID%>').prepend($("<thead></thead>").append($("#<%= GridAlbuns.ClientID%>").find("tr:first"))).DataTable({
             stateSave: true,
         });
     });
</script>
	
</asp:Content>
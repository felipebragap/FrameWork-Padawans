<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FrameworkPadawans._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="text-center">
    <h1 class="display-4">Framework Padawans</h1>
    </div>
    
    <div class="row d-flex justify-content-center">


		<div class="card" style="width: 18rem;">
  <img src="https://cdn.pixabay.com/photo/2020/03/26/08/41/communicate-4969577_960_720.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Postagem</h5>
    <p class="card-text">Acesso a tabela de postagem fornecida pela api</p>
    <a href="Postagens.aspx" class="btn btn-primary">Acessar</a>
  </div>
</div>


    <div class="card" style="width: 18rem; margin: 5px 10px 15px 20px;">
        <img src="https://cdn.pixabay.com/photo/2015/10/04/11/39/flea-market-970948_960_720.jpg" class="card-img-top" alt="Albuns">
        <div class="card-body">
            <h5 class="card-title">Albuns</h5>
            <p class="card-text">Acesso a tabela de albuns fornecida pela api</p>
            <a href="Albuns.aspx" class="btn btn-primary">Acessar</a>
        </div>
    </div>


    <div class="card" style="width: 18rem; margin: 5px 10px 15px 20px;">
        <img src="https://cdn.pixabay.com/photo/2017/05/15/06/08/checklist-2313804_960_720.jpg" class="card-img-top" alt="...">
        <div class="card-body">
            <h5 class="card-title">TO-DOs</h5>
            <p class="card-text">Acesso a tabela de TO-DOs fornecida pela api</p>
            <a href="TO_DOs.aspx" class="btn btn-primary">Acessar</a>
        </div>
    </div>

</div>

</asp:Content>

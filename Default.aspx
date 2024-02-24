<%@ Page Title="" Language="C#" MasterPageFile="~/MPornek.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Ana Sayfa</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Repeater ID="rptAnasayfa" runat="server">
        <ItemTemplate>
    <section class="page-section clearfix">
      <div class="container">
        <div class="intro">
          <img class="intro-img img-fluid mb-3 mb-lg-0 rounded" src="img/<%#Eval("foto") %>" alt="">
          <div class="intro-text left-0 text-center bg-faded p-5 rounded">
            <h2 class="section-heading mb-4">
              <span class="section-heading-upper"><%#Eval("baslik1") %></span>
              <span class="section-heading-lower"><%#Eval("altbaslik1") %></span>
            </h2>
            <p class="mb-3"> <%#Eval("aciklama1") %>     </p>
            <div class="intro-button mx-auto">
              <a class="btn btn-primary btn-xl" href="#">Hemen Tıkla!</a>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="page-section cta">
      <div class="container">
        <div class="row">
          <div class="col-xl-9 mx-auto">
            <div class="cta-inner text-center rounded">
              <h2 class="section-heading mb-4">
                <span class="section-heading-upper"><%#Eval("baslik2") %></span>
              <span class="section-heading-lower"><%#Eval("altbaslik2") %></span>
              </h2>
              <p class="mb-0">  <%#Eval("aciklama2") %> </p>
            </div>
          </div>
        </div>
      </div>
    </section>
            </ItemTemplate>
        </asp:Repeater>
</asp:Content>


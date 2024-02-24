<%@ Page Title="" Language="C#" MasterPageFile="~/MPornek.master" AutoEventWireup="true" CodeFile="urunlerDetay.aspx.cs" Inherits="urunler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Ürünler</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:Repeater ID="rptUrunler" runat="server">
        <ItemTemplate>
            <section class="page-section">
                <div class="container">
                    <div class="product-item">
                        <div class="product-item-title d-flex">
                            <div class="bg-faded p-5 d-flex ml-auto rounded">
                                <h2 class="section-heading mb-0">
                                    <span class="section-heading-upper"><%# Eval("baslik") %></span>
                                    <span class="section-heading-lower"><%# Eval("altbaslik") %></span>
                                </h2>
                            </div>
                        </div>
                        <img class="product-item-img mx-auto d-flex rounded img-fluid mb-3 mb-lg-0" src="/img/<%# Eval("foto") %>" alt="">
                        <div class="product-item-description d-flex mr-auto">
                            <div class="bg-faded p-5 rounded">
                                <%# Eval("aciklama") %>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/MPornek.master" AutoEventWireup="true" CodeFile="urunler.aspx.cs" Inherits="urunler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Ürünler</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container">
        <!-- Example row of columns -->
        <div class="row">
            <div class="col-md-3">
                <ul class="list-group" id="kategoriMenu">
                    <asp:Repeater ID="rptKategoriler" runat="server">
                        <ItemTemplate>
                            <li style="background-color:transparent" class="list-group-item">
                                <a href="/kategori/<%# Eval("kid") %>/<%# Baglan.AdresDuzenle(Eval("kbaslik")) %>"><%# Eval("kbaslik") %></a>
                            </li>

                        </ItemTemplate>
                    </asp:Repeater>
                    
                </ul>
            </div>
            <div   class="col-md-9">
                <div class="row">
                    <div class="col-md-12">
                        <h1 id="ustBaslik">
                            <asp:Label ID="lblKategori" runat="server">

                            </asp:Label></h1>
                    </div>
            <asp:Repeater ID="rptUrunler" runat="server">
                <ItemTemplate>


                    <div class="col-md-6" style="color: white; margin-bottom: 50px; margin-top: 20px;">
                        <h2><%# Eval("baslik") %></h2>
                        <img style="height: 225px; width: 100%; display: block;" src="/img/<%# Eval("foto") %>" alt="<%# Eval("baslik") %>" />
                        <br />
                        <p><a class="btn btn-secondary" href="/urun/<%# Eval("id") %>/<%# Baglan.AdresDuzenle(Eval("baslik")) %>" role="button">Detay »</a></p>
                    </div>

                </ItemTemplate>

            </asp:Repeater>
                    </div>
                </div>

        </div>



    </div>





</asp:Content>


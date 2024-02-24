<%@ Page Title="" Language="C#" MasterPageFile="~/MPornek.master" AutoEventWireup="true" CodeFile="magaza.aspx.cs" Inherits="magza" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Pastane</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="page-section cta">
        <div class="container">
            <div class="row">
                <div class="col-xl-9 mx-auto">
                    <div class="cta-inner text-center rounded">
                        <h2 class="section-heading mb-5">
                            <asp:Repeater ID="rptUst" runat="server">
                                <ItemTemplate>
                                    <span class="section-heading-upper">   <%# Eval("ustBaslik") %></span>
                                    <span class="section-heading-lower">   <%# Eval("anaBaslik") %></span>
                                </ItemTemplate>
                            </asp:Repeater>

                        </h2>
                        <ul class="list-unstyled list-hours mb-5 text-left mx-auto">
                            <asp:Repeater ID="rptSaat" runat="server">
                                <ItemTemplate>
                                    <li class="list-unstyled-item list-hours-item d-flex">
                                        <%# Eval("gun") %> <span class="ml-auto"><%# Eval("saat") %> </span>


                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>


                        </ul>
                        <asp:Repeater ID="rptAlt" runat="server">
                            <ItemTemplate>
                                <p class="address mb-5">
                                    <em>
                                       <%# Eval("adres") %>
                </em>
                                </p>
                                <p class="mb-0">
                                    <small>
                                        <em>İletisim Numaramız</em>
                                    </small>
                                    <br>
                                      <%# Eval("telefon") %>
             
                                </p>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="page-section about-heading">
        <div class="container">
            <img class="img-fluid rounded about-heading-img mb-3 mb-lg-0" src="img/about.jpg" alt="">
            <div class="about-heading-content">
                <div class="row">
                    <div class="col-xl-9 col-lg-10 mx-auto">
                        <div class="bg-faded rounded p-5">
                            <h2 class="section-heading mb-4">
                                <span class="section-heading-upper">Güçlü Lezzet,Lezzetli Tatlar</span>
                                <span class="section-heading-lower">Hakkımızda</span>
                            </h2>
                            <p>Olduğu şehrin buluşma noktası. Bazen bir kahve, bazen bir çikolata ile hayata eklenen bir tat. Anların, anıların, hayata iz bırakan kutlamaların tanığı. Kocaeli’de başlayan, yıllar içinde sınır tanımayan ama hep “bizden” kalan bir lezzet ustası.</p>
                            <p class="mb-0">
                                Memnuniyeti garanti ediyoruz.
                 
                                <em></em>
                                Bize Katılın.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>


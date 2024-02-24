<%@ Page Title="" Language="C#" MasterPageFile="~/MPornek.master" AutoEventWireup="true" CodeFile="hakkimda.aspx.cs" Inherits="hakkimda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Hakkımda</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   
    <asp:Repeater ID="rptHakkimda" runat="server">
        <ItemTemplate>
            <section class="page-section about-heading">
                <div class="container">
                    <img class="img-fluid rounded about-heading-img mb-3 mb-lg-0" src="img/<%# Eval("foto") %>" alt="">
                    <div class="about-heading-content">
                        <div class="row">
                            <div class="col-xl-9 col-lg-10 mx-auto">
                                <div class="bg-faded rounded p-5">
                                    <h2 class="section-heading mb-4">
                                        <span class="section-heading-upper"><%# Eval("baslik") %></span>
                                        <span class="section-heading-lower"><%# Eval("altbaslik") %></span>
                                    </h2>
                                    <%# Eval("aciklama") %>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>


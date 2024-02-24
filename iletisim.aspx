<%@ Page Title="" Language="C#" MasterPageFile="~/MPornek.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>İletişim</title>
    <script src="js/sweetalert.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="page-section about-heading">
        <div class="container">
            <img class="img-fluid rounded about-heading-img mb-3 mb-lg-0" src="img/about.jpg" alt="">
            <div class="about-heading-content">
                <div class="row">
                    <div class="col-xl-9 col-lg-10 mx-auto">
                        <div class="bg-faded rounded p-5">
                            <h2 class="section-heading mb-4">

                                <span class="section-heading-lower">İletişim</span>
                            </h2>
                            <table class="table">
                                <tr>
                                    <td>Ad Soyad

                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtAdSoyad" CssClass="form-control" runat="server"></asp:TextBox>

                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtAdSoyad" CssClass="text-danger" Display="Dynamic" ErrorMessage="Geçerli bir ad soyad giriniz." ValidationExpression="^[a-zA-Z]+(([\'\,\.\- ][a-zA-Z ])?[a-zA-Z ]*)*$">*</asp:RegularExpressionValidator>

                                        <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAdSoyad" ErrorMessage="Adınızı soyadınızı giriniz." Display="Dynamic">*</asp:RequiredFieldValidator>

                                    </td>
                                </tr>
                                <tr>
                                    <td>Mail Adresi
                       <td>
                           <asp:TextBox ID="txtMail" CssClass="form-control" runat="server"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Mail adresinizi giriniz." CssClass="text-danger" ControlToValidate="txtMail" Display="Dynamic">*</asp:RequiredFieldValidator>
                           <asp:RegularExpressionValidator CssClass="text-danger" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Geçerli bir mail adresi giriniz." ControlToValidate="txtMail" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                       </td>
                                </tr>


                                <tr>
                                    <td>Mesaj</td>
                                    <td>
                                        <asp:TextBox ID="txtMesaj" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Mesaj giriniz." ControlToValidate="txtMesaj" CssClass="text-danger" Display="Dynamic">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>

                                <tr>
                                    <td>
                                        <asp:ValidationSummary CssClass="text-danger" ID="ValidationSummary1" runat="server" />
                                    </td>
                                    <td>
                                        <asp:Button ID="btnGonder" runat="server" Text="Gönder" class="btn btn-info" OnClick="btnGonder_Click" />&nbsp;
                                        <asp:Label ID="lblSonuc" runat="server"></asp:Label>
                                    </td>
                                </tr>
                            </table>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>


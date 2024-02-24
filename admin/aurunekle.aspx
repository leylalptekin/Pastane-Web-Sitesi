﻿<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MPAdmin.master" ValidateRequest="false" AutoEventWireup="true" CodeFile="aurunEkle.aspx.cs" Inherits="admin_aurunekle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Yeni Ürün Ekle</title>
    <script src="ckeditor/ckeditor.js"></script>
    <script src="css/sweetalert.min.js"></script>
    <script>
        function AdreseGit(adres) {
            swal('Ürün eklendi', '', 'success', { button: 'Tamam', })
                .then(function () {
                    window.location = adres;
                });
        };
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">





    <h2 class="sub-header">Yeni Ürün Ekle</h2>
    <div class="table-responsive">
        <table class="table table-striped">
            <tr>
                <th>Foto</th>
                <td>
                    <asp:FileUpload ID="fuFoto" runat="server" /></td>
            </tr>
            <tr>
                <th>Kategori</th>
                <td>
                    <asp:DropDownList ID="ddlKategori" CssClass="form-control" style="width:25%" runat="server"></asp:DropDownList>  
                </td>
            </tr>


            <tr>
                <th>Başlık</th>
                <td>
                    <asp:TextBox ID="txtBaslik" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtBaslik" CssClass="text-danger" Display="Dynamic" ErrorMessage="Başlık giriniz."></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <th>Alt Başlık</th>
                <td>
                    <asp:TextBox ID="txtAltBaslik" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAltBaslik" CssClass="text-danger" Display="Dynamic" ErrorMessage="Alt Başlık giriniz."></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <th>Açıklama</th>
                <td>
                    <asp:TextBox ID="txtAciklama" TextMode="MultiLine" Rows="4" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAciklama" CssClass="text-danger" Display="Dynamic" ErrorMessage="Açıklama giriniz."></asp:RequiredFieldValidator>
                </td>
                <script>
                    CKEDITOR.replace('ContentPlaceHolder1_txtAciklama');
                </script>
            </tr>

            <tr>
                <th>Sıra</th>
                <td>
                    <asp:TextBox ID="txtSira" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtSira" CssClass="text-danger" Display="Dynamic" ErrorMessage="Sıra numarası giriniz."></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <th></th>
                <td>
                    <label>
                        <asp:CheckBox ID="cbAktif" runat="server" Checked="true" />
                        Aktif</label>
                </td>
            </tr>
            <tr>
                <th></th>
                <td>
                    <asp:Button ID="btnEkle" runat="server" Text="Ekle" CssClass="btn btn-primary" OnClick="btnEkle_Click" />
                </td>
            </tr>
        </table>
    </div>
    <asp:Literal ID="ltrmesaj" runat="server"></asp:Literal>
</asp:Content>


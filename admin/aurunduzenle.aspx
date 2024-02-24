<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MPAdmin.master" ValidateRequest="false" AutoEventWireup="true" CodeFile="aurunduzenle.aspx.cs" Inherits="admin_aurunekle" %>

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





    <h2 class="sub-header">Ürün Düzenle</h2>
    <div class="table-responsive">
        <table class="table table-striped">
            <tr>
                <th>Foto</th>
                <td>
                    <asp:Label id="lblFoto" runat="server" Visible="false" />
                    <asp:Label id="lblID" runat="server" Visible="false" />
                    <img width="150" id="imgFoto" runat="server" />
                    <asp:FileUpload ID="fuFoto" runat="server" /></td>
            </tr>
             <tr>
                <th>Kategori</th>
                <td>
                    <asp:DropDownList  CssClass="form-control" style="width:25%" ID="ddlKategori" runat="server"></asp:DropDownList>  
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
                        <asp:CheckBox ID="cbAktif" runat="server" />
                        Aktif</label>
                </td>
            </tr>
            <tr>
                <th></th>
                <td><asp:Button ID="btnVazgec" runat="server" Text="Vazgeç" CssClass="btn btn-danger" OnClick="btnVazgec_Click" ValidationGroup="v"  /> 
                    <asp:Button ID="btnDuzenle" runat="server" Text="Düzenle" CssClass="btn btn-primary pull-right" OnClick="btnDuzenle_Click"  />
                </td>
            </tr>
        </table>
    </div>
    <asp:Literal ID="ltrmesaj" runat="server"></asp:Literal>
</asp:Content>


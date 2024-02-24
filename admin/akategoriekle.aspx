<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MPAdmin.master" ValidateRequest="false" AutoEventWireup="true" CodeFile="akategoriekle.aspx.cs" Inherits="admin_aurunekle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Yeni Kategori Ekle</title>
    <script src="ckeditor/ckeditor.js"></script>
    <script src="css/sweetalert.min.js"></script>
    <script>
        function AdreseGit(adres) {
            swal('Kategori eklendi', '', 'success', { button: 'Tamam', })
                .then(function () {
                    window.location = adres;
                });
        };
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">





    <h2 class="sub-header">Yeni Kategori Ekle</h2>
    <div class="table-responsive">
        <table class="table table-striped">
            


            <tr>
                <th>Başlık</th>
                <td>
                    <asp:TextBox ID="txtBaslik" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtBaslik" CssClass="text-danger" Display="Dynamic" ErrorMessage="Başlık giriniz."></asp:RequiredFieldValidator>
                </td>
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
                    <asp:Button ID="btnEkle" runat="server" Text="Ekle" CssClass="btn btn-primary" OnClick="btnEkle_Click" />
                </td>
            </tr>
        </table>
    </div>
    <asp:Literal ID="ltrmesaj" runat="server"></asp:Literal>
</asp:Content>


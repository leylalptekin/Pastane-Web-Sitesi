<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MPAdmin.master" ValidateRequest="false" AutoEventWireup="true" CodeFile="kullaniciekle.aspx.cs" Inherits="admin_aurunekle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Yeni Kullanıcı Ekle</title>
    <script src="ckeditor/ckeditor.js"></script>
    <script src="css/sweetalert.min.js"></script>
    <script>
        function AdreseGit(adres) {
            swal('Kullanıcı eklendi', '', 'success', { button: 'Tamam', })
                .then(function () {
                    window.location = adres;
                });
        };
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">





    <h2 class="sub-header">Yeni Kullanıcı Ekle</h2>
    <div class="table-responsive">
        <table class="table table-striped">
            
             <tr>
                <th>Kullanıcı Adı</th>
                <td>
                    <asp:Label id="lblID" runat="server" Visible="false" />
                    <asp:TextBox ID="txtKAdi" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtKAdi" CssClass="text-danger" Display="Dynamic" ErrorMessage="Başlık giriniz."></asp:RequiredFieldValidator>
                </td>
            </tr>
            
            

            <tr>
                <th>Parola</th>
                <td>
                    <asp:TextBox TextMode="Password" ID="txtParola" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtParola" CssClass="text-danger" Display="Dynamic" ErrorMessage="Parola boş geçilmez."></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <th>Parola Tekrar</th>
                <td>
                    <asp:TextBox TextMode="Password" ID="txtParolaTekrar" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtParolaTekrar" CssClass="text-danger" Display="Dynamic" ErrorMessage="Parola tekrar boş geçilmez."></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Parolalar aynı olmalı!" ControlToCompare="txtParola" ControlToValidate="txtParolaTekrar" CssClass="text-danger" Display="Dynamic"></asp:CompareValidator>
                     </td>
            </tr>

           <tr><td></td>
                <td><asp:Button ID="btnVazgec" runat="server" Text="Vazgeç" CssClass="btn btn-danger" OnClick="btnVazgec_Click" ValidationGroup="v"  /> 
                    <asp:Button ID="btnEkle" runat="server" Text="Ekle" CssClass="btn btn-primary pull-right" OnClick="btnEkle_Click" />
                </td>
            </tr>
        </table>
    </div>
    <asp:Literal ID="ltrmesaj" runat="server"></asp:Literal>
</asp:Content>


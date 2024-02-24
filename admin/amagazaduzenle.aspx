<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MPAdmin.master" ValidateRequest="false" AutoEventWireup="true" CodeFile="amagazaduzenle.aspx.cs" Inherits="admin_aurunekle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Düzenleme</title>
    <script src="ckeditor/ckeditor.js"></script>
    <script src="css/sweetalert.min.js"></script>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">





    <h2 class="sub-header">Mağaza sayfası düzenleme</h2>
    <div class="table-responsive">
        <table class="table table-striped">
            <tr>
                <th>Üst Başlık</th>
                <td>
                    <asp:TextBox ID="txtUstBaslik" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUstBaslik" CssClass="text-danger" Display="Dynamic" ErrorMessage="Üst Başlık giriniz."></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <th>Ana Başlık</th>
                <td>
                    <asp:TextBox ID="txtAnaBaslik" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAnaBaslik" CssClass="text-danger" Display="Dynamic" ErrorMessage="Ana Başlık giriniz."></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <th>Adres</th>
                <td>
                    <asp:TextBox ID="txtAdres" TextMode="MultiLine" Rows="4" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAdres" CssClass="text-danger" Display="Dynamic" ErrorMessage="Adres giriniz."></asp:RequiredFieldValidator>
                </td>
                <script>
                    CKEDITOR.replace('ContentPlaceHolder1_txtAdres');
                </script>
            </tr>

                     <tr>
                <th>Telefon</th>
                <td>
                    <asp:TextBox ID="txtTelefon" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtTelefon" CssClass="text-danger" Display="Dynamic" ErrorMessage="telefon giriniz."></asp:RequiredFieldValidator>
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


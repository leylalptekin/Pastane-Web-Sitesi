<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MPAdmin.master" ValidateRequest="false" AutoEventWireup="true" CodeFile="ahakkimdaduzenle.aspx.cs" Inherits="admin_aurunekle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Düzenleme</title>
    <script src="ckeditor/ckeditor.js"></script>
    <script src="css/sweetalert.min.js"></script>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">





    <h2 class="sub-header">Hakkımda sayfası düzenleme</h2>
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
                <th></th>
                <td><asp:Button ID="btnVazgec" runat="server" Text="Vazgeç" CssClass="btn btn-danger" OnClick="btnVazgec_Click" ValidationGroup="v"  /> 
                    <asp:Button ID="btnDuzenle" runat="server" Text="Düzenle" CssClass="btn btn-primary pull-right" OnClick="btnDuzenle_Click"  />
                </td>
            </tr>
        </table>
    </div>
    <asp:Literal ID="ltrmesaj" runat="server"></asp:Literal>
</asp:Content>


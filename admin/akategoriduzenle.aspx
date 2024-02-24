<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MPAdmin.master" ValidateRequest="false" AutoEventWireup="true" CodeFile="akategoriduzenle.aspx.cs" Inherits="admin_aurunekle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Yeni Kategori Ekle</title>
    
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">





    <h2 class="sub-header">Kategori Düzenle</h2>
    <div class="table-responsive">
        <table class="table table-striped">
            


            
            <tr>
                <th>Başlık</th>
                <td><asp:Label id="lblID" runat="server" Visible="false" />
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
                <td><asp:Button ID="btnVazgec" runat="server" Text="Vazgeç" CssClass="btn btn-danger" OnClick="btnVazgec_Click" ValidationGroup="v"  /> 
                    <asp:Button ID="btnDuzenle" runat="server" Text="Düzenle" CssClass="btn btn-primary pull-right" OnClick="btnDuzenle_Click"  />
                </td>
            </tr>
        </table>
    </div>
    <asp:Literal ID="ltrmesaj" runat="server"></asp:Literal>
</asp:Content>


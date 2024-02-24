<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MPAdmin.master" AutoEventWireup="true" CodeFile="amagazaSaatEkle.aspx.cs" Inherits="admin_MagazaSaatEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

      
        <h2 class="sub-header">Mağaza Saatleri</h2>
        <div class="table-responsive">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>Günler</th>
                        <th>Saatler</th>
                        <th>Ekleme</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><asp:TextBox ID="TxtGun" runat="server"></asp:TextBox></td>
                        <td><asp:TextBox ID="TxtSaat" runat="server"></asp:TextBox></td>
                        <td><asp:Button ID="BtnGunSaatEkle" runat="server" Text="Gün Saat Ekle" OnClick="BtnGunSaatEkle_Click" /></td>
                    </tr>
                    
                    </tbody>
                </table>
            </div>
         </div>
   
    


</asp:Content>


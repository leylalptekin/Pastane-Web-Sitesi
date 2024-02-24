<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MPAdmin.master" AutoEventWireup="true" CodeFile="kullanici.aspx.cs" Inherits="admin_urunler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Ürünler</title>
    <link href="css/switch.css" rel="stylesheet" />
    <script src="css/jquery.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <a href="kullaniciEkle.aspx" class="btn btn-info">Yeni Kullanıcı Ekle</a>

    <h2 class="sub-header">Kullanıcılar</h2>
      


    <div class="table-responsive">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Kullanıcı Adı</th>
                    
                    <th>İşlemler</th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="rptKullanici" runat="server">
                    <ItemTemplate>
                        <tr>
                             <th><%# Eval("id") %></th>
                            <td><%# Eval("kadi") %></td>
                          
                            
                            
                            <td>
                                <a href="kullaniciDuzenle.aspx?id=<%# Eval("id") %>">
                                    <img src="image/duzenle.png" /></a> &nbsp &nbsp
                                   
                                    
                                     <a data-toggle="modal" href="#" data-target="#sil<%# Eval("id") %>">
                                         <img src="image/sil.png" /></a>
                                
                                <!-- Modal -->
                                <div class="modal fade" id="sil<%# Eval("id") %>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title" id="myModalLabel">Kullanıcı sil</h4>
                                            </div>
                                            <div class="modal-body">
                                                <h3><b>"<%# Eval("kadi") %>"</b> adlı kullanıcıyı silmek istediğinizden emin misiniz?</h3>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Vazgeç</button>
                                                <a href="kullaniciSil.aspx?id=<%# Eval("id") %>" class="btn btn-danger">Sil</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Modal -->
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>


            </tbody>
        </table>
    </div>
   
</asp:Content>


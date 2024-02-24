<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MPAdmin.master" AutoEventWireup="true" CodeFile="aurunler.aspx.cs" Inherits="admin_urunler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Ürünler</title>
    <link href="css/switch.css" rel="stylesheet" />
    <script src="css/jquery.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <a href="aurunekle.aspx" class="btn btn-info">Yeni Ürün Ekle</a> 

     <div class="pull-right col-md-4">
    <div class="input-group">
   <asp:TextBox CssClass="form-control" placeholder="Ara..." ID="txtAra" runat="server"></asp:TextBox>
      <span class="input-group-btn">
       <asp:Button CssClass="btn btn-primary" ID="btnAra" runat="server" Text="Ara" OnClick="btnAra_Click" />
      </span>
    </div><!-- /input-group -->
  </div><!-- /.col-lg-6 -->
    <h2 class="sub-header">Ürünler</h2>
    <a class="btn btn-danger" data-toggle="modal" href="#" data-target="#tumSil">Seçilenleri Sil</a>
    <!-- Modal -->
    <div class="modal fade" id="tumSil" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Seçilenleri sil</h4>
                </div>
                <div class="modal-body">
                    <h3>Seçilen ürünleri silmek istediğinizden emin misiniz?</h3>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Vazgeç</button>
                    <asp:Button CssClass="btn btn-danger" ID="btnSil" runat="server" Text="Sil" OnClick="btnSil_Click" />
                </div>
            </div>
        </div>
    </div>
    <!-- Modal -->



    <div class="table-responsive">
        <asp:Repeater ID="rptUrunler" runat="server">
            <HeaderTemplate>

                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th class="tumunuSec">
                                <asp:CheckBox ID="cbTumu" runat="server" /></th>
                            <th>No</th>
                            <th>Foto</th>
                            <th>Başlık</th>
                            <th>Kategori</th>
                            <th>Alt Başlık</th>
                            <th>Aktif</th>
                            <th>Sıra</th>
                            <th>İşlemler</th>
                        </tr>
                    </thead>
                    <tbody>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td class="elemanSec">
                        <asp:CheckBox ID="cbSil" runat="server" />
                    </td>
                    <td>
                        <asp:Label ID="lblId" runat="server" Text='<%# Eval("id") %>'></asp:Label></td>
                    <td>
                        <img width="150" src="../img/<%# Eval("foto") %>" />
                    </td>
                    <td><%# Eval("baslik") %></td>
                    <td><%# Eval("kbaslik") %></td>
                    <td><%# Eval("altbaslik") %></td>
                    <td>
                        <label class="switch">
                            <input type="checkbox" id='<%# Eval("id") %>' class="aktifPasif" <%# Eval("aktif").ToString()=="1"?"checked":"" %> />
                            <span class="slider round"></span>
                        </label>
                    </td>
                    <td><%# Eval("sira") %></td>
                    <td>
                        <a href="aurunDuzenle.aspx?urunNo=<%# Eval("id") %>">
                            <img src="image/duzenle.png" /></a> &nbsp &nbsp
                                   
                                    
                                     <a data-toggle="modal" href="#" data-target="#sil<%# Eval("id") %>">
                                         <img src="image/sil.png" /></a>
                        <!-- Modal -->
                        <div class="modal fade" id="sil<%# Eval("id") %>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        <h4 class="modal-title" id="myModalLabel">Ürün sil</h4>
                                    </div>
                                    <div class="modal-body">
                                        <h3><b>"<%# Eval("baslik") %>"</b> ürününü silmek istediğinizden emin misiniz?</h3>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Vazgeç</button>
                                        <a href="aurunSil.aspx?urunNo=<%# Eval("id") %>" class="btn btn-danger">Sil</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Modal -->
                    </td>
                </tr></tbody>
            </ItemTemplate>
            <FooterTemplate>
                
        </table>
   
            </FooterTemplate>
        </asp:Repeater>

    </div>

    <script type="text/javascript">
        $(document).ready(function () {
            $('.aktifPasif').click(function (event) {
                var id = $(this).attr("id");  //id değerini alıyoruz

                var durum = ($(this).is(':checked')) ? '1' : '0';
                //checkbox a göre aktif mi pasif mi bilgisini alıyoruz.
                $.ajax({
                    type: 'POST',
                    url: 'aktifPasif.aspx/AktifPasif',  //işlem yaptığımız sayfayı belirtiyoruz
                    data: '{ id:' + id + ',durum:' + durum + ', tablo:"urunler" }', //datamızı yolluyoruz
                    contentType: 'application/json; charset=utf-8',
                    dataType: 'json',
                    success: function (result) {

                        //gelen sonucu h2 tagında gösteriyoruz
                    },
                    error: function () {
                        alert('Hata');
                    }
                });

            });
        });

        
 $(document).ready(function () {
     var $tumCheckbox = $('.tumunuSec :checkbox');
     var $checkboxes = $('.elemanSec :checkbox');
     $tumCheckbox.change(function() {
         if ($tumCheckbox.is(':checked')) {
             $checkboxes.prop('checked', 'checked');
         }
         else {
             $checkboxes.prop('checked',false);
         }
     });
     $checkboxes.change(function() {
         if ($checkboxes.not(':checked').length) {
             $tumCheckbox.prop('checked', false);
         }
         else {
             $tumCheckbox.prop('checked', 'checked');
         }      


     });
 });
</script>
    
</asp:Content>

